v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {MOSFET as a capacitor (MOSCAP)} -140 -520 0 0 0.8 0.8 {layer=8}
T {Gate-channel capacitor is used as a capacitor.
From integral of the current, this moscap is equivalent to 1.5 pF.
Note that MOSCAP is a voltage-dependent capcacitor,
so not completely equivalent to ideal capacitor.} -140 -460 0 0 0.4 0.4 {}
N -100 -50 -100 -30 {
lab=GND}
N -100 -130 -100 -110 {
lab=vin}
N 120 -270 120 -250 {
lab=vin}
N 120 -130 120 -40 {
lab=GND}
N 80 -130 90 -130 {
lab=GND}
N 80 -130 80 -40 {
lab=GND}
N 80 -40 120 -40 {
lab=GND}
N 150 -130 160 -130 {
lab=GND}
N 160 -130 160 -40 {
lab=GND}
N 120 -40 160 -40 {
lab=GND}
N 120 -190 120 -170 {
lab=#net1}
N 290 -70 290 -40 {
lab=GND}
N 290 -270 290 -250 {
lab=vin}
N 290 -190 290 -130 {
lab=vc}
C {sky130_fd_pr/corner.sym} -140 -300 0 0 {name=CORNER only_toplevel=true corner=tt}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 120 -150 1 0 {name=M1
L=L
W=W
nf=1 mult=M
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/gnd.sym} 120 -40 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -140 40 0 0 {name=param only_toplevel=false value=".param L=1.5
.param W=15
.param M=10"}
C {devices/vsource.sym} -100 -80 0 0 {name=Vin value="pwl 0 0 1u 1.8" savecurrent=false}
C {devices/gnd.sym} -100 -30 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -100 -130 1 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 120 -270 2 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/code_shown.sym} 20 40 0 0 {name=spice only_toplevel=false value=".option savecurrent
.ic v(vc)=0
.control
save all

* TRAN analysis
tran 1n 2u
plot vin
plot i(Vi1) i(Vi2)
plot integ(i(Vi1)) integ(i(Vi2))
.endc"}
C {devices/ammeter.sym} 120 -220 0 0 {name=Vi1 savecurrent=true}
C {devices/capa.sym} 290 -100 0 0 {name=C1
m=1
value=1.5p
footprint=1206
device="ceramic capacitor"}
C {devices/ammeter.sym} 290 -220 0 0 {name=Vi2 savecurrent=true}
C {devices/gnd.sym} 290 -40 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 290 -270 2 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 290 -160 2 0 {name=p4 sig_type=std_logic lab=vc}
