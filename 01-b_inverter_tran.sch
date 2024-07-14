v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {01 Ubiquitous Digital Inverter: Waveform} -140 -550 0 0 0.8 0.8 {layer=8}
T {Performace measures
td_r : signal propagation delay (rising edge)
td_f : signal propagation delay (falling edge)
trise : rise time
tfall : fall time} -140 -490 0 0 0.4 0.4 {}
N 120 -60 120 -40 {
lab=GND}
N 120 -90 130 -90 {
lab=GND}
N 130 -90 130 -50 {
lab=GND}
N 120 -50 130 -50 {
lab=GND}
N -180 -130 -180 -110 {
lab=VDD}
N -180 -50 -180 -30 {
lab=GND}
N -110 -50 -110 -30 {
lab=GND}
N -110 -130 -110 -110 {
lab=vin}
N 60 -90 80 -90 {
lab=vin}
N 120 -140 120 -120 {
lab=vout}
N 120 -220 120 -200 {
lab=#net1}
N 260 -130 260 -110 {
lab=vout}
N 120 -130 260 -130 {
lab=vout}
N 260 -50 260 -40 {
lab=GND}
N 60 -170 80 -170 {
lab=vin}
N 60 -170 60 -90 {
lab=vin}
N 40 -130 60 -130 {
lab=vin}
N 120 -170 130 -170 {
lab=#net1}
N 130 -210 130 -170 {
lab=#net1}
N 120 -210 130 -210 {
lab=#net1}
N 120 -300 120 -280 {
lab=VDD}
C {sky130_fd_pr/corner.sym} -140 -300 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/gnd.sym} 120 -40 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -190 40 0 0 {name=param only_toplevel=false value=".param Wp=6
.param Wn=1.5"}
C {devices/gnd.sym} -180 -30 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -180 -80 0 0 {name=Vdd value=1.8 savecurrent=false}
C {devices/vsource.sym} -110 -80 0 0 {name=Vin value="pwl 0 0 10n 0 20n 1.8 60n 1.8 70n 0" savecurrent=false}
C {devices/gnd.sym} -110 -30 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -110 -130 1 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 40 -130 0 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/code_shown.sym} 20 40 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* TRAN analysis
tran 0.1n 100n
plot vin vout
plot i(vd)
.endc"}
C {devices/vdd.sym} -180 -130 0 0 {name=l4 lab=VDD}
C {devices/vdd.sym} 120 -300 0 0 {name=l5 lab=VDD}
C {devices/lab_pin.sym} 260 -130 2 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/capa.sym} 260 -80 0 0 {name=Cload
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 260 -40 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 20 250 0 0 {name=measure only_toplevel=false value=".measure tran td_r trig v(vin) val=0.9 fall=1 targ v(vout) val=0.9 rise=1
.measure tran td_f trig v(vin) val=0.9 rise=1 targ v(vout) val=0.9 fall=1
.measure tran trise trig v(vout) val=0.3 rise=1 targ v(vout) val=1.5 rise=1
.measure tran tfall trig v(vout) val=1.5 fall=1 targ v(vout) val=0.3 fall=1"}
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
C {devices/ammeter.sym} 120 -250 0 0 {name=Vd savecurrent=true}
