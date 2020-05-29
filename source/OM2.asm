; Setup 

.data:00000000 f3                               di ; disable interrupt
.data:00000001 ed 56                            im 1 ; interrupt mode 1
.data:00000003 3e 06                            ld a,0x06
.data:00000005 ed 47                            ld i,a
.data:00000007 31 8c 20                         ld sp,0x208c

.data:0000000a cd 0a 1c                         call 0x1c0a
.data:0000000d cd 31 00                         call 0x0031

; Set modes for the 8253 counter

.data:00000010 3e 76                            ld a,0x76 ; Counter 1, Load LSB first, MSB second, Mode 3, 16 bit
.data:00000012 d3 6f                            out (0x6f),a
.data:00000014 3e b6                            ld a,0xb6 ; Counter 2, Load LSB first, MSB second, Mode 3, 16 bit
.data:00000016 d3 6f                            out (0x6f),a

.data:00000018 3e 02                            ld a,0x02
.data:0000001a d3 aa                            out (0xaa),a
.data:0000001c d3 00                            out (0x00),a
.data:0000001e d3 ab                            out (0xab),a
.data:00000020 d3 01                            out (0x01),a
.data:00000022 af                               xor a
.data:00000023 d3 aa                            out (0xaa),a
.data:00000025 d3 04                            out (0x04),a
.data:00000027 d3 ab                            out (0xab),a
.data:00000029 d3 05                            out (0x05),a
.data:0000002b 32 38 21                         ld (0x2138),a
.data:0000002e c3 45 01                         jp 0x0145
.data:00000031 3e 26                            ld a,0x26
.data:00000033 d3 6f                            out (0x6f),a
.data:00000035 d3 6c                            out (0x6c),a
.data:00000037 c9                               ret
.data:00000038 08                               ex af,af'
.data:00000039 d9                               exx
.data:0000003a cd b9 1d                         call 0x1db9
.data:0000003d 3e 53                            ld a,0x53
.data:0000003f d3 79                            out (0x79),a
.data:00000041 3e 26                            ld a,0x26
.data:00000043 d3 6f                            out (0x6f),a
.data:00000045 3e 10                            ld a,0x10
.data:00000047 d3 6c                            out (0x6c),a
.data:00000049 ed a2                            ini
.data:0000004b 20 11                            jr nz,0x005e
.data:0000004d cd 84 00                         call 0x0084
.data:00000050 11 0a 01                         ld de,0x010a
.data:00000053 d5                               push de
.data:00000054 11 b3 02                         ld de,0x02b3
.data:00000057 0e 74                            ld c,0x74
.data:00000059 21 6a 60                         ld hl,0x606a
.data:0000005c 06 20                            ld b,0x20
.data:0000005e 78                               ld a,b
.data:0000005f 3c                               inc a
.data:00000060 e6 07                            and 0x07
.data:00000062 20 13                            jr nz,0x0077
.data:00000064 18 03                            jr 0x0069
.data:00000066 c3 24 1c                         jp 0x1c24
.data:00000069 3e d3                            ld a,0xd3
.data:0000006b d3 79                            out (0x79),a
.data:0000006d 3a f5 60                         ld a,(0x60f5)
.data:00000070 f6 10                            or 0x10
.data:00000072 d3 7a                            out (0x7a),a
.data:00000074 af                               xor a
.data:00000075 18 04                            jr 0x007b
.data:00000077 1a                               ld a,(de)
.data:00000078 d3 79                            out (0x79),a
.data:0000007a 13                               inc de
.data:0000007b d9                               exx
.data:0000007c fb                               ei
.data:0000007d d3 74                            out (0x74),a
.data:0000007f ca c3 00                         jp z,0x00c3
.data:00000082 08                               ex af,af'
.data:00000083 c9                               ret
.data:00000084 1e 7a                            ld e,0x7a
.data:00000086 4b                               ld c,e
.data:00000087 3a f5 60                         ld a,(0x60f5)
.data:0000008a 57                               ld d,a
.data:0000008b 3e 90                            ld a,0x90
.data:0000008d d3 7b                            out (0x7b),a
.data:0000008f ed 51                            out (c),d
.data:00000091 0e 78                            ld c,0x78
.data:00000093 21 8a 60                         ld hl,0x608a
.data:00000096 3e 38                            ld a,0x38
.data:00000098 06 08                            ld b,0x08
.data:0000009a d3 79                            out (0x79),a
.data:0000009c d6 08                            sub 0x08
.data:0000009e ed a2                            ini
.data:000000a0 20 f8                            jr nz,0x009a
.data:000000a2 7a                               ld a,d
.data:000000a3 e6 7f                            and 0x7f
.data:000000a5 d3 7a                            out (0x7a),a
.data:000000a7 21 92 60                         ld hl,0x6092
.data:000000aa 3e f8                            ld a,0xf8
.data:000000ac 06 08                            ld b,0x08
.data:000000ae d3 79                            out (0x79),a
.data:000000b0 d6 08                            sub 0x08
.data:000000b2 ed a2                            ini
.data:000000b4 20 f8                            jr nz,0x00ae
.data:000000b6 4b                               ld c,e
.data:000000b7 3e 80                            ld a,0x80
.data:000000b9 d3 7b                            out (0x7b),a
.data:000000bb ed 51                            out (c),d
.data:000000bd 3a f6 60                         ld a,(0x60f6)
.data:000000c0 d3 78                            out (0x78),a
.data:000000c2 c9                               ret
.data:000000c3 08                               ex af,af'
.data:000000c4 f5                               push af
.data:000000c5 c5                               push bc
.data:000000c6 d5                               push de
.data:000000c7 e5                               push hl
.data:000000c8 dd e5                            push ix
.data:000000ca fd e5                            push iy
.data:000000cc cd c4 0a                         call 0x0ac4
.data:000000cf cd 17 13                         call 0x1317
.data:000000d2 cd 70 10                         call 0x1070
.data:000000d5 cd 43 1c                         call 0x1c43
.data:000000d8 21 3c 20                         ld hl,0x203c
.data:000000db cb 76                            bit 6,(hl)
.data:000000dd 28 13                            jr z,0x00f2
.data:000000df cb 7e                            bit 7,(hl)
.data:000000e1 20 0f                            jr nz,0x00f2
.data:000000e3 cd 0c 04                         call 0x040c
.data:000000e6 cd 83 0c                         call 0x0c83
.data:000000e9 21 3c 20                         ld hl,0x203c
.data:000000ec cb b6                            res 6,(hl)
.data:000000ee cb fe                            set 7,(hl)
.data:000000f0 18 09                            jr 0x00fb
.data:000000f2 cd 8e 13                         call 0x138e
.data:000000f5 cd 17 10                         call 0x1017
.data:000000f8 cd b2 0e                         call 0x0eb2
.data:000000fb cd cf 1d                         call 0x1dcf
.data:000000fe cd c4 0a                         call 0x0ac4
.data:00000101 fd e1                            pop iy
.data:00000103 dd e1                            pop ix
.data:00000105 e1                               pop hl
.data:00000106 d1                               pop de
.data:00000107 c1                               pop bc
.data:00000108 f1                               pop af
.data:00000109 c9                               ret
.data:0000010a f5                               push af
.data:0000010b c5                               push bc
.data:0000010c d5                               push de
.data:0000010d e5                               push hl
.data:0000010e dd e5                            push ix
.data:00000110 fd e5                            push iy
.data:00000112 21 3c 20                         ld hl,0x203c
.data:00000115 cb 4e                            bit 1,(hl)
.data:00000117 20 2a                            jr nz,0x0143
.data:00000119 cb ce                            set 1,(hl)
.data:0000011b cd d3 02                         call 0x02d3
.data:0000011e 21 3c 20                         ld hl,0x203c
.data:00000121 cb 7e                            bit 7,(hl)
.data:00000123 20 0b                            jr nz,0x0130
.data:00000125 cb fe                            set 7,(hl)
.data:00000127 cd 0c 04                         call 0x040c
.data:0000012a cd 83 0c                         call 0x0c83
.data:0000012d 21 3c 20                         ld hl,0x203c
.data:00000130 cb be                            res 7,(hl)
.data:00000132 cd 81 01                         call 0x0181
.data:00000135 cd fd 19                         call 0x19fd
.data:00000138 cd 92 1a                         call 0x1a92
.data:0000013b cd 9f 0f                         call 0x0f9f
.data:0000013e 21 3c 20                         ld hl,0x203c
.data:00000141 cb 8e                            res 1,(hl)
.data:00000143 18 bc                            jr 0x0101
.data:00000145 cd 36 18                         call 0x1836
.data:00000148 3e 80                            ld a,0x80
.data:0000014a 32 03 61                         ld (0x6103),a
.data:0000014d 3e 41                            ld a,0x41
.data:0000014f 32 c0 60                         ld (0x60c0),a
.data:00000152 af                               xor a
.data:00000153 32 3c 20                         ld (0x203c),a
.data:00000156 d9                               exx
.data:00000157 08                               ex af,af'
.data:00000158 cd 54 00                         call 0x0054
.data:0000015b cd 0e 02                         call 0x020e
.data:0000015e cd ac 09                         call 0x09ac
.data:00000161 cd 70 18                         call 0x1870
.data:00000164 cd ae 0d                         call 0x0dae
.data:00000167 cd 30 0e                         call 0x0e30
.data:0000016a cd ed 0a                         call 0x0aed
.data:0000016d cd 35 0a                         call 0x0a35
.data:00000170 cd c4 13                         call 0x13c4
.data:00000173 cd 6d 14                         call 0x146d
.data:00000176 cd e7 04                         call 0x04e7
.data:00000179 cd db 1e                         call 0x1edb
.data:0000017c cd 7d 08                         call 0x087d
.data:0000017f 18 da                            jr 0x015b
.data:00000181 dd 21 6a 60                      ld ix,0x606a
.data:00000185 11 24 60                         ld de,0x6024
.data:00000188 21 4c 60                         ld hl,0x604c
.data:0000018b 06 1e                            ld b,0x1e
.data:0000018d 3a bd 60                         ld a,(0x60bd)
.data:00000190 fe 10                            cp 0x10
.data:00000192 28 04                            jr z,0x0198
.data:00000194 cb fe                            set 7,(hl)
.data:00000196 18 30                            jr 0x01c8
.data:00000198 dd 4e 00                         ld c,(ix+0)
.data:0000019b 1a                               ld a,(de)
.data:0000019c 91                               sub c
.data:0000019d 28 0c                            jr z,0x01ab
.data:0000019f 30 04                            jr nc,0x01a5
.data:000001a1 0d                               dec c
.data:000001a2 3c                               inc a
.data:000001a3 18 02                            jr 0x01a7
.data:000001a5 0c                               inc c
.data:000001a6 3d                               dec a
.data:000001a7 28 02                            jr z,0x01ab
.data:000001a9 3e 01                            ld a,0x01
.data:000001ab cb 7e                            bit 7,(hl)
.data:000001ad 28 02                            jr z,0x01b1
.data:000001af 18 17                            jr 0x01c8
.data:000001b1 b7                               or a
.data:000001b2 28 14                            jr z,0x01c8
.data:000001b4 78                               ld a,b
.data:000001b5 fe 05                            cp 0x05
.data:000001b7 38 0b                            jr c,0x01c4
.data:000001b9 fe 1e                            cp 0x1e
.data:000001bb 28 07                            jr z,0x01c4
.data:000001bd 3a bd 60                         ld a,(0x60bd)
.data:000001c0 fe 10                            cp 0x10
.data:000001c2 28 04                            jr z,0x01c8
.data:000001c4 cb f6                            set 6,(hl)
.data:000001c6 79                               ld a,c
.data:000001c7 12                               ld (de),a
.data:000001c8 10 3e                            djnz 0x0208
.data:000001ca 7e                               ld a,(hl)
.data:000001cb 47                               ld b,a
.data:000001cc cb b6                            res 6,(hl)
.data:000001ce 21 52 60                         ld hl,0x6052
.data:000001d1 4e                               ld c,(hl)
.data:000001d2 b1                               or c
.data:000001d3 cb b6                            res 6,(hl)
.data:000001d5 cb 77                            bit 6,a
.data:000001d7 c8                               ret z
.data:000001d8 1a                               ld a,(de)
.data:000001d9 2f                               cpl
.data:000001da cb 78                            bit 7,b
.data:000001dc 20 18                            jr nz,0x01f6
.data:000001de cd 96 02                         call 0x0296
.data:000001e1 c6 10                            add a,0x10
.data:000001e3 ed 44                            neg
.data:000001e5 21 ec 65                         ld hl,0x65ec
.data:000001e8 cb 71                            bit 6,c
.data:000001ea 20 02                            jr nz,0x01ee
.data:000001ec be                               cp (hl)
.data:000001ed c8                               ret z
.data:000001ee 77                               ld (hl),a
.data:000001ef 21 e9 65                         ld hl,0x65e9
.data:000001f2 cb e6                            set 4,(hl)
.data:000001f4 ed 44                            neg
.data:000001f6 67                               ld h,a
.data:000001f7 3a 2a 60                         ld a,(0x602a)
.data:000001fa 5f                               ld e,a
.data:000001fb 0e 00                            ld c,0x00
.data:000001fd cd b2 1b                         call 0x1bb2
.data:00000200 cb 2c                            sra h
.data:00000202 cb 1d                            rr l
.data:00000204 22 22 60                         ld (0x6022),hl
.data:00000207 c9                               ret
.data:00000208 dd 23                            inc ix
.data:0000020a 13                               inc de
.data:0000020b 23                               inc hl
.data:0000020c 18 8a                            jr 0x0198
.data:0000020e fd 21 30 60                      ld iy,0x6030
.data:00000212 11 00 00                         ld de,0x0000
.data:00000215 06 10                            ld b,0x10
.data:00000217 fd cb 28 76                      bit 6,(iy+40)
.data:0000021b 28 73                            jr z,0x0290
.data:0000021d fd cb 28 b6                      res 6,(iy+40)
.data:00000221 21 a3 02                         ld hl,0x02a3
.data:00000224 19                               add hl,de
.data:00000225 cb 23                            sla e
.data:00000227 dd 21 02 60                      ld ix,0x6002
.data:0000022b dd 19                            add ix,de
.data:0000022d cb 3b                            srl e
.data:0000022f fd 7e 00                         ld a,(iy+0)
.data:00000232 cb 46                            bit 0,(hl)
.data:00000234 28 01                            jr z,0x0237
.data:00000236 2f                               cpl
.data:00000237 cb 4e                            bit 1,(hl)
.data:00000239 c4 96 02                         call nz,0x0296
.data:0000023c 4f                               ld c,a
.data:0000023d cb 39                            srl c
.data:0000023f cb 56                            bit 2,(hl)
.data:00000241 28 03                            jr z,0x0246
.data:00000243 91                               sub c
.data:00000244 c6 40                            add a,0x40
.data:00000246 cb 39                            srl c
.data:00000248 cb 5e                            bit 3,(hl)
.data:0000024a 28 01                            jr z,0x024d
.data:0000024c 91                               sub c
.data:0000024d cb 39                            srl c
.data:0000024f cb 66                            bit 4,(hl)
.data:00000251 28 01                            jr z,0x0254
.data:00000253 91                               sub c
.data:00000254 cb 6e                            bit 5,(hl)
.data:00000256 28 02                            jr z,0x025a
.data:00000258 c6 10                            add a,0x10
.data:0000025a cb 76                            bit 6,(hl)
.data:0000025c 28 02                            jr z,0x0260
.data:0000025e c6 20                            add a,0x20
.data:00000260 e5                               push hl
.data:00000261 cb 7e                            bit 7,(hl)
.data:00000263 6f                               ld l,a
.data:00000264 26 00                            ld h,0x00
.data:00000266 28 0b                            jr z,0x0273
.data:00000268 c6 10                            add a,0x10
.data:0000026a 4b                               ld c,e
.data:0000026b c5                               push bc
.data:0000026c cd e6 1b                         call 0x1be6
.data:0000026f c1                               pop bc
.data:00000270 59                               ld e,c
.data:00000271 16 00                            ld d,0x00
.data:00000273 78                               ld a,b
.data:00000274 3d                               dec a
.data:00000275 20 12                            jr nz,0x0289
.data:00000277 4d                               ld c,l
.data:00000278 7d                               ld a,l
.data:00000279 d6 80                            sub 0x80
.data:0000027b 30 02                            jr nc,0x027f
.data:0000027d ed 44                            neg
.data:0000027f 21 ed 65                         ld hl,0x65ed
.data:00000282 be                               cp (hl)
.data:00000283 28 0a                            jr z,0x028f
.data:00000285 f6 80                            or 0x80
.data:00000287 77                               ld (hl),a
.data:00000288 69                               ld l,c
.data:00000289 dd 75 00                         ld (ix+0),l
.data:0000028c dd 74 01                         ld (ix+1),h
.data:0000028f e1                               pop hl
.data:00000290 fd 23                            inc iy
.data:00000292 13                               inc de
.data:00000293 10 82                            djnz 0x0217
.data:00000295 c9                               ret
.data:00000296 fe 90                            cp 0x90
.data:00000298 38 03                            jr c,0x029d
.data:0000029a d6 20                            sub 0x20
.data:0000029c c9                               ret
.data:0000029d fe 70                            cp 0x70
.data:0000029f d8                               ret c
.data:000002a0 3e 70                            ld a,0x70
.data:000002a2 c9                               ret
.data:000002a3 23                               inc hl
.data:000002a4 22 22 23                         ld (0x2322),hl
.data:000002a7 85                               add a,l
.data:000002a8 a9                               xor c
.data:000002a9 91                               sub c
.data:000002aa b1                               or c
.data:000002ab b1                               or c
.data:000002ac 91                               sub c
.data:000002ad b1                               or c
.data:000002ae 89                               adc a,c
.data:000002af f8                               ret m
.data:000002b0 c5                               push bc
.data:000002b1 84                               add a,h
.data:000002b2 22 55 43                         ld (0x4355),hl
.data:000002b5 44                               ld b,h
.data:000002b6 4a                               ld c,d
.data:000002b7 47                               ld b,a
.data:000002b8 5f                               ld e,a
.data:000002b9 40                               ld b,b
.data:000002ba 41                               ld b,c
.data:000002bb 57                               ld d,a
.data:000002bc 56                               ld d,(hl)
.data:000002bd 45                               ld b,l
.data:000002be 4f                               ld c,a
.data:000002bf 54                               ld d,h
.data:000002c0 5a                               ld e,d
.data:000002c1 49                               ld c,c
.data:000002c2 4b                               ld c,e
.data:000002c3 5b                               ld e,e
.data:000002c4 5c                               ld e,h
.data:000002c5 5d                               ld e,l
.data:000002c6 5e                               ld e,(hl)
.data:000002c7 4c                               ld c,h
.data:000002c8 4d                               ld c,l
.data:000002c9 4e                               ld c,(hl)
.data:000002ca 42                               ld b,d
.data:000002cb 46                               ld b,(hl)
.data:000002cc 48                               ld c,b
.data:000002cd 58                               ld e,b
.data:000002ce 51                               ld d,c
.data:000002cf 52                               ld d,d
.data:000002d0 50                               ld d,b
.data:000002d1 59                               ld e,c
.data:000002d2 53                               ld d,e
.data:000002d3 21 06 20                         ld hl,0x2006
.data:000002d6 dd 21 8a 60                      ld ix,0x608a
.data:000002da 01 08 05                         ld bc,0x0508
.data:000002dd 11 00 ff                         ld de,0xff00
.data:000002e0 c5                               push bc
.data:000002e1 dd 4e 00                         ld c,(ix+0)
.data:000002e4 cb 01                            rlc c
.data:000002e6 38 02                            jr c,0x02ea
.data:000002e8 cb eb                            set 5,e
.data:000002ea 79                               ld a,c
.data:000002eb ae                               xor (hl)
.data:000002ec e6 01                            and 0x01
.data:000002ee 28 0d                            jr z,0x02fd
.data:000002f0 f3                               di
.data:000002f1 ae                               xor (hl)
.data:000002f2 e6 f7                            and 0xf7
.data:000002f4 77                               ld (hl),a
.data:000002f5 cb fb                            set 7,e
.data:000002f7 cb 47                            bit 0,a
.data:000002f9 20 01                            jr nz,0x02fc
.data:000002fb 55                               ld d,l
.data:000002fc fb                               ei
.data:000002fd 7d                               ld a,l
.data:000002fe c6 08                            add a,0x08
.data:00000300 6f                               ld l,a
.data:00000301 10 e1                            djnz 0x02e4
.data:00000303 7d                               ld a,l
.data:00000304 d6 27                            sub 0x27
.data:00000306 6f                               ld l,a
.data:00000307 c1                               pop bc
.data:00000308 dd 23                            inc ix
.data:0000030a 0d                               dec c
.data:0000030b 20 d3                            jr nz,0x02e0
.data:0000030d 21 e9 65                         ld hl,0x65e9
.data:00000310 cb 86                            res 0,(hl)
.data:00000312 3a 2b 20                         ld a,(0x202b)
.data:00000315 1f                               rra
.data:00000316 38 02                            jr c,0x031a
.data:00000318 cb c6                            set 0,(hl)
.data:0000031a 7b                               ld a,e
.data:0000031b fe 80                            cp 0x80
.data:0000031d 20 02                            jr nz,0x0321
.data:0000031f cb b6                            res 6,(hl)
.data:00000321 7a                               ld a,d
.data:00000322 d6 06                            sub 0x06
.data:00000324 57                               ld d,a
.data:00000325 fa 3c 03                         jp m,0x033c
.data:00000328 fe 25                            cp 0x25
.data:0000032a 38 10                            jr c,0x033c
.data:0000032c 16 ff                            ld d,0xff
.data:0000032e cb bb                            res 7,e
.data:00000330 d6 24                            sub 0x24
.data:00000332 47                               ld b,a
.data:00000333 3e 10                            ld a,0x10
.data:00000335 0f                               rrca
.data:00000336 10 fd                            djnz 0x0335
.data:00000338 f3                               di
.data:00000339 b6                               or (hl)
.data:0000033a 77                               ld (hl),a
.data:0000033b fb                               ei
.data:0000033c d5                               push de
.data:0000033d 3a bd 60                         ld a,(0x60bd)
.data:00000340 47                               ld b,a
.data:00000341 e6 1f                            and 0x1f
.data:00000343 b3                               or e
.data:00000344 5f                               ld e,a
.data:00000345 78                               ld a,b
.data:00000346 e6 ef                            and 0xef
.data:00000348 cb 46                            bit 0,(hl)
.data:0000034a 28 02                            jr z,0x034e
.data:0000034c f6 10                            or 0x10
.data:0000034e 47                               ld b,a
.data:0000034f 21 bc 60                         ld hl,0x60bc
.data:00000352 ae                               xor (hl)
.data:00000353 70                               ld (hl),b
.data:00000354 4f                               ld c,a
.data:00000355 78                               ld a,b
.data:00000356 2f                               cpl
.data:00000357 a1                               and c
.data:00000358 4f                               ld c,a
.data:00000359 2b                               dec hl
.data:0000035a 56                               ld d,(hl)
.data:0000035b 2f                               cpl
.data:0000035c a2                               and d
.data:0000035d 77                               ld (hl),a
.data:0000035e 7a                               ld a,d
.data:0000035f 2f                               cpl
.data:00000360 a1                               and c
.data:00000361 4f                               ld c,a
.data:00000362 f1                               pop af
.data:00000363 57                               ld d,a
.data:00000364 78                               ld a,b
.data:00000365 b7                               or a
.data:00000366 ca c1 03                         jp z,0x03c1
.data:00000369 cb 7a                            bit 7,d
.data:0000036b c2 c1 03                         jp nz,0x03c1
.data:0000036e b6                               or (hl)
.data:0000036f 77                               ld (hl),a
.data:00000370 cb f3                            set 6,e
.data:00000372 cb bb                            res 7,e
.data:00000374 7a                               ld a,d
.data:00000375 d6 11                            sub 0x11
.data:00000377 38 07                            jr c,0x0380
.data:00000379 fe 0f                            cp 0x0f
.data:0000037b 30 03                            jr nc,0x0380
.data:0000037d cd a8 03                         call 0x03a8
.data:00000380 78                               ld a,b
.data:00000381 e6 3f                            and 0x3f
.data:00000383 28 60                            jr z,0x03e5
.data:00000385 3e 18                            ld a,0x18
.data:00000387 92                               sub d
.data:00000388 57                               ld d,a
.data:00000389 30 05                            jr nc,0x0390
.data:0000038b ed 44                            neg
.data:0000038d 57                               ld d,a
.data:0000038e cb ea                            set 5,d
.data:00000390 cb f2                            set 6,d
.data:00000392 cb 63                            bit 4,e
.data:00000394 28 02                            jr z,0x0398
.data:00000396 cb fa                            set 7,d
.data:00000398 21 c0 60                         ld hl,0x60c0
.data:0000039b 3e 06                            ld a,0x06
.data:0000039d cb 38                            srl b
.data:0000039f 30 01                            jr nc,0x03a2
.data:000003a1 72                               ld (hl),d
.data:000003a2 23                               inc hl
.data:000003a3 3d                               dec a
.data:000003a4 20 f7                            jr nz,0x039d
.data:000003a6 18 3d                            jr 0x03e5
.data:000003a8 0e fc                            ld c,0xfc
.data:000003aa cb 78                            bit 7,b
.data:000003ac 28 05                            jr z,0x03b3
.data:000003ae 32 a5 60                         ld (0x60a5),a
.data:000003b1 0e 63                            ld c,0x63
.data:000003b3 cb 70                            bit 6,b
.data:000003b5 28 05                            jr z,0x03bc
.data:000003b7 32 a4 60                         ld (0x60a4),a
.data:000003ba 0e 0f                            ld c,0x0f
.data:000003bc 79                               ld a,c
.data:000003bd 32 f0 60                         ld (0x60f0),a
.data:000003c0 c9                               ret
.data:000003c1 79                               ld a,c
.data:000003c2 b7                               or a
.data:000003c3 28 20                            jr z,0x03e5
.data:000003c5 cb 63                            bit 4,e
.data:000003c7 20 1c                            jr nz,0x03e5
.data:000003c9 41                               ld b,c
.data:000003ca 3e 07                            ld a,0x07
.data:000003cc cd a8 03                         call 0x03a8
.data:000003cf 78                               ld a,b
.data:000003d0 e6 0a                            and 0x0a
.data:000003d2 28 0d                            jr z,0x03e1
.data:000003d4 b3                               or e
.data:000003d5 e6 0a                            and 0x0a
.data:000003d7 fe 0a                            cp 0x0a
.data:000003d9 cb 88                            res 1,b
.data:000003db cb 98                            res 3,b
.data:000003dd 20 02                            jr nz,0x03e1
.data:000003df cb c8                            set 1,b
.data:000003e1 16 5f                            ld d,0x5f
.data:000003e3 18 b3                            jr 0x0398
.data:000003e5 21 2a 20                         ld hl,0x202a
.data:000003e8 06 25                            ld b,0x25
.data:000003ea f3                               di
.data:000003eb 7e                               ld a,(hl)
.data:000003ec cb 5f                            bit 3,a
.data:000003ee 20 0e                            jr nz,0x03fe
.data:000003f0 f6 08                            or 0x08
.data:000003f2 cb 73                            bit 6,e
.data:000003f4 20 08                            jr nz,0x03fe
.data:000003f6 e6 3d                            and 0x3d
.data:000003f8 cb 47                            bit 0,a
.data:000003fa 28 02                            jr z,0x03fe
.data:000003fc f6 80                            or 0x80
.data:000003fe 77                               ld (hl),a
.data:000003ff fb                               ei
.data:00000400 2b                               dec hl
.data:00000401 10 e7                            djnz 0x03ea
.data:00000403 cb 7b                            bit 7,e
.data:00000405 c8                               ret z
.data:00000406 21 e9 65                         ld hl,0x65e9
.data:00000409 cb fe                            set 7,(hl)
.data:0000040b c9                               ret
.data:0000040c dd 21 00 60                      ld ix,0x6000
.data:00000410 dd 56 00                         ld d,(ix+0)
.data:00000413 14                               inc d
.data:00000414 dd 5e 01                         ld e,(ix+1)
.data:00000417 1c                               inc e
.data:00000418 af                               xor a
.data:00000419 21 3b 20                         ld hl,0x203b
.data:0000041c 06 c0                            ld b,0xc0
.data:0000041e 48                               ld c,b
.data:0000041f cb 7e                            bit 7,(hl)
.data:00000421 20 26                            jr nz,0x0449
.data:00000423 cb 76                            bit 6,(hl)
.data:00000425 20 0b                            jr nz,0x0432
.data:00000427 cb 78                            bit 7,b
.data:00000429 28 04                            jr z,0x042f
.data:0000042b 7d                               ld a,l
.data:0000042c 45                               ld b,l
.data:0000042d 18 1a                            jr 0x0449
.data:0000042f 4d                               ld c,l
.data:00000430 18 17                            jr 0x0449
.data:00000432 7d                               ld a,l
.data:00000433 ba                               cp d
.data:00000434 28 13                            jr z,0x0449
.data:00000436 bb                               cp e
.data:00000437 28 10                            jr z,0x0449
.data:00000439 cb 71                            bit 6,c
.data:0000043b 28 05                            jr z,0x0442
.data:0000043d 4d                               ld c,l
.data:0000043e cb f9                            set 7,c
.data:00000440 18 07                            jr 0x0449
.data:00000442 cb 70                            bit 6,b
.data:00000444 28 03                            jr z,0x0449
.data:00000446 45                               ld b,l
.data:00000447 cb f8                            set 7,b
.data:00000449 cb f6                            set 6,(hl)
.data:0000044b 2d                               dec l
.data:0000044c 20 d1                            jr nz,0x041f
.data:0000044e b7                               or a
.data:0000044f 28 02                            jr z,0x0453
.data:00000451 cb fd                            set 7,l
.data:00000453 3a 00 20                         ld a,(0x2000)
.data:00000456 e6 fc                            and 0xfc
.data:00000458 cb 7d                            bit 7,l
.data:0000045a 20 04                            jr nz,0x0460
.data:0000045c e6 fb                            and 0xfb
.data:0000045e 18 47                            jr 0x04a7
.data:00000460 cb 5f                            bit 3,a
.data:00000462 28 04                            jr z,0x0468
.data:00000464 cb 79                            bit 7,c
.data:00000466 28 2a                            jr z,0x0492
.data:00000468 cb 78                            bit 7,b
.data:0000046a 20 0d                            jr nz,0x0479
.data:0000046c cb 5f                            bit 3,a
.data:0000046e 28 1c                            jr z,0x048c
.data:00000470 cb 57                            bit 2,a
.data:00000472 28 18                            jr z,0x048c
.data:00000474 cd ab 04                         call 0x04ab
.data:00000477 18 2c                            jr 0x04a5
.data:00000479 cd bd 04                         call 0x04bd
.data:0000047c cb 5f                            bit 3,a
.data:0000047e 28 07                            jr z,0x0487
.data:00000480 dd 23                            inc ix
.data:00000482 cd bd 04                         call 0x04bd
.data:00000485 18 1e                            jr 0x04a5
.data:00000487 dd 46 00                         ld b,(ix+0)
.data:0000048a 18 0e                            jr 0x049a
.data:0000048c 05                               dec b
.data:0000048d dd 70 00                         ld (ix+0),b
.data:00000490 18 06                            jr 0x0498
.data:00000492 05                               dec b
.data:00000493 dd 70 00                         ld (ix+0),b
.data:00000496 0d                               dec c
.data:00000497 41                               ld b,c
.data:00000498 f6 01                            or 0x01
.data:0000049a dd 23                            inc ix
.data:0000049c dd 70 00                         ld (ix+0),b
.data:0000049f cb 57                            bit 2,a
.data:000004a1 20 02                            jr nz,0x04a5
.data:000004a3 f6 02                            or 0x02
.data:000004a5 f6 04                            or 0x04
.data:000004a7 32 00 20                         ld (0x2000),a
.data:000004aa c9                               ret
.data:000004ab 05                               dec b
.data:000004ac cd db 04                         call 0x04db
.data:000004af 28 07                            jr z,0x04b8
.data:000004b1 dd 70 00                         ld (ix+0),b
.data:000004b4 dd 23                            inc ix
.data:000004b6 18 03                            jr 0x04bb
.data:000004b8 dd 70 01                         ld (ix+1),b
.data:000004bb f6 01                            or 0x01
.data:000004bd cd db 04                         call 0x04db
.data:000004c0 c8                               ret z
.data:000004c1 cb 71                            bit 6,c
.data:000004c3 c0                               ret nz
.data:000004c4 21 e0 65                         ld hl,0x65e0
.data:000004c7 cb 4e                            bit 1,(hl)
.data:000004c9 20 06                            jr nz,0x04d1
.data:000004cb 21 e9 65                         ld hl,0x65e9
.data:000004ce cb ae                            res 5,(hl)
.data:000004d0 c9                               ret
.data:000004d1 cb b9                            res 7,c
.data:000004d3 0d                               dec c
.data:000004d4 dd 71 00                         ld (ix+0),c
.data:000004d7 48                               ld c,b
.data:000004d8 f6 01                            or 0x01
.data:000004da c9                               ret
.data:000004db 11 01 20                         ld de,0x2001
.data:000004de 26 00                            ld h,0x00
.data:000004e0 dd 6e 00                         ld l,(ix+0)
.data:000004e3 19                               add hl,de
.data:000004e4 cb 7e                            bit 7,(hl)
.data:000004e6 c9                               ret
.data:000004e7 3a 00 20                         ld a,(0x2000)
.data:000004ea b7                               or a
.data:000004eb f8                               ret m
.data:000004ec 3a be 60                         ld a,(0x60be)
.data:000004ef 07                               rlca
.data:000004f0 d0                               ret nc
.data:000004f1 3a bd 60                         ld a,(0x60bd)
.data:000004f4 e6 1f                            and 0x1f
.data:000004f6 c8                               ret z
.data:000004f7 f3                               di
.data:000004f8 3e 34                            ld a,0x34
.data:000004fa d3 6f                            out (0x6f),a
.data:000004fc af                               xor a
.data:000004fd d3 6c                            out (0x6c),a
.data:000004ff d3 6c                            out (0x6c),a
.data:00000501 32 00 61                         ld (0x6100),a
.data:00000504 cd c4 0a                         call 0x0ac4
.data:00000507 fd 21 3d 20                      ld iy,0x203d
.data:0000050b fd 36 00 f4                      ld (iy+0),0xf4
.data:0000050f fd 36 01 08                      ld (iy+1),0x08
.data:00000513 cd 84 00                         call 0x0084
.data:00000516 cd f3 09                         call 0x09f3
.data:00000519 21 bd 60                         ld hl,0x60bd
.data:0000051c 46                               ld b,(hl)
.data:0000051d 23                               inc hl
.data:0000051e 4e                               ld c,(hl)
.data:0000051f 21 3d 20                         ld hl,0x203d
.data:00000522 79                               ld a,c
.data:00000523 e6 c0                            and 0xc0
.data:00000525 fe c0                            cp 0xc0
.data:00000527 28 4b                            jr z,0x0574
.data:00000529 3a 8f 60                         ld a,(0x608f)
.data:0000052c cb 5f                            bit 3,a
.data:0000052e 20 06                            jr nz,0x0536
.data:00000530 7e                               ld a,(hl)
.data:00000531 32 f0 65                         ld (0x65f0),a
.data:00000534 18 3e                            jr 0x0574
.data:00000536 3e 40                            ld a,0x40
.data:00000538 cb 48                            bit 1,b
.data:0000053a 20 27                            jr nz,0x0563
.data:0000053c cb 58                            bit 3,b
.data:0000053e 20 23                            jr nz,0x0563
.data:00000540 0f                               rrca
.data:00000541 cb 40                            bit 0,b
.data:00000543 20 1e                            jr nz,0x0563
.data:00000545 0f                               rrca
.data:00000546 cb 50                            bit 2,b
.data:00000548 20 19                            jr nz,0x0563
.data:0000054a 3e 70                            ld a,0x70
.data:0000054c cb 60                            bit 4,b
.data:0000054e 20 13                            jr nz,0x0563
.data:00000550 cb 69                            bit 5,c
.data:00000552 c2 30 07                         jp nz,0x0730
.data:00000555 cb 61                            bit 4,c
.data:00000557 20 20                            jr nz,0x0579
.data:00000559 cd 2c 08                         call 0x082c
.data:0000055c 20 fb                            jr nz,0x0559
.data:0000055e cd 49 08                         call 0x0849
.data:00000561 18 b0                            jr 0x0513
.data:00000563 cb 71                            bit 6,c
.data:00000565 28 04                            jr z,0x056b
.data:00000567 b6                               or (hl)
.data:00000568 77                               ld (hl),a
.data:00000569 18 ee                            jr 0x0559
.data:0000056b cb 79                            bit 7,c
.data:0000056d 28 ea                            jr z,0x0559
.data:0000056f 2f                               cpl
.data:00000570 a6                               and (hl)
.data:00000571 77                               ld (hl),a
.data:00000572 18 e5                            jr 0x0559
.data:00000574 cd 31 00                         call 0x0031
.data:00000577 fb                               ei
.data:00000578 c9                               ret
.data:00000579 fd 7e 01                         ld a,(iy+1)
.data:0000057c e6 70                            and 0x70
.data:0000057e fd b6 00                         or (iy+0)
.data:00000581 fd 77 00                         ld (iy+0),a
.data:00000584 e6 70                            and 0x70
.data:00000586 fe 70                            cp 0x70
.data:00000588 28 ea                            jr z,0x0574
.data:0000058a cd 53 08                         call 0x0853
.data:0000058d cd 84 00                         call 0x0084
.data:00000590 3e 53                            ld a,0x53
.data:00000592 d3 79                            out (0x79),a
.data:00000594 cd f3 09                         call 0x09f3
.data:00000597 3a be 60                         ld a,(0x60be)
.data:0000059a e6 c0                            and 0xc0
.data:0000059c fe 40                            cp 0x40
.data:0000059e 20 04                            jr nz,0x05a4
.data:000005a0 fd cb 00 be                      res 7,(iy+0)
.data:000005a4 fe c0                            cp 0xc0
.data:000005a6 28 cc                            jr z,0x0574
.data:000005a8 fd cb 01 de                      set 3,(iy+1)
.data:000005ac 3e d3                            ld a,0xd3
.data:000005ae d3 79                            out (0x79),a
.data:000005b0 3a f5 60                         ld a,(0x60f5)
.data:000005b3 f6 10                            or 0x10
.data:000005b5 d3 7a                            out (0x7a),a
.data:000005b7 cd f4 06                         call 0x06f4
.data:000005ba 0e 02                            ld c,0x02
.data:000005bc 16 00                            ld d,0x00
.data:000005be 62                               ld h,d
.data:000005bf 6a                               ld l,d
.data:000005c0 42                               ld b,d
.data:000005c1 cd 19 07                         call 0x0719
.data:000005c4 5f                               ld e,a
.data:000005c5 19                               add hl,de
.data:000005c6 10 f9                            djnz 0x05c1
.data:000005c8 fd 74 05                         ld (iy+5),h
.data:000005cb cd f4 06                         call 0x06f4
.data:000005ce 7a                               ld a,d
.data:000005cf fe aa                            cp 0xaa
.data:000005d1 20 b7                            jr nz,0x058a
.data:000005d3 0d                               dec c
.data:000005d4 20 e6                            jr nz,0x05bc
.data:000005d6 0e 08                            ld c,0x08
.data:000005d8 cd f4 06                         call 0x06f4
.data:000005db 7a                               ld a,d
.data:000005dc fe aa                            cp 0xaa
.data:000005de 20 aa                            jr nz,0x058a
.data:000005e0 0d                               dec c
.data:000005e1 20 f5                            jr nz,0x05d8
.data:000005e3 0e 64                            ld c,0x64
.data:000005e5 cd f4 06                         call 0x06f4
.data:000005e8 7a                               ld a,d
.data:000005e9 fe aa                            cp 0xaa
.data:000005eb 20 03                            jr nz,0x05f0
.data:000005ed 0d                               dec c
.data:000005ee 20 f5                            jr nz,0x05e5
.data:000005f0 0e 03                            ld c,0x03
.data:000005f2 cd f4 06                         call 0x06f4
.data:000005f5 14                               inc d
.data:000005f6 20 05                            jr nz,0x05fd
.data:000005f8 0d                               dec c
.data:000005f9 20 f7                            jr nz,0x05f2
.data:000005fb 18 8d                            jr 0x058a
.data:000005fd 7a                               ld a,d
.data:000005fe 3d                               dec a
.data:000005ff 28 89                            jr z,0x058a
.data:00000601 fe 04                            cp 0x04
.data:00000603 30 85                            jr nc,0x058a
.data:00000605 6f                               ld l,a
.data:00000606 0e 09                            ld c,0x09
.data:00000608 cd f4 06                         call 0x06f4
.data:0000060b 7a                               ld a,d
.data:0000060c bd                               cp l
.data:0000060d 20 ec                            jr nz,0x05fb
.data:0000060f 0d                               dec c
.data:00000610 20 f6                            jr nz,0x0608
.data:00000612 3e 40                            ld a,0x40
.data:00000614 45                               ld b,l
.data:00000615 05                               dec b
.data:00000616 28 03                            jr z,0x061b
.data:00000618 0f                               rrca
.data:00000619 10 fd                            djnz 0x0618
.data:0000061b 47                               ld b,a
.data:0000061c fd 7e 00                         ld a,(iy+0)
.data:0000061f 2f                               cpl
.data:00000620 a0                               and b
.data:00000621 28 d8                            jr z,0x05fb
.data:00000623 fd b6 01                         or (iy+1)
.data:00000626 e6 f7                            and 0xf7
.data:00000628 fd 77 01                         ld (iy+1),a
.data:0000062b cd 6a 08                         call 0x086a
.data:0000062e 28 20                            jr z,0x0650
.data:00000630 cd f4 06                         call 0x06f4
.data:00000633 6a                               ld l,d
.data:00000634 cd f4 06                         call 0x06f4
.data:00000637 62                               ld h,d
.data:00000638 0e 04                            ld c,0x04
.data:0000063a cd f4 06                         call 0x06f4
.data:0000063d 7a                               ld a,d
.data:0000063e bd                               cp l
.data:0000063f 20 ba                            jr nz,0x05fb
.data:00000641 cd f4 06                         call 0x06f4
.data:00000644 7a                               ld a,d
.data:00000645 bc                               cp h
.data:00000646 20 b3                            jr nz,0x05fb
.data:00000648 0d                               dec c
.data:00000649 20 ef                            jr nz,0x063a
.data:0000064b 11 40 21                         ld de,0x2140
.data:0000064e 19                               add hl,de
.data:0000064f eb                               ex de,hl
.data:00000650 ed 53 43 20                      ld (0x2043),de
.data:00000654 cd 7f 06                         call 0x067f
.data:00000657 ed 5b 43 20                      ld de,(0x2043)
.data:0000065b eb                               ex de,hl
.data:0000065c b7                               or a
.data:0000065d ed 52                            sbc hl,de
.data:0000065f 38 1b                            jr c,0x067c
.data:00000661 28 19                            jr z,0x067c
.data:00000663 eb                               ex de,hl
.data:00000664 7a                               ld a,d
.data:00000665 b7                               or a
.data:00000666 20 ec                            jr nz,0x0654
.data:00000668 7b                               ld a,e
.data:00000669 fe 08                            cp 0x08
.data:0000066b 30 e7                            jr nc,0x0654
.data:0000066d d5                               push de
.data:0000066e e5                               push hl
.data:0000066f 21 92 60                         ld hl,0x6092
.data:00000672 cd 7f 06                         call 0x067f
.data:00000675 d1                               pop de
.data:00000676 c1                               pop bc
.data:00000677 21 92 60                         ld hl,0x6092
.data:0000067a ed b0                            ldir
.data:0000067c c3 79 05                         jp 0x0579
.data:0000067f fd 36 03 08                      ld (iy+3),0x08
.data:00000683 0e 00                            ld c,0x00
.data:00000685 1e 05                            ld e,0x05
.data:00000687 cd 04 07                         call 0x0704
.data:0000068a 1d                               dec e
.data:0000068b 20 fa                            jr nz,0x0687
.data:0000068d cd c6 06                         call 0x06c6
.data:00000690 1c                               inc e
.data:00000691 28 24                            jr z,0x06b7
.data:00000693 cd f4 06                         call 0x06f4
.data:00000696 fd cb 00 7e                      bit 7,(iy+0)
.data:0000069a 28 01                            jr z,0x069d
.data:0000069c 72                               ld (hl),d
.data:0000069d 23                               inc hl
.data:0000069e 79                               ld a,c
.data:0000069f 82                               add a,d
.data:000006a0 4f                               ld c,a
.data:000006a1 fd 35 03                         dec (iy+3)
.data:000006a4 20 ed                            jr nz,0x0693
.data:000006a6 cd 53 08                         call 0x0853
.data:000006a9 cd f4 06                         call 0x06f4
.data:000006ac 7a                               ld a,d
.data:000006ad b9                               cp c
.data:000006ae c8                               ret z
.data:000006af 3a f6 60                         ld a,(0x60f6)
.data:000006b2 e6 fb                            and 0xfb
.data:000006b4 d3 78                            out (0x78),a
.data:000006b6 c9                               ret
.data:000006b7 fd 7e 00                         ld a,(iy+0)
.data:000006ba f6 8f                            or 0x8f
.data:000006bc fd a6 01                         and (iy+1)
.data:000006bf fd 77 01                         ld (iy+1),a
.data:000006c2 e1                               pop hl
.data:000006c3 c3 79 05                         jp 0x0579
.data:000006c6 06 50                            ld b,0x50
.data:000006c8 1e 00                            ld e,0x00
.data:000006ca cd 19 07                         call 0x0719
.data:000006cd fd be 05                         cp (iy+5)
.data:000006d0 30 01                            jr nc,0x06d3
.data:000006d2 1c                               inc e
.data:000006d3 7b                               ld a,e
.data:000006d4 fe 03                            cp 0x03
.data:000006d6 30 05                            jr nc,0x06dd
.data:000006d8 10 f0                            djnz 0x06ca
.data:000006da 1e ff                            ld e,0xff
.data:000006dc c9                               ret
.data:000006dd 06 40                            ld b,0x40
.data:000006df 1e 00                            ld e,0x00
.data:000006e1 cd 19 07                         call 0x0719
.data:000006e4 fd be 05                         cp (iy+5)
.data:000006e7 38 01                            jr c,0x06ea
.data:000006e9 1c                               inc e
.data:000006ea 7b                               ld a,e
.data:000006eb fe 04                            cp 0x04
.data:000006ed 30 22                            jr nc,0x0711
.data:000006ef 10 f0                            djnz 0x06e1
.data:000006f1 1e ff                            ld e,0xff
.data:000006f3 c9                               ret
.data:000006f4 cd c6 06                         call 0x06c6
.data:000006f7 fd 36 02 08                      ld (iy+2),0x08
.data:000006fb cd 04 07                         call 0x0704
.data:000006fe fd 35 02                         dec (iy+2)
.data:00000701 20 f8                            jr nz,0x06fb
.data:00000703 c9                               ret
.data:00000704 06 04                            ld b,0x04
.data:00000706 cd 19 07                         call 0x0719
.data:00000709 10 fb                            djnz 0x0706
.data:0000070b fd be 05                         cp (iy+5)
.data:0000070e 3f                               ccf
.data:0000070f cb 1a                            rr d
.data:00000711 06 04                            ld b,0x04
.data:00000713 cd 19 07                         call 0x0719
.data:00000716 10 fb                            djnz 0x0713
.data:00000718 c9                               ret
.data:00000719 3e 00                            ld a,0x00
.data:0000071b d3 6f                            out (0x6f),a
.data:0000071d db 6c                            in a,(0x6c)
.data:0000071f db 6c                            in a,(0x6c)
.data:00000721 f6 03                            or 0x03
.data:00000723 fd be 04                         cp (iy+4)
.data:00000726 28 f1                            jr z,0x0719
.data:00000728 fd 77 04                         ld (iy+4),a
.data:0000072b db 74                            in a,(0x74)
.data:0000072d d3 74                            out (0x74),a
.data:0000072f c9                               ret
.data:00000730 3a f5 60                         ld a,(0x60f5)
.data:00000733 e6 ee                            and 0xee
.data:00000735 4f                               ld c,a
.data:00000736 fd cb 00 76                      bit 6,(iy+0)
.data:0000073a 20 09                            jr nz,0x0745
.data:0000073c fd cb 01 f6                      set 6,(iy+1)
.data:00000740 2e 01                            ld l,0x01
.data:00000742 cd 7b 07                         call 0x077b
.data:00000745 fd cb 00 f6                      set 6,(iy+0)
.data:00000749 fd cb 00 6e                      bit 5,(iy+0)
.data:0000074d 20 09                            jr nz,0x0758
.data:0000074f fd cb 01 ee                      set 5,(iy+1)
.data:00000753 2e 02                            ld l,0x02
.data:00000755 cd 7b 07                         call 0x077b
.data:00000758 fd cb 00 ee                      set 5,(iy+0)
.data:0000075c fd cb 00 66                      bit 4,(iy+0)
.data:00000760 20 16                            jr nz,0x0778
.data:00000762 fd cb 01 e6                      set 4,(iy+1)
.data:00000766 c5                               push bc
.data:00000767 21 16 00                         ld hl,0x0016
.data:0000076a 3e 17                            ld a,0x17
.data:0000076c cd 10 18                         call 0x1810
.data:0000076f 22 43 20                         ld (0x2043),hl
.data:00000772 c1                               pop bc
.data:00000773 2e 03                            ld l,0x03
.data:00000775 cd 7b 07                         call 0x077b
.data:00000778 c3 74 05                         jp 0x0574
.data:0000077b fd cb 01 be                      res 7,(iy+1)
.data:0000077f cd 53 08                         call 0x0853
.data:00000782 cd 2c 08                         call 0x082c
.data:00000785 20 f4                            jr nz,0x077b
.data:00000787 06 64                            ld b,0x64
.data:00000789 16 aa                            ld d,0xaa
.data:0000078b cd ee 07                         call 0x07ee
.data:0000078e 10 f9                            djnz 0x0789
.data:00000790 06 03                            ld b,0x03
.data:00000792 16 ff                            ld d,0xff
.data:00000794 cd ee 07                         call 0x07ee
.data:00000797 10 f9                            djnz 0x0792
.data:00000799 06 0a                            ld b,0x0a
.data:0000079b 55                               ld d,l
.data:0000079c cd ee 07                         call 0x07ee
.data:0000079f 10 fa                            djnz 0x079b
.data:000007a1 cd 6a 08                         call 0x086a
.data:000007a4 28 14                            jr z,0x07ba
.data:000007a6 2a 43 20                         ld hl,(0x2043)
.data:000007a9 06 05                            ld b,0x05
.data:000007ab 55                               ld d,l
.data:000007ac cd ee 07                         call 0x07ee
.data:000007af 54                               ld d,h
.data:000007b0 cd ee 07                         call 0x07ee
.data:000007b3 10 f6                            djnz 0x07ab
.data:000007b5 11 40 21                         ld de,0x2140
.data:000007b8 19                               add hl,de
.data:000007b9 eb                               ex de,hl
.data:000007ba ed 53 43 20                      ld (0x2043),de
.data:000007be cd ce 07                         call 0x07ce
.data:000007c1 ed 5b 43 20                      ld de,(0x2043)
.data:000007c5 eb                               ex de,hl
.data:000007c6 b7                               or a
.data:000007c7 ed 52                            sbc hl,de
.data:000007c9 eb                               ex de,hl
.data:000007ca d8                               ret c
.data:000007cb c8                               ret z
.data:000007cc 18 f0                            jr 0x07be
.data:000007ce fd 36 03 08                      ld (iy+3),0x08
.data:000007d2 16 80                            ld d,0x80
.data:000007d4 cd ee 07                         call 0x07ee
.data:000007d7 06 00                            ld b,0x00
.data:000007d9 56                               ld d,(hl)
.data:000007da 7a                               ld a,d
.data:000007db 80                               add a,b
.data:000007dc 47                               ld b,a
.data:000007dd cd ee 07                         call 0x07ee
.data:000007e0 23                               inc hl
.data:000007e1 fd 35 03                         dec (iy+3)
.data:000007e4 20 f3                            jr nz,0x07d9
.data:000007e6 50                               ld d,b
.data:000007e7 cd ee 07                         call 0x07ee
.data:000007ea cd 53 08                         call 0x0853
.data:000007ed c9                               ret
.data:000007ee 79                               ld a,c
.data:000007ef d3 7a                            out (0x7a),a
.data:000007f1 cd 2c 08                         call 0x082c
.data:000007f4 cb 6f                            bit 5,a
.data:000007f6 28 f6                            jr z,0x07ee
.data:000007f8 fd 5e 02                         ld e,(iy+2)
.data:000007fb 79                               ld a,c
.data:000007fc cb 4b                            bit 1,e
.data:000007fe 28 02                            jr z,0x0802
.data:00000800 f6 01                            or 0x01
.data:00000802 d3 7a                            out (0x7a),a
.data:00000804 cd 2c 08                         call 0x082c
.data:00000807 cb 77                            bit 6,a
.data:00000809 28 ed                            jr z,0x07f8
.data:0000080b fd 36 02 00                      ld (iy+2),0x00
.data:0000080f cb 0a                            rrc d
.data:00000811 79                               ld a,c
.data:00000812 fd 5e 02                         ld e,(iy+2)
.data:00000815 cb 7a                            bit 7,d
.data:00000817 28 06                            jr z,0x081f
.data:00000819 cb 4b                            bit 1,e
.data:0000081b 28 02                            jr z,0x081f
.data:0000081d f6 01                            or 0x01
.data:0000081f d3 7a                            out (0x7a),a
.data:00000821 cd 2c 08                         call 0x082c
.data:00000824 c8                               ret z
.data:00000825 ab                               xor e
.data:00000826 e6 20                            and 0x20
.data:00000828 28 e7                            jr z,0x0811
.data:0000082a 18 e3                            jr 0x080f
.data:0000082c 3e 00                            ld a,0x00
.data:0000082e d3 6f                            out (0x6f),a
.data:00000830 db 6c                            in a,(0x6c)
.data:00000832 db 6c                            in a,(0x6c)
.data:00000834 f6 01                            or 0x01
.data:00000836 fd be 04                         cp (iy+4)
.data:00000839 28 f1                            jr z,0x082c
.data:0000083b fd 77 04                         ld (iy+4),a
.data:0000083e fd 7e 02                         ld a,(iy+2)
.data:00000841 e6 fe                            and 0xfe
.data:00000843 c6 02                            add a,0x02
.data:00000845 fd 77 02                         ld (iy+2),a
.data:00000848 c9                               ret
.data:00000849 fd 34 03                         inc (iy+3)
.data:0000084c fd 7e 03                         ld a,(iy+3)
.data:0000084f e6 07                            and 0x07
.data:00000851 20 08                            jr nz,0x085b
.data:00000853 fd 7e 01                         ld a,(iy+1)
.data:00000856 ee 80                            xor 0x80
.data:00000858 fd 77 01                         ld (iy+1),a
.data:0000085b fd 7e 00                         ld a,(iy+0)
.data:0000085e fa 64 08                         jp m,0x0864
.data:00000861 fd b6 01                         or (iy+1)
.data:00000864 32 f6 60                         ld (0x60f6),a
.data:00000867 d3 78                            out (0x78),a
.data:00000869 c9                               ret
.data:0000086a 2d                               dec l
.data:0000086b 20 07                            jr nz,0x0874
.data:0000086d 21 bc 20                         ld hl,0x20bc
.data:00000870 11 34 21                         ld de,0x2134
.data:00000873 c9                               ret
.data:00000874 2d                               dec l
.data:00000875 c0                               ret nz
.data:00000876 21 04 61                         ld hl,0x6104
.data:00000879 11 84 65                         ld de,0x6584
.data:0000087c c9                               ret
.data:0000087d 21 ee 65                         ld hl,0x65ee
.data:00000880 cb 76                            bit 6,(hl)
.data:00000882 28 0a                            jr z,0x088e
.data:00000884 cb b6                            res 6,(hl)
.data:00000886 7e                               ld a,(hl)
.data:00000887 fe 24                            cp 0x24
.data:00000889 30 03                            jr nc,0x088e
.data:0000088b 4f                               ld c,a
.data:0000088c 18 3f                            jr 0x08cd
.data:0000088e 21 c0 60                         ld hl,0x60c0
.data:00000891 7e                               ld a,(hl)
.data:00000892 fe 1e                            cp 0x1e
.data:00000894 20 04                            jr nz,0x089a
.data:00000896 3e 06                            ld a,0x06
.data:00000898 18 16                            jr 0x08b0
.data:0000089a cb 77                            bit 6,a
.data:0000089c c8                               ret z
.data:0000089d 3a 38 21                         ld a,(0x2138)
.data:000008a0 47                               ld b,a
.data:000008a1 e6 0c                            and 0x0c
.data:000008a3 28 0a                            jr z,0x08af
.data:000008a5 78                               ld a,b
.data:000008a6 e6 c0                            and 0xc0
.data:000008a8 28 05                            jr z,0x08af
.data:000008aa cb 7e                            bit 7,(hl)
.data:000008ac c8                               ret z
.data:000008ad cb be                            res 7,(hl)
.data:000008af 7e                               ld a,(hl)
.data:000008b0 4f                               ld c,a
.data:000008b1 e6 1f                            and 0x1f
.data:000008b3 77                               ld (hl),a
.data:000008b4 ca 52 09                         jp z,0x0952
.data:000008b7 fe 1f                            cp 0x1f
.data:000008b9 ca 5d 09                         jp z,0x095d
.data:000008bc 3d                               dec a
.data:000008bd cb 69                            bit 5,c
.data:000008bf 20 02                            jr nz,0x08c3
.data:000008c1 c6 0c                            add a,0x0c
.data:000008c3 cb 79                            bit 7,c
.data:000008c5 20 06                            jr nz,0x08cd
.data:000008c7 21 ef 65                         ld hl,0x65ef
.data:000008ca 77                               ld (hl),a
.data:000008cb cb fe                            set 7,(hl)
.data:000008cd 67                               ld h,a
.data:000008ce 1e 20                            ld e,0x20
.data:000008d0 cd ca 1b                         call 0x1bca
.data:000008d3 11 04 61                         ld de,0x6104
.data:000008d6 19                               add hl,de
.data:000008d7 cb 79                            bit 7,c
.data:000008d9 28 22                            jr z,0x08fd
.data:000008db f3                               di
.data:000008dc e5                               push hl
.data:000008dd 21 3e 60                         ld hl,0x603e
.data:000008e0 11 9c 60                         ld de,0x609c
.data:000008e3 06 06                            ld b,0x06
.data:000008e5 1a                               ld a,(de)
.data:000008e6 ed 67                            rrd
.data:000008e8 13                               inc de
.data:000008e9 1a                               ld a,(de)
.data:000008ea ed 67                            rrd
.data:000008ec 13                               inc de
.data:000008ed 23                               inc hl
.data:000008ee 10 f5                            djnz 0x08e5
.data:000008f0 21 24 60                         ld hl,0x6024
.data:000008f3 d1                               pop de
.data:000008f4 01 20 00                         ld bc,0x0020
.data:000008f7 ed b0                            ldir
.data:000008f9 3e 5b                            ld a,0x5b
.data:000008fb 18 50                            jr 0x094d
.data:000008fd f3                               di
.data:000008fe 11 24 60                         ld de,0x6024
.data:00000901 01 20 00                         ld bc,0x0020
.data:00000904 ed b0                            ldir
.data:00000906 3a a6 60                         ld a,(0x60a6)
.data:00000909 4f                               ld c,a
.data:0000090a 21 3e 60                         ld hl,0x603e
.data:0000090d 11 9c 60                         ld de,0x609c
.data:00000910 06 06                            ld b,0x06
.data:00000912 af                               xor a
.data:00000913 ed 67                            rrd
.data:00000915 12                               ld (de),a
.data:00000916 13                               inc de
.data:00000917 ed 67                            rrd
.data:00000919 12                               ld (de),a
.data:0000091a 13                               inc de
.data:0000091b 23                               inc hl
.data:0000091c 10 f5                            djnz 0x0913
.data:0000091e 16 c0                            ld d,0xc0
.data:00000920 21 44 60                         ld hl,0x6044
.data:00000923 06 22                            ld b,0x22
.data:00000925 7e                               ld a,(hl)
.data:00000926 b2                               or d
.data:00000927 77                               ld (hl),a
.data:00000928 23                               inc hl
.data:00000929 10 fa                            djnz 0x0925
.data:0000092b 21 69 60                         ld hl,0x6069
.data:0000092e cb be                            res 7,(hl)
.data:00000930 21 4b 60                         ld hl,0x604b
.data:00000933 7e                               ld a,(hl)
.data:00000934 e6 0e                            and 0x0e
.data:00000936 28 01                            jr z,0x0939
.data:00000938 77                               ld (hl),a
.data:00000939 21 48 60                         ld hl,0x6048
.data:0000093c 7e                               ld a,(hl)
.data:0000093d e6 0f                            and 0x0f
.data:0000093f 28 05                            jr z,0x0946
.data:00000941 77                               ld (hl),a
.data:00000942 79                               ld a,c
.data:00000943 32 a6 60                         ld (0x60a6),a
.data:00000946 21 b3 60                         ld hl,0x60b3
.data:00000949 36 01                            ld (hl),0x01
.data:0000094b 3e 5f                            ld a,0x5f
.data:0000094d 32 f0 60                         ld (0x60f0),a
.data:00000950 fb                               ei
.data:00000951 c9                               ret
.data:00000952 21 a5 09                         ld hl,0x09a5
.data:00000955 11 b4 60                         ld de,0x60b4
.data:00000958 01 07 00                         ld bc,0x0007
.data:0000095b ed b0                            ldir
.data:0000095d 21 b3 60                         ld hl,0x60b3
.data:00000960 cb fe                            set 7,(hl)
.data:00000962 23                               inc hl
.data:00000963 11 a4 60                         ld de,0x60a4
.data:00000966 01 04 00                         ld bc,0x0004
.data:00000969 ed b0                            ldir
.data:0000096b 7e                               ld a,(hl)
.data:0000096c 32 24 60                         ld (0x6024),a
.data:0000096f 16 40                            ld d,0x40
.data:00000971 1e 7f                            ld e,0x7f
.data:00000973 21 44 60                         ld hl,0x6044
.data:00000976 06 26                            ld b,0x26
.data:00000978 7e                               ld a,(hl)
.data:00000979 b2                               or d
.data:0000097a a3                               and e
.data:0000097b 77                               ld (hl),a
.data:0000097c 23                               inc hl
.data:0000097d 10 f9                            djnz 0x0978
.data:0000097f 21 b9 60                         ld hl,0x60b9
.data:00000982 7e                               ld a,(hl)
.data:00000983 fe 06                            cp 0x06
.data:00000985 38 0b                            jr c,0x0992
.data:00000987 dd 21 9c 60                      ld ix,0x609c
.data:0000098b dd 77 00                         ld (ix+0),a
.data:0000098e dd cb a8 fe                      set 7,(ix-88)
.data:00000992 23                               inc hl
.data:00000993 7e                               ld a,(hl)
.data:00000994 fe 06                            cp 0x06
.data:00000996 38 b3                            jr c,0x094b
.data:00000998 dd 21 9f 60                      ld ix,0x609f
.data:0000099c dd 77 00                         ld (ix+0),a
.data:0000099f dd cb a8 fe                      set 7,(ix-88)
.data:000009a3 18 a6                            jr 0x094b
.data:000009a5 07                               rlca
.data:000009a6 07                               rlca
.data:000009a7 07                               rlca
.data:000009a8 04                               inc b
.data:000009a9 b0                               or b
.data:000009aa 00                               nop
.data:000009ab 00                               nop
.data:000009ac dd 21 44 60                      ld ix,0x6044
.data:000009b0 0e 08                            ld c,0x08
.data:000009b2 16 52                            ld d,0x52
.data:000009b4 1e 80                            ld e,0x80
.data:000009b6 dd 7e 4e                         ld a,(ix+78)
.data:000009b9 07                               rlca
.data:000009ba 07                               rlca
.data:000009bb 06 06                            ld b,0x06
.data:000009bd 07                               rlca
.data:000009be 38 05                            jr c,0x09c5
.data:000009c0 cb 7b                            bit 7,e
.data:000009c2 28 28                            jr z,0x09ec
.data:000009c4 58                               ld e,b
.data:000009c5 10 f6                            djnz 0x09bd
.data:000009c7 cb 7b                            bit 7,e
.data:000009c9 20 21                            jr nz,0x09ec
.data:000009cb cb 42                            bit 0,d
.data:000009cd 28 04                            jr z,0x09d3
.data:000009cf cb 53                            bit 2,e
.data:000009d1 20 01                            jr nz,0x09d4
.data:000009d3 1d                               dec e
.data:000009d4 dd 46 00                         ld b,(ix+0)
.data:000009d7 cb 78                            bit 7,b
.data:000009d9 28 0b                            jr z,0x09e6
.data:000009db 78                               ld a,b
.data:000009dc e6 0f                            and 0x0f
.data:000009de bb                               cp e
.data:000009df 20 05                            jr nz,0x09e6
.data:000009e1 dd be 58                         cp (ix+88)
.data:000009e4 20 06                            jr nz,0x09ec
.data:000009e6 dd 73 00                         ld (ix+0),e
.data:000009e9 dd 73 58                         ld (ix+88),e
.data:000009ec dd 23                            inc ix
.data:000009ee cb 3a                            srl d
.data:000009f0 0d                               dec c
.data:000009f1 20 c1                            jr nz,0x09b4
.data:000009f3 21 8a 60                         ld hl,0x608a
.data:000009f6 11 00 00                         ld de,0x0000
.data:000009f9 06 08                            ld b,0x08
.data:000009fb 7e                               ld a,(hl)
.data:000009fc cb 47                            bit 0,a
.data:000009fe 20 02                            jr nz,0x0a02
.data:00000a00 cb fa                            set 7,d
.data:00000a02 cb 02                            rlc d
.data:00000a04 cb 4f                            bit 1,a
.data:00000a06 20 02                            jr nz,0x0a0a
.data:00000a08 cb fb                            set 7,e
.data:00000a0a cb 03                            rlc e
.data:00000a0c 23                               inc hl
.data:00000a0d 10 ec                            djnz 0x09fb
.data:00000a0f 7a                               ld a,d
.data:00000a10 e6 f0                            and 0xf0
.data:00000a12 57                               ld d,a
.data:00000a13 ab                               xor e
.data:00000a14 e6 20                            and 0x20
.data:00000a16 28 06                            jr z,0x0a1e
.data:00000a18 aa                               xor d
.data:00000a19 57                               ld d,a
.data:00000a1a 3e 20                            ld a,0x20
.data:00000a1c ab                               xor e
.data:00000a1d 5f                               ld e,a
.data:00000a1e 21 be 60                         ld hl,0x60be
.data:00000a21 7e                               ld a,(hl)
.data:00000a22 23                               inc hl
.data:00000a23 77                               ld (hl),a
.data:00000a24 2a 9a 60                         ld hl,(0x609a)
.data:00000a27 b7                               or a
.data:00000a28 ed 52                            sbc hl,de
.data:00000a2a ed 53 9a 60                      ld (0x609a),de
.data:00000a2e 20 04                            jr nz,0x0a34
.data:00000a30 ed 53 bd 60                      ld (0x60bd),de
.data:00000a34 c9                               ret
.data:00000a35 21 f5 60                         ld hl,0x60f5
.data:00000a38 7e                               ld a,(hl)
.data:00000a39 f6 80                            or 0x80
.data:00000a3b e6 e0                            and 0xe0
.data:00000a3d 4f                               ld c,a
.data:00000a3e 3a a2 60                         ld a,(0x60a2)
.data:00000a41 e6 03                            and 0x03
.data:00000a43 28 07                            jr z,0x0a4c
.data:00000a45 cb d1                            set 2,c
.data:00000a47 3d                               dec a
.data:00000a48 28 02                            jr z,0x0a4c
.data:00000a4a cb c9                            set 1,c
.data:00000a4c 71                               ld (hl),c
.data:00000a4d 3a 2e 60                         ld a,(0x602e)
.data:00000a50 2f                               cpl
.data:00000a51 32 02 61                         ld (0x6102),a
.data:00000a54 3a 38 21                         ld a,(0x2138)
.data:00000a57 cb 5f                            bit 3,a
.data:00000a59 20 0b                            jr nz,0x0a66
.data:00000a5b cb 77                            bit 6,a
.data:00000a5d 28 0a                            jr z,0x0a69
.data:00000a5f 3a 3e 21                         ld a,(0x213e)
.data:00000a62 cb 5f                            bit 3,a
.data:00000a64 28 03                            jr z,0x0a69
.data:00000a66 af                               xor a
.data:00000a67 18 31                            jr 0x0a9a
.data:00000a69 3a 3e 60                         ld a,(0x603e)
.data:00000a6c 47                               ld b,a
.data:00000a6d 3a a3 60                         ld a,(0x60a3)
.data:00000a70 fe 05                            cp 0x05
.data:00000a72 78                               ld a,b
.data:00000a73 28 08                            jr z,0x0a7d
.data:00000a75 fe 20                            cp 0x20
.data:00000a77 3e 00                            ld a,0x00
.data:00000a79 38 1d                            jr c,0x0a98
.data:00000a7b 18 1d                            jr 0x0a9a
.data:00000a7d e6 e0                            and 0xe0
.data:00000a7f 07                               rlca
.data:00000a80 07                               rlca
.data:00000a81 07                               rlca
.data:00000a82 fe 04                            cp 0x04
.data:00000a84 38 12                            jr c,0x0a98
.data:00000a86 3c                               inc a
.data:00000a87 fe 06                            cp 0x06
.data:00000a89 38 0d                            jr c,0x0a98
.data:00000a8b 3c                               inc a
.data:00000a8c fe 08                            cp 0x08
.data:00000a8e 38 08                            jr c,0x0a98
.data:00000a90 c6 03                            add a,0x03
.data:00000a92 fe 0c                            cp 0x0c
.data:00000a94 38 02                            jr c,0x0a98
.data:00000a96 c6 03                            add a,0x03
.data:00000a98 f6 10                            or 0x10
.data:00000a9a 4f                               ld c,a
.data:00000a9b 21 f3 60                         ld hl,0x60f3
.data:00000a9e f3                               di
.data:00000a9f 7e                               ld a,(hl)
.data:00000aa0 e6 e0                            and 0xe0
.data:00000aa2 b1                               or c
.data:00000aa3 77                               ld (hl),a
.data:00000aa4 fb                               ei
.data:00000aa5 3a b3 60                         ld a,(0x60b3)
.data:00000aa8 07                               rlca
.data:00000aa9 d0                               ret nc
.data:00000aaa 21 a4 60                         ld hl,0x60a4
.data:00000aad 11 b4 60                         ld de,0x60b4
.data:00000ab0 01 04 00                         ld bc,0x0004
.data:00000ab3 ed b0                            ldir
.data:00000ab5 3a 24 60                         ld a,(0x6024)
.data:00000ab8 12                               ld (de),a
.data:00000ab9 13                               inc de
.data:00000aba 3a 9c 60                         ld a,(0x609c)
.data:00000abd 12                               ld (de),a
.data:00000abe 13                               inc de
.data:00000abf 3a 9f 60                         ld a,(0x609f)
.data:00000ac2 12                               ld (de),a
.data:00000ac3 c9                               ret
.data:00000ac4 11 f8 ab                         ld de,0xabf8
.data:00000ac7 21 fc 60                         ld hl,0x60fc
.data:00000aca 01 09 00                         ld bc,0x0009
.data:00000acd ed b0                            ldir
.data:00000acf c9                               ret
.data:00000ad0 06 00                            ld b,0x00
.data:00000ad2 7e                               ld a,(hl)
.data:00000ad3 d6 04                            sub 0x04
.data:00000ad5 30 01                            jr nc,0x0ad8
.data:00000ad7 af                               xor a
.data:00000ad8 23                               inc hl
.data:00000ad9 be                               cp (hl)
.data:00000ada 28 02                            jr z,0x0ade
.data:00000adc 77                               ld (hl),a
.data:00000add 04                               inc b
.data:00000ade 23                               inc hl
.data:00000adf 1a                               ld a,(de)
.data:00000ae0 fe 05                            cp 0x05
.data:00000ae2 20 03                            jr nz,0x0ae7
.data:00000ae4 3a 9c 60                         ld a,(0x609c)
.data:00000ae7 be                               cp (hl)
.data:00000ae8 77                               ld (hl),a
.data:00000ae9 c0                               ret nz
.data:00000aea cb 08                            rrc b
.data:00000aec c9                               ret
.data:00000aed 21 a7 60                         ld hl,0x60a7
.data:00000af0 11 9c 60                         ld de,0x609c
.data:00000af3 cd d0 0a                         call 0x0ad0
.data:00000af6 28 15                            jr z,0x0b0d
.data:00000af8 21 fe 67                         ld hl,0x67fe
.data:00000afb fd 21 ab 60                      ld iy,0x60ab
.data:00000aff cd 69 0b                         call 0x0b69
.data:00000b02 3a a8 60                         ld a,(0x60a8)
.data:00000b05 11 00 66                         ld de,0x6600
.data:00000b08 0e aa                            ld c,0xaa
.data:00000b0a cd 35 0b                         call 0x0b35
.data:00000b0d 21 ad 60                         ld hl,0x60ad
.data:00000b10 11 9f 60                         ld de,0x609f
.data:00000b13 cd d0 0a                         call 0x0ad0
.data:00000b16 c8                               ret z
.data:00000b17 cb 78                            bit 7,b
.data:00000b19 20 08                            jr nz,0x0b23
.data:00000b1b 21 a9 60                         ld hl,0x60a9
.data:00000b1e be                               cp (hl)
.data:00000b1f 20 02                            jr nz,0x0b23
.data:00000b21 06 40                            ld b,0x40
.data:00000b23 21 ff 67                         ld hl,0x67ff
.data:00000b26 fd 21 b1 60                      ld iy,0x60b1
.data:00000b2a cd 69 0b                         call 0x0b69
.data:00000b2d 3a ae 60                         ld a,(0x60ae)
.data:00000b30 11 01 66                         ld de,0x6601
.data:00000b33 0e ab                            ld c,0xab
.data:00000b35 06 02                            ld b,0x02
.data:00000b37 ed 79                            out (c),a
.data:00000b39 47                               ld b,a
.data:00000b3a b7                               or a
.data:00000b3b 26 02                            ld h,0x02
.data:00000b3d 3e 00                            ld a,0x00
.data:00000b3f 6c                               ld l,h
.data:00000b40 28 07                            jr z,0x0b49
.data:00000b42 cb 3c                            srl h
.data:00000b44 1f                               rra
.data:00000b45 cb 25                            sla l
.data:00000b47 10 f9                            djnz 0x0b42
.data:00000b49 44                               ld b,h
.data:00000b4a cb c8                            set 1,b
.data:00000b4c b3                               or e
.data:00000b4d 4f                               ld c,a
.data:00000b4e ed 79                            out (c),a
.data:00000b50 cb 3c                            srl h
.data:00000b52 1f                               rra
.data:00000b53 b7                               or a
.data:00000b54 c8                               ret z
.data:00000b55 47                               ld b,a
.data:00000b56 4d                               ld c,l
.data:00000b57 0d                               dec c
.data:00000b58 62                               ld h,d
.data:00000b59 6b                               ld l,e
.data:00000b5a 13                               inc de
.data:00000b5b 13                               inc de
.data:00000b5c ed a0                            ldi
.data:00000b5e 0c                               inc c
.data:00000b5f 13                               inc de
.data:00000b60 79                               ld a,c
.data:00000b61 85                               add a,l
.data:00000b62 6f                               ld l,a
.data:00000b63 30 01                            jr nc,0x0b66
.data:00000b65 24                               inc h
.data:00000b66 10 f4                            djnz 0x0b5c
.data:00000b68 c9                               ret
.data:00000b69 11 fe ff                         ld de,0xfffe
.data:00000b6c fd 36 00 00                      ld (iy+0),0x00
.data:00000b70 fe 03                            cp 0x03
.data:00000b72 28 64                            jr z,0x0bd8
.data:00000b74 fe 04                            cp 0x04
.data:00000b76 28 60                            jr z,0x0bd8
.data:00000b78 fe 05                            cp 0x05
.data:00000b7a 28 69                            jr z,0x0be5
.data:00000b7c fe 08                            cp 0x08
.data:00000b7e ca 22 0c                         jp z,0x0c22
.data:00000b81 fe 0a                            cp 0x0a
.data:00000b83 ca 08 0c                         jp z,0x0c08
.data:00000b86 cb 78                            bit 7,b
.data:00000b88 28 08                            jr z,0x0b92
.data:00000b8a 11 00 01                         ld de,0x0100
.data:00000b8d b7                               or a
.data:00000b8e ed 52                            sbc hl,de
.data:00000b90 18 11                            jr 0x0ba3
.data:00000b92 cb 70                            bit 6,b
.data:00000b94 28 0f                            jr z,0x0ba5
.data:00000b96 54                               ld d,h
.data:00000b97 5d                               ld e,l
.data:00000b98 1b                               dec de
.data:00000b99 06 80                            ld b,0x80
.data:00000b9b 1a                               ld a,(de)
.data:00000b9c 77                               ld (hl),a
.data:00000b9d 1b                               dec de
.data:00000b9e 1b                               dec de
.data:00000b9f 2b                               dec hl
.data:00000ba0 2b                               dec hl
.data:00000ba1 10 f8                            djnz 0x0b9b
.data:00000ba3 18 2a                            jr 0x0bcf
.data:00000ba5 fe 00                            cp 0x00
.data:00000ba7 28 17                            jr z,0x0bc0
.data:00000ba9 fe 01                            cp 0x01
.data:00000bab 28 24                            jr z,0x0bd1
.data:00000bad fe 02                            cp 0x02
.data:00000baf 28 2b                            jr z,0x0bdc
.data:00000bb1 fe 06                            cp 0x06
.data:00000bb3 28 39                            jr z,0x0bee
.data:00000bb5 fe 07                            cp 0x07
.data:00000bb7 28 59                            jr z,0x0c12
.data:00000bb9 fe 09                            cp 0x09
.data:00000bbb 28 74                            jr z,0x0c31
.data:00000bbd c3 54 0c                         jp 0x0c54
.data:00000bc0 06 80                            ld b,0x80
.data:00000bc2 0e 02                            ld c,0x02
.data:00000bc4 78                               ld a,b
.data:00000bc5 77                               ld (hl),a
.data:00000bc6 19                               add hl,de
.data:00000bc7 81                               add a,c
.data:00000bc8 20 03                            jr nz,0x0bcd
.data:00000bca 0e fe                            ld c,0xfe
.data:00000bcc 79                               ld a,c
.data:00000bcd 10 f6                            djnz 0x0bc5
.data:00000bcf 18 73                            jr 0x0c44
.data:00000bd1 af                               xor a
.data:00000bd2 77                               ld (hl),a
.data:00000bd3 19                               add hl,de
.data:00000bd4 3c                               inc a
.data:00000bd5 20 fb                            jr nz,0x0bd2
.data:00000bd7 c9                               ret
.data:00000bd8 fd 36 01 80                      ld (iy+1),0x80
.data:00000bdc 06 80                            ld b,0x80
.data:00000bde af                               xor a
.data:00000bdf 77                               ld (hl),a
.data:00000be0 19                               add hl,de
.data:00000be1 10 fc                            djnz 0x0bdf
.data:00000be3 18 5f                            jr 0x0c44
.data:00000be5 06 00                            ld b,0x00
.data:00000be7 3e 80                            ld a,0x80
.data:00000be9 77                               ld (hl),a
.data:00000bea 19                               add hl,de
.data:00000beb 10 fc                            djnz 0x0be9
.data:00000bed c9                               ret
.data:00000bee 0e 00                            ld c,0x00
.data:00000bf0 06 06                            ld b,0x06
.data:00000bf2 3e 02                            ld a,0x02
.data:00000bf4 51                               ld d,c
.data:00000bf5 cb 52                            bit 2,d
.data:00000bf7 28 02                            jr z,0x0bfb
.data:00000bf9 c6 2a                            add a,0x2a
.data:00000bfb cb 3a                            srl d
.data:00000bfd 10 f6                            djnz 0x0bf5
.data:00000bff 77                               ld (hl),a
.data:00000c00 2b                               dec hl
.data:00000c01 2b                               dec hl
.data:00000c02 0c                               inc c
.data:00000c03 f2 f0 0b                         jp p,0x0bf0
.data:00000c06 18 3c                            jr 0x0c44
.data:00000c08 06 00                            ld b,0x00
.data:00000c0a 48                               ld c,b
.data:00000c0b 0a                               ld a,(bc)
.data:00000c0c 77                               ld (hl),a
.data:00000c0d 19                               add hl,de
.data:00000c0e 0c                               inc c
.data:00000c0f 20 fa                            jr nz,0x0c0b
.data:00000c11 c9                               ret
.data:00000c12 3e 80                            ld a,0x80
.data:00000c14 0e 03                            ld c,0x03
.data:00000c16 47                               ld b,a
.data:00000c17 77                               ld (hl),a
.data:00000c18 19                               add hl,de
.data:00000c19 81                               add a,c
.data:00000c1a 30 02                            jr nc,0x0c1e
.data:00000c1c cb 21                            sla c
.data:00000c1e 10 f7                            djnz 0x0c17
.data:00000c20 18 22                            jr 0x0c44
.data:00000c22 af                               xor a
.data:00000c23 0e 80                            ld c,0x80
.data:00000c25 41                               ld b,c
.data:00000c26 77                               ld (hl),a
.data:00000c27 19                               add hl,de
.data:00000c28 10 fc                            djnz 0x0c26
.data:00000c2a 2f                               cpl
.data:00000c2b cb 39                            srl c
.data:00000c2d 20 f6                            jr nz,0x0c25
.data:00000c2f 77                               ld (hl),a
.data:00000c30 c9                               ret
.data:00000c31 af                               xor a
.data:00000c32 06 10                            ld b,0x10
.data:00000c34 77                               ld (hl),a
.data:00000c35 19                               add hl,de
.data:00000c36 10 fc                            djnz 0x0c34
.data:00000c38 ee ff                            xor 0xff
.data:00000c3a 20 f6                            jr nz,0x0c32
.data:00000c3c 3e 80                            ld a,0x80
.data:00000c3e 06 60                            ld b,0x60
.data:00000c40 77                               ld (hl),a
.data:00000c41 19                               add hl,de
.data:00000c42 10 fc                            djnz 0x0c40
.data:00000c44 54                               ld d,h
.data:00000c45 5d                               ld e,l
.data:00000c46 23                               inc hl
.data:00000c47 23                               inc hl
.data:00000c48 06 80                            ld b,0x80
.data:00000c4a 7e                               ld a,(hl)
.data:00000c4b 2f                               cpl
.data:00000c4c 12                               ld (de),a
.data:00000c4d 23                               inc hl
.data:00000c4e 23                               inc hl
.data:00000c4f 1b                               dec de
.data:00000c50 1b                               dec de
.data:00000c51 10 f7                            djnz 0x0c4a
.data:00000c53 c9                               ret
.data:00000c54 fe 10                            cp 0x10
.data:00000c56 28 17                            jr z,0x0c6f
.data:00000c58 d0                               ret nc
.data:00000c59 d6 0a                            sub 0x0a
.data:00000c5b e5                               push hl
.data:00000c5c dd e1                            pop ix
.data:00000c5e cd f8 18                         call 0x18f8
.data:00000c61 ed b0                            ldir
.data:00000c63 3e 54                            ld a,0x54
.data:00000c65 d3 78                            out (0x78),a
.data:00000c67 cd a2 19                         call 0x19a2
.data:00000c6a dd e5                            push ix
.data:00000c6c e1                               pop hl
.data:00000c6d 18 d5                            jr 0x0c44
.data:00000c6f e5                               push hl
.data:00000c70 21 f1 60                         ld hl,0x60f1
.data:00000c73 3e 10                            ld a,0x10
.data:00000c75 cb 46                            bit 0,(hl)
.data:00000c77 20 02                            jr nz,0x0c7b
.data:00000c79 3e 44                            ld a,0x44
.data:00000c7b d3 78                            out (0x78),a
.data:00000c7d cd 14 19                         call 0x1914
.data:00000c80 af                               xor a
.data:00000c81 18 d9                            jr 0x0c5c
.data:00000c83 3a f8 60                         ld a,(0x60f8)
.data:00000c86 e6 0a                            and 0x0a
.data:00000c88 47                               ld b,a
.data:00000c89 21 00 20                         ld hl,0x2000
.data:00000c8c 4e                               ld c,(hl)
.data:00000c8d 79                               ld a,c
.data:00000c8e e6 f7                            and 0xf7
.data:00000c90 cb 47                            bit 0,a
.data:00000c92 28 02                            jr z,0x0c96
.data:00000c94 f6 20                            or 0x20
.data:00000c96 cb 4f                            bit 1,a
.data:00000c98 28 02                            jr z,0x0c9c
.data:00000c9a f6 50                            or 0x50
.data:00000c9c 77                               ld (hl),a
.data:00000c9d 3a a3 60                         ld a,(0x60a3)
.data:00000ca0 cb 51                            bit 2,c
.data:00000ca2 28 02                            jr z,0x0ca6
.data:00000ca4 cb c0                            set 0,b
.data:00000ca6 cb 41                            bit 0,c
.data:00000ca8 28 04                            jr z,0x0cae
.data:00000caa fe 00                            cp 0x00
.data:00000cac 20 04                            jr nz,0x0cb2
.data:00000cae cb 49                            bit 1,c
.data:00000cb0 28 02                            jr z,0x0cb4
.data:00000cb2 cb d0                            set 2,b
.data:00000cb4 fe 02                            cp 0x02
.data:00000cb6 38 0c                            jr c,0x0cc4
.data:00000cb8 20 02                            jr nz,0x0cbc
.data:00000cba 18 06                            jr 0x0cc2
.data:00000cbc cb e8                            set 5,b
.data:00000cbe fe 03                            cp 0x03
.data:00000cc0 28 02                            jr z,0x0cc4
.data:00000cc2 cb e0                            set 4,b
.data:00000cc4 3a a0 60                         ld a,(0x60a0)
.data:00000cc7 cb 57                            bit 2,a
.data:00000cc9 28 04                            jr z,0x0ccf
.data:00000ccb e6 03                            and 0x03
.data:00000ccd cb c0                            set 0,b
.data:00000ccf 5f                               ld e,a
.data:00000cd0 fe 01                            cp 0x01
.data:00000cd2 20 02                            jr nz,0x0cd6
.data:00000cd4 cb f0                            set 6,b
.data:00000cd6 3a 38 21                         ld a,(0x2138)
.data:00000cd9 e6 4c                            and 0x4c
.data:00000cdb 57                               ld d,a
.data:00000cdc 28 08                            jr z,0x0ce6
.data:00000cde cb fe                            set 7,(hl)
.data:00000ce0 3e 71                            ld a,0x71
.data:00000ce2 b0                               or b
.data:00000ce3 47                               ld b,a
.data:00000ce4 18 02                            jr 0x0ce8
.data:00000ce6 cb be                            res 7,(hl)
.data:00000ce8 7b                               ld a,e
.data:00000ce9 fe 02                            cp 0x02
.data:00000ceb 20 02                            jr nz,0x0cef
.data:00000ced cb de                            set 3,(hl)
.data:00000cef 78                               ld a,b
.data:00000cf0 e6 f7                            and 0xf7
.data:00000cf2 32 f8 60                         ld (0x60f8),a
.data:00000cf5 cb 41                            bit 0,c
.data:00000cf7 28 0a                            jr z,0x0d03
.data:00000cf9 cb 70                            bit 6,b
.data:00000cfb 20 06                            jr nz,0x0d03
.data:00000cfd 3a 00 60                         ld a,(0x6000)
.data:00000d00 32 e2 60                         ld (0x60e2),a
.data:00000d03 ed 5b 1c 60                      ld de,(0x601c)
.data:00000d07 7a                               ld a,d
.data:00000d08 fe 40                            cp 0x40
.data:00000d0a 30 10                            jr nc,0x0d1c
.data:00000d0c cb 7e                            bit 7,(hl)
.data:00000d0e 28 02                            jr z,0x0d12
.data:00000d10 cb 38                            srl b
.data:00000d12 cb 50                            bit 2,b
.data:00000d14 28 06                            jr z,0x0d1c
.data:00000d16 21 00 00                         ld hl,0x0000
.data:00000d19 af                               xor a
.data:00000d1a 18 12                            jr 0x0d2e
.data:00000d1c 2a d5 60                         ld hl,(0x60d5)
.data:00000d1f 19                               add hl,de
.data:00000d20 30 0f                            jr nc,0x0d31
.data:00000d22 21 ff ff                         ld hl,0xffff
.data:00000d25 14                               inc d
.data:00000d26 3a d7 60                         ld a,(0x60d7)
.data:00000d29 82                               add a,d
.data:00000d2a 30 02                            jr nc,0x0d2e
.data:00000d2c 3e ff                            ld a,0xff
.data:00000d2e 32 d7 60                         ld (0x60d7),a
.data:00000d31 22 d5 60                         ld (0x60d5),hl
.data:00000d34 3a 00 20                         ld a,(0x2000)
.data:00000d37 e6 02                            and 0x02
.data:00000d39 47                               ld b,a
.data:00000d3a 3a 9d 60                         ld a,(0x609d)
.data:00000d3d cb 57                            bit 2,a
.data:00000d3f 28 04                            jr z,0x0d45
.data:00000d41 e6 03                            and 0x03
.data:00000d43 cb e0                            set 4,b
.data:00000d45 fe 01                            cp 0x01
.data:00000d47 20 08                            jr nz,0x0d51
.data:00000d49 cb 48                            bit 1,b
.data:00000d4b 28 04                            jr z,0x0d51
.data:00000d4d 26 40                            ld h,0x40
.data:00000d4f 18 40                            jr 0x0d91
.data:00000d51 2a 18 60                         ld hl,(0x6018)
.data:00000d54 cb 60                            bit 4,b
.data:00000d56 28 39                            jr z,0x0d91
.data:00000d58 06 05                            ld b,0x05
.data:00000d5a 29                               add hl,hl
.data:00000d5b cb 7c                            bit 7,h
.data:00000d5d 20 02                            jr nz,0x0d61
.data:00000d5f 10 f9                            djnz 0x0d5a
.data:00000d61 04                               inc b
.data:00000d62 7c                               ld a,h
.data:00000d63 b7                               or a
.data:00000d64 20 01                            jr nz,0x0d67
.data:00000d66 24                               inc h
.data:00000d67 5c                               ld e,h
.data:00000d68 3a e2 60                         ld a,(0x60e2)
.data:00000d6b 21 e0 60                         ld hl,0x60e0
.data:00000d6e be                               cp (hl)
.data:00000d6f 77                               ld (hl),a
.data:00000d70 28 0e                            jr z,0x0d80
.data:00000d72 4f                               ld c,a
.data:00000d73 3a e7 60                         ld a,(0x60e7)
.data:00000d76 91                               sub c
.data:00000d77 28 03                            jr z,0x0d7c
.data:00000d79 30 02                            jr nc,0x0d7d
.data:00000d7b 2f                               cpl
.data:00000d7c 3c                               inc a
.data:00000d7d 32 e1 60                         ld (0x60e1),a
.data:00000d80 3a e1 60                         ld a,(0x60e1)
.data:00000d83 05                               dec b
.data:00000d84 28 07                            jr z,0x0d8d
.data:00000d86 cb 27                            sla a
.data:00000d88 fa 8d 0d                         jp m,0x0d8d
.data:00000d8b 10 f9                            djnz 0x0d86
.data:00000d8d 67                               ld h,a
.data:00000d8e cd ca 1b                         call 0x1bca
.data:00000d91 22 e8 60                         ld (0x60e8),hl
.data:00000d94 c9                               ret
.data:00000d95 cb 2c                            sra h
.data:00000d97 cb 1d                            rr l
.data:00000d99 e5                               push hl
.data:00000d9a 5f                               ld e,a
.data:00000d9b 3a 20 60                         ld a,(0x6020)
.data:00000d9e 67                               ld h,a
.data:00000d9f cd b2 1b                         call 0x1bb2
.data:00000da2 cb 2c                            sra h
.data:00000da4 cb 1d                            rr l
.data:00000da6 d1                               pop de
.data:00000da7 19                               add hl,de
.data:00000da8 7c                               ld a,h
.data:00000da9 cb 25                            sla l
.data:00000dab ce 80                            adc a,0x80
.data:00000dad c9                               ret
.data:00000dae 3a d7 60                         ld a,(0x60d7)
.data:00000db1 5f                               ld e,a
.data:00000db2 3a 04 60                         ld a,(0x6004)
.data:00000db5 67                               ld h,a
.data:00000db6 0e 00                            ld c,0x00
.data:00000db8 cd b2 1b                         call 0x1bb2
.data:00000dbb 3a 2c 60                         ld a,(0x602c)
.data:00000dbe 0e 00                            ld c,0x00
.data:00000dc0 cd 95 0d                         call 0x0d95
.data:00000dc3 32 d3 60                         ld (0x60d3),a
.data:00000dc6 3a d7 60                         ld a,(0x60d7)
.data:00000dc9 5f                               ld e,a
.data:00000dca 3a 08 60                         ld a,(0x6008)
.data:00000dcd 67                               ld h,a
.data:00000dce 0e 00                            ld c,0x00
.data:00000dd0 cd b2 1b                         call 0x1bb2
.data:00000dd3 3a 2b 60                         ld a,(0x602b)
.data:00000dd6 0e 01                            ld c,0x01
.data:00000dd8 cd 95 0d                         call 0x0d95
.data:00000ddb 32 d4 60                         ld (0x60d4),a
.data:00000dde 3a 40 60                         ld a,(0x6040)
.data:00000de1 2f                               cpl
.data:00000de2 6f                               ld l,a
.data:00000de3 26 00                            ld h,0x00
.data:00000de5 29                               add hl,hl
.data:00000de6 3a a4 60                         ld a,(0x60a4)
.data:00000de9 84                               add a,h
.data:00000dea 67                               ld h,a
.data:00000deb 11 00 8e                         ld de,0x8e00
.data:00000dee 19                               add hl,de
.data:00000def 5d                               ld e,l
.data:00000df0 3a a7 60                         ld a,(0x60a7)
.data:00000df3 cd 1d 0e                         call 0x0e1d
.data:00000df6 ed 53 ec 60                      ld (0x60ec),de
.data:00000dfa 3a ad 60                         ld a,(0x60ad)
.data:00000dfd cd 1d 0e                         call 0x0e1d
.data:00000e00 3a 02 60                         ld a,(0x6002)
.data:00000e03 6f                               ld l,a
.data:00000e04 26 00                            ld h,0x00
.data:00000e06 29                               add hl,hl
.data:00000e07 3a a5 60                         ld a,(0x60a5)
.data:00000e0a 84                               add a,h
.data:00000e0b d6 08                            sub 0x08
.data:00000e0d 67                               ld h,a
.data:00000e0e 19                               add hl,de
.data:00000e0f 3a 00 60                         ld a,(0x6000)
.data:00000e12 47                               ld b,a
.data:00000e13 3a 01 60                         ld a,(0x6001)
.data:00000e16 84                               add a,h
.data:00000e17 90                               sub b
.data:00000e18 67                               ld h,a
.data:00000e19 22 ee 60                         ld (0x60ee),hl
.data:00000e1c c9                               ret
.data:00000e1d b7                               or a
.data:00000e1e 28 0e                            jr z,0x0e2e
.data:00000e20 fe 05                            cp 0x05
.data:00000e22 38 02                            jr c,0x0e26
.data:00000e24 3e 04                            ld a,0x04
.data:00000e26 47                               ld b,a
.data:00000e27 7c                               ld a,h
.data:00000e28 d6 0c                            sub 0x0c
.data:00000e2a 10 fc                            djnz 0x0e28
.data:00000e2c 57                               ld d,a
.data:00000e2d c9                               ret
.data:00000e2e 54                               ld d,h
.data:00000e2f c9                               ret
.data:00000e30 3a bd 60                         ld a,(0x60bd)
.data:00000e33 fe 10                            cp 0x10
.data:00000e35 28 07                            jr z,0x0e3e
.data:00000e37 3a 6a 60                         ld a,(0x606a)
.data:00000e3a 2f                               cpl
.data:00000e3b 32 d8 60                         ld (0x60d8),a
.data:00000e3e 3a 24 60                         ld a,(0x6024)
.data:00000e41 4f                               ld c,a
.data:00000e42 3a 38 21                         ld a,(0x2138)
.data:00000e45 cb 5f                            bit 3,a
.data:00000e47 28 0b                            jr z,0x0e54
.data:00000e49 3a e2 60                         ld a,(0x60e2)
.data:00000e4c fe 3f                            cp 0x3f
.data:00000e4e 20 04                            jr nz,0x0e54
.data:00000e50 3e ff                            ld a,0xff
.data:00000e52 18 0b                            jr 0x0e5f
.data:00000e54 3a 26 60                         ld a,(0x6026)
.data:00000e57 fe 80                            cp 0x80
.data:00000e59 30 04                            jr nc,0x0e5f
.data:00000e5b 1e 7f                            ld e,0x7f
.data:00000e5d 18 04                            jr 0x0e63
.data:00000e5f 2f                               cpl
.data:00000e60 5f                               ld e,a
.data:00000e61 3e 7f                            ld a,0x7f
.data:00000e63 47                               ld b,a
.data:00000e64 cb 20                            sla b
.data:00000e66 c5                               push bc
.data:00000e67 cb 23                            sla e
.data:00000e69 3a 25 60                         ld a,(0x6025)
.data:00000e6c fe 80                            cp 0x80
.data:00000e6e 30 04                            jr nc,0x0e74
.data:00000e70 0e 7f                            ld c,0x7f
.data:00000e72 18 04                            jr 0x0e78
.data:00000e74 2f                               cpl
.data:00000e75 4f                               ld c,a
.data:00000e76 3e 7f                            ld a,0x7f
.data:00000e78 67                               ld h,a
.data:00000e79 cb 24                            sla h
.data:00000e7b cd ca 1b                         call 0x1bca
.data:00000e7e 7c                               ld a,h
.data:00000e7f 61                               ld h,c
.data:00000e80 cb 24                            sla h
.data:00000e82 cd ca 1b                         call 0x1bca
.data:00000e85 6f                               ld l,a
.data:00000e86 d1                               pop de
.data:00000e87 e5                               push hl
.data:00000e88 62                               ld h,d
.data:00000e89 cd ca 1b                         call 0x1bca
.data:00000e8c 7c                               ld a,h
.data:00000e8d 2f                               cpl
.data:00000e8e 32 01 61                         ld (0x6101),a
.data:00000e91 fe f8                            cp 0xf8
.data:00000e93 3a f5 60                         ld a,(0x60f5)
.data:00000e96 cb ef                            set 5,a
.data:00000e98 30 02                            jr nc,0x0e9c
.data:00000e9a cb af                            res 5,a
.data:00000e9c 32 f5 60                         ld (0x60f5),a
.data:00000e9f e1                               pop hl
.data:00000ea0 4d                               ld c,l
.data:00000ea1 7c                               ld a,h
.data:00000ea2 cd ca 1b                         call 0x1bca
.data:00000ea5 7c                               ld a,h
.data:00000ea6 32 da 60                         ld (0x60da),a
.data:00000ea9 61                               ld h,c
.data:00000eaa cd ca 1b                         call 0x1bca
.data:00000ead 7c                               ld a,h
.data:00000eae 32 d9 60                         ld (0x60d9),a
.data:00000eb1 c9                               ret
.data:00000eb2 3a de 60                         ld a,(0x60de)
.data:00000eb5 5f                               ld e,a
.data:00000eb6 3a 06 60                         ld a,(0x6006)
.data:00000eb9 67                               ld h,a
.data:00000eba 0e 00                            ld c,0x00
.data:00000ebc cd b2 1b                         call 0x1bb2
.data:00000ebf cb 2c                            sra h
.data:00000ec1 cb 1d                            rr l
.data:00000ec3 e5                               push hl
.data:00000ec4 3a d3 60                         ld a,(0x60d3)
.data:00000ec7 5f                               ld e,a
.data:00000ec8 3a d2 60                         ld a,(0x60d2)
.data:00000ecb 67                               ld h,a
.data:00000ecc cd a7 1b                         call 0x1ba7
.data:00000ecf d1                               pop de
.data:00000ed0 19                               add hl,de
.data:00000ed1 cb 2c                            sra h
.data:00000ed3 cb 1d                            rr l
.data:00000ed5 3a 27 60                         ld a,(0x6027)
.data:00000ed8 d6 80                            sub 0x80
.data:00000eda 57                               ld d,a
.data:00000edb 1e 00                            ld e,0x00
.data:00000edd cb 2a                            sra d
.data:00000edf cb 1b                            rr e
.data:00000ee1 3a a2 60                         ld a,(0x60a2)
.data:00000ee4 e6 04                            and 0x04
.data:00000ee6 20 10                            jr nz,0x0ef8
.data:00000ee8 3a eb 60                         ld a,(0x60eb)
.data:00000eeb d6 12                            sub 0x12
.data:00000eed 2f                               cpl
.data:00000eee 47                               ld b,a
.data:00000eef 3a ea 60                         ld a,(0x60ea)
.data:00000ef2 2f                               cpl
.data:00000ef3 83                               add a,e
.data:00000ef4 5f                               ld e,a
.data:00000ef5 78                               ld a,b
.data:00000ef6 8a                               adc a,d
.data:00000ef7 57                               ld d,a
.data:00000ef8 cb 2a                            sra d
.data:00000efa cb 1b                            rr e
.data:00000efc cb 2a                            sra d
.data:00000efe cb 1b                            rr e
.data:00000f00 19                               add hl,de
.data:00000f01 7c                               ld a,h
.data:00000f02 c6 80                            add a,0x80
.data:00000f04 fe 90                            cp 0x90
.data:00000f06 30 0c                            jr nc,0x0f14
.data:00000f08 fe 70                            cp 0x70
.data:00000f0a 38 0c                            jr c,0x0f18
.data:00000f0c 29                               add hl,hl
.data:00000f0d 29                               add hl,hl
.data:00000f0e 29                               add hl,hl
.data:00000f0f 3e 80                            ld a,0x80
.data:00000f11 84                               add a,h
.data:00000f12 18 05                            jr 0x0f19
.data:00000f14 3e ff                            ld a,0xff
.data:00000f16 18 01                            jr 0x0f19
.data:00000f18 af                               xor a
.data:00000f19 4f                               ld c,a
.data:00000f1a 3a 28 60                         ld a,(0x6028)
.data:00000f1d e6 f8                            and 0xf8
.data:00000f1f 0f                               rrca
.data:00000f20 0f                               rrca
.data:00000f21 0f                               rrca
.data:00000f22 47                               ld b,a
.data:00000f23 81                               add a,c
.data:00000f24 30 02                            jr nc,0x0f28
.data:00000f26 3e ff                            ld a,0xff
.data:00000f28 32 ff 60                         ld (0x60ff),a
.data:00000f2b 79                               ld a,c
.data:00000f2c 90                               sub b
.data:00000f2d 30 01                            jr nc,0x0f30
.data:00000f2f af                               xor a
.data:00000f30 32 fc 60                         ld (0x60fc),a
.data:00000f33 3a d4 60                         ld a,(0x60d4)
.data:00000f36 5f                               ld e,a
.data:00000f37 3a d2 60                         ld a,(0x60d2)
.data:00000f3a 67                               ld h,a
.data:00000f3b cd a7 1b                         call 0x1ba7
.data:00000f3e ed 5b 22 60                      ld de,(0x6022)
.data:00000f42 19                               add hl,de
.data:00000f43 cb 2c                            sra h
.data:00000f45 cb 1d                            rr l
.data:00000f47 cb 2c                            sra h
.data:00000f49 cb 1d                            rr l
.data:00000f4b ed 5b e6 60                      ld de,(0x60e6)
.data:00000f4f 19                               add hl,de
.data:00000f50 22 ea 60                         ld (0x60ea),hl
.data:00000f53 eb                               ex de,hl
.data:00000f54 2a ec 60                         ld hl,(0x60ec)
.data:00000f57 19                               add hl,de
.data:00000f58 cd 47 1b                         call 0x1b47
.data:00000f5b d5                               push de
.data:00000f5c 0e 6e                            ld c,0x6e
.data:00000f5e f3                               di
.data:00000f5f ed 69                            out (c),l
.data:00000f61 ed 61                            out (c),h
.data:00000f63 fb                               ei
.data:00000f64 2a ee 60                         ld hl,(0x60ee)
.data:00000f67 ed 5b ea 60                      ld de,(0x60ea)
.data:00000f6b 19                               add hl,de
.data:00000f6c cd 47 1b                         call 0x1b47
.data:00000f6f 0e 6d                            ld c,0x6d
.data:00000f71 f3                               di
.data:00000f72 ed 69                            out (c),l
.data:00000f74 ed 61                            out (c),h
.data:00000f76 fb                               ei
.data:00000f77 06 00                            ld b,0x00
.data:00000f79 21 b0 60                         ld hl,0x60b0
.data:00000f7c 0e ab                            ld c,0xab
.data:00000f7e cd 87 0f                         call 0x0f87
.data:00000f81 d1                               pop de
.data:00000f82 21 aa 60                         ld hl,0x60aa
.data:00000f85 0e aa                            ld c,0xaa
.data:00000f87 7a                               ld a,d
.data:00000f88 be                               cp (hl)
.data:00000f89 c8                               ret z
.data:00000f8a 30 08                            jr nc,0x0f94
.data:00000f8c 07                               rlca
.data:00000f8d be                               cp (hl)
.data:00000f8e 20 04                            jr nz,0x0f94
.data:00000f90 7b                               ld a,e
.data:00000f91 fe 0c                            cp 0x0c
.data:00000f93 d8                               ret c
.data:00000f94 72                               ld (hl),d
.data:00000f95 ed 79                            out (c),a
.data:00000f97 79                               ld a,c
.data:00000f98 e6 01                            and 0x01
.data:00000f9a b2                               or d
.data:00000f9b 4f                               ld c,a
.data:00000f9c ed 79                            out (c),a
.data:00000f9e c9                               ret
.data:00000f9f 3a f7 60                         ld a,(0x60f7)
.data:00000fa2 07                               rlca
.data:00000fa3 4f                               ld c,a
.data:00000fa4 3a ed 60                         ld a,(0x60ed)
.data:00000fa7 2e 19                            ld l,0x19
.data:00000fa9 ed 5b ca 60                      ld de,(0x60ca)
.data:00000fad dd 21 a9 60                      ld ix,0x60a9
.data:00000fb1 cd d3 0f                         call 0x0fd3
.data:00000fb4 ed 53 ca 60                      ld (0x60ca),de
.data:00000fb8 cb 09                            rrc c
.data:00000fba 3a ef 60                         ld a,(0x60ef)
.data:00000fbd 2e 14                            ld l,0x14
.data:00000fbf ed 5b cc 60                      ld de,(0x60cc)
.data:00000fc3 dd 21 af 60                      ld ix,0x60af
.data:00000fc7 cd d3 0f                         call 0x0fd3
.data:00000fca ed 53 cc 60                      ld (0x60cc),de
.data:00000fce 79                               ld a,c
.data:00000fcf 32 f7 60                         ld (0x60f7),a
.data:00000fd2 c9                               ret
.data:00000fd3 47                               ld b,a
.data:00000fd4 3a 00 60                         ld a,(0x6000)
.data:00000fd7 80                               add a,b
.data:00000fd8 2f                               cpl
.data:00000fd9 95                               sub l
.data:00000fda 6f                               ld l,a
.data:00000fdb 26 00                            ld h,0x00
.data:00000fdd 29                               add hl,hl
.data:00000fde 29                               add hl,hl
.data:00000fdf 29                               add hl,hl
.data:00000fe0 19                               add hl,de
.data:00000fe1 e5                               push hl
.data:00000fe2 30 04                            jr nc,0x0fe8
.data:00000fe4 3e 02                            ld a,0x02
.data:00000fe6 a9                               xor c
.data:00000fe7 4f                               ld c,a
.data:00000fe8 7c                               ld a,h
.data:00000fe9 fe 80                            cp 0x80
.data:00000feb 38 01                            jr c,0x0fee
.data:00000fed 2f                               cpl
.data:00000fee 67                               ld h,a
.data:00000fef 3a 2d 60                         ld a,(0x602d)
.data:00000ff2 5f                               ld e,a
.data:00000ff3 dd 7e 00                         ld a,(ix+0)
.data:00000ff6 fe 03                            cp 0x03
.data:00000ff8 20 05                            jr nz,0x0fff
.data:00000ffa 7b                               ld a,e
.data:00000ffb cb 3f                            srl a
.data:00000ffd 18 11                            jr 0x1010
.data:00000fff fe 04                            cp 0x04
.data:00001001 28 03                            jr z,0x1006
.data:00001003 af                               xor a
.data:00001004 18 0c                            jr 0x1012
.data:00001006 cd ca 1b                         call 0x1bca
.data:00001009 7c                               ld a,h
.data:0000100a cb 49                            bit 1,c
.data:0000100c 28 02                            jr z,0x1010
.data:0000100e ed 44                            neg
.data:00001010 c6 80                            add a,0x80
.data:00001012 dd 77 02                         ld (ix+2),a
.data:00001015 d1                               pop de
.data:00001016 c9                               ret
.data:00001017 21 ac 60                         ld hl,0x60ac
.data:0000101a 1e 00                            ld e,0x00
.data:0000101c dd 21 a8 60                      ld ix,0x60a8
.data:00001020 cd 2b 10                         call 0x102b
.data:00001023 21 b2 60                         ld hl,0x60b2
.data:00001026 1c                               inc e
.data:00001027 dd 21 ae 60                      ld ix,0x60ae
.data:0000102b dd 7e 03                         ld a,(ix+3)
.data:0000102e b7                               or a
.data:0000102f c8                               ret z
.data:00001030 be                               cp (hl)
.data:00001031 c8                               ret z
.data:00001032 7e                               ld a,(hl)
.data:00001033 0e ff                            ld c,0xff
.data:00001035 38 03                            jr c,0x103a
.data:00001037 34                               inc (hl)
.data:00001038 18 02                            jr 0x103c
.data:0000103a 35                               dec (hl)
.data:0000103b 0c                               inc c
.data:0000103c 6f                               ld l,a
.data:0000103d dd 46 00                         ld b,(ix+0)
.data:00001040 78                               ld a,b
.data:00001041 b7                               or a
.data:00001042 28 07                            jr z,0x104b
.data:00001044 cb 3d                            srl l
.data:00001046 cb 19                            rr c
.data:00001048 10 fa                            djnz 0x1044
.data:0000104a 2c                               inc l
.data:0000104b dd 46 02                         ld b,(ix+2)
.data:0000104e cb 38                            srl b
.data:00001050 50                               ld d,b
.data:00001051 7d                               ld a,l
.data:00001052 26 ff                            ld h,0xff
.data:00001054 cb 38                            srl b
.data:00001056 38 08                            jr c,0x1060
.data:00001058 cb 24                            sla h
.data:0000105a cb 3f                            srl a
.data:0000105c cb 19                            rr c
.data:0000105e 18 f4                            jr 0x1054
.data:00001060 7d                               ld a,l
.data:00001061 a4                               and h
.data:00001062 6f                               ld l,a
.data:00001063 42                               ld b,d
.data:00001064 26 00                            ld h,0x00
.data:00001066 29                               add hl,hl
.data:00001067 16 66                            ld d,0x66
.data:00001069 19                               add hl,de
.data:0000106a 71                               ld (hl),c
.data:0000106b 23                               inc hl
.data:0000106c 23                               inc hl
.data:0000106d 10 fb                            djnz 0x106a
.data:0000106f c9                               ret
.data:00001070 11 f3 60                         ld de,0x60f3
.data:00001073 1a                               ld a,(de)
.data:00001074 4f                               ld c,a
.data:00001075 db 74                            in a,(0x74)
.data:00001077 cb 69                            bit 5,c
.data:00001079 cb a9                            res 5,c
.data:0000107b 20 10                            jr nz,0x108d
.data:0000107d cb 71                            bit 6,c
.data:0000107f 28 06                            jr z,0x1087
.data:00001081 fe 08                            cp 0x08
.data:00001083 30 15                            jr nc,0x109a
.data:00001085 cb b1                            res 6,c
.data:00001087 fe 18                            cp 0x18
.data:00001089 38 13                            jr c,0x109e
.data:0000108b cb f1                            set 6,c
.data:0000108d 21 f4 60                         ld hl,0x60f4
.data:00001090 35                               dec (hl)
.data:00001091 20 07                            jr nz,0x109a
.data:00001093 cb f9                            set 7,c
.data:00001095 79                               ld a,c
.data:00001096 e6 0f                            and 0x0f
.data:00001098 3c                               inc a
.data:00001099 77                               ld (hl),a
.data:0000109a 3e 53                            ld a,0x53
.data:0000109c d3 79                            out (0x79),a
.data:0000109e 79                               ld a,c
.data:0000109f 12                               ld (de),a
.data:000010a0 3a f5 60                         ld a,(0x60f5)
.data:000010a3 d3 7a                            out (0x7a),a
.data:000010a5 d9                               exx
.data:000010a6 08                               ex af,af'
.data:000010a7 f6 01                            or 0x01
.data:000010a9 cd 77 00                         call 0x0077
.data:000010ac 21 f8 60                         ld hl,0x60f8
.data:000010af 7e                               ld a,(hl)
.data:000010b0 e6 b7                            and 0xb7
.data:000010b2 4f                               ld c,a
.data:000010b3 3a 38 21                         ld a,(0x2138)
.data:000010b6 47                               ld b,a
.data:000010b7 eb                               ex de,hl
.data:000010b8 cb 66                            bit 4,(hl)
.data:000010ba 28 08                            jr z,0x10c4
.data:000010bc cb 7e                            bit 7,(hl)
.data:000010be cb be                            res 7,(hl)
.data:000010c0 20 25                            jr nz,0x10e7
.data:000010c2 18 17                            jr 0x10db
.data:000010c4 cb 40                            bit 0,b
.data:000010c6 28 06                            jr z,0x10ce
.data:000010c8 21 00 00                         ld hl,0x0000
.data:000010cb 37                               scf
.data:000010cc 18 08                            jr 0x10d6
.data:000010ce 2a c8 60                         ld hl,(0x60c8)
.data:000010d1 ed 5b 1e 60                      ld de,(0x601e)
.data:000010d5 19                               add hl,de
.data:000010d6 22 c8 60                         ld (0x60c8),hl
.data:000010d9 38 0c                            jr c,0x10e7
.data:000010db 21 fb 60                         ld hl,0x60fb
.data:000010de 7e                               ld a,(hl)
.data:000010df b7                               or a
.data:000010e0 ca 88 11                         jp z,0x1188
.data:000010e3 35                               dec (hl)
.data:000010e4 c2 88 11                         jp nz,0x1188
.data:000010e7 cb 50                            bit 2,b
.data:000010e9 28 66                            jr z,0x1151
.data:000010eb 3a 35 21                         ld a,(0x2135)
.data:000010ee cb 7f                            bit 7,a
.data:000010f0 ca 88 11                         jp z,0x1188
.data:000010f3 e6 7f                            and 0x7f
.data:000010f5 21 c0 60                         ld hl,0x60c0
.data:000010f8 cb 7e                            bit 7,(hl)
.data:000010fa 28 0d                            jr z,0x1109
.data:000010fc cb f6                            set 6,(hl)
.data:000010fe cb 58                            bit 3,b
.data:00001100 20 07                            jr nz,0x1109
.data:00001102 21 fb 60                         ld hl,0x60fb
.data:00001105 36 04                            ld (hl),0x04
.data:00001107 18 6e                            jr 0x1177
.data:00001109 21 35 21                         ld hl,0x2135
.data:0000110c cb 58                            bit 3,b
.data:0000110e 28 0d                            jr z,0x111d
.data:00001110 fe 3d                            cp 0x3d
.data:00001112 28 08                            jr z,0x111c
.data:00001114 cb 40                            bit 0,b
.data:00001116 28 05                            jr z,0x111d
.data:00001118 36 bb                            ld (hl),0xbb
.data:0000111a 18 02                            jr 0x111e
.data:0000111c af                               xor a
.data:0000111d 77                               ld (hl),a
.data:0000111e 57                               ld d,a
.data:0000111f e6 3f                            and 0x3f
.data:00001121 fe 3b                            cp 0x3b
.data:00001123 28 5d                            jr z,0x1182
.data:00001125 cd e1 17                         call 0x17e1
.data:00001128 fe 3c                            cp 0x3c
.data:0000112a 28 45                            jr z,0x1171
.data:0000112c fe 3e                            cp 0x3e
.data:0000112e 28 1b                            jr z,0x114b
.data:00001130 fe 3f                            cp 0x3f
.data:00001132 20 04                            jr nz,0x1138
.data:00001134 cb 58                            bit 3,b
.data:00001136 28 39                            jr z,0x1171
.data:00001138 21 e2 60                         ld hl,0x60e2
.data:0000113b 77                               ld (hl),a
.data:0000113c 21 ea 65                         ld hl,0x65ea
.data:0000113f be                               cp (hl)
.data:00001140 28 02                            jr z,0x1144
.data:00001142 f6 80                            or 0x80
.data:00001144 cb 72                            bit 6,d
.data:00001146 28 20                            jr z,0x1168
.data:00001148 77                               ld (hl),a
.data:00001149 18 24                            jr 0x116f
.data:0000114b cb 90                            res 2,b
.data:0000114d cb 89                            res 1,c
.data:0000114f 18 20                            jr 0x1171
.data:00001151 cb 58                            bit 3,b
.data:00001153 20 33                            jr nz,0x1188
.data:00001155 21 f2 60                         ld hl,0x60f2
.data:00001158 cb 7e                            bit 7,(hl)
.data:0000115a 28 11                            jr z,0x116d
.data:0000115c cb be                            res 7,(hl)
.data:0000115e 7e                               ld a,(hl)
.data:0000115f e6 3f                            and 0x3f
.data:00001161 32 e2 60                         ld (0x60e2),a
.data:00001164 cb 41                            bit 0,c
.data:00001166 28 05                            jr z,0x116d
.data:00001168 f6 80                            or 0x80
.data:0000116a 32 ea 65                         ld (0x65ea),a
.data:0000116d cb d9                            set 3,c
.data:0000116f cb c9                            set 1,c
.data:00001171 cb 50                            bit 2,b
.data:00001173 28 02                            jr z,0x1177
.data:00001175 cb f1                            set 6,c
.data:00001177 21 01 00                         ld hl,0x0001
.data:0000117a 22 ce 60                         ld (0x60ce),hl
.data:0000117d 21 f6 60                         ld hl,0x60f6
.data:00001180 cb be                            res 7,(hl)
.data:00001182 21 38 21                         ld hl,0x2138
.data:00001185 cb 80                            res 0,b
.data:00001187 70                               ld (hl),b
.data:00001188 2a ce 60                         ld hl,(0x60ce)
.data:0000118b 7c                               ld a,h
.data:0000118c b5                               or l
.data:0000118d 28 21                            jr z,0x11b0
.data:0000118f ed 5b 0a 60                      ld de,(0x600a)
.data:00001193 19                               add hl,de
.data:00001194 30 17                            jr nc,0x11ad
.data:00001196 21 f6 60                         ld hl,0x60f6
.data:00001199 cb 58                            bit 3,b
.data:0000119b 28 02                            jr z,0x119f
.data:0000119d cb fe                            set 7,(hl)
.data:0000119f 3a 35 21                         ld a,(0x2135)
.data:000011a2 cb 77                            bit 6,a
.data:000011a4 20 0a                            jr nz,0x11b0
.data:000011a6 cb fe                            set 7,(hl)
.data:000011a8 21 00 00                         ld hl,0x0000
.data:000011ab cb 89                            res 1,c
.data:000011ad 22 ce 60                         ld (0x60ce),hl
.data:000011b0 c5                               push bc
.data:000011b1 51                               ld d,c
.data:000011b2 cb 22                            sla d
.data:000011b4 3a f9 60                         ld a,(0x60f9)
.data:000011b7 e6 0f                            and 0x0f
.data:000011b9 cb 58                            bit 3,b
.data:000011bb 28 02                            jr z,0x11bf
.data:000011bd f6 50                            or 0x50
.data:000011bf 41                               ld b,c
.data:000011c0 cb 60                            bit 4,b
.data:000011c2 28 04                            jr z,0x11c8
.data:000011c4 cb 38                            srl b
.data:000011c6 30 0e                            jr nc,0x11d6
.data:000011c8 cb 40                            bit 0,b
.data:000011ca 28 02                            jr z,0x11ce
.data:000011cc f6 20                            or 0x20
.data:000011ce cb 50                            bit 2,b
.data:000011d0 28 04                            jr z,0x11d6
.data:000011d2 f6 03                            or 0x03
.data:000011d4 cb c2                            set 0,d
.data:000011d6 cb 69                            bit 5,c
.data:000011d8 28 02                            jr z,0x11dc
.data:000011da cb 39                            srl c
.data:000011dc cb 41                            bit 0,c
.data:000011de 28 02                            jr z,0x11e2
.data:000011e0 f6 80                            or 0x80
.data:000011e2 cb 51                            bit 2,c
.data:000011e4 28 05                            jr z,0x11eb
.data:000011e6 21 df 60                         ld hl,0x60df
.data:000011e9 36 f0                            ld (hl),0xf0
.data:000011eb 4f                               ld c,a
.data:000011ec 3a 00 20                         ld a,(0x2000)
.data:000011ef 07                               rlca
.data:000011f0 7a                               ld a,d
.data:000011f1 30 01                            jr nc,0x11f4
.data:000011f3 07                               rlca
.data:000011f4 e6 01                            and 0x01
.data:000011f6 21 f5 60                         ld hl,0x60f5
.data:000011f9 f3                               di
.data:000011fa b6                               or (hl)
.data:000011fb d3 7a                            out (0x7a),a
.data:000011fd fb                               ei
.data:000011fe dd 21 0c 60                      ld ix,0x600c
.data:00001202 2a db 60                         ld hl,(0x60db)
.data:00001205 06 04                            ld b,0x04
.data:00001207 cd 97 12                         call 0x1297
.data:0000120a 22 db 60                         ld (0x60db),hl
.data:0000120d 3a d8 60                         ld a,(0x60d8)
.data:00001210 94                               sub h
.data:00001211 38 01                            jr c,0x1214
.data:00001213 af                               xor a
.data:00001214 ed 44                            neg
.data:00001216 32 00 61                         ld (0x6100),a
.data:00001219 dd 21 12 60                      ld ix,0x6012
.data:0000121d 2a dd 60                         ld hl,(0x60dd)
.data:00001220 cb 09                            rrc c
.data:00001222 cb 09                            rrc c
.data:00001224 3a 2f 60                         ld a,(0x602f)
.data:00001227 fe 04                            cp 0x04
.data:00001229 3a df 60                         ld a,(0x60df)
.data:0000122c 38 08                            jr c,0x1236
.data:0000122e 06 00                            ld b,0x00
.data:00001230 fe f0                            cp 0xf0
.data:00001232 28 18                            jr z,0x124c
.data:00001234 18 1b                            jr 0x1251
.data:00001236 06 01                            ld b,0x01
.data:00001238 b7                               or a
.data:00001239 28 16                            jr z,0x1251
.data:0000123b dd 56 03                         ld d,(ix+3)
.data:0000123e cb 22                            sla d
.data:00001240 14                               inc d
.data:00001241 cb 22                            sla d
.data:00001243 30 02                            jr nc,0x1247
.data:00001245 16 ff                            ld d,0xff
.data:00001247 92                               sub d
.data:00001248 28 02                            jr z,0x124c
.data:0000124a 30 05                            jr nc,0x1251
.data:0000124c af                               xor a
.data:0000124d cb c1                            set 0,c
.data:0000124f cb c9                            set 1,c
.data:00001251 32 df 60                         ld (0x60df),a
.data:00001254 cd 97 12                         call 0x1297
.data:00001257 22 dd 60                         ld (0x60dd),hl
.data:0000125a 79                               ld a,c
.data:0000125b 07                               rlca
.data:0000125c 07                               rlca
.data:0000125d 32 f9 60                         ld (0x60f9),a
.data:00001260 c1                               pop bc
.data:00001261 21 f8 60                         ld hl,0x60f8
.data:00001264 7e                               ld a,(hl)
.data:00001265 e6 48                            and 0x48
.data:00001267 cb b1                            res 6,c
.data:00001269 cb 91                            res 2,c
.data:0000126b b1                               or c
.data:0000126c 77                               ld (hl),a
.data:0000126d cb 81                            res 0,c
.data:0000126f 3a 00 61                         ld a,(0x6100)
.data:00001272 b7                               or a
.data:00001273 28 01                            jr z,0x1276
.data:00001275 0c                               inc c
.data:00001276 21 da 60                         ld hl,0x60da
.data:00001279 11 fe 60                         ld de,0x60fe
.data:0000127c cd 81 12                         call 0x1281
.data:0000127f 2b                               dec hl
.data:00001280 1b                               dec de
.data:00001281 cb 41                            bit 0,c
.data:00001283 28 03                            jr z,0x1288
.data:00001285 7e                               ld a,(hl)
.data:00001286 12                               ld (de),a
.data:00001287 c9                               ret
.data:00001288 1a                               ld a,(de)
.data:00001289 07                               rlca
.data:0000128a 07                               rlca
.data:0000128b 07                               rlca
.data:0000128c e6 07                            and 0x07
.data:0000128e 3c                               inc a
.data:0000128f 47                               ld b,a
.data:00001290 1a                               ld a,(de)
.data:00001291 90                               sub b
.data:00001292 30 01                            jr nc,0x1295
.data:00001294 af                               xor a
.data:00001295 12                               ld (de),a
.data:00001296 c9                               ret
.data:00001297 79                               ld a,c
.data:00001298 e6 03                            and 0x03
.data:0000129a 28 67                            jr z,0x1303
.data:0000129c 3d                               dec a
.data:0000129d 28 59                            jr z,0x12f8
.data:0000129f 3d                               dec a
.data:000012a0 28 33                            jr z,0x12d5
.data:000012a2 cb 69                            bit 5,c
.data:000012a4 28 2d                            jr z,0x12d3
.data:000012a6 dd 5e 00                         ld e,(ix+0)
.data:000012a9 dd 56 01                         ld d,(ix+1)
.data:000012ac cb 50                            bit 2,b
.data:000012ae 28 12                            jr z,0x12c2
.data:000012b0 7c                               ld a,h
.data:000012b1 2f                               cpl
.data:000012b2 cb 3f                            srl a
.data:000012b4 cb 3f                            srl a
.data:000012b6 cb 3f                            srl a
.data:000012b8 cb 3f                            srl a
.data:000012ba 20 01                            jr nz,0x12bd
.data:000012bc 3c                               inc a
.data:000012bd 1f                               rra
.data:000012be 30 07                            jr nc,0x12c7
.data:000012c0 18 02                            jr 0x12c4
.data:000012c2 06 01                            ld b,0x01
.data:000012c4 19                               add hl,de
.data:000012c5 38 0a                            jr c,0x12d1
.data:000012c7 05                               dec b
.data:000012c8 c8                               ret z
.data:000012c9 cb 23                            sla e
.data:000012cb cb 12                            rl d
.data:000012cd 38 02                            jr c,0x12d1
.data:000012cf 18 ec                            jr 0x12bd
.data:000012d1 26 ff                            ld h,0xff
.data:000012d3 0d                               dec c
.data:000012d4 c9                               ret
.data:000012d5 dd 7e 1d                         ld a,(ix+29)
.data:000012d8 bc                               cp h
.data:000012d9 30 0f                            jr nc,0x12ea
.data:000012db dd 5e 04                         ld e,(ix+4)
.data:000012de dd 56 05                         ld d,(ix+5)
.data:000012e1 b7                               or a
.data:000012e2 ed 52                            sbc hl,de
.data:000012e4 38 03                            jr c,0x12e9
.data:000012e6 bc                               cp h
.data:000012e7 38 03                            jr c,0x12ec
.data:000012e9 67                               ld h,a
.data:000012ea 0d                               dec c
.data:000012eb c9                               ret
.data:000012ec cb 69                            bit 5,c
.data:000012ee c0                               ret nz
.data:000012ef 05                               dec b
.data:000012f0 c8                               ret z
.data:000012f1 dd 7e 03                         ld a,(ix+3)
.data:000012f4 ba                               cp d
.data:000012f5 d8                               ret c
.data:000012f6 0d                               dec c
.data:000012f7 c9                               ret
.data:000012f8 cb 69                            bit 5,c
.data:000012fa 20 03                            jr nz,0x12ff
.data:000012fc 0d                               dec c
.data:000012fd 18 0b                            jr 0x130a
.data:000012ff dd 66 1d                         ld h,(ix+29)
.data:00001302 c9                               ret
.data:00001303 cb 61                            bit 4,c
.data:00001305 28 03                            jr z,0x130a
.data:00001307 0c                               inc c
.data:00001308 18 ee                            jr 0x12f8
.data:0000130a dd 5e 02                         ld e,(ix+2)
.data:0000130d dd 56 03                         ld d,(ix+3)
.data:00001310 b7                               or a
.data:00001311 ed 52                            sbc hl,de
.data:00001313 d0                               ret nc
.data:00001314 26 00                            ld h,0x00
.data:00001316 c9                               ret
.data:00001317 2a c6 60                         ld hl,(0x60c6)
.data:0000131a ed 5b 1a 60                      ld de,(0x601a)
.data:0000131e 3a a1 60                         ld a,(0x60a1)
.data:00001321 47                               ld b,a
.data:00001322 3d                               dec a
.data:00001323 20 04                            jr nz,0x1329
.data:00001325 cb 3a                            srl d
.data:00001327 cb 1b                            rr e
.data:00001329 af                               xor a
.data:0000132a 19                               add hl,de
.data:0000132b 22 c6 60                         ld (0x60c6),hl
.data:0000132e 17                               rla
.data:0000132f 54                               ld d,h
.data:00001330 21 fa 60                         ld hl,0x60fa
.data:00001333 4f                               ld c,a
.data:00001334 ae                               xor (hl)
.data:00001335 77                               ld (hl),a
.data:00001336 e6 01                            and 0x01
.data:00001338 cb 21                            sla c
.data:0000133a b1                               or c
.data:0000133b 4f                               ld c,a
.data:0000133c af                               xor a
.data:0000133d 2a d0 60                         ld hl,(0x60d0)
.data:00001340 ed 6a                            adc hl,hl
.data:00001342 28 09                            jr z,0x134d
.data:00001344 30 02                            jr nc,0x1348
.data:00001346 3e 20                            ld a,0x20
.data:00001348 ac                               xor h
.data:00001349 e6 20                            and 0x20
.data:0000134b 28 02                            jr z,0x134f
.data:0000134d cb c5                            set 0,l
.data:0000134f 22 d0 60                         ld (0x60d0),hl
.data:00001352 78                               ld a,b
.data:00001353 b7                               or a
.data:00001354 20 07                            jr nz,0x135d
.data:00001356 7a                               ld a,d
.data:00001357 cb 41                            bit 0,c
.data:00001359 28 2f                            jr z,0x138a
.data:0000135b 18 26                            jr 0x1383
.data:0000135d 3d                               dec a
.data:0000135e 20 03                            jr nz,0x1363
.data:00001360 7a                               ld a,d
.data:00001361 18 27                            jr 0x138a
.data:00001363 3d                               dec a
.data:00001364 20 09                            jr nz,0x136f
.data:00001366 cb 41                            bit 0,c
.data:00001368 2f                               cpl
.data:00001369 20 1f                            jr nz,0x138a
.data:0000136b 3e 80                            ld a,0x80
.data:0000136d 18 1b                            jr 0x138a
.data:0000136f 3d                               dec a
.data:00001370 20 07                            jr nz,0x1379
.data:00001372 3a de 60                         ld a,(0x60de)
.data:00001375 37                               scf
.data:00001376 1f                               rra
.data:00001377 18 11                            jr 0x138a
.data:00001379 3d                               dec a
.data:0000137a 20 0a                            jr nz,0x1386
.data:0000137c 3a 00 60                         ld a,(0x6000)
.data:0000137f 07                               rlca
.data:00001380 07                               rlca
.data:00001381 c6 38                            add a,0x38
.data:00001383 2f                               cpl
.data:00001384 18 04                            jr 0x138a
.data:00001386 cb 49                            bit 1,c
.data:00001388 c8                               ret z
.data:00001389 7d                               ld a,l
.data:0000138a 32 d2 60                         ld (0x60d2),a
.data:0000138d c9                               ret
.data:0000138e 3a e2 60                         ld a,(0x60e2)
.data:00001391 47                               ld b,a
.data:00001392 0e 00                            ld c,0x00
.data:00001394 ed 5b e8 60                      ld de,(0x60e8)
.data:00001398 2a e4 60                         ld hl,(0x60e4)
.data:0000139b b7                               or a
.data:0000139c ed 42                            sbc hl,bc
.data:0000139e 28 0c                            jr z,0x13ac
.data:000013a0 38 04                            jr c,0x13a6
.data:000013a2 ed 52                            sbc hl,de
.data:000013a4 18 01                            jr 0x13a7
.data:000013a6 19                               add hl,de
.data:000013a7 30 03                            jr nc,0x13ac
.data:000013a9 21 00 00                         ld hl,0x0000
.data:000013ac 09                               add hl,bc
.data:000013ad 22 e4 60                         ld (0x60e4),hl
.data:000013b0 3a 9d 60                         ld a,(0x609d)
.data:000013b3 e6 03                            and 0x03
.data:000013b5 fe 02                            cp 0x02
.data:000013b7 20 07                            jr nz,0x13c0
.data:000013b9 cb 7d                            bit 7,l
.data:000013bb 2e 00                            ld l,0x00
.data:000013bd 28 01                            jr z,0x13c0
.data:000013bf 24                               inc h
.data:000013c0 22 e6 60                         ld (0x60e6),hl
.data:000013c3 c9                               ret
.data:000013c4 3a a0 60                         ld a,(0x60a0)
.data:000013c7 e6 03                            and 0x03
.data:000013c9 fe 01                            cp 0x01
.data:000013cb c0                               ret nz
.data:000013cc 3a 00 20                         ld a,(0x2000)
.data:000013cf 07                               rlca
.data:000013d0 d8                               ret c
.data:000013d1 21 a6 60                         ld hl,0x60a6
.data:000013d4 3a be 60                         ld a,(0x60be)
.data:000013d7 b7                               or a
.data:000013d8 28 04                            jr z,0x13de
.data:000013da b6                               or (hl)
.data:000013db 77                               ld (hl),a
.data:000013dc 18 21                            jr 0x13ff
.data:000013de 7e                               ld a,(hl)
.data:000013df e6 f0                            and 0xf0
.data:000013e1 28 1c                            jr z,0x13ff
.data:000013e3 06 00                            ld b,0x00
.data:000013e5 4f                               ld c,a
.data:000013e6 ed 6f                            rld
.data:000013e8 e6 30                            and 0x30
.data:000013ea 28 04                            jr z,0x13f0
.data:000013ec ae                               xor (hl)
.data:000013ed e6 30                            and 0x30
.data:000013ef 47                               ld b,a
.data:000013f0 79                               ld a,c
.data:000013f1 e6 c0                            and 0xc0
.data:000013f3 28 05                            jr z,0x13fa
.data:000013f5 ae                               xor (hl)
.data:000013f6 e6 c0                            and 0xc0
.data:000013f8 b0                               or b
.data:000013f9 47                               ld b,a
.data:000013fa 78                               ld a,b
.data:000013fb ae                               xor (hl)
.data:000013fc 77                               ld (hl),a
.data:000013fd ed 67                            rrd
.data:000013ff 5e                               ld e,(hl)
.data:00001400 21 00 20                         ld hl,0x2000
.data:00001403 7e                               ld a,(hl)
.data:00001404 cb a6                            res 4,(hl)
.data:00001406 0f                               rrca
.data:00001407 0f                               rrca
.data:00001408 b3                               or e
.data:00001409 e6 04                            and 0x04
.data:0000140b 4f                               ld c,a
.data:0000140c 16 fb                            ld d,0xfb
.data:0000140e 21 01 20                         ld hl,0x2001
.data:00001411 06 3b                            ld b,0x3b
.data:00001413 7e                               ld a,(hl)
.data:00001414 b1                               or c
.data:00001415 fa 19 14                         jp m,0x1419
.data:00001418 a2                               and d
.data:00001419 77                               ld (hl),a
.data:0000141a 23                               inc hl
.data:0000141b 10 f6                            djnz 0x1413
.data:0000141d cd 20 14                         call 0x1420
.data:00001420 3a f2 60                         ld a,(0x60f2)
.data:00001423 cb 7f                            bit 7,a
.data:00001425 c0                               ret nz
.data:00001426 21 00 20                         ld hl,0x2000
.data:00001429 3c                               inc a
.data:0000142a 4f                               ld c,a
.data:0000142b e6 3f                            and 0x3f
.data:0000142d 5f                               ld e,a
.data:0000142e 16 00                            ld d,0x00
.data:00001430 19                               add hl,de
.data:00001431 cb 71                            bit 6,c
.data:00001433 28 0c                            jr z,0x1441
.data:00001435 23                               inc hl
.data:00001436 3c                               inc a
.data:00001437 fe 3c                            cp 0x3c
.data:00001439 30 10                            jr nc,0x144b
.data:0000143b cb 56                            bit 2,(hl)
.data:0000143d 20 f6                            jr nz,0x1435
.data:0000143f 18 1f                            jr 0x1460
.data:00001441 2b                               dec hl
.data:00001442 3d                               dec a
.data:00001443 28 06                            jr z,0x144b
.data:00001445 cb 56                            bit 2,(hl)
.data:00001447 20 f8                            jr nz,0x1441
.data:00001449 18 15                            jr 0x1460
.data:0000144b 3a a6 60                         ld a,(0x60a6)
.data:0000144e 47                               ld b,a
.data:0000144f e6 03                            and 0x03
.data:00001451 fe 03                            cp 0x03
.data:00001453 79                               ld a,c
.data:00001454 28 10                            jr z,0x1466
.data:00001456 3e 40                            ld a,0x40
.data:00001458 cb 40                            bit 0,b
.data:0000145a 20 0c                            jr nz,0x1468
.data:0000145c 3e 3c                            ld a,0x3c
.data:0000145e 18 08                            jr 0x1468
.data:00001460 f6 80                            or 0x80
.data:00001462 cb 71                            bit 6,c
.data:00001464 28 02                            jr z,0x1468
.data:00001466 ee 40                            xor 0x40
.data:00001468 3d                               dec a
.data:00001469 32 f2 60                         ld (0x60f2),a
.data:0000146c c9                               ret
.data:0000146d fd 21 38 21                      ld iy,0x2138
.data:00001471 fd 46 00                         ld b,(iy+0)
.data:00001474 cb 70                            bit 6,b
.data:00001476 28 14                            jr z,0x148c
.data:00001478 cb 50                            bit 2,b
.data:0000147a 20 10                            jr nz,0x148c
.data:0000147c 21 3a 21                         ld hl,0x213a
.data:0000147f 11 34 21                         ld de,0x2134
.data:00001482 01 06 00                         ld bc,0x0006
.data:00001485 ed b0                            ldir
.data:00001487 fd 46 00                         ld b,(iy+0)
.data:0000148a cb b0                            res 6,b
.data:0000148c 21 c2 60                         ld hl,0x60c2
.data:0000148f cb 76                            bit 6,(hl)
.data:00001491 ca 23 15                         jp z,0x1523
.data:00001494 cb 6e                            bit 5,(hl)
.data:00001496 28 2a                            jr z,0x14c2
.data:00001498 cb 70                            bit 6,b
.data:0000149a c2 23 15                         jp nz,0x1523
.data:0000149d 7e                               ld a,(hl)
.data:0000149e e6 1f                            and 0x1f
.data:000014a0 77                               ld (hl),a
.data:000014a1 fd cb 00 86                      res 0,(iy+0)
.data:000014a5 c5                               push bc
.data:000014a6 21 34 21                         ld hl,0x2134
.data:000014a9 11 3a 21                         ld de,0x213a
.data:000014ac 01 06 00                         ld bc,0x0006
.data:000014af ed b0                            ldir
.data:000014b1 c1                               pop bc
.data:000014b2 16 44                            ld d,0x44
.data:000014b4 0e 00                            ld c,0x00
.data:000014b6 cb 40                            bit 0,b
.data:000014b8 20 04                            jr nz,0x14be
.data:000014ba cb 50                            bit 2,b
.data:000014bc 20 2c                            jr nz,0x14ea
.data:000014be cb c2                            set 0,d
.data:000014c0 18 28                            jr 0x14ea
.data:000014c2 cb 7e                            bit 7,(hl)
.data:000014c4 20 0e                            jr nz,0x14d4
.data:000014c6 7e                               ld a,(hl)
.data:000014c7 e6 1f                            and 0x1f
.data:000014c9 fe 0d                            cp 0x0d
.data:000014cb 30 07                            jr nc,0x14d4
.data:000014cd 78                               ld a,b
.data:000014ce e6 88                            and 0x88
.data:000014d0 fe 88                            cp 0x88
.data:000014d2 28 4f                            jr z,0x1523
.data:000014d4 cb 70                            bit 6,b
.data:000014d6 20 a4                            jr nz,0x147c
.data:000014d8 cb b6                            res 6,(hl)
.data:000014da 7e                               ld a,(hl)
.data:000014db 4f                               ld c,a
.data:000014dc e6 1f                            and 0x1f
.data:000014de c8                               ret z
.data:000014df fe 1f                            cp 0x1f
.data:000014e1 20 05                            jr nz,0x14e8
.data:000014e3 cd 5d 18                         call 0x185d
.data:000014e6 18 3b                            jr 0x1523
.data:000014e8 16 00                            ld d,0x00
.data:000014ea fe 0d                            cp 0x0d
.data:000014ec 38 0c                            jr c,0x14fa
.data:000014ee d6 02                            sub 0x02
.data:000014f0 fe 0d                            cp 0x0d
.data:000014f2 38 2f                            jr c,0x1523
.data:000014f4 fe 17                            cp 0x17
.data:000014f6 30 2b                            jr nc,0x1523
.data:000014f8 cb fa                            set 7,d
.data:000014fa 21 39 21                         ld hl,0x2139
.data:000014fd be                               cp (hl)
.data:000014fe 77                               ld (hl),a
.data:000014ff 28 05                            jr z,0x1506
.data:00001501 3e 03                            ld a,0x03
.data:00001503 32 f0 60                         ld (0x60f0),a
.data:00001506 7a                               ld a,d
.data:00001507 cb 79                            bit 7,c
.data:00001509 28 07                            jr z,0x1512
.data:0000150b 21 c0 60                         ld hl,0x60c0
.data:0000150e 36 1e                            ld (hl),0x1e
.data:00001510 f6 0a                            or 0x0a
.data:00001512 47                               ld b,a
.data:00001513 cd 62 18                         call 0x1862
.data:00001516 cb 58                            bit 3,b
.data:00001518 28 09                            jr z,0x1523
.data:0000151a cd 08 18                         call 0x1808
.data:0000151d dd 7e 00                         ld a,(ix+0)
.data:00001520 32 37 21                         ld (0x2137),a
.data:00001523 21 00 20                         ld hl,0x2000
.data:00001526 7e                               ld a,(hl)
.data:00001527 e6 b4                            and 0xb4
.data:00001529 5f                               ld e,a
.data:0000152a 3a be 60                         ld a,(0x60be)
.data:0000152d 4f                               ld c,a
.data:0000152e 3a bf 60                         ld a,(0x60bf)
.data:00001531 a9                               xor c
.data:00001532 e6 f0                            and 0xf0
.data:00001534 a1                               and c
.data:00001535 57                               ld d,a
.data:00001536 cb a8                            res 5,b
.data:00001538 3a 34 21                         ld a,(0x2134)
.data:0000153b b7                               or a
.data:0000153c 28 04                            jr z,0x1542
.data:0000153e cb f3                            set 6,e
.data:00001540 cb e8                            set 5,b
.data:00001542 cb 58                            bit 3,b
.data:00001544 20 5b                            jr nz,0x15a1
.data:00001546 cb a0                            res 4,b
.data:00001548 2e 00                            ld l,0x00
.data:0000154a cb 70                            bit 6,b
.data:0000154c 28 18                            jr z,0x1566
.data:0000154e fd cb 06 5e                      bit 3,(iy+6)
.data:00001552 28 08                            jr z,0x155c
.data:00001554 cb 6a                            bit 5,d
.data:00001556 28 25                            jr z,0x157d
.data:00001558 cb 90                            res 2,b
.data:0000155a 18 42                            jr 0x159e
.data:0000155c fd cb 06 56                      bit 2,(iy+6)
.data:00001560 28 1b                            jr z,0x157d
.data:00001562 68                               ld l,b
.data:00001563 fd 46 06                         ld b,(iy+6)
.data:00001566 cb 6a                            bit 5,d
.data:00001568 28 13                            jr z,0x157d
.data:0000156a cb 53                            bit 2,e
.data:0000156c 20 0f                            jr nz,0x157d
.data:0000156e cb 50                            bit 2,b
.data:00001570 20 09                            jr nz,0x157b
.data:00001572 cb d0                            set 2,b
.data:00001574 cb c0                            set 0,b
.data:00001576 cd 5d 18                         call 0x185d
.data:00001579 18 02                            jr 0x157d
.data:0000157b cb c8                            set 1,b
.data:0000157d cb 62                            bit 4,d
.data:0000157f 28 15                            jr z,0x1596
.data:00001581 cb 48                            bit 1,b
.data:00001583 20 0f                            jr nz,0x1594
.data:00001585 cb 90                            res 2,b
.data:00001587 cb 95                            res 2,l
.data:00001589 cd 62 18                         call 0x1862
.data:0000158c dd 21 f8 60                      ld ix,0x60f8
.data:00001590 dd cb 00 8e                      res 1,(ix+0)
.data:00001594 cb 88                            res 1,b
.data:00001596 cb 75                            bit 6,l
.data:00001598 28 04                            jr z,0x159e
.data:0000159a fd 70 06                         ld (iy+6),b
.data:0000159d 45                               ld b,l
.data:0000159e c3 51 16                         jp 0x1651
.data:000015a1 cb 6b                            bit 5,e
.data:000015a3 28 04                            jr z,0x15a9
.data:000015a5 cb a6                            res 4,(hl)
.data:000015a7 cb ae                            res 5,(hl)
.data:000015a9 cb 73                            bit 6,e
.data:000015ab 20 13                            jr nz,0x15c0
.data:000015ad cb 90                            res 2,b
.data:000015af cb 48                            bit 1,b
.data:000015b1 28 0d                            jr z,0x15c0
.data:000015b3 21 35 21                         ld hl,0x2135
.data:000015b6 7e                               ld a,(hl)
.data:000015b7 e6 bf                            and 0xbf
.data:000015b9 cb 53                            bit 2,e
.data:000015bb 28 02                            jr z,0x15bf
.data:000015bd f6 40                            or 0x40
.data:000015bf 77                               ld (hl),a
.data:000015c0 cb 69                            bit 5,c
.data:000015c2 28 09                            jr z,0x15cd
.data:000015c4 cb 61                            bit 4,c
.data:000015c6 c2 4b 16                         jp nz,0x164b
.data:000015c9 cb d0                            set 2,b
.data:000015cb cb a0                            res 4,b
.data:000015cd cb 61                            bit 4,c
.data:000015cf 28 04                            jr z,0x15d5
.data:000015d1 cb d0                            set 2,b
.data:000015d3 cb e0                            set 4,b
.data:000015d5 cb 6a                            bit 5,d
.data:000015d7 28 08                            jr z,0x15e1
.data:000015d9 cb 53                            bit 2,e
.data:000015db 28 08                            jr z,0x15e5
.data:000015dd cb eb                            set 5,e
.data:000015df 18 70                            jr 0x1651
.data:000015e1 cb 62                            bit 4,d
.data:000015e3 28 02                            jr z,0x15e7
.data:000015e5 cb c0                            set 0,b
.data:000015e7 cb 79                            bit 7,c
.data:000015e9 28 07                            jr z,0x15f2
.data:000015eb cb 71                            bit 6,c
.data:000015ed c2 ef 17                         jp nz,0x17ef
.data:000015f0 cb cb                            set 1,e
.data:000015f2 cb 72                            bit 6,d
.data:000015f4 28 04                            jr z,0x15fa
.data:000015f6 cb c3                            set 0,e
.data:000015f8 cb e0                            set 4,b
.data:000015fa 21 c5 60                         ld hl,0x60c5
.data:000015fd cb 76                            bit 6,(hl)
.data:000015ff 28 21                            jr z,0x1622
.data:00001601 cb b6                            res 6,(hl)
.data:00001603 7e                               ld a,(hl)
.data:00001604 cb 6f                            bit 5,a
.data:00001606 20 1a                            jr nz,0x1622
.data:00001608 e6 1f                            and 0x1f
.data:0000160a 28 16                            jr z,0x1622
.data:0000160c fe 1f                            cp 0x1f
.data:0000160e 20 0a                            jr nz,0x161a
.data:00001610 cd 08 18                         call 0x1808
.data:00001613 dd 7e 00                         ld a,(ix+0)
.data:00001616 32 37 21                         ld (0x2137),a
.data:00001619 c9                               ret
.data:0000161a fe 01                            cp 0x01
.data:0000161c 28 04                            jr z,0x1622
.data:0000161e f6 80                            or 0x80
.data:00001620 18 25                            jr 0x1647
.data:00001622 cb 78                            bit 7,b
.data:00001624 28 2b                            jr z,0x1651
.data:00001626 21 c0 60                         ld hl,0x60c0
.data:00001629 cb 7e                            bit 7,(hl)
.data:0000162b 20 0b                            jr nz,0x1638
.data:0000162d cb 76                            bit 6,(hl)
.data:0000162f 28 07                            jr z,0x1638
.data:00001631 cb b6                            res 6,(hl)
.data:00001633 7e                               ld a,(hl)
.data:00001634 f6 c0                            or 0xc0
.data:00001636 18 0f                            jr 0x1647
.data:00001638 23                               inc hl
.data:00001639 23                               inc hl
.data:0000163a cb 76                            bit 6,(hl)
.data:0000163c 28 13                            jr z,0x1651
.data:0000163e cb b6                            res 6,(hl)
.data:00001640 7e                               ld a,(hl)
.data:00001641 e6 0f                            and 0x0f
.data:00001643 28 0c                            jr z,0x1651
.data:00001645 f6 a0                            or 0xa0
.data:00001647 cb db                            set 3,e
.data:00001649 18 06                            jr 0x1651
.data:0000164b cb 88                            res 1,b
.data:0000164d cb 90                            res 2,b
.data:0000164f cb 98                            res 3,b
.data:00001651 cb 40                            bit 0,b
.data:00001653 28 04                            jr z,0x1659
.data:00001655 af                               xor a
.data:00001656 32 35 21                         ld (0x2135),a
.data:00001659 fd 70 00                         ld (iy+0),b
.data:0000165c cb 7b                            bit 7,e
.data:0000165e c8                               ret z
.data:0000165f cb 58                            bit 3,b
.data:00001661 ca 21 17                         jp z,0x1721
.data:00001664 cb 5b                            bit 3,e
.data:00001666 20 58                            jr nz,0x16c0
.data:00001668 cb 43                            bit 0,e
.data:0000166a 28 3c                            jr z,0x16a8
.data:0000166c cd 08 18                         call 0x1808
.data:0000166f dd 7e 00                         ld a,(ix+0)
.data:00001672 b7                               or a
.data:00001673 c8                               ret z
.data:00001674 47                               ld b,a
.data:00001675 dd 35 00                         dec (ix+0)
.data:00001678 3a 37 21                         ld a,(0x2137)
.data:0000167b b7                               or a
.data:0000167c 28 11                            jr z,0x168f
.data:0000167e b8                               cp b
.data:0000167f 30 06                            jr nc,0x1687
.data:00001681 fd cb 00 4e                      bit 1,(iy+0)
.data:00001685 28 03                            jr z,0x168a
.data:00001687 3d                               dec a
.data:00001688 18 09                            jr 0x1693
.data:0000168a dd be 00                         cp (ix+0)
.data:0000168d 30 04                            jr nc,0x1693
.data:0000168f fd cb 00 ee                      set 5,(iy+0)
.data:00001693 fd cb 00 8e                      res 1,(iy+0)
.data:00001697 5f                               ld e,a
.data:00001698 19                               add hl,de
.data:00001699 78                               ld a,b
.data:0000169a 93                               sub e
.data:0000169b cd 23 18                         call 0x1823
.data:0000169e 7e                               ld a,(hl)
.data:0000169f 28 05                            jr z,0x16a6
.data:000016a1 54                               ld d,h
.data:000016a2 5d                               ld e,l
.data:000016a3 23                               inc hl
.data:000016a4 ed b0                            ldir
.data:000016a6 18 61                            jr 0x1709
.data:000016a8 21 e9 65                         ld hl,0x65e9
.data:000016ab cb 5e                            bit 3,(hl)
.data:000016ad cb 9e                            res 3,(hl)
.data:000016af 3e 3f                            ld a,0x3f
.data:000016b1 20 0d                            jr nz,0x16c0
.data:000016b3 cb 6b                            bit 5,e
.data:000016b5 28 6a                            jr z,0x1721
.data:000016b7 3a 00 60                         ld a,(0x6000)
.data:000016ba cb 63                            bit 4,e
.data:000016bc 20 02                            jr nz,0x16c0
.data:000016be f6 40                            or 0x40
.data:000016c0 32 3a 21                         ld (0x213a),a
.data:000016c3 43                               ld b,e
.data:000016c4 cd 08 18                         call 0x1808
.data:000016c7 3a 37 21                         ld a,(0x2137)
.data:000016ca 5f                               ld e,a
.data:000016cb 19                               add hl,de
.data:000016cc cb 48                            bit 1,b
.data:000016ce dd 46 00                         ld b,(ix+0)
.data:000016d1 28 03                            jr z,0x16d6
.data:000016d3 78                               ld a,b
.data:000016d4 18 03                            jr 0x16d9
.data:000016d6 b8                               cp b
.data:000016d7 38 24                            jr c,0x16fd
.data:000016d9 fe ff                            cp 0xff
.data:000016db 28 3e                            jr z,0x171b
.data:000016dd 78                               ld a,b
.data:000016de 93                               sub e
.data:000016df dd e5                            push ix
.data:000016e1 cd 23 18                         call 0x1823
.data:000016e4 dd e1                            pop ix
.data:000016e6 09                               add hl,bc
.data:000016e7 eb                               ex de,hl
.data:000016e8 21 ff 27                         ld hl,0x27ff
.data:000016eb b7                               or a
.data:000016ec ed 52                            sbc hl,de
.data:000016ee 38 2b                            jr c,0x171b
.data:000016f0 62                               ld h,d
.data:000016f1 6b                               ld l,e
.data:000016f2 78                               ld a,b
.data:000016f3 b1                               or c
.data:000016f4 28 04                            jr z,0x16fa
.data:000016f6 2b                               dec hl
.data:000016f7 ed b8                            lddr
.data:000016f9 eb                               ex de,hl
.data:000016fa dd 34 00                         inc (ix+0)
.data:000016fd fd cb 00 ce                      set 1,(iy+0)
.data:00001701 fd cb 00 a6                      res 4,(iy+0)
.data:00001705 3a 3a 21                         ld a,(0x213a)
.data:00001708 77                               ld (hl),a
.data:00001709 fd cb 00 d6                      set 2,(iy+0)
.data:0000170d 21 35 21                         ld hl,0x2135
.data:00001710 36 00                            ld (hl),0x00
.data:00001712 fd cb 00 c6                      set 0,(iy+0)
.data:00001716 fd 46 00                         ld b,(iy+0)
.data:00001719 18 67                            jr 0x1782
.data:0000171b 21 f8 60                         ld hl,0x60f8
.data:0000171e cb 8e                            res 1,(hl)
.data:00001720 c9                               ret
.data:00001721 cb 50                            bit 2,b
.data:00001723 c8                               ret z
.data:00001724 3a 35 21                         ld a,(0x2135)
.data:00001727 cb 7f                            bit 7,a
.data:00001729 c0                               ret nz
.data:0000172a 21 34 21                         ld hl,0x2134
.data:0000172d 7e                               ld a,(hl)
.data:0000172e b7                               or a
.data:0000172f 28 07                            jr z,0x1738
.data:00001731 35                               dec (hl)
.data:00001732 c8                               ret z
.data:00001733 3a 36 21                         ld a,(0x2136)
.data:00001736 18 4a                            jr 0x1782
.data:00001738 cd 08 18                         call 0x1808
.data:0000173b 3a 37 21                         ld a,(0x2137)
.data:0000173e cb 60                            bit 4,b
.data:00001740 20 32                            jr nz,0x1774
.data:00001742 dd be 00                         cp (ix+0)
.data:00001745 30 0e                            jr nc,0x1755
.data:00001747 cb 58                            bit 3,b
.data:00001749 28 34                            jr z,0x177f
.data:0000174b 3c                               inc a
.data:0000174c dd be 00                         cp (ix+0)
.data:0000174f 38 2a                            jr c,0x177b
.data:00001751 3e 3c                            ld a,0x3c
.data:00001753 18 42                            jr 0x1797
.data:00001755 cb 58                            bit 3,b
.data:00001757 c0                               ret nz
.data:00001758 cb 70                            bit 6,b
.data:0000175a 28 0d                            jr z,0x1769
.data:0000175c fd cb 06 56                      bit 2,(iy+6)
.data:00001760 28 07                            jr z,0x1769
.data:00001762 fd cb 00 96                      res 2,(iy+0)
.data:00001766 c3 6d 14                         jp 0x146d
.data:00001769 cd 62 18                         call 0x1862
.data:0000176c cb 48                            bit 1,b
.data:0000176e 20 c8                            jr nz,0x1738
.data:00001770 3e 3e                            ld a,0x3e
.data:00001772 18 0e                            jr 0x1782
.data:00001774 b7                               or a
.data:00001775 c8                               ret z
.data:00001776 cb 58                            bit 3,b
.data:00001778 28 05                            jr z,0x177f
.data:0000177a 3d                               dec a
.data:0000177b fd cb 00 8e                      res 1,(iy+0)
.data:0000177f 5f                               ld e,a
.data:00001780 19                               add hl,de
.data:00001781 7e                               ld a,(hl)
.data:00001782 cb 7f                            bit 7,a
.data:00001784 20 17                            jr nz,0x179d
.data:00001786 21 36 21                         ld hl,0x2136
.data:00001789 4e                               ld c,(hl)
.data:0000178a 77                               ld (hl),a
.data:0000178b cb 60                            bit 4,b
.data:0000178d 28 08                            jr z,0x1797
.data:0000178f e6 3f                            and 0x3f
.data:00001791 cb 71                            bit 6,c
.data:00001793 28 02                            jr z,0x1797
.data:00001795 f6 40                            or 0x40
.data:00001797 f6 80                            or 0x80
.data:00001799 32 35 21                         ld (0x2135),a
.data:0000179c c9                               ret
.data:0000179d cb 77                            bit 6,a
.data:0000179f 28 17                            jr z,0x17b8
.data:000017a1 e6 bf                            and 0xbf
.data:000017a3 21 c0 60                         ld hl,0x60c0
.data:000017a6 cb 7e                            bit 7,(hl)
.data:000017a8 28 03                            jr z,0x17ad
.data:000017aa cb f6                            set 6,(hl)
.data:000017ac c9                               ret
.data:000017ad 77                               ld (hl),a
.data:000017ae cb 58                            bit 3,b
.data:000017b0 20 9f                            jr nz,0x1751
.data:000017b2 cd e1 17                         call 0x17e1
.data:000017b5 c3 38 17                         jp 0x1738
.data:000017b8 cb 6f                            bit 5,a
.data:000017ba 20 11                            jr nz,0x17cd
.data:000017bc e6 1f                            and 0x1f
.data:000017be 32 34 21                         ld (0x2134),a
.data:000017c1 cd e1 17                         call 0x17e1
.data:000017c4 cb 58                            bit 3,b
.data:000017c6 c8                               ret z
.data:000017c7 3e 3d                            ld a,0x3d
.data:000017c9 32 36 21                         ld (0x2136),a
.data:000017cc c9                               ret
.data:000017cd 32 36 21                         ld (0x2136),a
.data:000017d0 e6 0f                            and 0x0f
.data:000017d2 c8                               ret z
.data:000017d3 f6 60                            or 0x60
.data:000017d5 32 c2 60                         ld (0x60c2),a
.data:000017d8 cd e1 17                         call 0x17e1
.data:000017db cb 58                            bit 3,b
.data:000017dd c0                               ret nz
.data:000017de c3 6d 14                         jp 0x146d
.data:000017e1 cb 68                            bit 5,b
.data:000017e3 c0                               ret nz
.data:000017e4 21 37 21                         ld hl,0x2137
.data:000017e7 cb 60                            bit 4,b
.data:000017e9 28 02                            jr z,0x17ed
.data:000017eb 35                               dec (hl)
.data:000017ec c9                               ret
.data:000017ed 34                               inc (hl)
.data:000017ee c9                               ret
.data:000017ef cd 08 18                         call 0x1808
.data:000017f2 dd 7e 00                         ld a,(ix+0)
.data:000017f5 b7                               or a
.data:000017f6 c8                               ret z
.data:000017f7 eb                               ex de,hl
.data:000017f8 6f                               ld l,a
.data:000017f9 cd 62 18                         call 0x1862
.data:000017fc dd 77 00                         ld (ix+0),a
.data:000017ff 67                               ld h,a
.data:00001800 19                               add hl,de
.data:00001801 cd 23 18                         call 0x1823
.data:00001804 c8                               ret z
.data:00001805 ed b0                            ldir
.data:00001807 c9                               ret
.data:00001808 0e 16                            ld c,0x16
.data:0000180a 3a 39 21                         ld a,(0x2139)
.data:0000180d 21 56 21                         ld hl,0x2156
.data:00001810 dd 21 40 21                      ld ix,0x2140
.data:00001814 16 00                            ld d,0x00
.data:00001816 3d                               dec a
.data:00001817 c8                               ret z
.data:00001818 dd 5e 00                         ld e,(ix+0)
.data:0000181b 19                               add hl,de
.data:0000181c dd 23                            inc ix
.data:0000181e 0d                               dec c
.data:0000181f 3d                               dec a
.data:00001820 20 f6                            jr nz,0x1818
.data:00001822 c9                               ret
.data:00001823 06 00                            ld b,0x00
.data:00001825 0d                               dec c
.data:00001826 28 0b                            jr z,0x1833
.data:00001828 dd 23                            inc ix
.data:0000182a dd 86 00                         add a,(ix+0)
.data:0000182d 30 01                            jr nc,0x1830
.data:0000182f 04                               inc b
.data:00001830 0d                               dec c
.data:00001831 20 f5                            jr nz,0x1828
.data:00001833 4f                               ld c,a
.data:00001834 b0                               or b
.data:00001835 c9                               ret
.data:00001836 cd 5d 18                         call 0x185d
.data:00001839 3c                               inc a
.data:0000183a 32 39 21                         ld (0x2139),a
.data:0000183d 21 aa 06                         ld hl,0x06aa
.data:00001840 06 16                            ld b,0x16
.data:00001842 dd 21 40 21                      ld ix,0x2140
.data:00001846 16 00                            ld d,0x00
.data:00001848 dd 5e 00                         ld e,(ix+0)
.data:0000184b b7                               or a
.data:0000184c ed 52                            sbc hl,de
.data:0000184e 38 05                            jr c,0x1855
.data:00001850 dd 23                            inc ix
.data:00001852 10 f4                            djnz 0x1848
.data:00001854 c9                               ret
.data:00001855 af                               xor a
.data:00001856 dd 77 00                         ld (ix+0),a
.data:00001859 dd 23                            inc ix
.data:0000185b 10 f9                            djnz 0x1856
.data:0000185d 3e 01                            ld a,0x01
.data:0000185f 32 f4 60                         ld (0x60f4),a
.data:00001862 af                               xor a
.data:00001863 32 37 21                         ld (0x2137),a
.data:00001866 32 35 21                         ld (0x2135),a
.data:00001869 32 36 21                         ld (0x2136),a
.data:0000186c 32 34 21                         ld (0x2134),a
.data:0000186f c9                               ret
.data:00001870 21 c3 60                         ld hl,0x60c3
.data:00001873 dd 21 9c 60                      ld ix,0x609c
.data:00001877 06 00                            ld b,0x00
.data:00001879 cd 85 18                         call 0x1885
.data:0000187c 21 c1 60                         ld hl,0x60c1
.data:0000187f dd 21 9f 60                      ld ix,0x609f
.data:00001883 06 01                            ld b,0x01
.data:00001885 7e                               ld a,(hl)
.data:00001886 cb 77                            bit 6,a
.data:00001888 c8                               ret z
.data:00001889 cb b6                            res 6,(hl)
.data:0000188b 4f                               ld c,a
.data:0000188c e6 1f                            and 0x1f
.data:0000188e fe 1f                            cp 0x1f
.data:00001890 ca 06 19                         jp z,0x1906
.data:00001893 cb 69                            bit 5,c
.data:00001895 20 3a                            jr nz,0x18d1
.data:00001897 cb 79                            bit 7,c
.data:00001899 c0                               ret nz
.data:0000189a b7                               or a
.data:0000189b 20 04                            jr nz,0x18a1
.data:0000189d f6 10                            or 0x10
.data:0000189f 18 3e                            jr 0x18df
.data:000018a1 5f                               ld e,a
.data:000018a2 1d                               dec e
.data:000018a3 16 00                            ld d,0x00
.data:000018a5 21 8c 20                         ld hl,0x208c
.data:000018a8 19                               add hl,de
.data:000018a9 7e                               ld a,(hl)
.data:000018aa 0e 10                            ld c,0x10
.data:000018ac cb 40                            bit 0,b
.data:000018ae 20 03                            jr nz,0x18b3
.data:000018b0 81                               add a,c
.data:000018b1 18 01                            jr 0x18b4
.data:000018b3 91                               sub c
.data:000018b4 d8                               ret c
.data:000018b5 77                               ld (hl),a
.data:000018b6 3a 9c 60                         ld a,(0x609c)
.data:000018b9 fe 10                            cp 0x10
.data:000018bb 20 04                            jr nz,0x18c1
.data:000018bd 3c                               inc a
.data:000018be 32 a9 60                         ld (0x60a9),a
.data:000018c1 3a 9f 60                         ld a,(0x609f)
.data:000018c4 fe 10                            cp 0x10
.data:000018c6 20 04                            jr nz,0x18cc
.data:000018c8 3c                               inc a
.data:000018c9 32 af 60                         ld (0x60af),a
.data:000018cc 78                               ld a,b
.data:000018cd 32 f1 60                         ld (0x60f1),a
.data:000018d0 c9                               ret
.data:000018d1 e6 0f                            and 0x0f
.data:000018d3 c6 03                            add a,0x03
.data:000018d5 fe 06                            cp 0x06
.data:000018d7 d8                               ret c
.data:000018d8 fe 10                            cp 0x10
.data:000018da d0                               ret nc
.data:000018db cb 79                            bit 7,c
.data:000018dd 20 08                            jr nz,0x18e7
.data:000018df dd 77 00                         ld (ix+0),a
.data:000018e2 dd cb a8 fe                      set 7,(ix-88)
.data:000018e6 c9                               ret
.data:000018e7 fe 0b                            cp 0x0b
.data:000018e9 d8                               ret c
.data:000018ea d6 0a                            sub 0x0a
.data:000018ec cd f8 18                         call 0x18f8
.data:000018ef eb                               ex de,hl
.data:000018f0 ed b0                            ldir
.data:000018f2 3e 3b                            ld a,0x3b
.data:000018f4 32 f0 60                         ld (0x60f0),a
.data:000018f7 c9                               ret
.data:000018f8 5f                               ld e,a
.data:000018f9 26 18                            ld h,0x18
.data:000018fb cd ca 1b                         call 0x1bca
.data:000018fe 11 a4 20                         ld de,0x20a4
.data:00001901 19                               add hl,de
.data:00001902 01 18 00                         ld bc,0x0018
.data:00001905 c9                               ret
.data:00001906 21 8c 20                         ld hl,0x208c
.data:00001909 06 30                            ld b,0x30
.data:0000190b 36 00                            ld (hl),0x00
.data:0000190d 23                               inc hl
.data:0000190e 10 fb                            djnz 0x190b
.data:00001910 06 01                            ld b,0x01
.data:00001912 18 a2                            jr 0x18b6
.data:00001914 f3                               di
.data:00001915 0e 00                            ld c,0x00
.data:00001917 51                               ld d,c
.data:00001918 61                               ld h,c
.data:00001919 69                               ld l,c
.data:0000191a e5                               push hl
.data:0000191b fd 21 8c 20                      ld iy,0x208c
.data:0000191f 06 18                            ld b,0x18
.data:00001921 1e 00                            ld e,0x00
.data:00001923 21 00 1f                         ld hl,0x1f00
.data:00001926 79                               ld a,c
.data:00001927 85                               add a,l
.data:00001928 6f                               ld l,a
.data:00001929 fd 7e 00                         ld a,(iy+0)
.data:0000192c b7                               or a
.data:0000192d 28 27                            jr z,0x1956
.data:0000192f e5                               push hl
.data:00001930 c5                               push bc
.data:00001931 4b                               ld c,e
.data:00001932 5f                               ld e,a
.data:00001933 7d                               ld a,l
.data:00001934 cb 77                            bit 6,a
.data:00001936 28 01                            jr z,0x1939
.data:00001938 2f                               cpl
.data:00001939 f6 c0                            or 0xc0
.data:0000193b 6f                               ld l,a
.data:0000193c 66                               ld h,(hl)
.data:0000193d 06 06                            ld b,0x06
.data:0000193f 6a                               ld l,d
.data:00001940 29                               add hl,hl
.data:00001941 30 01                            jr nc,0x1944
.data:00001943 19                               add hl,de
.data:00001944 10 fa                            djnz 0x1940
.data:00001946 59                               ld e,c
.data:00001947 c1                               pop bc
.data:00001948 7c                               ld a,h
.data:00001949 e6 3f                            and 0x3f
.data:0000194b e1                               pop hl
.data:0000194c cb 7d                            bit 7,l
.data:0000194e 28 02                            jr z,0x1952
.data:00001950 ed 44                            neg
.data:00001952 cb 2f                            sra a
.data:00001954 8b                               adc a,e
.data:00001955 5f                               ld e,a
.data:00001956 fd 23                            inc iy
.data:00001958 10 cc                            djnz 0x1926
.data:0000195a af                               xor a
.data:0000195b 83                               add a,e
.data:0000195c f2 61 19                         jp p,0x1961
.data:0000195f ed 44                            neg
.data:00001961 d1                               pop de
.data:00001962 bb                               cp e
.data:00001963 38 01                            jr c,0x1966
.data:00001965 5f                               ld e,a
.data:00001966 d5                               push de
.data:00001967 0c                               inc c
.data:00001968 f2 1b 19                         jp p,0x191b
.data:0000196b d1                               pop de
.data:0000196c 1c                               inc e
.data:0000196d 3e 10                            ld a,0x10
.data:0000196f bb                               cp e
.data:00001970 30 01                            jr nc,0x1973
.data:00001972 5f                               ld e,a
.data:00001973 53                               ld d,e
.data:00001974 2e ff                            ld l,0xff
.data:00001976 01 00 08                         ld bc,0x0800
.data:00001979 59                               ld e,c
.data:0000197a 61                               ld h,c
.data:0000197b 29                               add hl,hl
.data:0000197c 7c                               ld a,h
.data:0000197d ba                               cp d
.data:0000197e 38 02                            jr c,0x1982
.data:00001980 ed 52                            sbc hl,de
.data:00001982 3f                               ccf
.data:00001983 cb 11                            rl c
.data:00001985 10 f4                            djnz 0x197b
.data:00001987 59                               ld e,c
.data:00001988 dd 21 8c 20                      ld ix,0x208c
.data:0000198c 0e 18                            ld c,0x18
.data:0000198e dd 66 00                         ld h,(ix+0)
.data:00001991 cd ca 1b                         call 0x1bca
.data:00001994 29                               add hl,hl
.data:00001995 29                               add hl,hl
.data:00001996 29                               add hl,hl
.data:00001997 29                               add hl,hl
.data:00001998 dd 74 18                         ld (ix+24),h
.data:0000199b dd 23                            inc ix
.data:0000199d 0d                               dec c
.data:0000199e 20 ee                            jr nz,0x198e
.data:000019a0 fb                               ei
.data:000019a1 c9                               ret
.data:000019a2 f3                               di
.data:000019a3 0e 00                            ld c,0x00
.data:000019a5 fd 21 a4 20                      ld iy,0x20a4
.data:000019a9 06 18                            ld b,0x18
.data:000019ab 11 80 00                         ld de,0x0080
.data:000019ae 21 00 1f                         ld hl,0x1f00
.data:000019b1 79                               ld a,c
.data:000019b2 85                               add a,l
.data:000019b3 6f                               ld l,a
.data:000019b4 fd 7e 00                         ld a,(iy+0)
.data:000019b7 b7                               or a
.data:000019b8 28 28                            jr z,0x19e2
.data:000019ba e5                               push hl
.data:000019bb c5                               push bc
.data:000019bc d5                               push de
.data:000019bd 5f                               ld e,a
.data:000019be 7d                               ld a,l
.data:000019bf cb 77                            bit 6,a
.data:000019c1 28 01                            jr z,0x19c4
.data:000019c3 2f                               cpl
.data:000019c4 f6 c0                            or 0xc0
.data:000019c6 6f                               ld l,a
.data:000019c7 66                               ld h,(hl)
.data:000019c8 cd ca 1b                         call 0x1bca
.data:000019cb d1                               pop de
.data:000019cc c1                               pop bc
.data:000019cd 7c                               ld a,h
.data:000019ce e1                               pop hl
.data:000019cf cb 7d                            bit 7,l
.data:000019d1 28 0a                            jr z,0x19dd
.data:000019d3 ed 44                            neg
.data:000019d5 28 0b                            jr z,0x19e2
.data:000019d7 83                               add a,e
.data:000019d8 38 07                            jr c,0x19e1
.data:000019da 15                               dec d
.data:000019db 18 04                            jr 0x19e1
.data:000019dd 83                               add a,e
.data:000019de 30 01                            jr nc,0x19e1
.data:000019e0 14                               inc d
.data:000019e1 5f                               ld e,a
.data:000019e2 fd 23                            inc iy
.data:000019e4 10 cb                            djnz 0x19b1
.data:000019e6 7a                               ld a,d
.data:000019e7 b7                               or a
.data:000019e8 28 06                            jr z,0x19f0
.data:000019ea 1e 00                            ld e,0x00
.data:000019ec fa f0 19                         jp m,0x19f0
.data:000019ef 1d                               dec e
.data:000019f0 dd 73 00                         ld (ix+0),e
.data:000019f3 dd 2b                            dec ix
.data:000019f5 dd 2b                            dec ix
.data:000019f7 0c                               inc c
.data:000019f8 f2 a5 19                         jp p,0x19a5
.data:000019fb fb                               ei
.data:000019fc c9                               ret
.data:000019fd 21 b3 60                         ld hl,0x60b3
.data:00001a00 cb 7e                            bit 7,(hl)
.data:00001a02 20 21                            jr nz,0x1a25
.data:00001a04 3a 00 20                         ld a,(0x2000)
.data:00001a07 07                               rlca
.data:00001a08 38 0a                            jr c,0x1a14
.data:00001a0a 35                               dec (hl)
.data:00001a0b 20 18                            jr nz,0x1a25
.data:00001a0d 36 32                            ld (hl),0x32
.data:00001a0f 3e 7f                            ld a,0x7f
.data:00001a11 32 f0 60                         ld (0x60f0),a
.data:00001a14 21 44 60                         ld hl,0x6044
.data:00001a17 06 22                            ld b,0x22
.data:00001a19 cb 7e                            bit 7,(hl)
.data:00001a1b 20 08                            jr nz,0x1a25
.data:00001a1d 23                               inc hl
.data:00001a1e 10 f9                            djnz 0x1a19
.data:00001a20 21 b3 60                         ld hl,0x60b3
.data:00001a23 cb fe                            set 7,(hl)
.data:00001a25 11 6a 60                         ld de,0x606a
.data:00001a28 21 4c 60                         ld hl,0x604c
.data:00001a2b dd 21 24 60                      ld ix,0x6024
.data:00001a2f 06 1e                            ld b,0x1e
.data:00001a31 1a                               ld a,(de)
.data:00001a32 cb 3f                            srl a
.data:00001a34 cb 3f                            srl a
.data:00001a36 4f                               ld c,a
.data:00001a37 7e                               ld a,(hl)
.data:00001a38 e6 3f                            and 0x3f
.data:00001a3a 91                               sub c
.data:00001a3b 30 02                            jr nc,0x1a3f
.data:00001a3d ed 44                            neg
.data:00001a3f fe 02                            cp 0x02
.data:00001a41 30 07                            jr nc,0x1a4a
.data:00001a43 13                               inc de
.data:00001a44 23                               inc hl
.data:00001a45 dd 23                            inc ix
.data:00001a47 10 e8                            djnz 0x1a31
.data:00001a49 c9                               ret
.data:00001a4a 7e                               ld a,(hl)
.data:00001a4b e6 c0                            and 0xc0
.data:00001a4d b1                               or c
.data:00001a4e 77                               ld (hl),a
.data:00001a4f 78                               ld a,b
.data:00001a50 fe 1e                            cp 0x1e
.data:00001a52 3a bd 60                         ld a,(0x60bd)
.data:00001a55 20 06                            jr nz,0x1a5d
.data:00001a57 fe 10                            cp 0x10
.data:00001a59 28 06                            jr z,0x1a61
.data:00001a5b 18 07                            jr 0x1a64
.data:00001a5d fe 10                            cp 0x10
.data:00001a5f 28 03                            jr z,0x1a64
.data:00001a61 cb be                            res 7,(hl)
.data:00001a63 c9                               ret
.data:00001a64 1a                               ld a,(de)
.data:00001a65 06 05                            ld b,0x05
.data:00001a67 dd 96 00                         sub (ix+0)
.data:00001a6a 38 10                            jr c,0x1a7c
.data:00001a6c 57                               ld d,a
.data:00001a6d 1e fb                            ld e,0xfb
.data:00001a6f 3e ff                            ld a,0xff
.data:00001a71 a3                               and e
.data:00001a72 cb 03                            rlc e
.data:00001a74 cb 22                            sla d
.data:00001a76 38 14                            jr c,0x1a8c
.data:00001a78 10 f7                            djnz 0x1a71
.data:00001a7a 18 10                            jr 0x1a8c
.data:00001a7c ed 44                            neg
.data:00001a7e 57                               ld d,a
.data:00001a7f 1e bf                            ld e,0xbf
.data:00001a81 3e ff                            ld a,0xff
.data:00001a83 a3                               and e
.data:00001a84 cb 0b                            rrc e
.data:00001a86 cb 22                            sla d
.data:00001a88 38 02                            jr c,0x1a8c
.data:00001a8a 10 f7                            djnz 0x1a83
.data:00001a8c e6 7f                            and 0x7f
.data:00001a8e 32 f0 60                         ld (0x60f0),a
.data:00001a91 c9                               ret
.data:00001a92 21 e9 65                         ld hl,0x65e9
.data:00001a95 56                               ld d,(hl)
.data:00001a96 cb 8e                            res 1,(hl)
.data:00001a98 cb 96                            res 2,(hl)
.data:00001a9a cb 1a                            rr d
.data:00001a9c 30 08                            jr nc,0x1aa6
.data:00001a9e 3a e0 65                         ld a,(0x65e0)
.data:00001aa1 f6 80                            or 0x80
.data:00001aa3 4f                               ld c,a
.data:00001aa4 18 4d                            jr 0x1af3
.data:00001aa6 21 a7 60                         ld hl,0x60a7
.data:00001aa9 46                               ld b,(hl)
.data:00001aaa cb 1a                            rr d
.data:00001aac 30 01                            jr nc,0x1aaf
.data:00001aae 04                               inc b
.data:00001aaf cb 1a                            rr d
.data:00001ab1 30 01                            jr nc,0x1ab4
.data:00001ab3 05                               dec b
.data:00001ab4 78                               ld a,b
.data:00001ab5 fe 07                            cp 0x07
.data:00001ab7 38 02                            jr c,0x1abb
.data:00001ab9 3e 06                            ld a,0x06
.data:00001abb fe 02                            cp 0x02
.data:00001abd 30 02                            jr nc,0x1ac1
.data:00001abf 3e 02                            ld a,0x02
.data:00001ac1 77                               ld (hl),a
.data:00001ac2 47                               ld b,a
.data:00001ac3 21 9e 60                         ld hl,0x609e
.data:00001ac6 86                               add a,(hl)
.data:00001ac7 d6 02                            sub 0x02
.data:00001ac9 32 ad 60                         ld (0x60ad),a
.data:00001acc 3e fe                            ld a,0xfe
.data:00001ace 0f                               rrca
.data:00001acf 10 fd                            djnz 0x1ace
.data:00001ad1 21 38 21                         ld hl,0x2138
.data:00001ad4 cb 5e                            bit 3,(hl)
.data:00001ad6 28 03                            jr z,0x1adb
.data:00001ad8 2f                               cpl
.data:00001ad9 f6 83                            or 0x83
.data:00001adb 4f                               ld c,a
.data:00001adc 21 f0 60                         ld hl,0x60f0
.data:00001adf 7e                               ld a,(hl)
.data:00001ae0 47                               ld b,a
.data:00001ae1 e6 03                            and 0x03
.data:00001ae3 20 08                            jr nz,0x1aed
.data:00001ae5 cb 78                            bit 7,b
.data:00001ae7 20 0a                            jr nz,0x1af3
.data:00001ae9 06 ff                            ld b,0xff
.data:00001aeb 18 01                            jr 0x1aee
.data:00001aed 05                               dec b
.data:00001aee 70                               ld (hl),b
.data:00001aef 78                               ld a,b
.data:00001af0 f6 83                            or 0x83
.data:00001af2 4f                               ld c,a
.data:00001af3 21 f6 60                         ld hl,0x60f6
.data:00001af6 7e                               ld a,(hl)
.data:00001af7 f6 7c                            or 0x7c
.data:00001af9 a1                               and c
.data:00001afa e6 fc                            and 0xfc
.data:00001afc 77                               ld (hl),a
.data:00001afd c9                               ret
.data:00001afe 00                               nop
.data:00001aff 1e 3c                            ld e,0x3c
.data:00001b01 5b                               ld e,e
.data:00001b02 7a                               ld a,d
.data:00001b03 99                               sbc a,c
.data:00001b04 b9                               cp c
.data:00001b05 da fb 1c                         jp c,0x1cfb
.data:00001b08 3e 61                            ld a,0x61
.data:00001b0a 83                               add a,e
.data:00001b0b a7                               and a
.data:00001b0c cb ef                            set 5,a
.data:00001b0e 14                               inc d
.data:00001b0f 3a 60 87                         ld a,(0x8760)
.data:00001b12 ae                               xor (hl)
.data:00001b13 d6 fe                            sub 0xfe
.data:00001b15 27                               daa
.data:00001b16 50                               ld d,b
.data:00001b17 7a                               ld a,d
.data:00001b18 a5                               and l
.data:00001b19 d1                               pop de
.data:00001b1a fd 29                            add iy,iy
.data:00001b1c 56                               ld d,(hl)
.data:00001b1d 84                               add a,h
.data:00001b1e b3                               or e
.data:00001b1f e2 12 43                         jp po,0x4312
.data:00001b22 74                               ld (hl),h
.data:00001b23 a6                               and (hl)
.data:00001b24 d9                               exx
.data:00001b25 0d                               dec c
.data:00001b26 41                               ld b,c
.data:00001b27 76                               halt
.data:00001b28 ac                               xor h
.data:00001b29 e3                               ex (sp),hl
.data:00001b2a 1a                               ld a,(de)
.data:00001b2b 52                               ld d,d
.data:00001b2c 8b                               adc a,e
.data:00001b2d c5                               push bc
.data:00001b2e 00                               nop
.data:00001b2f 10 10                            djnz 0x1b41
.data:00001b31 10 10                            djnz 0x1b43
.data:00001b33 11 12 12                         ld de,0x1212
.data:00001b36 13                               inc de
.data:00001b37 14                               inc d
.data:00001b38 14                               inc d
.data:00001b39 14                               inc d
.data:00001b3a 15                               dec d
.data:00001b3b 16 16                            ld d,0x16
.data:00001b3d 17                               rla
.data:00001b3e 18 19                            jr 0x1b59
.data:00001b40 1a                               ld a,(de)
.data:00001b41 1a                               ld a,(de)
.data:00001b42 1b                               dec de
.data:00001b43 1c                               inc e
.data:00001b44 1d                               dec e
.data:00001b45 1e 1e                            ld e,0x1e
.data:00001b47 7c                               ld a,h
.data:00001b48 16 c0                            ld d,0xc0
.data:00001b4a 0e 00                            ld c,0x00
.data:00001b4c 06 05                            ld b,0x05
.data:00001b4e cb 21                            sla c
.data:00001b50 ba                               cp d
.data:00001b51 38 03                            jr c,0x1b56
.data:00001b53 cb c1                            set 0,c
.data:00001b55 92                               sub d
.data:00001b56 cb 3a                            srl d
.data:00001b58 10 f4                            djnz 0x1b4e
.data:00001b5a 67                               ld h,a
.data:00001b5b 29                               add hl,hl
.data:00001b5c 29                               add hl,hl
.data:00001b5d 5c                               ld e,h
.data:00001b5e 50                               ld d,b
.data:00001b5f 45                               ld b,l
.data:00001b60 21 ff 1a                         ld hl,0x1aff
.data:00001b63 19                               add hl,de
.data:00001b64 7e                               ld a,(hl)
.data:00001b65 2b                               dec hl
.data:00001b66 6e                               ld l,(hl)
.data:00001b67 95                               sub l
.data:00001b68 67                               ld h,a
.data:00001b69 7d                               ld a,l
.data:00001b6a 68                               ld l,b
.data:00001b6b 06 03                            ld b,0x03
.data:00001b6d cb 3c                            srl h
.data:00001b6f cb 25                            sla l
.data:00001b71 30 01                            jr nc,0x1b74
.data:00001b73 84                               add a,h
.data:00001b74 10 f7                            djnz 0x1b6d
.data:00001b76 cb 3b                            srl e
.data:00001b78 21 2f 1b                         ld hl,0x1b2f
.data:00001b7b 19                               add hl,de
.data:00001b7c 66                               ld h,(hl)
.data:00001b7d cb 3c                            srl h
.data:00001b7f 30 05                            jr nc,0x1b86
.data:00001b81 cb 7f                            bit 7,a
.data:00001b83 20 01                            jr nz,0x1b86
.data:00001b85 24                               inc h
.data:00001b86 6f                               ld l,a
.data:00001b87 5c                               ld e,h
.data:00001b88 16 02                            ld d,0x02
.data:00001b8a 79                               ld a,c
.data:00001b8b d6 0b                            sub 0x0b
.data:00001b8d c8                               ret z
.data:00001b8e 38 0b                            jr c,0x1b9b
.data:00001b90 47                               ld b,a
.data:00001b91 29                               add hl,hl
.data:00001b92 38 03                            jr c,0x1b97
.data:00001b94 10 fb                            djnz 0x1b91
.data:00001b96 c9                               ret
.data:00001b97 21 ff ff                         ld hl,0xffff
.data:00001b9a c9                               ret
.data:00001b9b ed 44                            neg
.data:00001b9d 47                               ld b,a
.data:00001b9e cb 22                            sla d
.data:00001ba0 cb 3c                            srl h
.data:00001ba2 cb 1d                            rr l
.data:00001ba4 10 f8                            djnz 0x1b9e
.data:00001ba6 c9                               ret
.data:00001ba7 0e 00                            ld c,0x00
.data:00001ba9 7b                               ld a,e
.data:00001baa d6 80                            sub 0x80
.data:00001bac 30 03                            jr nc,0x1bb1
.data:00001bae ed 44                            neg
.data:00001bb0 0c                               inc c
.data:00001bb1 5f                               ld e,a
.data:00001bb2 7c                               ld a,h
.data:00001bb3 d6 80                            sub 0x80
.data:00001bb5 30 03                            jr nc,0x1bba
.data:00001bb7 ed 44                            neg
.data:00001bb9 0c                               inc c
.data:00001bba 67                               ld h,a
.data:00001bbb cd ca 1b                         call 0x1bca
.data:00001bbe cb 41                            bit 0,c
.data:00001bc0 28 07                            jr z,0x1bc9
.data:00001bc2 7c                               ld a,h
.data:00001bc3 2f                               cpl
.data:00001bc4 67                               ld h,a
.data:00001bc5 7d                               ld a,l
.data:00001bc6 2f                               cpl
.data:00001bc7 6f                               ld l,a
.data:00001bc8 23                               inc hl
.data:00001bc9 c9                               ret
.data:00001bca 06 08                            ld b,0x08
.data:00001bcc 16 00                            ld d,0x00
.data:00001bce 6a                               ld l,d
.data:00001bcf 29                               add hl,hl
.data:00001bd0 30 01                            jr nc,0x1bd3
.data:00001bd2 19                               add hl,de
.data:00001bd3 10 fa                            djnz 0x1bcf
.data:00001bd5 c9                               ret
.data:00001bd6 85                               add a,l
.data:00001bd7 8b                               adc a,e
.data:00001bd8 91                               sub c
.data:00001bd9 98                               sbc a,b
.data:00001bda 9e                               sbc a,(hl)
.data:00001bdb a5                               and l
.data:00001bdc ad                               xor l
.data:00001bdd b4                               or h
.data:00001bde bc                               cp h
.data:00001bdf c5                               push bc
.data:00001be0 cd d6 e0                         call 0xe0d6
.data:00001be3 ea f4 ff                         jp pe,0xfff4
.data:00001be6 47                               ld b,a
.data:00001be7 e6 0f                            and 0x0f
.data:00001be9 5f                               ld e,a
.data:00001bea 16 00                            ld d,0x00
.data:00001bec 21 d6 1b                         ld hl,0x1bd6
.data:00001bef 19                               add hl,de
.data:00001bf0 6e                               ld l,(hl)
.data:00001bf1 26 00                            ld h,0x00
.data:00001bf3 78                               ld a,b
.data:00001bf4 0f                               rrca
.data:00001bf5 0f                               rrca
.data:00001bf6 0f                               rrca
.data:00001bf7 0f                               rrca
.data:00001bf8 e6 0f                            and 0x0f
.data:00001bfa d6 07                            sub 0x07
.data:00001bfc c8                               ret z
.data:00001bfd 38 05                            jr c,0x1c04
.data:00001bff 47                               ld b,a
.data:00001c00 29                               add hl,hl
.data:00001c01 10 fd                            djnz 0x1c00
.data:00001c03 c9                               ret
.data:00001c04 cb 3d                            srl l
.data:00001c06 3c                               inc a
.data:00001c07 20 fb                            jr nz,0x1c04
.data:00001c09 c9                               ret

; This subroutine is called during setup/startup

.data:00001c0a 21 e0 65                         ld hl,0x65e0
.data:00001c0d 36 2b                            ld (hl),0x2b
.data:00001c0f 21 00 30                         ld hl,0x3000 ; The MIDI port, I think
.data:00001c12 36 17                            ld (hl),0x17
.data:00001c14 06 0b                            ld b,0x0b
.data:00001c16 af                               xor a
.data:00001c17 21 e1 65                         ld hl,0x65e1
.data:00001c1a 77                               ld (hl),a
.data:00001c1b 23                               inc hl
.data:00001c1c 10 fc                            djnz 0x1c1a
.data:00001c1e 21 00 30                         ld hl,0x3000
.data:00001c21 36 95                            ld (hl),0x95
.data:00001c23 c9                               ret

;

.data:00001c24 f5                               push af
.data:00001c25 e5                               push hl
.data:00001c26 3a 01 30                         ld a,(0x3001)
.data:00001c29 e6 b1                            and 0xb1
.data:00001c2b fe 81                            cp 0x81
.data:00001c2d 20 10                            jr nz,0x1c3f
.data:00001c2f 21 e6 65                         ld hl,0x65e6
.data:00001c32 7e                               ld a,(hl)
.data:00001c33 34                               inc (hl)
.data:00001c34 e6 1f                            and 0x1f
.data:00001c36 f6 c0                            or 0xc0
.data:00001c38 6f                               ld l,a
.data:00001c39 26 65                            ld h,0x65
.data:00001c3b 3a 01 32                         ld a,(0x3201)
.data:00001c3e 77                               ld (hl),a
.data:00001c3f e1                               pop hl
.data:00001c40 f1                               pop af
.data:00001c41 ed 45                            retn
.data:00001c43 f3                               di
.data:00001c44 21 e6 65                         ld hl,0x65e6
.data:00001c47 7e                               ld a,(hl)
.data:00001c48 e6 1f                            and 0x1f
.data:00001c4a 47                               ld b,a
.data:00001c4b 23                               inc hl
.data:00001c4c 7e                               ld a,(hl)
.data:00001c4d e6 1f                            and 0x1f
.data:00001c4f b8                               cp b
.data:00001c50 20 09                            jr nz,0x1c5b
.data:00001c52 3a e2 65                         ld a,(0x65e2)
.data:00001c55 fe 70                            cp 0x70
.data:00001c57 28 ea                            jr z,0x1c43
.data:00001c59 fb                               ei
.data:00001c5a c9                               ret
.data:00001c5b f6 c0                            or 0xc0
.data:00001c5d 5f                               ld e,a
.data:00001c5e 16 65                            ld d,0x65
.data:00001c60 34                               inc (hl)
.data:00001c61 1a                               ld a,(de)
.data:00001c62 4f                               ld c,a
.data:00001c63 21 e0 65                         ld hl,0x65e0
.data:00001c66 46                               ld b,(hl)
.data:00001c67 cb 7f                            bit 7,a
.data:00001c69 28 5a                            jr z,0x1cc5
.data:00001c6b fe f8                            cp 0xf8
.data:00001c6d 38 2a                            jr c,0x1c99
.data:00001c6f 20 0b                            jr nz,0x1c7c
.data:00001c71 cb 40                            bit 0,b
.data:00001c73 20 ce                            jr nz,0x1c43
.data:00001c75 21 f3 60                         ld hl,0x60f3
.data:00001c78 cb ee                            set 5,(hl)
.data:00001c7a 18 c7                            jr 0x1c43
.data:00001c7c fe fa                            cp 0xfa
.data:00001c7e 20 04                            jr nz,0x1c84
.data:00001c80 cb 86                            res 0,(hl)
.data:00001c82 18 bf                            jr 0x1c43
.data:00001c84 fe fb                            cp 0xfb
.data:00001c86 28 f8                            jr z,0x1c80
.data:00001c88 fe fc                            cp 0xfc
.data:00001c8a 20 09                            jr nz,0x1c95
.data:00001c8c cb c6                            set 0,(hl)
.data:00001c8e 3e 5f                            ld a,0x5f
.data:00001c90 32 c2 60                         ld (0x60c2),a
.data:00001c93 18 ae                            jr 0x1c43
.data:00001c95 3c                               inc a
.data:00001c96 20 ab                            jr nz,0x1c43
.data:00001c98 c7                               rst 0x00
.data:00001c99 fe f0                            cp 0xf0
.data:00001c9b 38 06                            jr c,0x1ca3
.data:00001c9d 28 12                            jr z,0x1cb1
.data:00001c9f 0e 00                            ld c,0x00
.data:00001ca1 18 19                            jr 0x1cbc
.data:00001ca3 21 e0 65                         ld hl,0x65e0
.data:00001ca6 cb 56                            bit 2,(hl)
.data:00001ca8 28 07                            jr z,0x1cb1
.data:00001caa 23                               inc hl
.data:00001cab e6 0f                            and 0x0f
.data:00001cad be                               cp (hl)
.data:00001cae 79                               ld a,c
.data:00001caf 20 ee                            jr nz,0x1c9f
.data:00001cb1 6f                               ld l,a
.data:00001cb2 e6 f0                            and 0xf0
.data:00001cb4 0e 01                            ld c,0x01
.data:00001cb6 fe c0                            cp 0xc0
.data:00001cb8 28 01                            jr z,0x1cbb
.data:00001cba 0c                               inc c
.data:00001cbb 7d                               ld a,l
.data:00001cbc 21 e2 65                         ld hl,0x65e2
.data:00001cbf 77                               ld (hl),a
.data:00001cc0 23                               inc hl
.data:00001cc1 71                               ld (hl),c
.data:00001cc2 c3 43 1c                         jp 0x1c43
.data:00001cc5 21 e3 65                         ld hl,0x65e3
.data:00001cc8 7e                               ld a,(hl)
.data:00001cc9 b7                               or a
.data:00001cca ca 43 1c                         jp z,0x1c43
.data:00001ccd 35                               dec (hl)
.data:00001cce 28 05                            jr z,0x1cd5
.data:00001cd0 23                               inc hl
.data:00001cd1 71                               ld (hl),c
.data:00001cd2 c3 43 1c                         jp 0x1c43
.data:00001cd5 11 e4 65                         ld de,0x65e4
.data:00001cd8 3a e2 65                         ld a,(0x65e2)
.data:00001cdb fe f0                            cp 0xf0
.data:00001cdd 20 17                            jr nz,0x1cf6
.data:00001cdf 1a                               ld a,(de)
.data:00001ce0 fe 2b                            cp 0x2b
.data:00001ce2 20 bb                            jr nz,0x1c9f
.data:00001ce4 79                               ld a,c
.data:00001ce5 b7                               or a
.data:00001ce6 28 b7                            jr z,0x1c9f
.data:00001ce8 fe 04                            cp 0x04
.data:00001cea 30 b3                            jr nc,0x1c9f
.data:00001cec cd 93 1f                         call 0x1f93
.data:00001cef 22 f1 65                         ld (0x65f1),hl
.data:00001cf2 3e 70                            ld a,0x70
.data:00001cf4 18 bb                            jr 0x1cb1
.data:00001cf6 fe 70                            cp 0x70
.data:00001cf8 20 15                            jr nz,0x1d0f
.data:00001cfa 79                               ld a,c
.data:00001cfb 17                               rla
.data:00001cfc 17                               rla
.data:00001cfd 17                               rla
.data:00001cfe 17                               rla
.data:00001cff e6 f0                            and 0xf0
.data:00001d01 21 e4 65                         ld hl,0x65e4
.data:00001d04 b6                               or (hl)
.data:00001d05 2a f1 65                         ld hl,(0x65f1)
.data:00001d08 77                               ld (hl),a
.data:00001d09 23                               inc hl
.data:00001d0a 22 f1 65                         ld (0x65f1),hl
.data:00001d0d 18 42                            jr 0x1d51
.data:00001d0f e6 f0                            and 0xf0
.data:00001d11 fe 90                            cp 0x90
.data:00001d13 28 06                            jr z,0x1d1b
.data:00001d15 fe 80                            cp 0x80
.data:00001d17 20 07                            jr nz,0x1d20
.data:00001d19 0e 00                            ld c,0x00
.data:00001d1b cd 57 1d                         call 0x1d57
.data:00001d1e 18 31                            jr 0x1d51
.data:00001d20 fe b0                            cp 0xb0
.data:00001d22 20 05                            jr nz,0x1d29
.data:00001d24 cd 83 1d                         call 0x1d83
.data:00001d27 18 28                            jr 0x1d51
.data:00001d29 fe c0                            cp 0xc0
.data:00001d2b 20 0c                            jr nz,0x1d39
.data:00001d2d cb 68                            bit 5,b
.data:00001d2f 20 20                            jr nz,0x1d51
.data:00001d31 79                               ld a,c
.data:00001d32 f6 40                            or 0x40
.data:00001d34 32 ee 65                         ld (0x65ee),a
.data:00001d37 18 18                            jr 0x1d51
.data:00001d39 fe e0                            cp 0xe0
.data:00001d3b 20 14                            jr nz,0x1d51
.data:00001d3d cb 70                            bit 6,b
.data:00001d3f 20 10                            jr nz,0x1d51
.data:00001d41 1a                               ld a,(de)
.data:00001d42 07                               rlca
.data:00001d43 07                               rlca
.data:00001d44 cb 11                            rl c
.data:00001d46 79                               ld a,c
.data:00001d47 32 41 60                         ld (0x6041),a
.data:00001d4a 21 69 60                         ld hl,0x6069
.data:00001d4d cb fe                            set 7,(hl)
.data:00001d4f cb f6                            set 6,(hl)
.data:00001d51 3a e2 65                         ld a,(0x65e2)
.data:00001d54 c3 b1 1c                         jp 0x1cb1
.data:00001d57 cb 60                            bit 4,b
.data:00001d59 c0                               ret nz
.data:00001d5a 1a                               ld a,(de)
.data:00001d5b 2f                               cpl
.data:00001d5c d6 a6                            sub 0xa6
.data:00001d5e 30 06                            jr nc,0x1d66
.data:00001d60 c6 0c                            add a,0x0c
.data:00001d62 30 fc                            jr nc,0x1d60
.data:00001d64 18 08                            jr 0x1d6e
.data:00001d66 fe 3d                            cp 0x3d
.data:00001d68 38 04                            jr c,0x1d6e
.data:00001d6a d6 0c                            sub 0x0c
.data:00001d6c 18 f8                            jr 0x1d66
.data:00001d6e 26 20                            ld h,0x20
.data:00001d70 3c                               inc a
.data:00001d71 6f                               ld l,a
.data:00001d72 cb b6                            res 6,(hl)
.data:00001d74 79                               ld a,c
.data:00001d75 b7                               or a
.data:00001d76 28 08                            jr z,0x1d80
.data:00001d78 cb be                            res 7,(hl)
.data:00001d7a 21 3c 20                         ld hl,0x203c
.data:00001d7d cb f6                            set 6,(hl)
.data:00001d7f c9                               ret
.data:00001d80 cb fe                            set 7,(hl)
.data:00001d82 c9                               ret
.data:00001d83 1a                               ld a,(de)
.data:00001d84 fe 01                            cp 0x01
.data:00001d86 20 0f                            jr nz,0x1d97
.data:00001d88 cb 70                            bit 6,b
.data:00001d8a c0                               ret nz
.data:00001d8b 21 67 60                         ld hl,0x6067
.data:00001d8e cb fe                            set 7,(hl)
.data:00001d90 79                               ld a,c
.data:00001d91 f6 80                            or 0x80
.data:00001d93 32 20 60                         ld (0x6020),a
.data:00001d96 c9                               ret
.data:00001d97 21 e2 65                         ld hl,0x65e2
.data:00001d9a 7e                               ld a,(hl)
.data:00001d9b e6 0f                            and 0x0f
.data:00001d9d 2b                               dec hl
.data:00001d9e be                               cp (hl)
.data:00001d9f c0                               ret nz
.data:00001da0 1a                               ld a,(de)
.data:00001da1 fe 7b                            cp 0x7b
.data:00001da3 d8                               ret c
.data:00001da4 28 0d                            jr z,0x1db3
.data:00001da6 2b                               dec hl
.data:00001da7 fe 7c                            cp 0x7c
.data:00001da9 20 02                            jr nz,0x1dad
.data:00001dab cb d6                            set 2,(hl)
.data:00001dad fe 7d                            cp 0x7d
.data:00001daf 20 02                            jr nz,0x1db3
.data:00001db1 cb 96                            res 2,(hl)
.data:00001db3 21 e9 65                         ld hl,0x65e9
.data:00001db6 cb ae                            res 5,(hl)
.data:00001db8 c9                               ret
.data:00001db9 3a e8 65                         ld a,(0x65e8)
.data:00001dbc e6 0f                            and 0x0f
.data:00001dbe c8                               ret z
.data:00001dbf 3d                               dec a
.data:00001dc0 32 e8 65                         ld (0x65e8),a
.data:00001dc3 f6 b0                            or 0xb0
.data:00001dc5 e5                               push hl
.data:00001dc6 6f                               ld l,a
.data:00001dc7 26 65                            ld h,0x65
.data:00001dc9 7e                               ld a,(hl)
.data:00001dca 32 00 32                         ld (0x3200),a
.data:00001dcd e1                               pop hl
.data:00001dce c9                               ret
.data:00001dcf 3a e8 65                         ld a,(0x65e8)
.data:00001dd2 b7                               or a
.data:00001dd3 c0                               ret nz
.data:00001dd4 3a e0 65                         ld a,(0x65e0)
.data:00001dd7 4f                               ld c,a
.data:00001dd8 11 bf 65                         ld de,0x65bf
.data:00001ddb f3                               di
.data:00001ddc 21 ef 65                         ld hl,0x65ef
.data:00001ddf cb 7e                            bit 7,(hl)
.data:00001de1 28 0e                            jr z,0x1df1
.data:00001de3 cb be                            res 7,(hl)
.data:00001de5 cb 69                            bit 5,c
.data:00001de7 20 08                            jr nz,0x1df1
.data:00001de9 06 c0                            ld b,0xc0
.data:00001deb cd c2 1e                         call 0x1ec2
.data:00001dee 7e                               ld a,(hl)
.data:00001def 12                               ld (de),a
.data:00001df0 1b                               dec de
.data:00001df1 21 e9 65                         ld hl,0x65e9
.data:00001df4 cb 66                            bit 4,(hl)
.data:00001df6 28 17                            jr z,0x1e0f
.data:00001df8 cb a6                            res 4,(hl)
.data:00001dfa cb 71                            bit 6,c
.data:00001dfc 20 11                            jr nz,0x1e0f
.data:00001dfe 06 e0                            ld b,0xe0
.data:00001e00 cd c2 1e                         call 0x1ec2
.data:00001e03 21 ec 65                         ld hl,0x65ec
.data:00001e06 af                               xor a
.data:00001e07 46                               ld b,(hl)
.data:00001e08 cb 38                            srl b
.data:00001e0a 1f                               rra
.data:00001e0b 1f                               rra
.data:00001e0c cd d5 1e                         call 0x1ed5
.data:00001e0f 21 ed 65                         ld hl,0x65ed
.data:00001e12 cb 7e                            bit 7,(hl)
.data:00001e14 28 11                            jr z,0x1e27
.data:00001e16 cb be                            res 7,(hl)
.data:00001e18 cb 71                            bit 6,c
.data:00001e1a 20 0b                            jr nz,0x1e27
.data:00001e1c 06 b0                            ld b,0xb0
.data:00001e1e cd c2 1e                         call 0x1ec2
.data:00001e21 3e 01                            ld a,0x01
.data:00001e23 46                               ld b,(hl)
.data:00001e24 cd d5 1e                         call 0x1ed5
.data:00001e27 21 ea 65                         ld hl,0x65ea
.data:00001e2a 46                               ld b,(hl)
.data:00001e2b cb be                            res 7,(hl)
.data:00001e2d cb 59                            bit 3,c
.data:00001e2f 20 34                            jr nz,0x1e65
.data:00001e31 23                               inc hl
.data:00001e32 cb 78                            bit 7,b
.data:00001e34 20 0b                            jr nz,0x1e41
.data:00001e36 cb 7e                            bit 7,(hl)
.data:00001e38 28 2b                            jr z,0x1e65
.data:00001e3a 3a f8 60                         ld a,(0x60f8)
.data:00001e3d cb 4f                            bit 1,a
.data:00001e3f 20 24                            jr nz,0x1e65
.data:00001e41 c5                               push bc
.data:00001e42 06 90                            ld b,0x90
.data:00001e44 cd c2 1e                         call 0x1ec2
.data:00001e47 c1                               pop bc
.data:00001e48 c5                               push bc
.data:00001e49 48                               ld c,b
.data:00001e4a 7e                               ld a,(hl)
.data:00001e4b cb 7f                            bit 7,a
.data:00001e4d 28 08                            jr z,0x1e57
.data:00001e4f e6 3f                            and 0x3f
.data:00001e51 77                               ld (hl),a
.data:00001e52 06 00                            ld b,0x00
.data:00001e54 cd d2 1e                         call 0x1ed2
.data:00001e57 cb 79                            bit 7,c
.data:00001e59 28 09                            jr z,0x1e64
.data:00001e5b 71                               ld (hl),c
.data:00001e5c 79                               ld a,c
.data:00001e5d e6 3f                            and 0x3f
.data:00001e5f 06 40                            ld b,0x40
.data:00001e61 cd d2 1e                         call 0x1ed2
.data:00001e64 c1                               pop bc
.data:00001e65 cb 61                            bit 4,c
.data:00001e67 20 3f                            jr nz,0x1ea8
.data:00001e69 21 e9 65                         ld hl,0x65e9
.data:00001e6c cb 76                            bit 6,(hl)
.data:00001e6e 20 0e                            jr nz,0x1e7e
.data:00001e70 cb f6                            set 6,(hl)
.data:00001e72 06 b0                            ld b,0xb0
.data:00001e74 cd c2 1e                         call 0x1ec2
.data:00001e77 3e 7b                            ld a,0x7b
.data:00001e79 06 00                            ld b,0x00
.data:00001e7b cd d5 1e                         call 0x1ed5
.data:00001e7e cb 7e                            bit 7,(hl)
.data:00001e80 28 2b                            jr z,0x1ead
.data:00001e82 06 90                            ld b,0x90
.data:00001e84 cd c2 1e                         call 0x1ec2
.data:00001e87 21 2a 20                         ld hl,0x202a
.data:00001e8a cb 4e                            bit 1,(hl)
.data:00001e8c 20 17                            jr nz,0x1ea5
.data:00001e8e cb ce                            set 1,(hl)
.data:00001e90 7d                               ld a,l
.data:00001e91 3d                               dec a
.data:00001e92 06 00                            ld b,0x00
.data:00001e94 cb 7e                            bit 7,(hl)
.data:00001e96 20 02                            jr nz,0x1e9a
.data:00001e98 06 40                            ld b,0x40
.data:00001e9a cd d2 1e                         call 0x1ed2
.data:00001e9d 7b                               ld a,e
.data:00001e9e 2f                               cpl
.data:00001e9f e6 0f                            and 0x0f
.data:00001ea1 fe 0d                            cp 0x0d
.data:00001ea3 30 08                            jr nc,0x1ead
.data:00001ea5 2d                               dec l
.data:00001ea6 20 e2                            jr nz,0x1e8a
.data:00001ea8 21 e9 65                         ld hl,0x65e9
.data:00001eab cb be                            res 7,(hl)
.data:00001ead 7b                               ld a,e
.data:00001eae 2f                               cpl
.data:00001eaf e6 0f                            and 0x0f
.data:00001eb1 28 0d                            jr z,0x1ec0
.data:00001eb3 32 e8 65                         ld (0x65e8),a
.data:00001eb6 4f                               ld c,a
.data:00001eb7 06 00                            ld b,0x00
.data:00001eb9 13                               inc de
.data:00001eba eb                               ex de,hl
.data:00001ebb 11 b0 65                         ld de,0x65b0
.data:00001ebe ed b0                            ldir
.data:00001ec0 fb                               ei
.data:00001ec1 c9                               ret
.data:00001ec2 3a e1 65                         ld a,(0x65e1)
.data:00001ec5 b0                               or b
.data:00001ec6 47                               ld b,a
.data:00001ec7 3a e5 65                         ld a,(0x65e5)
.data:00001eca b8                               cp b
.data:00001ecb c8                               ret z
.data:00001ecc 78                               ld a,b
.data:00001ecd 32 e5 65                         ld (0x65e5),a
.data:00001ed0 18 06                            jr 0x1ed8
.data:00001ed2 2f                               cpl
.data:00001ed3 d6 a6                            sub 0xa6
.data:00001ed5 12                               ld (de),a
.data:00001ed6 1b                               dec de
.data:00001ed7 78                               ld a,b
.data:00001ed8 12                               ld (de),a
.data:00001ed9 1b                               dec de
.data:00001eda c9                               ret
.data:00001edb 21 01 30                         ld hl,0x3001
.data:00001ede 7e                               ld a,(hl)
.data:00001edf cb 7f                            bit 7,a
.data:00001ee1 28 06                            jr z,0x1ee9
.data:00001ee3 be                               cp (hl)
.data:00001ee4 20 03                            jr nz,0x1ee9
.data:00001ee6 3a 01 32                         ld a,(0x3201)
.data:00001ee9 21 e9 65                         ld hl,0x65e9
.data:00001eec cb 6e                            bit 5,(hl)
.data:00001eee 28 16                            jr z,0x1f06
.data:00001ef0 21 c4 60                         ld hl,0x60c4
.data:00001ef3 cb 76                            bit 6,(hl)
.data:00001ef5 28 46                            jr z,0x1f3d
.data:00001ef7 4e                               ld c,(hl)
.data:00001ef8 79                               ld a,c
.data:00001ef9 e6 1f                            and 0x1f
.data:00001efb 77                               ld (hl),a
.data:00001efc c8                               ret z
.data:00001efd fe 1f                            cp 0x1f
.data:00001eff 20 10                            jr nz,0x1f11
.data:00001f01 21 e9 65                         ld hl,0x65e9
.data:00001f04 cb b6                            res 6,(hl)
.data:00001f06 cb ee                            set 5,(hl)
.data:00001f08 21 3b 20                         ld hl,0x203b
.data:00001f0b cb fe                            set 7,(hl)
.data:00001f0d 2d                               dec l
.data:00001f0e 20 fb                            jr nz,0x1f0b
.data:00001f10 c9                               ret
.data:00001f11 cb 69                            bit 5,c
.data:00001f13 20 09                            jr nz,0x1f1e
.data:00001f15 fe 11                            cp 0x11
.data:00001f17 30 05                            jr nc,0x1f1e
.data:00001f19 3d                               dec a
.data:00001f1a 32 e1 65                         ld (0x65e1),a
.data:00001f1d c9                               ret
.data:00001f1e 0e 01                            ld c,0x01
.data:00001f20 21 35 1f                         ld hl,0x1f35
.data:00001f23 06 08                            ld b,0x08
.data:00001f25 be                               cp (hl)
.data:00001f26 28 06                            jr z,0x1f2e
.data:00001f28 cb 01                            rlc c
.data:00001f2a 23                               inc hl
.data:00001f2b 10 f8                            djnz 0x1f25
.data:00001f2d c9                               ret
.data:00001f2e 21 e0 65                         ld hl,0x65e0
.data:00001f31 7e                               ld a,(hl)
.data:00001f32 a9                               xor c
.data:00001f33 77                               ld (hl),a
.data:00001f34 c9                               ret
.data:00001f35 14                               inc d
.data:00001f36 16 02                            ld d,0x02
.data:00001f38 04                               inc b
.data:00001f39 06 09                            ld b,0x09
.data:00001f3b 0b                               dec bc
.data:00001f3c 12                               ld (de),a
.data:00001f3d 21 f0 65                         ld hl,0x65f0
.data:00001f40 7e                               ld a,(hl)
.data:00001f41 2f                               cpl
.data:00001f42 e6 70                            and 0x70
.data:00001f44 c8                               ret z
.data:00001f45 f3                               di
.data:00001f46 4f                               ld c,a
.data:00001f47 3e 80                            ld a,0x80
.data:00001f49 06 00                            ld b,0x00
.data:00001f4b cb 21                            sla c
.data:00001f4d 38 04                            jr c,0x1f53
.data:00001f4f 0f                               rrca
.data:00001f50 04                               inc b
.data:00001f51 18 f8                            jr 0x1f4b
.data:00001f53 b6                               or (hl)
.data:00001f54 77                               ld (hl),a
.data:00001f55 3e f0                            ld a,0xf0
.data:00001f57 cd 85 1f                         call 0x1f85
.data:00001f5a 3e 2b                            ld a,0x2b
.data:00001f5c cd 85 1f                         call 0x1f85
.data:00001f5f 78                               ld a,b
.data:00001f60 cd 85 1f                         call 0x1f85
.data:00001f63 cd 92 1f                         call 0x1f92
.data:00001f66 7e                               ld a,(hl)
.data:00001f67 cd 7a 1f                         call 0x1f7a
.data:00001f6a 23                               inc hl
.data:00001f6b 0b                               dec bc
.data:00001f6c 78                               ld a,b
.data:00001f6d b1                               or c
.data:00001f6e 20 f6                            jr nz,0x1f66
.data:00001f70 3e f7                            ld a,0xf7
.data:00001f72 32 e5 65                         ld (0x65e5),a
.data:00001f75 cd 85 1f                         call 0x1f85
.data:00001f78 fb                               ei
.data:00001f79 c9                               ret
.data:00001f7a 5f                               ld e,a
.data:00001f7b cd 83 1f                         call 0x1f83
.data:00001f7e 7b                               ld a,e
.data:00001f7f 0f                               rrca
.data:00001f80 0f                               rrca
.data:00001f81 0f                               rrca
.data:00001f82 0f                               rrca
.data:00001f83 e6 0f                            and 0x0f
.data:00001f85 57                               ld d,a
.data:00001f86 3a 01 30                         ld a,(0x3001)
.data:00001f89 cb 4f                            bit 1,a
.data:00001f8b 28 f9                            jr z,0x1f86
.data:00001f8d 7a                               ld a,d
.data:00001f8e 32 00 32                         ld (0x3200),a
.data:00001f91 c9                               ret
.data:00001f92 78                               ld a,b
.data:00001f93 1e bf                            ld e,0xbf
.data:00001f95 3d                               dec a
.data:00001f96 20 08                            jr nz,0x1fa0
.data:00001f98 21 bc 20                         ld hl,0x20bc
.data:00001f9b 01 78 00                         ld bc,0x0078
.data:00001f9e 18 15                            jr 0x1fb5
.data:00001fa0 cb 2b                            sra e
.data:00001fa2 3d                               dec a
.data:00001fa3 20 08                            jr nz,0x1fad
.data:00001fa5 21 04 61                         ld hl,0x6104
.data:00001fa8 01 80 04                         ld bc,0x0480
.data:00001fab 18 08                            jr 0x1fb5
.data:00001fad cb 2b                            sra e
.data:00001faf 21 40 21                         ld hl,0x2140
.data:00001fb2 01 c0 06                         ld bc,0x06c0
.data:00001fb5 7b                               ld a,e
.data:00001fb6 e6 fc                            and 0xfc
.data:00001fb8 d3 78                            out (0x78),a
.data:00001fba c9                               ret
.data:00001fbb 00                               nop
.data:00001fbc 00                               nop
.data:00001fbd 00                               nop
.data:00001fbe 00                               nop
.data:00001fbf 00                               nop
.data:00001fc0 03                               inc bc
.data:00001fc1 09                               add hl,bc
.data:00001fc2 10 16                            djnz 0x1fda
.data:00001fc4 1c                               inc e
.data:00001fc5 22 29 2e                         ld (0x2e29),hl
.data:00001fc8 35                               dec (hl)
.data:00001fc9 3b                               dec sp
.data:00001fca 41                               ld b,c
.data:00001fcb 47                               ld b,a
.data:00001fcc 4d                               ld c,l
.data:00001fcd 53                               ld d,e
.data:00001fce 59                               ld e,c
.data:00001fcf 5f                               ld e,a
.data:00001fd0 64                               ld h,h
.data:00001fd1 6a                               ld l,d
.data:00001fd2 70                               ld (hl),b
.data:00001fd3 75                               ld (hl),l
.data:00001fd4 7b                               ld a,e
.data:00001fd5 80                               add a,b
.data:00001fd6 85                               add a,l
.data:00001fd7 8b                               adc a,e
.data:00001fd8 90                               sub b
.data:00001fd9 95                               sub l
.data:00001fda 9a                               sbc a,d
.data:00001fdb 9f                               sbc a,a
.data:00001fdc a4                               and h
.data:00001fdd a9                               xor c
.data:00001fde ae                               xor (hl)
.data:00001fdf b2                               or d
.data:00001fe0 b6                               or (hl)
.data:00001fe1 bb                               cp e
.data:00001fe2 bf                               cp a
.data:00001fe3 c3 c7 cb                         jp 0xcbc7
.data:00001fe6 cf                               rst 0x08
.data:00001fe7 d2 d6 d9                         jp nc,0xd9d6
.data:00001fea dc df e2                         call c,0xe2df
.data:00001fed e5                               push hl
.data:00001fee e8                               ret pe
.data:00001fef ea ed ef                         jp pe,0xefed
.data:00001ff2 f1                               pop af
.data:00001ff3 f3                               di
.data:00001ff4 f5                               push af
.data:00001ff5 f7                               rst 0x30
.data:00001ff6 f8                               ret m
.data:00001ff7 f9                               ld sp,hl
.data:00001ff8 fb                               ei
.data:00001ff9 fc fd fd                         call m,0xfdfd
.data:00001ffc fe ff                            cp 0xff
.data:00001ffe ff                               rst 0x38
.data:00001fff ff                               rst 0x38
