v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -10 450 -10 500 {lab=OTA_INN}
N -10 450 190 450 {lab=OTA_INN}
N -10 380 -10 430 {lab=OTA_INP}
N -10 430 190 430 {lab=OTA_INP}
N -270 430 -10 430 {lab=OTA_INP}
N -270 460 -10 460 {lab=OTA_INN}
N -270 500 -270 540 {lab=#net1}
N -360 540 -270 540 {lab=#net1}
N -360 340 -360 540 {lab=#net1}
N -360 340 -270 340 {lab=#net1}
N -270 340 -270 390 {lab=#net1}
N 110 360 190 360 {lab=#net2}
N 190 360 190 410 {lab=#net2}
N 490 430 620 430 {lab=VOUT}
C {sky130_fd_pr/cap_mim_m3_1.sym} -40 380 3 0 {name=CIN_P model=cap_mim_m3_1 W=40 L=40 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -40 500 3 1 {name=CIN_N model=cap_mim_m3_1 W=40 L=40 MF=1 spiceprefix=X}
C {ipin.sym} -70 380 0 0 {name=EEG_IN lab=EEG_IN}
C {ipin.sym} -70 500 0 0 {name=EEG_REF lab=EEG_REF}
C {iopin.sym} 490 410 1 1 {name=VDPWR lab=VDPWR}
C {iopin.sym} 490 450 1 0 {name=VGND lab=VGND}
C {opin.sym} 490 430 0 0 {name=VOUT lab=VOUT}
C {ota_5t.sym} 340 430 0 0 {name=x_ota}
C {pseudo_res_c.sym} -310 410 0 0 {name=x_rpseudo_p}
C {pseudo_res_c.sym} -310 480 2 1 {name=x_rpseudo_n}
C {bias_gen.sym} 80 380 0 0 {name=x_bias}
C {vcm_gen.sym} 120 550 0 0 {name=x_vcm}
C {sky130_fd_pr/cap_mim_m3_1.sym} 650 430 3 1 {name=CFB model=cap_mim_m3_1 W=20 L=20 MF=1 spiceprefix=X}
C {lab_wire.sym} 160 570 1 1 {name=VCM sig_type=std_logic lab=VCM}
C {lab_wire.sym} 160 550 2 0 {name=VGND1 sig_type=std_logic lab=VGND}
C {lab_wire.sym} 160 530 1 0 {name=VDPWR1 sig_type=std_logic lab=VDPWR}
C {lab_wire.sym} -270 480 0 1 {name=VCM2 sig_type=std_logic lab=VCM}
C {lab_wire.sym} -270 410 0 1 {name=VCM3 sig_type=std_logic lab=VCM}
C {lab_wire.sym} 110 380 2 0 {name=VGND2 sig_type=std_logic lab=VGND}
C {lab_wire.sym} 110 400 2 0 {name=VDPWR2 sig_type=std_logic lab=VDPWR}
C {lab_wire.sym} 40 450 3 0 {name=OTA_INN sig_type=std_logic lab=OTA_INN}
C {lab_wire.sym} 680 430 0 1 {name=OTA_INN1 sig_type=std_logic lab=OTA_INN}
C {lab_wire.sym} 40 430 3 1 {name=OTA_INP sig_type=std_logic lab=OTA_INP}
