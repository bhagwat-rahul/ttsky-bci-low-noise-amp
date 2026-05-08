v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 140 -20 220 -20 {lab=0}
N 140 20 150 20 {lab=VDPWR}
N -220 -20 -160 -20 {lab=EEG_IN}
N -220 20 -160 20 {lab=EEG_REF}
C {gnd.sym} 220 -20 3 0 {name=GND lab=0}
C {lab_pin.sym} 150 20 1 1 {name=VDPWR sig_type=std_logic lab=VDPWR}
C {lab_pin.sym} -220 -20 0 0 {name=EEG_IN sig_type=std_logic lab=EEG_IN}
C {lab_pin.sym} -220 20 0 0 {name=EEG_REF sig_type=std_logic lab=EEG_REF}
C {code_shown.sym} -310 -660 0 0 {name=sim_eeg_lna only_toplevel=false

value=
"
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.option rshunt=1e15
.option savecurrents

* =====================================================
* INPUT SIGNALS
* =====================================================

V1 EEG_IN EEG_REF SIN(0 1m 10) DC 0 AC 1
V2 VDPWR 0 DC 1.8

RREF EEG_REF 0 100k

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
print v(eeg_ref)

* IMPORTANT INTERNAL NODES
* Change names if needed to match your schematic
print v(x1.vin_p)
print v(x1.vin_n)

print v(x1.tail_p)
print v(x1.mirror_bias_n)
print v(x1.bias_p)

print i(v2)

* =====================================================
* DEVICE OPERATING INFO
* =====================================================

echo \\"=======================================\\"
echo \\"MOSFET OPERATING REGIONS\\"
echo \\"=======================================\\"

show m.x1.xm1.msky130_fd_pr__nfet_01v8
show m.x1.xm2.msky130_fd_pr__nfet_01v8
show m.x1.xm3.msky130_fd_pr__pfet_01v8
show m.x1.xm4.msky130_fd_pr__pfet_01v8
show m.x1.xm5.msky130_fd_pr__pfet_01v8
show m.x1.xm6.msky130_fd_pr__pfet_01v8
show m.x1.xm7.msky130_fd_pr__nfet_01v8

* =====================================================
* TRANSIENT
* =====================================================

echo \\"=======================================\\"
echo \\"TRANSIENT ANALYSIS\\"
echo \\"=======================================\\"

tran 100u 200m

plot v(eeg_in)-v(eeg_ref)
plot v(eeg_ref)
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
plot db(v(vout)/(v(eeg_in)-v(eeg_ref)))

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
