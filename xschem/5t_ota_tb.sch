v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -200 -80 -0 -80 {lab=0}
N -280 -80 -200 -80 {lab=0}
N -280 -80 -280 60 {lab=0}
N -280 60 -200 60 {lab=0}
N -200 60 200 60 {lab=0}
N 200 60 200 80 {lab=0}
N 200 80 230 80 {lab=0}
N 230 80 280 80 {lab=0}
N 280 -80 280 80 {lab=0}
N 0 -80 280 -80 {lab=0}
N 150 -0 280 0 {lab=0}
N -200 -20 -150 -20 {lab=#net1}
N -200 -0 -150 -0 {lab=#net2}
N 150 20 230 20 {lab=#net3}
C {/foss/designs/ttsky-bci-low-noise-amp/xschem/5t_ota.sym} 0 0 0 0 {name=x1}
C {vsource.sym} -200 -50 2 0 {name=V1 value="DC 0.9" savecurrent=false}
C {vsource.sym} -200 30 0 0 {name=V2 value="DC 0.9" savecurrent=false}
C {vsource.sym} 230 50 0 0 {name=V3 value="DC 1.8" savecurrent=false}
C {gnd.sym} 0 -80 2 0 {name=l1 lab=0}
