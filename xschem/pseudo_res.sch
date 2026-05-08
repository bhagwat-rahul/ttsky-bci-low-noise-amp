v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -100 -20 -100 10 {lab=A}
N -60 10 -60 40 {lab=B}
N -100 40 -60 40 {lab=B}
N 90 -20 90 10 {lab=B}
N 50 10 50 40 {lab=A}
N 50 40 90 40 {lab=A}
C {sky130_fd_pr/pfet_01v8.sym} -80 10 0 1 {name=M1
W=0.42
L=10
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
C {iopin.sym} -100 -20 1 1 {name=A lab=A}
C {iopin.sym} 90 -20 3 0 {name=B lab=B}
C {sky130_fd_pr/pfet_01v8.sym} 70 10 0 0 {name=M2
W=0.42
L=10
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
C {lab_pin.sym} -60 40 0 1 {name=B2 sig_type=std_logic lab=B}
C {lab_pin.sym} 50 40 0 0 {name=A2 sig_type=std_logic lab=A}
