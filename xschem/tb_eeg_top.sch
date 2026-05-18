v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -150 60 210 60 {lab=GND}
N -210 60 -150 60 {lab=GND}
N 150 20 150 60 {lab=GND}
N -240 -20 -240 60 {lab=GND}
N -240 60 -210 60 {lab=GND}
N -180 -20 -150 -20 {lab=EEG_IN}
N -180 0 -150 0 {lab=EEG_REF}
N 270 -20 270 60 {lab=GND}
N 210 60 270 60 {lab=GND}
N 150 0 210 0 {lab=VOUT}
N 150 -20 180 -20 {lab=VDPWR}
N 240 -20 270 -20 {lab=GND}
C {gnd.sym} 150 20 0 1 {name=l1 lab=GND}
C {vsource.sym} 210 -20 3 0 {name=VDPWR value="DC 1.8" savecurrent=false}
C {vsource.sym} -180 30 0 1 {name=VEEG_REF value="DC 0.9" savecurrent=false}
C {vsource.sym} -210 -20 1 1 {name=VEEG_IN value="DC 0.9 AC 0.5 SIN(0.9 25u 10)" savecurrent=false}
C {capa.sym} 240 0 1 0 {name=CLOAD
m=1
value=5pF
footprint=1206
device="ceramic capacitor"}
C {code.sym} -60 -160 0 0 {name=sim_eeg_lna_top only_toplevel=false
value=
"
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt_mm

.ic v(VOUT)=0.5 v(x1.ota_inp)=0.5 v(x1.ota_inn)=0.5
+   v(x1.x_ota.tail_p)=1.5 v(x1.x_ota.EEG_IN)=0.5
+   v(x1.x_rpseudo_p.EEG_IN)=0.5 v(x1.x_rpseudo_fb.EEG_IN)=0.5

.nodeset v(VOUT)=0.5 v(x1.ota_inp)=0.5 v(x1.ota_inn)=0.5
+        v(x1.x_ota.tail_p)=1.5 v(x1.x_ota.EEG_IN)=0.5
+        v(x1.x_rpseudo_p.EEG_IN)=0.5 v(x1.x_rpseudo_fb.EEG_IN)=0.5

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
print v(VOUT)

echo ===== Transient =====
tran 1m 20
plot v(EEG_IN)
plot v(x1.ota_inp)
plot v(x1.ota_inn)
plot v(x1.ota_inp)-v(x1.ota_inn)
plot v(VOUT)
plot v(VOUT)-0.84

echo ===== Noise =====
noise v(VOUT) veeg_in dec 100 0.5 100

* integrated noise over band
print inoise_total
print onoise_total

* optional: inspect shape only when debugging
setplot previous
plot onoise_spectrum

echo ===== AC =====
ac dec 100 0.01 100k
plot db(v(VOUT)/v(EEG_IN))

plot db(v(x1.ota_inp)/v(EEG_IN))
plot db(v(x1.ota_inn)/v(EEG_REF))
plot db(v(VOUT)/(v(x1.ota_inp)-v(x1.ota_inn)))

.endc
"}
C {lab_wire.sym} -160 -20 1 0 {name=EEG_IN sig_type=std_logic lab=EEG_IN}
C {lab_wire.sym} 160 0 2 0 {name=VOUT sig_type=std_logic lab=VOUT}
C {lab_wire.sym} -150 0 3 0 {name=EEG_REF sig_type=std_logic lab=EEG_REF}
C {lab_wire.sym} 160 -20 1 0 {name=VDPWR1 sig_type=std_logic lab=VDPWR}
C {eeg_top.sym} 0 0 0 0 {name=x1}
