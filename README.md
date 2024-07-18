# "Fifty Nifty Variations of Two-Transistor Circuits" Schematic Examples in sky130

Akira Tsuchiya

This is a collection of schematics of 2-transister circuits introduced in "Fifty Nifty Variations of Two-Transistor Circuits" by Harald Pretl and Matthias Eberlein.

Prerequisites:
* sky130 PDK
* Xschem

## Reference

Harald Pretl and Matthias Eberlein, ``Fifty Nifty Variations of Two-Transistor Circuits: A tribute to the versatility of MOSFETs,'' IEEE Solid-State Circuits Magazine, vol. 13, no. 3, pp. 38-46, Summer 2021, doi: 10.1109/MSSC.2021.3088968.
* https://ieeexplore.ieee.org/document/9523464
* https://www.researchgate.net/publication/354364068_Fifty_Nifty_Variations_of_Two-Transistor_Circuits_A_tribute_to_the_versatility_of_MOSFETs
* https://www.mos-ak.org/spring_2022/presentations/Pretl_Spring_MOS-AK_2022.pdf

## List of schematics
### No. 0 : MOSFET characteristics and single-stage amplifiers
* 00-a_nfet.sch : NMOSFET characteristics
* 00-b_pfet.sch : PMOSFET characteristics
* 00-c_variable-R.sch : MOSFET as a variable resistor
* 00-d_moscap.sch : MOSFET as a capacitor
* 00-e_diode.sch : MOSFET as a diode
* 00-f_current-source.sch : MOSFET as a current source
* 00-g_common-source-amp.sch : Common-source amplifier
* 00-h_common-gate-amp.sch : Common-gate amplifier
* 00-i_common-drain-amp.sch : Common-drain amplifier (Source follower)

### No. 1 : Inverter
* 01-a_inverter.sch : Digital inverter IO characteristics
* 01-b_inverter_tran.sch : Digital inverter waveform
* 01-c_inverter_amp.sch : Inverter as analog amplifier

### No. 2 : Dynamic-Threshold MOS (DTMOS) inverter
* 02-a_dtmos.sch : DTMOS inverter (under construction)

### No. 3 : Tie-zero / tie-one
* 03-a_tie.sch : tie-zero and tie-one

### No. 4 : XNOR
* 04-a_XNOR-R.sch : XNOR gate with resistor biasing

### No. 5 : NAND
* 05-a_NAND_R.sch : NAND gate with resistor biasing
* 05-b_NAND_CMOS.sch : CMOS NAND gate

### No. 6 : NOR
* 06-a_NOR_R.sch : NOR gate with resistor biasing
* 06-b_NOR_CMOS.sch : CMOS NOR gate

### No. 7 : Current mirror
* 07-a_current-mirror.sch : Basic current mirror

### No. 8 : Differential pair
* 08-a_diff-pair.sch : Differential pair
* 08-b_diff-pair.sch : Differential pair with resistive load

### No. 9 : Source follower with active load
* 09-a_source-sollower.sch : Source follower with active load

### No. 10 : Common-source amplifier with active load
* 10-a_common-source-amp.sch : Common-source amplifier with active load

### No. 11 : Cascoded Common-source amplifier
* 11-a_cascoded-cs.sch : Cascoded common-source amplifier, IO cureve and gain/phase curve
* 11-b_cascoded-cs.sch : Cascoded common-source amplifier, output impedance

