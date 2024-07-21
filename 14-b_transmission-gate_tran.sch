v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {14 Transmission-Gate} 20 -530 0 0 0.8 0.8 {layer=8}
T {TG output v2tg swings rail-to-rail
pMOS switch output v2p cannot reach GND
nMOS switch output v2n cannot reach Vdd} 20 -470 0 0 0.4 0.4 {}
T {transmission-gate} 90 -380 0 0 0.4 0.4 {layer=11}
T {pMOS switch} 340 -380 0 0 0.4 0.4 {layer=11}
T {nMOS switch} 340 -30 0 0 0.4 0.4 {layer=11}
N -300 -410 -300 -390 {
lab=v1}
N -300 -330 -300 -310 {
lab=GND}
N -370 -220 -370 -200 {
lab=von}
N -370 -140 -370 -120 {
lab=GND}
N -270 -60 -270 -40 {
lab=GND}
N -270 -140 -270 -120 {
lab=#net1}
N -320 -150 -310 -150 {
lab=GND}
N -320 -150 -320 -130 {
lab=GND}
N -370 -130 -320 -130 {
lab=GND}
N -310 -210 -310 -190 {
lab=von}
N -370 -210 -310 -210 {
lab=von}
N -270 -220 -270 -200 {
lab=von_b}
N -370 -330 -370 -310 {
lab=GND}
N -370 -410 -370 -390 {
lab=VDD}
N 180 -170 180 -110 {
lab=GND}
N 180 -280 180 -230 {
lab=VDD}
N 140 -280 150 -280 {
lab=v1}
N 140 -280 140 -110 {
lab=v1}
N 140 -110 150 -110 {
lab=v1}
N 120 -190 140 -190 {
lab=v1}
N 210 -110 220 -110 {
lab=v2tg}
N 220 -280 220 -110 {
lab=v2tg}
N 210 -280 220 -280 {
lab=v2tg}
N 220 -190 240 -190 {
lab=v2tg}
N 180 -340 180 -320 {
lab=von_b}
N 180 -70 180 -50 {
lab=von}
N -190 -140 -190 -120 {
lab=GND}
N -120 -140 -120 -120 {
lab=GND}
N -50 -140 -50 -120 {
lab=GND}
N -190 -220 -190 -200 {
lab=v2tg}
N -120 -220 -120 -200 {
lab=v2p}
N -50 -220 -50 -200 {
lab=v2n}
N 410 -170 410 -110 {
lab=GND}
N 410 -280 410 -230 {
lab=VDD}
N 410 -340 410 -320 {
lab=von_b}
N 410 -70 410 -50 {
lab=von}
N 350 -280 380 -280 {
lab=v1}
N 350 -110 380 -110 {
lab=v1}
N 440 -110 470 -110 {
lab=v2n}
N 440 -280 470 -280 {
lab=v2p}
C {sky130_fd_pr/corner.sym} -140 -420 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code_shown.sym} 20 40 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* Tran analysis
ic v(v2tg)=0 v(v2p)=0 v(v2n)=0
tran 0.01u 8u
plot v2tg v1 von 
plot v2p v1 von
plot v2n v1 von
.endc"}
C {sky130_fd_pr/nfet_01v8.sym} 180 -90 3 0 {name=M1
L=L_n
W=W_n
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} -300 -360 0 0 {name=V1 value="pwl 0 0 1u 0 1.1u 1.8 3u 1.8 3.1u 0" savecurrent=false}
C {devices/lab_pin.sym} -300 -410 3 1 {name=p1 sig_type=std_logic lab=v1}
C {devices/gnd.sym} -370 -120 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -370 -170 0 0 {name=Von value="pwl 0 1.8 2u 1.8 2.1u 0 4u 0 4.1u 1.8 6u 1.8 6.1u 0" savecurrent=false}
C {devices/lab_pin.sym} -370 -220 3 1 {name=p3 sig_type=std_logic lab=von}
C {devices/lab_pin.sym} 120 -190 2 1 {name=p4 sig_type=std_logic lab=v1}
C {devices/code_shown.sym} -190 40 0 0 {name=param only_toplevel=false value=".param L_n=0.15
.param W_n=15
.param L_p=0.15
.param W_p=60
.param Cload=100f"}
C {devices/vcvs.sym} -270 -170 0 0 {name=E1 value=-1}
C {devices/vsource.sym} -270 -90 0 0 {name=Von_b value=1.8 savecurrent=false}
C {devices/gnd.sym} -270 -40 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -270 -220 3 1 {name=p5 sig_type=std_logic lab=von_b}
C {sky130_fd_pr/pfet_01v8.sym} 180 -300 3 1 {name=M11
L=L_p
W=W_p
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} -370 -360 0 0 {name=Vdd value=1.8 savecurrent=false}
C {devices/gnd.sym} -370 -310 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -370 -410 0 0 {name=l4 lab=VDD}
C {devices/vdd.sym} 180 -230 2 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 180 -170 2 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 180 -340 0 1 {name=p7 sig_type=std_logic lab=von_b}
C {devices/lab_pin.sym} 180 -50 0 1 {name=p8 sig_type=std_logic lab=von}
C {devices/gnd.sym} -300 -310 0 0 {name=l8 lab=GND}
C {devices/capa.sym} -190 -170 0 0 {name=CLtg
m=1
value="Cload IC=0"
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -190 -120 0 0 {name=l9 lab=GND}
C {devices/capa.sym} -120 -170 0 0 {name=CLp
m=1
value=Cload
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -120 -120 0 0 {name=l10 lab=GND}
C {devices/capa.sym} -50 -170 0 0 {name=CLn
m=1
value=Cload
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -50 -120 0 0 {name=CLn1 lab=GND}
C {devices/lab_pin.sym} -190 -220 3 1 {name=p2 sig_type=std_logic lab=v2tg}
C {devices/lab_pin.sym} -120 -220 3 1 {name=p6 sig_type=std_logic lab=v2p}
C {devices/lab_pin.sym} -50 -220 3 1 {name=p9 sig_type=std_logic lab=v2n}
C {devices/lab_pin.sym} 240 -190 0 1 {name=p10 sig_type=std_logic lab=v2tg}
C {sky130_fd_pr/nfet_01v8.sym} 410 -90 3 0 {name=M2
L=L_n
W=W_n
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 350 -280 2 1 {name=p11 sig_type=std_logic lab=v1}
C {sky130_fd_pr/pfet_01v8.sym} 410 -300 3 1 {name=M3
L=L_p
W=W_p
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/vdd.sym} 410 -230 2 0 {name=l7 lab=VDD}
C {devices/gnd.sym} 410 -170 2 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 410 -340 0 1 {name=p12 sig_type=std_logic lab=von_b}
C {devices/lab_pin.sym} 410 -50 0 1 {name=p13 sig_type=std_logic lab=von}
C {devices/lab_pin.sym} 470 -280 0 1 {name=p14 sig_type=std_logic lab=v2p}
C {devices/lab_pin.sym} 350 -110 2 1 {name=p15 sig_type=std_logic lab=v1}
C {devices/lab_pin.sym} 470 -110 0 1 {name=p16 sig_type=std_logic lab=v2n}
