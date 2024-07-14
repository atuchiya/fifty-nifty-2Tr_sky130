v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {07 Current Mirror} -140 -480 0 0 0.8 0.8 {layer=8}
T {Copy Iin to Iout. Change the parameter X to multiply Iout
Ideally, Iout is independent to Vout
but the internal resistance (rds) affects Iout} -140 -420 0 0 0.4 0.4 {}
N 120 -60 120 -40 {
lab=GND}
N -140 -130 -140 -110 {
lab=VDD}
N -140 -50 -140 -30 {
lab=GND}
N 120 -240 120 -220 {
lab=VDD}
N 110 -90 120 -90 {
lab=GND}
N 110 -90 110 -50 {
lab=GND}
N 110 -50 120 -50 {
lab=GND}
N 240 -60 240 -40 {
lab=GND}
N 240 -90 250 -90 {
lab=GND}
N 250 -90 250 -50 {
lab=GND}
N 240 -50 250 -50 {
lab=GND}
N 160 -90 200 -90 {
lab=#net1}
N 120 -160 120 -120 {
lab=#net1}
N 180 -140 180 -90 {
lab=#net1}
N 120 -140 180 -140 {
lab=#net1}
N 240 -160 240 -120 {
lab=#net2}
N -60 -130 -60 -110 {
lab=vout}
N -60 -50 -60 -30 {
lab=GND}
N 240 -240 240 -220 {
lab=vout}
C {sky130_fd_pr/corner.sym} -140 -300 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/gnd.sym} 120 -40 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -190 40 0 0 {name=param only_toplevel=false value=".param L=0.6
.param W=60
.param X=2"}
C {devices/gnd.sym} -140 -30 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -140 -80 0 0 {name=Vdd value=1.8 savecurrent=false}
C {devices/code_shown.sym} 20 40 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* DC analysis
dc Iin 0 1m 0.01m vout 0.6 1.8 0.3
plot i(Viout)
.endc"}
C {devices/vdd.sym} -140 -130 0 0 {name=l4 lab=VDD}
C {devices/vdd.sym} 120 -240 0 0 {name=l5 lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 140 -90 0 1 {name=M1
L=L
W=W
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/ammeter.sym} 240 -190 0 0 {name=Viout savecurrent=true}
C {sky130_fd_pr/nfet_01v8.sym} 220 -90 0 0 {name=M2
L=L
W="W*X"
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 240 -40 0 0 {name=l2 lab=GND}
C {devices/isource.sym} 120 -190 0 0 {name=Iin value=1m}
C {devices/gnd.sym} -60 -30 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -60 -80 0 0 {name=Vout value=1.8 savecurrent=false}
C {devices/lab_pin.sym} -60 -130 3 1 {name=p1 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 240 -240 0 1 {name=p2 sig_type=std_logic lab=vout}
