v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {03 Tie-Zero / Tie-One} 20 -420 0 0 0.8 0.8 {layer=8}
T {ESD-safe constant logic-0 / logic-1 signal
(Direct connection of gate node to power/ground rail is dangerous
because ESD discharge may destroy MOS gate)} 20 -360 0 0 0.4 0.4 {}
N 170 -50 170 -30 {
lab=GND}
N -190 -130 -190 -110 {
lab=VDD}
N -190 -50 -190 -30 {
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
N 390 -50 390 -30 {
lab=GND}
N 380 -80 390 -80 {
lab=GND}
N 380 -80 380 -40 {
lab=GND}
N 380 -40 390 -40 {
lab=GND}
N 430 -130 430 -80 {
lab=#net2}
N 390 -130 430 -130 {
lab=#net2}
N 390 -160 430 -160 {
lab=#net2}
N 390 -160 390 -110 {
lab=#net2}
N 470 -210 470 -190 {
lab=VDD}
N 470 -200 480 -200 {
lab=VDD}
N 480 -200 480 -160 {
lab=VDD}
N 470 -160 480 -160 {
lab=VDD}
N 470 -130 470 -110 {
lab=vout_one}
N -50 -50 -50 -30 {
lab=GND}
N -120 -50 -120 -30 {
lab=GND}
N -120 -130 -120 -110 {
lab=vout_zero}
N -50 -130 -50 -110 {
lab=vout_one}
C {sky130_fd_pr/corner.sym} -140 -350 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/gnd.sym} 170 -30 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -190 40 0 0 {name=param only_toplevel=false value=".param Wp=1.5
.param Wn=1.5
.param Cload=100f"}
C {devices/gnd.sym} -190 -30 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -190 -80 0 0 {name=Vdd value=1.8 savecurrent=false}
C {devices/code_shown.sym} 20 40 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* DC analysis (I/O curve)
dc vdd 0 1.8 0.01
plot vout_zero vout_one
.endc"}
C {devices/vdd.sym} -190 -130 0 0 {name=l4 lab=VDD}
C {devices/vdd.sym} 90 -200 0 0 {name=l5 lab=VDD}
C {devices/lab_pin.sym} 170 -130 2 0 {name=p1 sig_type=std_logic lab=vout_zero}
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
C {sky130_fd_pr/pfet_01v8.sym} 450 -160 0 0 {name=M3
L=0.15
W=Wp
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 410 -80 0 1 {name=M4
L=0.15
W=Wn
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 390 -30 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 470 -210 0 0 {name=l6 lab=VDD}
C {devices/lab_pin.sym} 470 -110 2 0 {name=p2 sig_type=std_logic lab=vout_one}
C {devices/capa.sym} -50 -80 0 0 {name=C2
m=1
value=Cload
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -50 -30 0 0 {name=l8 lab=GND}
C {devices/capa.sym} -120 -80 0 0 {name=C1
m=1
value=Cload
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -120 -30 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} -120 -130 1 0 {name=p3 sig_type=std_logic lab=vout_zero}
C {devices/lab_pin.sym} -50 -130 1 0 {name=p4 sig_type=std_logic lab=vout_one}
