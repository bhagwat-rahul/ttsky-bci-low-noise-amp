v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -0 0 60 -0 {lab=GND}
N 60 -0 60 20 {lab=GND}
C {vsource.sym} 30 20 3 1 {name=V1 value="DC 1.8" savecurrent=false}
C {gnd.sym} 60 0 3 1 {name=l1 lab=GND}
C {bias_gen.sym} -30 0 0 0 {name=x1}
C {code.sym} -80 -170 0 0 {name=sim_bias_gen only_toplevel=false

value=
"
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt_mm

.option savecurrents

.control
op

show all
print all

.endc
"}
