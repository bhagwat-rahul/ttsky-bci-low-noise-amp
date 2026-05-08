v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 140 -20 220 -20 {lab=0}
N 140 20 150 20 {lab=VDPWR}
C {gnd.sym} 220 -20 3 0 {name=GND lab=0}
C {lab_pin.sym} 150 20 1 1 {name=VDPWR sig_type=std_logic lab=VDPWR}
C {code_shown.sym} -310 -660 0 0 {name=sim_eeg_lna only_toplevel=false

value=
"
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.option rshunt=1e12

.include /headless/.xschem/simulations/eeg_lna.spice

V1 EEG_IN 0 SIN(0 1m 10) DC 0 AC 1
V2 VDPWR 0 DC 1.8

R1 EEG_IN 0 100k

.control

destroy all

echo \\"=======================================\\"
echo \\"EEG LNA DEBUG REPORT\\"
echo \\"=======================================\\"

op

echo \\"OPERATING POINT\\"

print v(vout)
print i(v2)

tran 100u 200m

plot v(eeg_in)
plot v(vout)

ac dec 20 0.1 10k

plot db(v(vout)/v(eeg_in))

echo \\"NOISE ANALYSIS\\"

noise v(vout) V1 dec 20 0.1 10k 1

setplot

setplot noise1

display

plot all xlog ylog

print all

write lna_tb.raw

.endc

.end
"}
C {eeg_lna.sym} -10 0 0 0 {name=x1}
C {lab_pin.sym} 140 0 2 0 {name=VOUT sig_type=std_logic lab=VOUT}
