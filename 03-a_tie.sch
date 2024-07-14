v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {03 Tie-Zero / Tie-One} -140 -480 0 0 0.8 0.8 {layer=8}
T {ESD-safe constant logic-0 / logic-1 signal
(Direct connection of gate node to power/ground rail is dangerous
because ESD discharge may destroy MOS gate)} -140 -420 0 0 0.4 0.4 {}
N 170 -50 170 -30 {
lab=GND}
N -80 -130 -80 -110 {
lab=VDD}
N -80 -50 -80 -30 {
lab=GND}
N 170 -130 170 -110 {
lab=vout_zero}
N 90 -200 90 -180 {
lab=VDD}
N 80 -150 90 -150 {
lab=VDD}
N 80 -190 80 -150 {
lab=VDD}
N 80 -190 90 -190 {
lab=VDD}
N 90 -120 90 -80 {
lab=#net1}
N 170 -80 180 -80 {
lab=GND}
N 180 -80 180 -40 {
lab=GND}
N 170 -40 180 -40 {
lab=GND}
N 90 -80 130 -80 {
lab=#net1}
N 130 -150 130 -100 {
lab=#net1}
N 90 -100 130 -100 {
lab=#net1}
N 440 -50 440 -30 {
lab=GND}
N 430 -80 440 -80 {
lab=GND}
N 430 -80 430 -40 {
lab=GND}
N 430 -40 440 -40 {
lab=GND}
N 480 -130 480 -80 {
lab=#net2}
N 440 -130 480 -130 {
lab=#net2}
N 440 -160 480 -160 {
lab=#net2}
N 440 -160 440 -110 {
lab=#net2}
N 520 -210 520 -190 {
lab=VDD}
N 520 -200 530 -200 {
lab=VDD}
N 530 -200 530 -160 {
lab=VDD}
N 520 -160 530 -160 {
lab=VDD}
N 520 -130 520 -110 {
lab=vout_one}
N 290 -50 290 -30 {
lab=GND}
N 170 -130 290 -130 {
lab=vout_zero}
N 290 -130 290 -110 {
lab=vout_zero}
N 520 -50 520 -30 {
lab=GND}
N 520 -110 560 -110 {
lab=vout_one}
C {sky130_fd_pr/corner.sym} -140 -300 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/gnd.sym} 170 -30 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -190 40 0 0 {name=param only_toplevel=false value=".param Wp=1.5
.param Wn=1.5"}
C {devices/gnd.sym} -80 -30 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -80 -80 0 0 {name=Vdd value=1.8 savecurrent=false}
C {devices/code_shown.sym} 20 40 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* DC analysis (I/O curve)
dc vdd 0 1.8 0.01
plot vout_zero vout_one
.endc"}
C {devices/vdd.sym} -80 -130 0 0 {name=l4 lab=VDD}
C {devices/vdd.sym} 90 -200 0 0 {name=l5 lab=VDD}
C {devices/lab_pin.sym} 170 -130 1 0 {name=p1 sig_type=std_logic lab=vout_zero}
C {sky130_fd_pr/pfet_01v8.sym} 110 -150 0 1 {name=M2
L=0.15
W=Wp
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 150 -80 0 0 {name=M1
L=0.15
W=Wn
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 500 -160 0 0 {name=M3
L=0.15
W=Wp
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 460 -80 0 1 {name=M4
L=0.15
W=Wn
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 440 -30 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 520 -210 0 0 {name=l6 lab=VDD}
C {devices/lab_pin.sym} 560 -110 2 0 {name=p2 sig_type=std_logic lab=vout_one}
C {devices/capa.sym} 290 -80 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 290 -30 0 0 {name=l7 lab=GND}
C {devices/capa.sym} 520 -80 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 520 -30 0 0 {name=l8 lab=GND}
