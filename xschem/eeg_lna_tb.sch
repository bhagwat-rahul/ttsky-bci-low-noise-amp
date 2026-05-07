v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -220 -20 -160 -20 {lab=EEG_IN}
N 140 20 160 20 {lab=VDPWR}
N -220 40 220 40 {lab=0}
N 220 -20 220 40 {lab=0}
N 140 -20 220 -20 {lab=0}
C {/foss/designs/ttsky-bci-low-noise-amp/xschem/eeg_lna.sym} -10 0 0 0 {name=x1}
C {gnd.sym} 220 -20 3 0 {name=GND lab=0}
C {lab_pin.sym} -190 -20 3 1 {name=EEG_IN sig_type=std_logic lab=EEG_IN}
C {vsource.sym} -220 10 0 0 {name=V1 value="SIN(0 1m 10)" savecurrent=false}
C {vsource.sym} 190 20 3 0 {name=V2 value="DC 1.8" savecurrent=false}
C {lab_pin.sym} 150 20 1 1 {name=VDPWR sig_type=std_logic lab=VDPWR}
C {code_shown.sym} 10 -240 0 0 {name=sim_eeg_lna only_toplevel=false

value=
"
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.control
save all
tran 1m 1
write /foss/designs/ttsky-bci-low-noise-amp/xschem/simulation/lna_tb.raw
.endc

.end
"}
