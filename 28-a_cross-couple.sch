v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {28 Cross-Coupled Pair
(negative resistance)} 20 -530 0 0 0.8 0.8 {layer=8}
T {Realizes a negative resistance} 20 -420 0 0 0.4 0.4 {}
N -170 -50 -170 -30 {
lab=GND}
N -170 -130 -170 -110 {
lab=vp}
N -60 -50 -60 -30 {
lab=GND}
N -60 -130 -60 -110 {
lab=vn}
N 200 -60 200 -40 {
lab=GND}
N 290 -160 290 -140 {
lab=#net1}
N 110 -140 290 -140 {
lab=#net1}
N 110 -160 110 -140 {
lab=#net1}
N 200 -140 200 -120 {
lab=#net1}
N 150 -190 170 -190 {
lab=#net2}
N 290 -260 290 -220 {
lab=#net2}
N 230 -190 250 -190 {
lab=#net3}
N 170 -190 220 -240 {
lab=#net2}
N 220 -240 290 -240 {
lab=#net2}
N 170 -240 230 -190 {
lab=#net3}
N 110 -240 170 -240 {
lab=#net3}
N 110 -260 110 -220 {
lab=#net3}
N 290 -340 290 -320 {
lab=vn}
N 110 -340 110 -320 {
lab=vp}
N 100 -190 110 -190 {
lab=#net1}
N 100 -190 100 -150 {
lab=#net1}
N 100 -150 110 -150 {
lab=#net1}
N 290 -190 300 -190 {
lab=#net1}
N 300 -190 300 -150 {
lab=#net1}
N 290 -150 300 -150 {
lab=#net1}
C {sky130_fd_pr/corner.sym} -140 -300 0 0 {name=CORNER only_toplevel=true corner=tt}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 130 -190 0 1 {name=M1
L=L
W=W
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/code_shown.sym} -190 40 0 0 {name=param only_toplevel=false value=".param L=0.15
.param W=15
.param Vbias=0.9"}
C {devices/vsource.sym} -170 -80 0 0 {name=Vp value="DC Vbias AC 1"  savecurrent=false}
C {devices/gnd.sym} -170 -30 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -170 -130 1 0 {name=p2 sig_type=std_logic lab=vp}
C {devices/code_shown.sym} 20 40 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* DC analysis
dc vp 0 1.8 0.01
plot i(Vip) i(Vin)

* AC analysis
ac dec 20 1e6 1e9
plot i(Vip)/V(vp)
.endc"}
C {devices/vsource.sym} -60 -80 0 0 {name=Vn value=Vbias  savecurrent=false}
C {devices/gnd.sym} -60 -30 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -60 -130 1 0 {name=p6 sig_type=std_logic lab=vn}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 270 -190 0 0 {name=M2
L=L
W=W
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/isource.sym} 200 -90 0 0 {name=I0 value=1m}
C {devices/gnd.sym} 200 -40 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 110 -340 1 0 {name=p1 sig_type=std_logic lab=vp}
C {devices/lab_pin.sym} 290 -340 1 0 {name=p3 sig_type=std_logic lab=vn}
C {devices/ammeter.sym} 110 -290 0 0 {name=Vip savecurrent=true}
C {devices/ammeter.sym} 290 -290 0 0 {name=Vin savecurrent=true}
