v {xschem version=3.4.8RC file_version=1.3}
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
C {vsource.sym} -150 30 0 1 {name=VEEG_REF value="DC 0.9 AC -0.5 SIN(0.9 50u 10)" savecurrent=false}
C {vsource.sym} -180 -20 1 1 {name=VEEG_IN value="DC 0.9 AC 0.5 SIN(0.9 50u 10)" savecurrent=false}
C {capa.sym} 180 0 1 0 {name=CLOAD
m=1
value=5pF
footprint=1206
device="ceramic capacitor"}
C {code.sym} -60 -160 0 0 {name=sim_eeg_lna_top only_toplevel=false
value=
"
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.option savecurrents

* tiny DC leak paths for convergence only
RLEAKP x1.ota_inp GND 1T
RLEAKN x1.ota_inn GND 1T

.control

op

print v(x1.vcm)
print v(x1.ota_inp)
print v(x1.ota_inn)
print v(net3)

* allow huge RC startup to settle
tran 10m 20

* actual differential input signal
plot v(net1)-v(net4)

* OTA input common-mode behavior
plot v(x1.ota_inp)
plot v(x1.ota_inn)

* output waveform
plot v(net3)

* centered around VCM
plot v(net3)-0.9

* proper closed-loop gain measurement
ac dec 100 0.01 100k

plot db(v(net3)/(v(net1)-v(net4)))

.endc
"}
