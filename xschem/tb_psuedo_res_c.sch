v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -110 0 -50 -0 {lab=#net1}
N -50 -0 -50 20 {lab=#net1}
N 10 -20 10 -0 {lab=GND}
N -50 -20 10 -20 {lab=GND}
C {pseudo_res_c.sym} -150 0 0 0 {name=x1}
C {gnd.sym} 10 -20 3 0 {name=l1 lab=GND}
C {vsource.sym} -80 -20 3 0 {name=VDPWR value="DC 1.8" savecurrent=false}
C {code.sym} -150 -200 0 0 {name=sim_vtest_sweep only_toplevel=false
value=
"
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.option savecurrents
.temp 27

.control
save all

dc VTEST -0.5 0.5 0.005

plot -i(vtest)
plot abs(-i(vtest)) ylog

let z_eff = -v(VTEST) / (i(vtest) - 1e-18)
plot abs(z_eff) ylog

print z_eff[100]
.endc
"}
C {vsource.sym} -80 20 3 1 {name=VTEST value="DC 0" savecurrent=false}
C {vsource.sym} -20 0 3 1 {name=VB value="DC 0.5" savecurrent=false}
