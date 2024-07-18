v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 460 -330 600 -330 {}
L 4 550 -370 550 -170 {}
T {04 XNOR gate (NMOS Logic)} 20 -470 0 0 0.8 0.8 {layer=8}
T {XNOR gate with resistor biasing} 20 -410 0 0 0.4 0.4 {}
T {A} 480 -360 0 0 0.4 0.4 {}
T {B} 520 -360 0 0 0.4 0.4 {}
T {Y} 570 -360 0 0 0.4 0.4 {}
T {0} 480 -320 0 0 0.4 0.4 {}
T {0} 520 -320 0 0 0.4 0.4 {}
T {0} 480 -280 0 0 0.4 0.4 {}
T {1} 520 -280 0 0 0.4 0.4 {}
T {1} 480 -240 0 0 0.4 0.4 {}
T {0} 520 -240 0 0 0.4 0.4 {}
T {1} 480 -200 0 0 0.4 0.4 {}
T {1} 520 -200 0 0 0.4 0.4 {}
T {0} 570 -280 0 0 0.4 0.4 {}
T {1} 570 -320 0 0 0.4 0.4 {}
T {0} 570 -240 0 0 0.4 0.4 {}
T {1} 570 -200 0 0 0.4 0.4 {}
N -190 -130 -190 -110 {
lab=VDD}
N -190 -50 -190 -30 {
lab=GND}
N -110 -130 -110 -110 {
lab=va}
N -110 -50 -110 -30 {
lab=GND}
N 120 -90 130 -90 {
lab=vb}
N 210 -170 210 -130 {
lab=vy}
N 210 -150 230 -150 {
lab=vy}
N -50 -130 -50 -110 {
lab=vb}
N -50 -50 -50 -30 {
lab=GND}
N 340 -90 360 -90 {
lab=vb}
N 60 -90 80 -90 {
lab=va}
N 120 -60 120 -50 {
lab=vb}
N 300 -60 300 -50 {
lab=va}
N 130 -90 130 -50 {
lab=vb}
N 290 -90 300 -90 {
lab=va}
N 290 -90 290 -50 {
lab=va}
N 120 -130 120 -120 {
lab=vy}
N 120 -130 300 -130 {
lab=vy}
N 300 -130 300 -120 {
lab=vy}
N 290 -50 300 -50 {
lab=va}
N 120 -50 130 -50 {
lab=vb}
N 70 -90 70 -40 {
lab=va}
N 70 -40 300 -40 {
lab=va}
N 300 -50 300 -40 {
lab=va}
N 120 -50 120 -30 {
lab=vb}
N 120 -30 350 -30 {
lab=vb}
N 350 -90 350 -30 {
lab=vb}
N 210 -250 210 -230 {
lab=VDD}
C {sky130_fd_pr/corner.sym} -140 -300 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/gnd.sym} -190 -30 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -190 -80 0 0 {name=Vdd value=1.8 savecurrent=false}
C {devices/code_shown.sym} 20 40 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* DC analysis (IO curve)
dc va 0 1.8 0.01
plot vy

* Tran analysis
tran 0.01u 4u
plot va vb vy
.endc"}
C {devices/vdd.sym} -190 -130 0 0 {name=l4 lab=VDD}
C {devices/vdd.sym} 210 -250 0 0 {name=l5 lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 100 -90 0 0 {name=M1
L=L_n
W=W_n
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 320 -90 0 1 {name=M2
L=L_n
W=W_n
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} -110 -30 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -110 -80 0 0 {name=Va value="pwl 0 0 1u 0 2u 0 2.1u 1.8" savecurrent=false}
C {devices/lab_pin.sym} -110 -130 3 1 {name=p1 sig_type=std_logic lab=va}
C {devices/lab_pin.sym} 230 -150 0 1 {name=p2 sig_type=std_logic lab=vy}
C {devices/gnd.sym} -50 -30 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -50 -80 0 0 {name=Vb value="pwl 0 0 1u 0 1.1u 1.8 2u 1.8 2.1u 0 3u 0 3.1u 1.8" savecurrent=false}
C {devices/lab_pin.sym} -50 -130 3 1 {name=p3 sig_type=std_logic lab=vb}
C {devices/lab_pin.sym} 60 -90 2 1 {name=p4 sig_type=std_logic lab=va}
C {devices/lab_pin.sym} 360 -90 0 1 {name=p5 sig_type=std_logic lab=vb}
C {devices/code_shown.sym} 20 300 0 0 {name=measure only_toplevel=false value=".measure dc vinv when V(vy)=0.9"}
C {devices/code_shown.sym} -190 40 0 0 {name=param only_toplevel=false value=".param L_n=0.15
.param W_n=1.5
.param L_p=0.15
.param W_p=6"}
C {devices/res.sym} 210 -200 0 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
