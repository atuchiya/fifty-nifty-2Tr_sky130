v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Common-Drain Amplifier (Source Follower)} 20 -380 0 0 0.8 0.8 {layer=8}
T {<0 dB gain, high input impedance, low output impedance, non-inverting amplifier
} 20 -320 0 0 0.4 0.4 {}
N 120 -60 120 -40 {
lab=GND}
N -250 -130 -250 -110 {
lab=VDD}
N -250 -50 -250 -30 {
lab=GND}
N -180 -50 -180 -30 {
lab=GND}
N -180 -130 -180 -110 {
lab=vin}
N 60 -170 80 -170 {
lab=vin}
N 120 -140 120 -120 {
lab=vout}
N 120 -220 120 -200 {
lab=VDD}
N 120 -170 130 -170 {
lab=vout}
N 130 -170 130 -130 {
lab=vout}
N -60 -120 -60 -100 {
lab=vout}
N -60 -40 -60 -30 {
lab=GND}
N 120 -130 160 -130 {
lab=vout}
C {sky130_fd_pr/corner.sym} -140 -300 0 0 {name=CORNER only_toplevel=true corner=tt}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 100 -170 0 0 {name=M1
L=L
W=W
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/gnd.sym} 120 -40 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -190 40 0 0 {name=param only_toplevel=false value=".param L=0.15
.param W=15
.param Vbias=0.8"}
C {devices/gnd.sym} -250 -30 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -250 -80 0 0 {name=Vdd value=1.8 savecurrent=false}
C {devices/vsource.sym} -180 -80 0 0 {name=Vin value="DC Vbias AC 1"  savecurrent=false}
C {devices/gnd.sym} -180 -30 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -180 -130 1 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 60 -170 0 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/code_shown.sym} 20 40 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all
save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gds]

* DC analysis (I/O curve)
dc vin 0 1.8 0.01
plot vout

* AC analysis
set units=degree
ac dec 20 1e6 1e10
plot vdb(vout)
plot vp(vout)
.endc"}
C {devices/vdd.sym} -250 -130 0 0 {name=l4 lab=VDD}
C {devices/res.sym} 120 -90 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 120 -220 0 0 {name=l5 lab=VDD}
C {devices/lab_pin.sym} 160 -130 2 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/code_shown.sym} 20 370 0 0 {name=measure only_toplevel=false value=".measure dc gm find @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm] at=Vbias
.measure dc gds find @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gds] at=Vbias
.measure ac gain find Vdb(vout) at=1e6
.measure ac ugf when Vdb(vout)=0"}
C {devices/lab_pin.sym} -60 -120 1 0 {name=p4 sig_type=std_logic lab=vout}
C {devices/capa.sym} -60 -70 0 0 {name=Cload
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -60 -30 0 0 {name=l7 lab=GND}
