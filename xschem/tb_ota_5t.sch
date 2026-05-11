v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -300 -100 -240 -100 {lab=vin_p}
N 60 -120 120 -120 {lab=#net1}
N 60 -100 150 -100 {lab=vout}
N -240 -140 180 -140 {lab=GND}
N 180 -140 180 -120 {lab=GND}
N 60 -80 60 -40 {lab=GND}
N 60 -40 150 -40 {lab=GND}
N 180 -120 180 -40 {lab=GND}
N 150 -40 180 -40 {lab=GND}
N -360 -100 -360 -20 {lab=GND}
N -360 -20 -240 -20 {lab=GND}
N -240 -20 60 -20 {lab=GND}
N 60 -40 60 -20 {lab=GND}
C {ota_5t.sym} -90 -100 0 0 {name=x3}
C {bias_gen.sym} -270 -140 2 1 {name=x4}
C {vsource.sym} -330 -100 1 1 {name=VIN_P_SRC value="DC \{VCM\} AC 0.5 SIN(\{VCM\} \{VDIFF/2\} \{FREQ\})" savecurrent=false}
C {vsource.sym} -240 -50 0 0 {name=VIN_N_SRC value="DC \{VCM\} AC -0.5 SIN(\{VCM\} \{-VDIFF/2\} \{FREQ\})" savecurrent=false}
C {vsource.sym} 150 -120 3 0 {name=VDPWR value="DC 1.8" savecurrent=false}
C {gnd.sym} 60 -40 1 1 {name=l1 lab=GND}
C {lab_wire.sym} -240 -160 0 1 {name=VDPWR1 sig_type=std_logic lab=VDPWR}
C {code.sym} -120 -300 0 0 {name=sim_5t_ota only_toplevel=false
value=
"
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt_mm

* =====================================================
* PARAMETERS
* =====================================================

.param VCM=0.9
.param VDIFF=100u
.param FREQ=10
.param CLOAD=1p

.option savecurrents

.control

* =====================================================
* DC OPERATING POINT
* =====================================================

op

print v(vout)
print v(vin_p)
print v(vin_n)

* =====================================================
* TRANSIENT ANALYSIS
* =====================================================

tran 100u 500m

plot v(vin_p) v(vin_n)
plot v(vout)

* =====================================================
* AC SMALL-SIGNAL ANALYSIS
* =====================================================

ac dec 100 1 1G

plot db(v(vout))
plot ph(v(vout))

.endc
"}
C {capa.sym} 150 -70 0 1 {name=CLOAD
m=1
value=\{CLOAD\}
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} -240 -100 2 1 {name=vin_p sig_type=std_logic lab=vin_p}
C {lab_wire.sym} -240 -80 2 1 {name=vin_n sig_type=std_logic lab=vin_n}
C {lab_wire.sym} 60 -100 2 0 {name=vout sig_type=std_logic lab=vout}
