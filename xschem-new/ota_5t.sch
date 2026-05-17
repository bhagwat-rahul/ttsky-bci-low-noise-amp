v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -100 70 -70 70 {lab=VGND}
N 70 70 100 70 {lab=VGND}
N -70 70 70 70 {lab=VGND}
N -100 30 100 30 {lab=#net1}
N -130 -60 130 -60 {lab=VDPWR}
N -130 -90 130 -90 {lab=TAIL_P}
N 0 -170 0 -90 {lab=TAIL_P}
N -60 -170 -30 -170 {lab=VDPWR}
N -130 -30 -130 70 {lab=#net1}
N -130 30 -100 30 {lab=#net1}
N 130 -30 130 70 {lab=VOUT}
C {sky130_fd_pr/pfet_01v8.sym} -150 -60 0 0 {name=MDIFF_P
W=48
L=4
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
C {sky130_fd_pr/pfet_01v8.sym} 150 -60 0 1 {name=MDIFF_N
W=48
L=4
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
C {sky130_fd_pr/pfet_01v8.sym} -30 -190 3 1 {name=MTAIL
W=0.5
L=8
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
C {sky130_fd_pr/nfet_01v8.sym} -100 50 3 1 {name=MLOAD_REF
W=8
L=16
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
C {sky130_fd_pr/nfet_01v8.sym} 100 50 1 0 {name=MLOAD_OUT
W=8
L=16
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
C {lab_wire.sym} 0 -60 3 0 {name=VDPWR1 sig_type=std_logic lab=VDPWR}
C {lab_wire.sym} 0 -130 0 1 {name=TAIL_P sig_type=std_logic lab=TAIL_P}
C {ipin.sym} -170 -60 0 0 {name=VIN_P lab=VIN_P}
C {ipin.sym} 170 -60 2 0 {name=VIN_N lab=VIN_N}
C {ipin.sym} -30 -210 1 0 {name=BIAS_P lab=BIAS_P}
C {iopin.sym} -60 -170 0 1 {name=VDPWR lab=VDPWR}
C {iopin.sym} 0 70 1 0 {name=VGND lab=VGND}
C {opin.sym} 130 20 0 0 {name=VOUT lab=VOUT}
