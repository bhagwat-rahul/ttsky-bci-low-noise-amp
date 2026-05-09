v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -0 -0 100 0 {lab=GND}
N 0 -20 40 -20 {lab=#net1}
N 100 -20 100 -0 {lab=GND}
C {vcm_gen.sym} -40 0 0 0 {name=x1}
C {vsource.sym} 70 -20 3 0 {name=VDPWR value="DC 1.8" savecurrent=false}
C {gnd.sym} 100 0 3 1 {name=l1 lab=GND}
C {code.sym} -60 -200 0 0 {name=sim_vcm_gen only_toplevel=false
value=
"
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.option savecurrents

.control

op

print v(vcm)

tran 100u 20m

plot v(vcm)

.endc
"}
C {lab_wire.sym} 0 20 2 0 {name=VCM sig_type=std_logic lab=VCM}
