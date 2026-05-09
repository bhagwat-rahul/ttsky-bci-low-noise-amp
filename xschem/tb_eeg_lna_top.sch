v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -150 60 210 60 {lab=GND}
N -210 -20 -210 60 {lab=GND}
N -210 60 -150 60 {lab=GND}
N 150 20 150 60 {lab=GND}
N 210 -20 210 60 {lab=GND}
C {eeg_lna_top.sym} 0 0 0 0 {name=x1}
C {gnd.sym} 150 20 0 1 {name=l1 lab=GND}
C {vsource.sym} 180 -20 3 0 {name=VDPWR value="DC 1.8" savecurrent=false}
C {vsource.sym} -150 30 0 1 {name=VEEG_REF value="SIN(0.9 -50u 10)" savecurrent=false}
C {vsource.sym} -180 -20 1 1 {name=VEEG_IN value="SIN(0.9 50u 10)" savecurrent=false}
C {capa.sym} 180 0 1 0 {name=CLOAD
m=1
value=5pF
footprint=1206
device="ceramic capacitor"}
C {code.sym} -60 -160 0 0 {name=sim_eeg_lna_top only_toplevel=false
value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

* =====================================================
* PARAMETERS
* =====================================================

.param VCM=0.9
.param VAMP=50u
.param FREQ=10

.option savecurrents

.control

* =====================================================
* DC OPERATING POINT
* =====================================================

op

print v(vcm)
print v(ota_inp)
print v(ota_inn)
print v(vout)

* =====================================================
* TRANSIENT ANALYSIS
* =====================================================

tran 100u 1

plot v(eeg_in) v(eeg_ref)
plot v(ota_inp) v(ota_inn)
plot v(vout)
plot v(vout)-0.9

* =====================================================
* AC ANALYSIS
* =====================================================

ac dec 100 0.01 1G

plot db(v(vout)/(v(eeg_in)-v(eeg_ref)))

.endc
"}
