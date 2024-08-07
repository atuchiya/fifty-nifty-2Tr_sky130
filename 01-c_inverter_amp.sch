v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {01 Ubiquitous Digital Inverter: As amplifier} 20 -390 0 0 0.8 0.8 {layer=8}
T {Wp/Wn is tuned to switch at Vin=0.9 V
(logic threshold voltage = 0.9 V)} 20 -330 0 0 0.4 0.4 {}
N 120 -60 120 -40 {
lab=GND}
N 120 -90 130 -90 {
lab=GND}
N 130 -90 130 -50 {
lab=GND}
N 120 -50 130 -50 {
lab=GND}
N -240 -130 -240 -110 {
lab=VDD}
N -240 -50 -240 -30 {
lab=GND}
N -170 -50 -170 -30 {
lab=GND}
N -170 -130 -170 -110 {
lab=vin}
N 60 -90 80 -90 {
lab=vin}
N 120 -140 120 -120 {
lab=vout}
N 120 -220 120 -200 {
lab=VDD}
N 60 -170 80 -170 {
lab=vin}
N 60 -170 60 -90 {
lab=vin}
N 40 -130 60 -130 {
lab=vin}
N 120 -170 130 -170 {
lab=VDD}
N 130 -210 130 -170 {
lab=VDD}
N 120 -210 130 -210 {
lab=VDD}
N -60 -120 -60 -100 {
lab=vout}
N -60 -40 -60 -30 {
lab=GND}
N 120 -130 160 -130 {
lab=vout}
C {sky130_fd_pr/corner.sym} -140 -300 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/gnd.sym} 120 -40 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -190 40 0 0 {name=param only_toplevel=false value=".param Wp=6
.param Wn=1.5
.param Vib=0.9"}
C {devices/gnd.sym} -240 -30 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -240 -80 0 0 {name=Vdd value=1.8 savecurrent=false}
C {devices/vsource.sym} -170 -80 0 0 {name=Vin value="DC Vib AC 1"  savecurrent=false}
C {devices/gnd.sym} -170 -30 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -170 -130 1 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 40 -130 0 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/code_shown.sym} 20 40 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all
save @m.xm1.msky130_fd_pr__nfet_01v8[gm]
save @m.xm1.msky130_fd_pr__nfet_01v8[gds]
save @m.xm2.msky130_fd_pr__pfet_01v8[gm]
save @m.xm2.msky130_fd_pr__pfet_01v8[gds]

* DC analysis
dc Vin 0 1.8 0.01
plot vout

* AC analysis
ac dec 20 1e6 1e10
set units=degree
plot vdb(vout)
plot vp(vout)
.endc"}
C {devices/vdd.sym} -240 -130 0 0 {name=l4 lab=VDD}
C {devices/vdd.sym} 120 -220 0 0 {name=l5 lab=VDD}
C {devices/lab_pin.sym} 160 -130 2 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/code_shown.sym} 20 420 0 0 {name=measure only_toplevel=false value=".measure dc gmn find @m.xm1.msky130_fd_pr__nfet_01v8[gm] at=Vib
.measure dc gdsn find @m.xm1.msky130_fd_pr__nfet_01v8[gds] at=Vib
.measure dc gmp find @m.xm2.msky130_fd_pr__pfet_01v8[gm] at=Vib
.measure dc gdsp find @m.xm2.msky130_fd_pr__pfet_01v8[gds] at=Vib
.measure ac gain find Vdb(vout) at=1e6"}
C {sky130_fd_pr/pfet_01v8.sym} 100 -170 0 0 {name=M2
L=0.15
W=Wp
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 100 -90 0 0 {name=M1
L=0.15
W=Wn
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -60 -120 1 0 {name=p4 sig_type=std_logic lab=vout}
C {devices/capa.sym} -60 -70 0 0 {name=Cload
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -60 -30 0 0 {name=l7 lab=GND}
