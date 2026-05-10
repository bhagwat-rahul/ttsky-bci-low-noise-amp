v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -430 -360 -400 -360 {lab=VGND}
N -260 -360 -230 -360 {lab=VGND}
N -400 -360 -260 -360 {lab=VGND}
N -430 -400 -230 -400 {lab=#net1}
N -460 -490 -200 -490 {lab=VDPWR}
N -460 -520 -200 -520 {lab=TAIL_P}
N -330 -600 -330 -520 {lab=TAIL_P}
N -390 -600 -360 -600 {lab=VDPWR}
N -460 -460 -460 -360 {lab=#net1}
N -460 -400 -430 -400 {lab=#net1}
N -200 -460 -200 -360 {lab=VOUT}
C {sky130_fd_pr/pfet_01v8.sym} -480 -490 0 0 {name=MDIFF_P
W=48
L=16
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
C {sky130_fd_pr/pfet_01v8.sym} -180 -490 0 1 {name=MDIFF_N
W=48
L=16
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
C {sky130_fd_pr/pfet_01v8.sym} -360 -620 3 1 {name=MTAIL
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
C {sky130_fd_pr/nfet_01v8.sym} -430 -380 3 1 {name=MLOAD_REF
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
C {sky130_fd_pr/nfet_01v8.sym} -230 -380 1 0 {name=MLOAD_OUT
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
C {lab_wire.sym} -330 -490 3 0 {name=VDPWR1 sig_type=std_logic lab=VDPWR}
C {lab_wire.sym} -330 -560 0 1 {name=TAIL_P sig_type=std_logic lab=TAIL_P}
C {ipin.sym} -500 -490 0 0 {name=VIN_P lab=VIN_P}
C {ipin.sym} -160 -490 2 0 {name=VIN_N lab=VIN_N}
C {ipin.sym} -360 -640 1 0 {name=BIAS_P lab=BIAS_P}
C {iopin.sym} -390 -600 0 1 {name=VDPWR lab=VDPWR}
C {iopin.sym} -330 -360 1 0 {name=VGND lab=VGND}
C {opin.sym} -200 -410 0 0 {name=VOUT lab=VOUT}
