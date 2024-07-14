v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {02 Dynamic-Vth MOS Inverter: I/O curve} -140 -480 0 0 0.8 0.8 {layer=8}
T {High input voltage may destroy devices (latch-up or well diode turn-on)} -140 -420 0 0 0.4 0.4 {}
T {UNDER CONSTRUCTION} 30 -290 0 0 0.8 0.8 {layer=7}
N 120 -60 120 -40 {
lab=GND}
N 120 -90 130 -90 {
lab=vin}
N 130 -90 130 -50 {
lab=vin}
N -180 -130 -180 -110 {
lab=VDD}
N -180 -50 -180 -30 {
lab=GND}
N -110 -50 -110 -30 {
lab=GND}
N -110 -130 -110 -110 {
lab=vin}
N 60 -90 80 -90 {
lab=vin}
N 120 -140 120 -120 {
lab=vout}
N 120 -220 120 -200 {
lab=#net1}
N 260 -130 260 -110 {
lab=vout}
N 120 -130 260 -130 {
lab=vout}
N 260 -50 260 -40 {
lab=GND}
N 60 -170 80 -170 {
lab=vin}
N 60 -170 60 -90 {
lab=vin}
N 40 -130 60 -130 {
lab=vin}
N 120 -170 130 -170 {
lab=vin}
N 130 -210 130 -170 {
lab=vin}
N 120 -300 120 -280 {
lab=VDD}
N 500 -60 500 -40 {
lab=GND}
N 500 -90 510 -90 {
lab=GND}
N 510 -90 510 -50 {
lab=GND}
N 500 -50 510 -50 {
lab=GND}
N 440 -90 460 -90 {
lab=vin}
N 500 -140 500 -120 {
lab=vout2}
N 500 -220 500 -200 {
lab=#net2}
N 640 -130 640 -110 {
lab=vout2}
N 500 -130 640 -130 {
lab=vout2}
N 640 -50 640 -40 {
lab=GND}
N 440 -170 460 -170 {
lab=vin}
N 440 -170 440 -90 {
lab=vin}
N 420 -130 440 -130 {
lab=vin}
N 500 -170 510 -170 {
lab=#net2}
N 510 -210 510 -170 {
lab=#net2}
N 500 -210 510 -210 {
lab=#net2}
N 500 -300 500 -280 {
lab=VDD}
N 70 -210 70 -170 {
lab=vin}
N 70 -210 130 -210 {
lab=vin}
N 70 -90 70 -50 {
lab=vin}
N 70 -50 130 -50 {
lab=vin}
C {sky130_fd_pr/corner.sym} -140 -300 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/gnd.sym} 120 -40 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -190 40 0 0 {name=param only_toplevel=false value=".param Wp=1.5
.param Wn=1.5"}
C {devices/gnd.sym} -180 -30 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -180 -80 0 0 {name=Vdd value=0.6 savecurrent=false}
C {devices/vsource.sym} -110 -80 0 0 {name=Vin value=0.3  savecurrent=false}
C {devices/gnd.sym} -110 -30 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -110 -130 1 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 40 -130 0 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/code_shown.sym} 20 40 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* DC analysis (I/O curve)
dc vin 0 0.6 0.01
plot vout vout2
plot i(vd) i(vd2)
.endc"}
C {devices/vdd.sym} -180 -130 0 0 {name=l4 lab=VDD}
C {devices/vdd.sym} 120 -300 0 0 {name=l5 lab=VDD}
C {devices/lab_pin.sym} 260 -130 2 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/capa.sym} 260 -80 0 0 {name=Cload
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 260 -40 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 20 250 0 0 {name=measure only_toplevel=false value=".measure dc Vinv when v(vout)=0.3"}
C {sky130_fd_pr/pfet_01v8.sym} 100 -170 0 0 {name=M2
L=0.15
W=Wp
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 100 -90 0 0 {name=M1
L=0.15
W=Wn
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/ammeter.sym} 120 -250 0 0 {name=Vd savecurrent=true}
C {devices/gnd.sym} 500 -40 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 420 -130 0 0 {name=p4 sig_type=std_logic lab=vin}
C {devices/vdd.sym} 500 -300 0 0 {name=l8 lab=VDD}
C {devices/lab_pin.sym} 640 -130 2 0 {name=p5 sig_type=std_logic lab=vout2}
C {devices/capa.sym} 640 -80 0 0 {name=Cload1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 640 -40 0 0 {name=l9 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 480 -170 0 0 {name=M3
L=0.15
W=Wp
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 480 -90 0 0 {name=M4
L=0.15
W=Wn
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/ammeter.sym} 500 -250 0 0 {name=Vd2 savecurrent=true}
