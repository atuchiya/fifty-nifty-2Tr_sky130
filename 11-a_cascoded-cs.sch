v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {11 Cascoded Common-Source Amplifier
(w/ resistive load)} 20 -590 0 0 0.8 0.8 {layer=8}
T {Achieve higher output impedance than normal common-source amplifier} 20 -480 0 0 0.4 0.4 {}
N 120 -60 120 -40 {
lab=GND}
N 120 -90 130 -90 {
lab=GND}
N 130 -90 130 -50 {
lab=GND}
N 120 -50 130 -50 {
lab=GND}
N -380 -130 -380 -110 {
lab=VDD}
N -380 -50 -380 -30 {
lab=GND}
N -310 -50 -310 -30 {
lab=GND}
N -310 -130 -310 -110 {
lab=vin}
N 60 -90 80 -90 {
lab=vin}
N 120 -140 120 -120 {
lab=#net1}
N 120 -320 120 -300 {
lab=#net2}
N -130 -120 -130 -100 {
lab=vout}
N -130 -40 -130 -30 {
lab=GND}
N 120 -220 160 -220 {
lab=vout}
N 120 -170 130 -170 {
lab=#net1}
N 130 -170 130 -130 {
lab=#net1}
N 120 -130 130 -130 {
lab=#net1}
N 60 -170 80 -170 {
lab=vbias}
N 120 -240 120 -200 {
lab=vout}
N -200 -50 -200 -30 {
lab=GND}
N -200 -130 -200 -110 {
lab=vbias}
N 360 -60 360 -40 {
lab=GND}
N 360 -90 370 -90 {
lab=GND}
N 370 -90 370 -50 {
lab=GND}
N 360 -50 370 -50 {
lab=GND}
N 300 -90 320 -90 {
lab=vin}
N 360 -240 360 -220 {
lab=#net3}
N 360 -140 400 -140 {
lab=vout2}
N 360 -160 360 -120 {
lab=vout2}
N -60 -120 -60 -100 {
lab=vout2}
N -60 -40 -60 -30 {
lab=GND}
N 120 -400 120 -380 {
lab=VDD}
N 360 -320 360 -300 {
lab=VDD}
C {sky130_fd_pr/corner.sym} -140 -300 0 0 {name=CORNER only_toplevel=true corner=tt}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 100 -90 0 0 {name=M1
L=L
W=W
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/gnd.sym} 120 -40 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -190 40 0 0 {name=param only_toplevel=false value=".param L=0.15
.param W=15
.param Vib=0.8
.param Vbias=1.2"}
C {devices/gnd.sym} -380 -30 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -380 -80 0 0 {name=Vdd value=1.8 savecurrent=false}
C {devices/vsource.sym} -310 -80 0 0 {name=Vin value="DC Vib AC 1"  savecurrent=false}
C {devices/gnd.sym} -310 -30 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -310 -130 1 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 60 -90 0 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/code_shown.sym} 20 40 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* DC analysis (I/O curve)
dc vin 0 1.8 0.01
plot vout vout2
plot i(Vd) i(Vd2)

* AC analysis
set units=degree
ac dec 20 1e6 1e10
plot vdb(vout) vdb(vout2)
plot vp(vout) vp(vout2)
plot V(vout)/i(Vd)
.endc"}
C {devices/vdd.sym} -380 -130 0 0 {name=l4 lab=VDD}
C {devices/res.sym} 120 -270 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 120 -400 0 0 {name=l5 lab=VDD}
C {devices/lab_pin.sym} 160 -220 2 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/code_shown.sym} 20 370 0 0 {name=measure only_toplevel=false value=".measure dc Vop find v(vout) at=Vib
.measure dc Vop2 find v(vout2) at=Vib
.measure ac gain find Vdb(vout) at=1e6
.measure ac ugf when Vdb(vout)=0"}
C {devices/lab_pin.sym} -130 -120 1 0 {name=p4 sig_type=std_logic lab=vout}
C {devices/capa.sym} -130 -70 0 0 {name=Cload
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -130 -30 0 0 {name=l7 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 100 -170 0 0 {name=M2
L=L
W=W
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 60 -170 0 0 {name=p5 sig_type=std_logic lab=vbias}
C {devices/vsource.sym} -200 -80 0 0 {name=Vbias value=Vbias  savecurrent=false}
C {devices/gnd.sym} -200 -30 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -200 -130 1 0 {name=p6 sig_type=std_logic lab=vbias}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 340 -90 0 0 {name=M3
L=L
W=W
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/gnd.sym} 360 -40 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 300 -90 0 0 {name=p7 sig_type=std_logic lab=vin}
C {devices/res.sym} 360 -190 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 360 -320 0 0 {name=l9 lab=VDD}
C {devices/lab_pin.sym} 400 -140 2 0 {name=p8 sig_type=std_logic lab=vout2}
C {devices/lab_pin.sym} -60 -120 1 0 {name=p9 sig_type=std_logic lab=vout2}
C {devices/capa.sym} -60 -70 0 0 {name=Cload2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -60 -30 0 0 {name=l10 lab=GND}
C {devices/ammeter.sym} 120 -350 0 0 {name=Vd savecurrent=true}
C {devices/ammeter.sym} 360 -270 0 0 {name=Vd2 savecurrent=true}
