v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {nMOSFET Characteristics} 10 -430 0 0 0.8 0.8 {layer=8}
T {Id-Vgs, gm-Vgs, gm/Id-Vgs
Body effect
Id-Vds, gds-Vds} 10 -370 0 0 0.4 0.4 {}
N 120 -130 120 -110 {
lab=#net1}
N -190 -130 -190 -110 {
lab=vgs}
N -190 -50 -190 -30 {
lab=GND}
N -120 -50 -120 -30 {
lab=GND}
N -120 -130 -120 -110 {
lab=vds}
N 60 -80 80 -80 {
lab=vgs}
N 120 -50 120 -30 {
lab=GND}
N 120 -210 120 -190 {
lab=vds}
N -50 -50 -50 -30 {
lab=GND}
N -50 -130 -50 -110 {
lab=vbs}
N 120 -80 210 -80 {
lab=vbs}
N 400 -130 400 -110 {
lab=#net2}
N 340 -80 360 -80 {
lab=vgs}
N 400 -50 400 -30 {
lab=GND}
N 400 -210 400 -190 {
lab=vds}
N 400 -80 490 -80 {
lab=vbs}
C {devices/gnd.sym} -190 -30 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 100 -80 0 0 {name=M1
L=0.15
W=W
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/vsource.sym} -190 -80 0 0 {name=Vgs value=0.9 savecurrent=false}
C {devices/vsource.sym} -120 -80 0 0 {name=Vds value=0.9 savecurrent=false}
C {devices/ammeter.sym} 120 -160 0 0 {name=Vd_lvt savecurrent=true}
C {devices/code_shown.sym} 20 40 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all
save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.xm2.msky130_fd_pr__nfet_01v8[gm]
save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[vth]
save @m.xm2.msky130_fd_pr__nfet_01v8[vth]
save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gds]
save @m.xm2.msky130_fd_pr__nfet_01v8[gds]

* DC analysis: Id-Vgs, gm-Vgs, gm/ID-Vgs
dc vgs 0 1.8 0.01
plot i(Vd_lvt) i(Vd_svt)
plot ylog i(Vd_lvt) i(Vd_svt)
plot @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
+ @m.xm2.msky130_fd_pr__nfet_01v8[gm]
plot @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]/i(Vd_lvt)
+ @m.xm2.msky130_fd_pr__nfet_01v8[gm]/i(Vd_svt)

* DC analysis: Id-Vgs with body effect (Vbs)
dc vgs 0 1.8 0.01 vbs -1.8 0.6 0.3
plot i(Vd_lvt) i(Vd_svt)

* DC analysis: Vth vs. Vbs
dc vbs -1.8 0.6 0.01
plot @m.xm1.msky130_fd_pr__nfet_01v8_lvt[vth]
+ @m.xm2.msky130_fd_pr__nfet_01v8[vth]

* DC analysis: Id-Vds, gds-Vds
dc vds 0 1.8 0.01 vgs 0 1.8 0.3
plot i(Vd_lvt) i(Vd_svt)
plot @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
+ @m.xm2.msky130_fd_pr__nfet_01v8[gm]
plot @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gds]
plot @m.xm2.msky130_fd_pr__nfet_01v8[gds]
.endc"}
C {sky130_fd_pr/corner.sym} -140 -310 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -190 -130 1 0 {name=p1 sig_type=std_logic lab=vgs}
C {devices/gnd.sym} -120 -30 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -120 -130 1 0 {name=p2 sig_type=std_logic lab=vds}
C {devices/lab_pin.sym} 120 -210 2 0 {name=p3 sig_type=std_logic lab=vds}
C {devices/lab_pin.sym} 60 -80 2 1 {name=p4 sig_type=std_logic lab=vgs}
C {devices/gnd.sym} 120 -30 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -50 -80 0 0 {name=Vbs value=0.0 savecurrent=false}
C {devices/gnd.sym} -50 -30 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -50 -130 1 0 {name=p5 sig_type=std_logic lab=vbs}
C {devices/lab_pin.sym} 210 -80 2 0 {name=p6 sig_type=std_logic lab=vbs}
C {sky130_fd_pr/nfet_01v8.sym} 380 -80 0 0 {name=M2
L=0.15
W=W
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/ammeter.sym} 400 -160 0 0 {name=Vd_svt savecurrent=true}
C {devices/lab_pin.sym} 400 -210 2 0 {name=p7 sig_type=std_logic lab=vds}
C {devices/lab_pin.sym} 340 -80 2 1 {name=p8 sig_type=std_logic lab=vgs}
C {devices/gnd.sym} 400 -30 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 490 -80 2 0 {name=p9 sig_type=std_logic lab=vbs}
C {devices/code_shown.sym} -200 40 0 0 {name=param only_toplevel=false value=".param W=15"}
