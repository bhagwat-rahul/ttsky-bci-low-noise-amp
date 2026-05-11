v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 30 -20 30 -0 {lab=GND}
N -30 -20 30 -20 {lab=GND}
N -110 -20 -90 -20 {lab=#net1}
N -110 -0 -30 -0 {lab=PRB}
N -110 20 -90 20 {lab=PRA}
N -30 -0 -30 20 {lab=PRB}
C {pseudo_res_c.sym} -150 0 0 0 {name=x1}
C {gnd.sym} 30 -20 3 0 {name=l1 lab=GND}
C {vsource.sym} -60 -20 3 0 {name=VDPWR value="DC 1.8" savecurrent=false}
C {code.sym} -150 -200 0 0 {name=sim_vtest_sweep only_toplevel=false
value=
"
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt_mm
.option savecurrents
.temp 27

.control
save all

dc VTEST -0.5 0.5 0.005

* Current through test source
plot -i(vtest)
plot abs(-i(vtest)) ylog

let z_eff = 1/(deriv(-i(vtest)) + 1e-20)
plot abs(z_eff) ylog

plot z_eff ylog

print z_eff[100]

.endc
"}
C {vsource.sym} -60 20 3 1 {name=VTEST value="DC 0" savecurrent=false}
C {vsource.sym} 0 0 3 1 {name=VB value="DC 0.5" savecurrent=false}
C {lab_wire.sym} -100 0 0 0 {name=PRB sig_type=std_logic lab=PRB}
C {lab_wire.sym} -100 20 2 1 {name=PRA sig_type=std_logic lab=PRA}
