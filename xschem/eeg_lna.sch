v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {This is a an lna consisting of a 5T-OTA and an internally generated bias current.
To be used for dry EEG data acquisition} -470 -490 0 0 0.4 0.4 {}
N 120 -150 120 -110 {lab=VOUT}
N -120 -210 120 -210 {lab=VGND}
N 120 -110 120 -60 {lab=VOUT}
N -120 -150 -120 -60 {lab=MIRROR_BIAS_N}
N -80 -180 80 -180 {lab=MIRROR_BIAS_N}
N -120 0 120 0 {lab=TAIL_P}
N 0 0 0 40 {lab=TAIL_P}
N 0 100 0 250 {lab=VDPWR}
N -0 -180 -0 -150 {lab=MIRROR_BIAS_N}
N -120 -150 0 -150 {lab=MIRROR_BIAS_N}
N 120 -110 300 -110 {lab=VOUT}
N -120 -30 120 -30 {lab=VDPWR}
N 50 -30 50 250 {lab=VDPWR}
N -340 110 -310 110 {lab=VDPWR}
N -310 70 -280 70 {lab=BIAS_P}
N -310 -10 -280 -10 {lab=BIAS_P}
N -340 -50 -310 -50 {lab=VGND}
N -0 -240 0 -210 {lab=VGND}
N -420 -240 0 -240 {lab=VGND}
N -380 250 240 250 {lab=VDPWR}
N -0 70 0 100 {lab=VDPWR}
N -420 -240 -420 -0 {lab=VGND}
N -420 -50 -340 -50 {lab=VGND}
N -280 70 -40 70 {lab=BIAS_P}
N -120 -210 -120 -180 {lab=VGND}
N 120 -210 120 -180 {lab=VGND}
N -340 110 -340 250 {lab=VDPWR}
N -280 -50 -280 110 {lab=BIAS_P}
N 160 -40 160 -30 {lab=VIN_N}
N 160 -110 160 -100 {lab=VOUT}
N 270 -110 270 -80 {lab=VOUT}
N 160 -30 270 -30 {lab=VIN_N}
N 270 -60 270 -30 {lab=VIN_N}
N -560 -110 -560 -100 {lab=EEG_REF}
N -560 -40 -560 -30 {lab=VIN_P}
N -230 50 -230 70 {lab=BIAS_P}
N -210 50 -160 50 {lab=VIN_P}
N -160 -30 -160 50 {lab=VIN_P}
C {sky130_fd_pr/nfet_01v8.sym} -100 -180 2 0 {name=M1
W=40
L=1.0
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 100 -180 2 1 {name=M2
W=40
L=1.0
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} -420 -110 0 1 {name=VGND lab=VGND}
C {ipin.sym} -560 -110 0 0 {name=EEG_REF lab=EEG_REF}
C {sky130_fd_pr/pfet_01v8.sym} -140 -30 2 1 {name=M3
W=60
L=1.0
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 140 -30 2 0 {name=M4
W=60
L=1.0
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -20 70 2 1 {name=M5
W=15
L=1.0
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {iopin.sym} 0 250 1 0 {name=VDPWR lab=VDPWR}
C {opin.sym} 300 -110 0 0 {name=VOUT lab=VOUT}
C {sky130_fd_pr/pfet_01v8.sym} -310 90 3 1 {name=M6
W=10
L=1.0
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -310 -30 1 1 {name=M7
W=5
L=1.0
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 270 0 0 0 {name=CIN model=cap_mim_m3_1 W=40 L=40 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -560 -70 0 0 {name=CREF model=cap_mim_m3_1 W=40 L=40 MF=1 spiceprefix=X}
C {lab_wire.sym} 160 -30 2 0 {name=VIN_N sig_type=std_logic lab=VIN_N}
C {lab_wire.sym} -160 -30 1 0 {name=VIN_P sig_type=std_logic lab=VIN_P}
C {lab_wire.sym} -560 -30 0 0 {name=VIN_P_CREF sig_type=std_logic lab=VIN_P}
C {lab_wire.sym} -40 0 3 0 {name=TAIL_P sig_type=std_logic lab=TAIL_P}
C {lab_wire.sym} 30 -180 3 0 {name=MIRROR_BIAS_N sig_type=std_logic lab=MIRROR_BIAS_N}
C {pseudo_res.sym} -220 -100 3 1 {name=xpinbias}
C {pseudo_res.sym} 420 -70 0 1 {name=x2}
C {sky130_fd_pr/cap_mim_m3_1.sym} 160 -70 0 0 {name=C1 model=cap_mim_m3_1 W=5 L=5 MF=1 spiceprefix=X}
C {lab_wire.sym} -150 70 0 0 {name=BIAS_P2 sig_type=std_logic lab=BIAS_P}
C {ipin.sym} 270 30 3 0 {name=EEG_IN lab=EEG_IN}
