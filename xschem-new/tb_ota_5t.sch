v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -190 30 -130 30 {lab=vin_p}
N 170 10 230 10 {lab=#net1}
N 170 30 260 30 {lab=vout}
N -130 -10 290 -10 {lab=GND}
N 290 -10 290 10 {lab=GND}
N 170 50 170 90 {lab=GND}
N 170 90 260 90 {lab=GND}
N 290 10 290 90 {lab=GND}
N 260 90 290 90 {lab=GND}
N -250 30 -250 110 {lab=GND}
N -250 110 -130 110 {lab=GND}
N -130 110 170 110 {lab=GND}
N 170 90 170 110 {lab=GND}
C {ota_5t.sym} 20 30 0 0 {name=x3}
C {bias_gen.sym} -160 -10 2 1 {name=x4}
C {vsource.sym} -220 30 1 1 {name=VIN_P_SRC value="DC \{VCM\} AC 0.5 SIN(\{VCM\} \{VDIFF/2\} \{FREQ\})" savecurrent=false}
C {vsource.sym} -130 80 0 0 {name=VIN_N_SRC value="DC \{VCM\} AC -0.5 SIN(\{VCM\} \{-VDIFF/2\} \{FREQ\})" savecurrent=false}
C {vsource.sym} 260 10 3 0 {name=VDPWR value="DC 1.8" savecurrent=false}
C {gnd.sym} 170 90 1 1 {name=l1 lab=GND}
C {lab_wire.sym} -130 -30 0 1 {name=VDPWR1 sig_type=std_logic lab=VDPWR}
C {code.sym} -60 -230 0 0 {name=sim_5t_ota only_toplevel=false
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

let vdiff = v(vin_p)-v(vin_n)

plot db(v(vout)/vdiff)
plot phase(v(vout)/vdiff)

.endc
"}
C {capa.sym} 260 60 0 1 {name=CLOAD
m=1
value=\{CLOAD\}
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} -130 30 2 1 {name=vin_p sig_type=std_logic lab=vin_p}
C {lab_wire.sym} -130 50 2 1 {name=vin_n sig_type=std_logic lab=vin_n}
C {lab_wire.sym} 170 30 2 0 {name=vout sig_type=std_logic lab=vout}
