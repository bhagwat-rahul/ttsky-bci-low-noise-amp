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
C {vsource.sym} -150 30 0 1 {name=VEEG_REF value="DC 0.9" savecurrent=false}
C {vsource.sym} -180 -20 1 1 {name=VEEG_IN value="DC 0.9 AC 0.5 SIN(0.9 25u 10)" savecurrent=false}
C {capa.sym} 180 0 1 0 {name=CLOAD
m=1
value=5pF
footprint=1206
device="ceramic capacitor"}
C {code.sym} -60 -160 0 0 {name=sim_eeg_lna_top only_toplevel=false
value=
"
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt_mm

.ic v(net3)=0.5 v(x1.ota_inp)=0.5 v(x1.ota_inn)=0.5
+   v(x1.x_ota.tail_p)=1.5 v(x1.x_ota.net1)=0.5
+   v(x1.x_rpseudo_p.net1)=0.5 v(x1.x_rpseudo_fb.net1)=0.5

.nodeset v(net3)=0.5 v(x1.ota_inp)=0.5 v(x1.ota_inn)=0.5
+        v(x1.x_ota.tail_p)=1.5 v(x1.x_ota.net1)=0.5
+        v(x1.x_rpseudo_p.net1)=0.5 v(x1.x_rpseudo_fb.net1)=0.5

.option savecurrents
.option rshunt=1e15
.option gmin=1e-15
.option method=gear
.option cshunt=1e-15

.control
op
echo ===== Bias Verification =====
print @m.x1.x_ota.xmtail[id]
print v(x1.x_ota.tail_p)
print v(x1.bias_p)
print @m.x1.x_ota.xmdiff_p[id]
print @m.x1.x_ota.xmdiff_n[id]

echo ===== Operating Point =====
print v(x1.ota_inp)
print v(x1.ota_inn)
print v(x1.ota_inp)-v(x1.ota_inn)
print v(net3)

echo ===== Transient =====
tran 1m 20
plot v(net1)
plot v(x1.ota_inp)
plot v(x1.ota_inn)
plot v(x1.ota_inp)-v(x1.ota_inn)
plot v(net3)
plot v(net3)-0.84

echo ===== Noise =====
noise v(net3) veeg_in dec 100 0.5 100

* Active plot is the "totals" plot — print integrated values
print inoise_total
print onoise_total

* Switch to the spectrum plot to see vs frequency
setplot previous
plot db(inoise_spectrum)
plot db(onoise_spectrum)

echo ===== AC =====
ac dec 100 0.01 100k
plot db(v(net3)/v(net1))
.endc
"}
