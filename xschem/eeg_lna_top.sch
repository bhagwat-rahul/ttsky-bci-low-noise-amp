v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -10 450 -10 500 {lab=#net1}
N -10 450 190 450 {lab=#net1}
N -10 380 -10 430 {lab=#net2}
N -10 430 190 430 {lab=#net2}
C {sky130_fd_pr/cap_mim_m3_1.sym} -40 380 3 0 {name=CACP model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -40 500 3 1 {name=C_REF model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {ipin.sym} -70 380 0 0 {name=EEG_IN lab=EEG_IN}
C {ipin.sym} -70 500 0 0 {name=EEG_REF lab=EEG_REF}
C {iopin.sym} -130 120 3 1 {name=VDPWR lab=VDPWR}
C {iopin.sym} -80 120 1 0 {name=VGND lab=VGND}
C {opin.sym} -40 110 1 0 {name=VOUT lab=VOUT}
C {ota_5t.sym} 340 430 0 0 {name=x_ota}
C {pseudo_res_c.sym} 120 670 0 0 {name=x_rpseudo_p}
C {pseudo_res_c.sym} 370 680 0 0 {name=x_rpseudo_n}
C {bias_gen.sym} 80 380 0 0 {name=x_bias}
C {vcm_gen.sym} 500 730 0 0 {name=x_vcm}
C {sky130_fd_pr/cap_mim_m3_1.sym} 160 570 0 0 {name=CIN_P model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 300 550 0 0 {name=CIN_N model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 440 550 0 0 {name=CFB model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
