v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -60 0 -40 0 {lab=PRA}
N 30 0 60 0 {lab=PRB}
N -0 -50 -0 -30 {lab=VDPWR}
N -120 -0 -120 80 {lab=PRB}
N 60 -0 60 80 {lab=PRB}
N -120 80 60 80 {lab=PRB}
N 60 -50 120 -50 {lab=GND}
N 120 -50 120 -0 {lab=GND}
N 120 0 165 0 {lab=GND}
C {pseudo_res_c.sym} 0 0 1 1 {name=x1}
C {gnd.sym} 165 0 3 0 {name=l1 lab=GND}
C {vsource.sym} 30 -50 3 0 {name=VDPWR value="DC 1.8" savecurrent=false}
C {code.sym} -60 -230 0 0 {name=sim_vtest_sweep only_toplevel=false
value=
"
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt_mm
.option savecurrents
.temp 27

.control
save all

dc VTEST -0.5 0.5 0.005

* Current through test source
plot abs(-i(vtest)) ylog

let z_eff = 1/(deriv(-i(vtest)) + 1e-20)
plot abs(z_eff) ylog

print z_eff[100]

.endc
"}
C {vsource.sym} -90 0 1 0 {name=VTEST value="DC 0" savecurrent=false}
C {vsource.sym} 90 0 3 1 {name=VB value="DC 0.5" savecurrent=false}
C {lab_wire.sym} 35 0 2 0 {name=PRB sig_type=std_logic lab=PRB}
C {lab_wire.sym} -40 0 2 1 {name=PRA sig_type=std_logic lab=PRA}
C {lab_wire.sym} 0 -40 2 1 {name=VDPWR1 sig_type=std_logic lab=VDPWR}
