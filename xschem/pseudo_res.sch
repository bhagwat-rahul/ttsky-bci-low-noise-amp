v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -30 0 30 -0 {lab=PR_INTERNAL}
N -70 30 70 30 {lab=PR_INTERNAL}
N -70 -60 -70 -30 {lab=A}
N 70 -60 70 -30 {lab=B}
N -140 0 -70 0 {lab=VDPWR}
N -140 0 -140 60 {lab=VDPWR}
N -140 60 140 60 {lab=VDPWR}
N 140 -0 140 60 {lab=VDPWR}
N 70 0 140 0 {lab=VDPWR}
N -0 0 -0 30 {lab=PR_INTERNAL}
C {sky130_fd_pr/pfet_01v8.sym} -50 0 2 0 {name=M1
W=8
L=0.42
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
C {sky130_fd_pr/pfet_01v8.sym} 50 0 2 1 {name=M2
W=8
L=0.42
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
C {iopin.sym} -70 -60 3 0 {name=A lab=A}
C {iopin.sym} 70 -60 3 0 {name=B lab=B}
C {iopin.sym} 0 60 1 0 {name=VDPWR lab=VDPWR}
C {lab_pin.sym} 0 0 1 0 {name=PR_INTERNAL sig_type=std_logic lab=PR_INTERNAL}
