v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 20 -90 20 90 {lab=VGND}
N -0 -60 -0 60 {lab=VCM}
N -120 0 -120 190 {lab=VCM}
N -120 190 -30 190 {lab=VCM}
N 30 190 120 190 {lab=VGND}
N 120 -0 120 190 {lab=VGND}
N 20 0 120 -0 {lab=VGND}
N -120 -0 -0 0 {lab=VCM}
N -0 120 120 120 {lab=VGND}
C {iopin.sym} 20 0 0 0 {name=VGND lab=VGND}
C {iopin.sym} 0 -120 3 0 {name=VDPWR lab=VDPWR}
C {opin.sym} 0 0 2 0 {name=VCM lab=VCM}
C {sky130_fd_pr/cap_mim_m3_1.sym} 0 190 1 0 {name=C_VCM model=cap_mim_m3_1 W=25 L=25 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 0 -90 0 1 {name=R_VCM_TOP
L=175
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 0 90 0 1 {name=R_VCM_BOTTOM
L=175
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
