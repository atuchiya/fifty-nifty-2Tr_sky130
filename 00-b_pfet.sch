v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {pMOSFET Characteristics} 10 -410 0 0 0.8 0.8 {layer=8}
T {Id-Vgs, gm-Vgs, gm/Id-Vgs
Body effect
Id-Vds, gds-Vds} 10 -350 0 0 0.4 0.4 {}
N 120 -40 120 -20 {
lab=vds}
N -270 -150 -270 -130 {
lab=VDD}
N -270 -70 -270 -50 {
lab=GND}
N -190 -70 -190 -50 {
lab=vgs}
N -190 -150 -190 -130 {
lab=VDD}
N 60 -150 80 -150 {
lab=vgs}
N 120 -120 120 -100 {
lab=#net1}
N -50 -70 -50 -50 {
lab=vbs}
N -120 -150 -120 -130 {
lab=VDD}
N 120 -150 210 -150 {
lab=vbs}
N -270 -150 -270 -130 {
lab=VDD}
N -270 -70 -270 -50 {
lab=GND}
N -120 -70 -120 -50 {
lab=vds}
N -50 -150 -50 -130 {
lab=VDD}
N 120 -200 120 -180 {
lab=VDD}
N 380 -40 380 -20 {
lab=vds}
N 320 -150 340 -150 {
lab=vgs}
N 380 -120 380 -100 {
lab=#net2}
N 380 -150 470 -150 {
lab=vbs}
N 380 -200 380 -180 {
lab=VDD}
C {devices/vsource.sym} -190 -100 0 0 {name=Vgs value=0.9 savecurrent=false}
C {devices/vsource.sym} -120 -100 0 0 {name=Vds value=0.9 savecurrent=false}
C {devices/ammeter.sym} 120 -70 0 0 {name=Vd_lvt savecurrent=true}
C {devices/code_shown.sym} 20 40 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all
save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.xm2.msky130_fd_pr__pfet_01v8[gm]
save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
save @m.xm2.msky130_fd_pr__pfet_01v8[vth]
save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gds]
save @m.xm2.msky130_fd_pr__pfet_01v8[gds]

* DC analysis: Id-Vgs, gm-Vgs, gm/ID-Vgs
dc vgs 0 1.8 0.01
plot i(Vd_lvt) i(Vd_svt)
plot ylog i(Vd_lvt) i(Vd_svt)
plot @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
+ @m.xm2.msky130_fd_pr__pfet_01v8[gm]
plot @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]/i(Vd_lvt)
+ @m.xm2.msky130_fd_pr__pfet_01v8[gm]/i(Vd_svt)

* DC analysis: Id-Vgs with body effect (Vbs)
dc vgs 0 1.8 0.01 vbs -1.8 0.6 0.3
plot i(Vd_lvt) i(Vd_svt)

* DC analysis: Vth vs. Vbs
dc vbs -1.8 0.6 0.01
plot @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
+ @m.xm2.msky130_fd_pr__pfet_01v8[vth]

* DC analysis: Id-Vds, gds-Vds
dc vds 0 1.8 0.01 vgs 0 1.8 0.3
plot i(Vd_lvt) i(Vd_svt)
plot @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
+ @m.xm2.msky130_fd_pr__pfet_01v8[gm]
plot @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gds]
plot @m.xm2.msky130_fd_pr__pfet_01v8[gds]
.endc"}
C {sky130_fd_pr/corner.sym} -140 -310 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -190 -50 3 0 {name=p1 sig_type=std_logic lab=vgs}
C {devices/lab_pin.sym} -120 -50 3 0 {name=p2 sig_type=std_logic lab=vds}
C {devices/lab_pin.sym} 120 -20 2 0 {name=p3 sig_type=std_logic lab=vds}
C {devices/lab_pin.sym} 60 -150 2 1 {name=p4 sig_type=std_logic lab=vgs}
C {devices/vsource.sym} -50 -100 0 0 {name=Vbs value=0.0 savecurrent=false}
C {devices/lab_pin.sym} -50 -50 3 0 {name=p5 sig_type=std_logic lab=vbs}
C {devices/lab_pin.sym} 210 -150 2 0 {name=p6 sig_type=std_logic lab=vbs}
C {devices/code_shown.sym} -200 40 0 0 {name=param only_toplevel=false value=".param W=15"}
C {devices/gnd.sym} -270 -50 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -270 -100 0 0 {name=Vdd value=1.8 savecurrent=false}
C {devices/vdd.sym} -270 -150 0 0 {name=l7 lab=VDD}
C {devices/vdd.sym} -190 -150 0 0 {name=l1 lab=VDD}
C {devices/vdd.sym} -120 -150 0 0 {name=l2 lab=VDD}
C {devices/vdd.sym} -50 -150 0 0 {name=l4 lab=VDD}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 100 -150 0 0 {name=M1
L=0.35
W=W
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/vdd.sym} 120 -200 0 0 {name=l8 lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 360 -150 0 0 {name=M2
L=0.15
W=W
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/ammeter.sym} 380 -70 0 0 {name=Vd_svt savecurrent=true}
C {devices/lab_pin.sym} 380 -20 2 0 {name=p7 sig_type=std_logic lab=vds}
C {devices/lab_pin.sym} 320 -150 2 1 {name=p8 sig_type=std_logic lab=vgs}
C {devices/lab_pin.sym} 470 -150 2 0 {name=p9 sig_type=std_logic lab=vbs}
C {devices/vdd.sym} 380 -200 0 0 {name=l3 lab=VDD}
