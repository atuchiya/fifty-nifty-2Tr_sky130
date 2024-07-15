v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {MOSFET as a variable resistor} 20 -380 0 0 0.8 0.8 {layer=8}
T {MOSFET is a variable resistor in linear region
(Vds < Vgs - Vth, Vgs > Vth).} 20 -320 0 0 0.4 0.4 {}
N 120 -60 120 -40 {
lab=GND}
N 120 -90 130 -90 {
lab=GND}
N 130 -90 130 -50 {
lab=GND}
N 120 -50 130 -50 {
lab=GND}
N -120 -130 -120 -110 {
lab=vctrl}
N -120 -50 -120 -30 {
lab=GND}
N -50 -50 -50 -30 {
lab=GND}
N -50 -130 -50 -110 {
lab=vin}
N 120 -140 120 -120 {
lab=#net1}
N 60 -90 80 -90 {
lab=vctrl}
N 120 -220 120 -200 {
lab=vin}
C {sky130_fd_pr/corner.sym} -140 -300 0 0 {name=CORNER only_toplevel=true corner=tt}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 100 -90 0 0 {name=M1
L=0.15
W=W
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/gnd.sym} 120 -40 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -130 40 0 0 {name=param only_toplevel=false value=".param W=15"}
C {devices/gnd.sym} -120 -30 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -120 -80 0 0 {name=Vctrl value=0.9 savecurrent=false}
C {devices/vsource.sym} -50 -80 0 0 {name=Vin value=0.9 savecurrent=false}
C {devices/lab_pin.sym} -120 -130 1 0 {name=p1 sig_type=std_logic lab=vctrl}
C {devices/gnd.sym} -50 -30 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -50 -130 1 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 120 -220 2 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 60 -90 0 0 {name=p4 sig_type=std_logic lab=vctrl}
C {devices/code_shown.sym} 20 40 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* DC analysis
dc vin 0 0.5 0.01 vctrl 1.2 1.8 0.3
plot i(Vd)
plot vin/i(Vd)
.endc"}
C {devices/ammeter.sym} 120 -170 0 0 {name=Vd savecurrent=true}
