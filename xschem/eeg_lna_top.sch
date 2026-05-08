v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
C {pseudo_res.sym} 10 -10 3 1 {name=x2}
C {pseudo_res.sym} 240 80 1 0 {name=x1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 170 80 3 0 {name=C_IN model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 90 250 1 0 {name=C_REF model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {ipin.sym} 140 80 0 0 {name=EEG_IN lab=EEG_IN}
C {ipin.sym} 120 250 0 1 {name=EEG_REF lab=EEG_REF}
C {iopin.sym} -130 120 3 1 {name=VDPWR lab=VDPWR}
C {iopin.sym} -80 120 1 0 {name=VGND lab=VGND}
C {opin.sym} -40 110 1 0 {name=VOUT lab=VOUT}
