v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -0 -0 70 0 {lab=#net1}
N -0 20 -0 60 {lab=#net2}
N -0 60 70 60 {lab=#net2}
C {pseudo_res_c.sym} -150 0 0 0 {name=x1}
C {gnd.sym} 60 -20 3 0 {name=l1 lab=GND}
C {vsource.sym} 30 -20 3 0 {name=VDPWR value="DC 1.8" savecurrent=false}
C {vsource.sym} 70 30 2 0 {name=VTEST value=3 savecurrent=false}
C {code.sym} -150 -200 0 0 {name=sim_vtest_sweep only_toplevel=false
value=
"
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.option savecurrents
.temp 27

.control
save all

dc VTEST -0.5 0.5 1m

plot abs(i(vtest))
plot i(vtest)

.endc
"}
