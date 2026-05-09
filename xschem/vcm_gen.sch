v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -20 -0 20 -0 {lab=VGND}
N 40 -80 40 -30 {lab=VDPWR}
N -40 -80 -40 -30 {lab=VDPWR}
N -40 -80 40 -80 {lab=VDPWR}
N -40 120 40 120 {lab=VCM}
N -40 30 -40 120 {lab=VCM}
N 40 30 40 120 {lab=VCM}
N -0 0 -0 40 {lab=VGND}
N 0 100 0 120 {lab=VCM}
C {iopin.sym} 0 0 3 0 {name=VGND lab=VGND}
C {iopin.sym} 0 -80 3 0 {name=VDPWR lab=VDPWR}
C {opin.sym} 0 120 1 0 {name=VCM lab=VCM}
C {sky130_fd_pr/cap_mim_m3_1.sym} 0 70 0 0 {name=C_VCM model=cap_mim_m3_1 W=25 L=25 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -40 0 0 1 {name=R_VCM_TOP
L=175
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 40 0 0 0 {name=R_VCM_BOTTOM
L=175
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
