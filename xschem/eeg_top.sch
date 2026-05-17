v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -500 -100 -460 -100 {lab=EEG_IN}
N -500 100 -460 100 {lab=EEG_REF}
N -400 100 -160 100 {lab=OTA_INN}
N -160 20 -160 100 {lab=OTA_INN}
N -160 20 -150 20 {lab=OTA_INN}
N -200 100 -200 120 {lab=OTA_INN}
N -200 120 -0 120 {lab=OTA_INN}
N -400 -100 -400 -0 {lab=OTA_INP}
N -400 0 -150 0 {lab=OTA_INP}
N -180 -20 -150 -20 {lab=BIAS_P}
N -260 -120 -260 -0 {lab=OTA_INP}
N -260 -120 -0 -120 {lab=OTA_INP}
N 60 -120 260 -120 {lab=VOUT}
N 260 -120 260 -0 {lab=VOUT}
N 150 0 260 -0 {lab=VOUT}
N 60 120 260 120 {lab=VOUT}
N 260 0 260 120 {lab=VOUT}
N -340 -140 -340 -0 {lab=OTA_INP}
N -340 100 -340 170 {lab=OTA_INN}
N -340 190 -300 190 {lab=BIAS_VCM}
N -300 60 -300 190 {lab=BIAS_VCM}
N -340 -160 -280 -160 {lab=BIAS_VCM}
N -280 -160 -280 60 {lab=BIAS_VCM}
N -300 60 -280 60 {lab=BIAS_VCM}
N -340 -180 150 -180 {lab=VDPWR}
N 150 -180 150 -20 {lab=VDPWR}
N -340 -220 -340 -180 {lab=VDPWR}
N -640 -220 -340 -220 {lab=VDPWR}
N -640 -220 -640 240 {lab=VDPWR}
N -640 240 -340 240 {lab=VDPWR}
N -340 210 -340 240 {lab=VDPWR}
N -300 20 -290 20 {lab=VDPWR}
N -290 20 -290 240 {lab=VDPWR}
N -350 240 -290 240 {lab=VDPWR}
N -180 -40 170 -40 {lab=VGND}
N 170 -40 170 20 {lab=VGND}
N 150 20 170 20 {lab=VGND}
N 150 20 150 40 {lab=VGND}
N -300 40 150 40 {lab=VGND}
N -340 -220 -180 -220 {lab=VDPWR}
N -180 -220 -180 -60 {lab=VDPWR}
C {ota_5t.sym} 0 0 0 0 {name=x1}
C {pseudo_res_c.sym} -380 190 2 1 {name=x2}
C {bias_gen.sym} -210 -40 2 1 {name=x3}
C {pseudo_res_c.sym} -380 -160 0 0 {name=x4}
C {lab_wire.sym} -150 -20 0 1 {name=BIAS_P sig_type=std_logic lab=BIAS_P}
C {ipin.sym} -500 -100 0 0 {name=EEG_IN lab=EEG_IN}
C {ipin.sym} -500 100 0 0 {name=EEG_REF lab=EEG_REF}
C {bias_gen.sym} -330 40 2 1 {name=xVCM_GEN}
C {iopin.sym} -340 -220 0 0 {name=VDPWR lab=VDPWR}
C {iopin.sym} 170 20 0 0 {name=VGND lab=VGND}
C {opin.sym} 260 0 0 0 {name=VOUT lab=VOUT}
C {lab_wire.sym} -300 0 0 0 {name=OTA_INP sig_type=std_logic lab=OTA_INP}
C {lab_wire.sym} -160 100 0 0 {name=OTA_INN sig_type=std_logic lab=OTA_INN}
C {lab_wire.sym} -300 180 3 1 {name=BIAS_VCM sig_type=std_logic lab=BIAS_VCM}
C {sky130_fd_pr/cap_mim_m3_1.sym} -430 -100 1 0 {name=Cin1 model=cap_mim_m3_1 W=30 L=30 MF=2 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -430 100 1 0 {name=Cin2 model=cap_mim_m3_1 W=30 L=30 MF=2 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 30 -120 1 0 {name=Cf1 model=cap_mim_m3_1 W=16 L=16 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 30 120 1 0 {name=Cf2 model=cap_mim_m3_1 W=16 L=16 MF=1 spiceprefix=X}
