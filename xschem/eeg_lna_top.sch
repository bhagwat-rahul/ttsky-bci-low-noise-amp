v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -10 380 -10 430 {lab=OTA_INP}
N -10 430 190 430 {lab=OTA_INP}
N -10 430 -10 480 {lab=OTA_INP}
N 190 450 190 610 {lab=OTA_INN}
N 90 550 190 550 {lab=OTA_INN}
N 490 430 620 430 {lab=VOUT}
N 620 430 620 480 {lab=VOUT}
N 620 380 620 430 {lab=VOUT}
N 190 350 190 410 {lab=BIAS_P}
C {sky130_fd_pr/cap_mim_m3_1.sym} -40 380 3 0 {name=CIN_P model=cap_mim_m3_1 W=30 L=30 MF=2 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 90 580 2 0 {name=CIN_N model=cap_mim_m3_1 W=20 L=20 MF=2 spiceprefix=X}
C {ipin.sym} -70 380 0 0 {name=EEG_IN lab=EEG_IN}
C {ipin.sym} 90 610 1 1 {name=EEG_REF lab=EEG_REF}
C {iopin.sym} 490 410 1 1 {name=VDPWR lab=VDPWR}
C {iopin.sym} 490 450 1 0 {name=VGND lab=VGND}
C {opin.sym} 620 380 0 0 {name=VOUT lab=VOUT}
C {ota_5t.sym} 340 430 0 0 {name=x_ota}
C {pseudo_res_c.sym} -50 500 2 1 {name=x_rpseudo_p}
C {bias_gen.sym} 220 330 2 0 {name=x_bias}
C {sky130_fd_pr/cap_mim_m3_1.sym} 650 480 3 1 {name=CFB model=cap_mim_m3_1 W=20 L=20 MF=1 spiceprefix=X}
C {lab_wire.sym} -10 500 2 0 {name=VOUT1 sig_type=std_logic lab=VOUT}
C {lab_wire.sym} 190 330 0 0 {name=VGND2 sig_type=std_logic lab=VGND}
C {lab_wire.sym} 190 310 0 0 {name=VDPWR2 sig_type=std_logic lab=VDPWR}
C {lab_wire.sym} 190 520 3 1 {name=OTA_INN sig_type=std_logic lab=OTA_INN}
C {lab_wire.sym} 680 480 0 1 {name=OTA_INN1 sig_type=std_logic lab=OTA_INN}
C {lab_wire.sym} 80 430 3 1 {name=OTA_INP sig_type=std_logic lab=OTA_INP}
C {lab_wire.sym} -10 520 2 0 {name=VDPWR3 sig_type=std_logic lab=VDPWR}
C {pseudo_res_c.sym} 190 650 3 0 {name=x_rpseudo_fb}
C {lab_wire.sym} 210 610 2 0 {name=VOUT2 sig_type=std_logic lab=VOUT}
C {lab_wire.sym} 170 610 1 0 {name=VDPWR4 sig_type=std_logic lab=VDPWR}
C {lab_wire.sym} 190 380 2 0 {name=BIAS_P sig_type=std_logic lab=BIAS_P}
