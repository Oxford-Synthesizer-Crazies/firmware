# OSC OSCar firmware

The OSCar firmware exists only in binary form. This repository is for keeping the disassembled binary and annotating it with comments, to analyze how it works. 

Should anyone find bugs in the software, they could also be recorded as issues here, to keep track of them.

In the binaries directory there are three known versions for safekeeping. We are really only interested in the OM2.bin, which is the latest available.

The source directory keeps the disassembled text file.

## I/O Ports

I/O circuits are enabled when certain address lines are low. 

### 8255 PPI, pin A2

### ADC0808 - A/D converter, pin A3

### 8253 Timers, pin A4

## Memory

The OSCar has two memory ranges, the first 8kB (0x0000 to 0x1fff) is used by the ROM (IC21), 
the next 8kB are not used, and the next 16kB (0x6000 to 0x7fff) is used by the static RAM (IC17).

Memory addresses are also sometimes used for access to things that are not memory.
The 6850 Async IO chip used for MIDI is addresses on some memory addresses 0x3000 to 0x3ffff.
The exact details there are still under investigation.
