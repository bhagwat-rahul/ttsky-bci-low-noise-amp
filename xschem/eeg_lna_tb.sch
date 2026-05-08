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
.option savecurrents

.include /headless/.xschem/simulations/eeg_lna.spice

* =====================================================
* INPUT SIGNALS
* =====================================================

V1 EEG_IN 0 SIN(0 1m 10) DC 0 AC 1
V2 VDPWR 0 DC 1.8

R1 EEG_IN 0 100k

* =====================================================
* ANALYSIS CONTROL
* =====================================================

.control

destroy all
save all

echo \\"=======================================\\"
echo \\"EEG LNA DEBUG REPORT\\"
echo \\"=======================================\\"

* =====================================================
* OPERATING POINT
* =====================================================

op

echo \\"=======================================\\"
echo \\"OPERATING POINT\\"
echo \\"=======================================\\"

print v(vout)
print v(eeg_in)

* IMPORTANT INTERNAL NODES
* Change names if needed to match your schematic
print v(x1.vin_p)
print v(x1.vin_n)

print v(x1.tail)
print v(x1.drain_l)
print v(x1.drain_r)

print i(v2)

* =====================================================
* DEVICE OPERATING INFO
* =====================================================

echo \\"=======================================\\"
echo \\"MOSFET OPERATING REGIONS\\"
echo \\"=======================================\\"

show m.x1.xm1
show m.x1.xm2
show m.x1.xm3
show m.x1.xm4
show m.x1.xm5
show m.x1.xm6
show m.x1.xm7

* =====================================================
* TRANSIENT
* =====================================================

echo \\"=======================================\\"
echo \\"TRANSIENT ANALYSIS\\"
echo \\"=======================================\\"

tran 100u 200m

plot v(eeg_in)
plot v(vout)

* DIFFERENTIAL INPUT CHECK
plot v(x1.vin_p)-v(x1.vin_n)

* OUTPUT SWING AROUND BIAS
plot v(vout)-avg(v(vout))

* =====================================================
* AC ANALYSIS
* =====================================================

echo \\"=======================================\\"
echo \\"AC ANALYSIS\\"
echo \\"=======================================\\"

ac dec 20 0.1 10k

* External transfer
plot db(v(vout)/v(eeg_in))

* Internal OTA gain
plot db(v(vout)/v(x1.vin_p))

* Differential gain
plot db(v(vout)/(v(x1.vin_p)-v(x1.vin_n)))

* =====================================================
* NOISE ANALYSIS
* =====================================================

echo \\"=======================================\\"
echo \\"NOISE ANALYSIS\\"
echo \\"=======================================\\"

noise v(vout) V1 dec 20 0.1 10k 1

setplot noise1

display

* TOTAL OUTPUT NOISE
plot onoise_spectrum xlog ylog

* INPUT REFERRED NOISE
plot inoise_spectrum xlog ylog

* ALL CONTRIBUTORS
plot all xlog ylog

print all

* =====================================================
* SAVE RAW
* =====================================================

write lna_tb.raw

.endc

.end
"}
C {eeg_lna.sym} -10 0 0 0 {name=x1}
C {lab_pin.sym} 140 0 2 0 {name=VOUT sig_type=std_logic lab=VOUT}
