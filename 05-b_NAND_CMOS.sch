v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 460 -340 600 -340 {}
L 4 550 -380 550 -180 {}
T {05 NAND gate (CMOS Logic)} 20 -470 0 0 0.8 0.8 {layer=8}
T {CMOS NAND gate} 20 -410 0 0 0.4 0.4 {}
T {A} 480 -370 0 0 0.4 0.4 {}
T {B} 520 -370 0 0 0.4 0.4 {}
T {Y} 570 -370 0 0 0.4 0.4 {}
T {0} 480 -330 0 0 0.4 0.4 {}
T {0} 520 -330 0 0 0.4 0.4 {}
T {0} 480 -290 0 0 0.4 0.4 {}
T {1} 520 -290 0 0 0.4 0.4 {}
T {1} 480 -250 0 0 0.4 0.4 {}
T {0} 520 -250 0 0 0.4 0.4 {}
T {1} 480 -210 0 0 0.4 0.4 {}
T {1} 520 -210 0 0 0.4 0.4 {}
T {1} 570 -290 0 0 0.4 0.4 {}
T {1} 570 -330 0 0 0.4 0.4 {}
T {1} 570 -250 0 0 0.4 0.4 {}
T {0} 570 -210 0 0 0.4 0.4 {}
N -190 -130 -190 -110 {
lab=VDD}
N -190 -50 -190 -30 {
lab=GND}
N -110 -130 -110 -110 {
lab=va}
N -110 -50 -110 -30 {
lab=GND}
N 180 -140 180 -120 {
lab=#net1}
N 180 -170 190 -170 {
lab=GND}
N 190 -170 190 -50 {
lab=GND}
N 180 -50 190 -50 {
lab=GND}
N 180 -60 180 -40 {
lab=GND}
N 180 -90 190 -90 {
lab=GND}
N 180 -220 200 -220 {
lab=vy}
N -50 -130 -50 -110 {
lab=vb}
N -50 -50 -50 -30 {
lab=GND}
N 120 -170 140 -170 {
lab=vb}
N 120 -90 140 -90 {
lab=va}
N 260 -240 260 -230 {
lab=vy}
N 180 -230 260 -230 {
lab=vy}
N 100 -230 180 -230 {
lab=vy}
N 100 -240 100 -230 {
lab=vy}
N 180 -230 180 -200 {
lab=vy}
N 100 -310 100 -300 {
lab=VDD}
N 100 -310 260 -310 {
lab=VDD}
N 260 -310 260 -300 {
lab=VDD}
N 180 -320 180 -310 {
lab=VDD}
N 100 -270 110 -270 {
lab=VDD}
N 110 -310 110 -270 {
lab=VDD}
N 260 -270 270 -270 {
lab=VDD}
N 270 -310 270 -270 {
lab=VDD}
N 260 -310 270 -310 {
lab=VDD}
N 200 -270 220 -270 {
lab=vb}
N 40 -270 60 -270 {
lab=va}
C {sky130_fd_pr/corner.sym} -140 -300 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/gnd.sym} 180 -40 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -170 40 0 0 {name=param only_toplevel=false value=".param L_n=0.15
.param W_n=1.5
.param L_p=0.15
.param W_p=6"}
C {devices/gnd.sym} -190 -30 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -190 -80 0 0 {name=Vdd value=1.8 savecurrent=false}
C {devices/code_shown.sym} 20 40 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* DC analysis (IO curve)
dc va 0 1.8 0.01 vb 1.8
plot vy

* Tran analysis
tran 0.01u 4u
plot va vb vy
.endc"}
C {devices/vdd.sym} -190 -130 0 0 {name=l4 lab=VDD}
C {devices/vdd.sym} 180 -320 0 0 {name=l5 lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 160 -90 0 0 {name=M1
L=L_n
W=W_n
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 160 -170 0 0 {name=M2
L=L_n
W=W_n
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} -110 -30 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -110 -80 0 0 {name=Va value="pwl 0 0 1u 0 2u 0 2.1u 1.8" savecurrent=false}
C {devices/lab_pin.sym} -110 -130 3 1 {name=p1 sig_type=std_logic lab=va}
C {devices/lab_pin.sym} 200 -220 0 1 {name=p2 sig_type=std_logic lab=vy}
C {devices/gnd.sym} -50 -30 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -50 -80 0 0 {name=Vb value="pwl 0 0 1u 0 1.1u 1.8 2u 1.8 2.1u 0 3u 0 3.1u 1.8" savecurrent=false}
C {devices/lab_pin.sym} -50 -130 3 1 {name=p3 sig_type=std_logic lab=vb}
C {devices/lab_pin.sym} 120 -90 2 1 {name=p4 sig_type=std_logic lab=va}
C {devices/lab_pin.sym} 120 -170 2 1 {name=p5 sig_type=std_logic lab=vb}
C {devices/code_shown.sym} 20 300 0 0 {name=measure only_toplevel=false value=".measure dc vinv when V(vy)=0.9"}
C {sky130_fd_pr/pfet_01v8.sym} 80 -270 0 0 {name=M11
L=L_p
W=W_p
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 240 -270 0 0 {name=M3
L=L_p
W=W_p
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 200 -270 2 1 {name=p6 sig_type=std_logic lab=vb}
C {devices/lab_pin.sym} 40 -270 2 1 {name=p7 sig_type=std_logic lab=va}
