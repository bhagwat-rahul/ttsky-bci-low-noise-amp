v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Differential pair that forms basis for a 5 transistor OTA.
Voltage of vin_1 is subtracted from vin_2.} -260 -220 0 0 0.4 0.4 {}
N -100 30 -100 100 {lab=#net1}
N 100 30 100 100 {lab=#net1}
N -100 100 100 100 {lab=#net1}
N 140 -0 220 0 {lab=vin_2}
N -220 -0 -140 0 {lab=VIN_P}
N -0 -80 -0 -30 {lab=VDPWR}
N -0 -30 100 -30 {lab=VDPWR}
N -100 -30 -0 -30 {lab=VDPWR}
C {sky130_fd_pr/pfet_01v8.sym} -120 0 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 120 0 0 1 {name=M2
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
C {ipin.sym} -220 0 0 0 {name=VIN_P
lab=VIN_P}
C {ipin.sym} 220 0 0 1 {name=VIN_N
lab=VIN_N}
C {iopin.sym} 0 -80 3 0 {name=VDPWR lab=VDPWR}
