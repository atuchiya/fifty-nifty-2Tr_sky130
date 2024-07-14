v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Common-Gate Amplifier} -140 -440 0 0 0.8 0.8 {layer=8}
T {High gain, low input impedance, high output impedance, non-inverting amplifier} -140 -380 0 0 0.4 0.4 {}
N -180 -130 -180 -110 {
lab=VDD}
N -180 -50 -180 -30 {
lab=GND}
N -110 -50 -110 -30 {
lab=GND}
N -110 -130 -110 -110 {
lab=vin}
N 200 -150 200 -130 {
lab=vout}
N 200 -230 200 -210 {
lab=VDD}
N 240 -130 240 -110 {
lab=vout}
N 240 -50 240 -40 {
lab=GND}
N 120 -190 120 -170 {
lab=VDD}
N 50 -130 90 -130 {
lab=vin}
N 120 -130 120 -120 {
lab=vin}
N 80 -120 120 -120 {
lab=vin}
N 80 -130 80 -120 {
lab=vin}
N 150 -130 240 -130 {
lab=vout}
C {sky130_fd_pr/corner.sym} -140 -300 0 0 {name=CORNER only_toplevel=true corner=tt}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 120 -150 1 0 {name=M1
L=L
W=W
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/code_shown.sym} -190 40 0 0 {name=param only_toplevel=false value=".param L=0.15
.param W=15
.param Vbias=1.0"}
C {devices/gnd.sym} -180 -30 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -180 -80 0 0 {name=Vdd value=1.8 savecurrent=false}
C {devices/vsource.sym} -110 -80 0 0 {name=Vin value="DC Vbias AC 1"  savecurrent=false}
C {devices/gnd.sym} -110 -30 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -110 -130 1 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 50 -130 0 0 {name=p3 sig_type=std_logic lab=vin}
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
C {devices/vdd.sym} -180 -130 0 0 {name=l4 lab=VDD}
C {devices/res.sym} 200 -180 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 200 -230 0 0 {name=l5 lab=VDD}
C {devices/lab_pin.sym} 240 -130 2 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/capa.sym} 240 -80 0 0 {name=Cload
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 240 -40 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 20 370 0 0 {name=measure only_toplevel=false value=".measure dc gm find @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm] at=Vbias
.measure dc gds find @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gds] at=Vbias
.measure ac gain find Vdb(vout) at=1e6
.measure ac ugf when Vdb(vout)=0"}
C {devices/vdd.sym} 120 -190 0 0 {name=l7 lab=VDD}
