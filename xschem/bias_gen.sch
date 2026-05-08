v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -40 0 40 0 {lab=BIAS_P}
N -80 -30 80 -30 {lab=BIAS_P}
N 0 -30 0 0 {lab=BIAS_P}
N -80 0 -80 60 {lab=VDPWR}
N 80 0 80 60 {lab=VGND}
N 0 -70 0 -30 {lab=BIAS_P}
C {sky130_fd_pr/pfet_01v8.sym} -60 0 2 0 {name=M_BIAS_P
W=1
L=0.15
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
C {sky130_fd_pr/nfet_01v8.sym} 60 0 0 0 {name=M_BIAS_N
W=1
L=0.15
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
C {iopin.sym} -80 60 3 1 {name=VDPWR lab=VDPWR}
C {iopin.sym} 80 60 3 1 {name=VGND lab=VGND}
C {opin.sym} 0 -70 1 1 {name=BIAS_P lab=BIAS_P}
