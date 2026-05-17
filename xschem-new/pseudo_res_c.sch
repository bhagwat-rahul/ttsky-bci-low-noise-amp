v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
T {Topology C from paper:-
https://cmosedu.com/jbaker/students/sachin/100%20-%20Low%20Cutoff%20Frequency%20Integrated%20Neural%20Amplifiers%20Using%20Symmetrical%20Pseudo%20Resistors.pdf?utm_source=chatgpt.com} -420 -190 0 0 0.2 0.2 {}
N -120 -30 -80 -30 {lab=#net1}
N -120 -30 -120 0 {lab=#net1}
N 120 -30 120 0 {lab=#net1}
N 80 -30 120 -30 {lab=#net1}
N -80 -30 80 -30 {lab=#net1}
N -80 -0 80 0 {lab=VDPWR}
C {sky130_fd_pr/pfet_01v8.sym} -100 0 0 0 {name=P1
W=0.5
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
C {iopin.sym} -80 30 1 0 {name=A lab=A}
C {iopin.sym} 80 30 1 0 {name=B lab=B}
C {sky130_fd_pr/pfet_01v8.sym} 100 0 2 0 {name=P2
W=0.5
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
C {iopin.sym} 0 0 1 0 {name=VDPWR lab=VDPWR}
