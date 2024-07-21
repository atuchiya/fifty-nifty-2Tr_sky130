v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {14 Transmission-Gate} 20 -470 0 0 0.8 0.8 {layer=8}
T {rail-to-rail switch} 20 -410 0 0 0.4 0.4 {}
N -230 -200 -230 -180 {
lab=v1}
N -230 -120 -230 -100 {
lab=GND}
N -160 -200 -160 -180 {
lab=von}
N -160 -120 -160 -100 {
lab=GND}
N -60 -40 -60 -20 {
lab=GND}
N -60 -120 -60 -100 {
lab=#net1}
N -110 -130 -100 -130 {
lab=GND}
N -110 -130 -110 -110 {
lab=GND}
N -160 -110 -110 -110 {
lab=GND}
N -100 -190 -100 -170 {
lab=von}
N -160 -190 -100 -190 {
lab=von}
N -60 -200 -60 -180 {
lab=von_b}
N -300 -120 -300 -100 {
lab=GND}
N -300 -200 -300 -180 {
lab=VDD}
N 180 -150 180 -90 {
lab=GND}
N 180 -260 180 -210 {
lab=VDD}
N 140 -260 150 -260 {
lab=#net2}
N 140 -260 140 -90 {
lab=#net2}
N 140 -90 150 -90 {
lab=#net2}
N 120 -170 140 -170 {
lab=#net2}
N 210 -90 220 -90 {
lab=GND}
N 220 -260 220 -90 {
lab=GND}
N 210 -260 220 -260 {
lab=GND}
N 220 -170 240 -170 {
lab=GND}
N 180 -320 180 -300 {
lab=von_b}
N 180 -50 180 -30 {
lab=von}
N 40 -170 60 -170 {
lab=v1}
C {sky130_fd_pr/corner.sym} -140 -420 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code_shown.sym} 20 40 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* DC analysis
dc von 0 1.8 0.1
plot i(Vitg)
plot ylog i(Vitg)
plot ylog 1.8/i(Vitg)
.endc"}
C {sky130_fd_pr/nfet_01v8.sym} 180 -70 3 0 {name=M1
L=L_n
W=W_n
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} -230 -150 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} -230 -200 3 1 {name=p1 sig_type=std_logic lab=v1}
C {devices/gnd.sym} -160 -100 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -160 -150 0 0 {name=Von value=0 savecurrent=false}
C {devices/lab_pin.sym} -160 -200 3 1 {name=p3 sig_type=std_logic lab=von}
C {devices/lab_pin.sym} 40 -170 2 1 {name=p4 sig_type=std_logic lab=v1}
C {devices/code_shown.sym} -190 40 0 0 {name=param only_toplevel=false value=".param L_n=0.15
.param W_n=15
.param L_p=0.15
.param W_p=60"}
C {devices/vcvs.sym} -60 -150 0 0 {name=E1 value=-1}
C {devices/vsource.sym} -60 -70 0 0 {name=Von_b value=1.8 savecurrent=false}
C {devices/gnd.sym} -60 -20 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -60 -200 3 1 {name=p5 sig_type=std_logic lab=von_b}
C {sky130_fd_pr/pfet_01v8.sym} 180 -280 3 1 {name=M11
L=L_p
W=W_p
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} -300 -150 0 0 {name=Vdd value=1.8 savecurrent=false}
C {devices/gnd.sym} -300 -100 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -300 -200 0 0 {name=l4 lab=VDD}
C {devices/vdd.sym} 180 -210 2 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 180 -150 2 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 180 -320 0 1 {name=p7 sig_type=std_logic lab=von_b}
C {devices/lab_pin.sym} 180 -30 0 1 {name=p8 sig_type=std_logic lab=von}
C {devices/gnd.sym} 240 -170 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} -230 -100 0 0 {name=l8 lab=GND}
C {devices/ammeter.sym} 90 -170 3 0 {name=Vitg savecurrent=true}
