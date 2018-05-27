
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 3d 00 	jmp	0x7a	; 0x7a <__dtors_end>
   4:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
   8:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
   c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  10:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  14:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  18:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  1c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  20:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  24:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  28:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  2c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  30:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  34:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  38:	0c 94 01 02 	jmp	0x402	; 0x402 <__vector_14>
  3c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  40:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  44:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  48:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  4c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  50:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  54:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  58:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  5c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  60:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  64:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>

00000068 <__ctors_start>:
  68:	66 01       	movw	r12, r12
  6a:	6b 02       	muls	r22, r27
  6c:	c1 02       	muls	r28, r17
  6e:	c5 02       	muls	r28, r21
  70:	af 03       	fmulsu	r18, r23
  72:	ae 05       	cpc	r26, r14
  74:	3a 06       	cpc	r3, r26
  76:	48 06       	cpc	r4, r24

00000078 <__ctors_end>:
  78:	3e 06       	cpc	r3, r30

0000007a <__dtors_end>:
  7a:	11 24       	eor	r1, r1
  7c:	1f be       	out	0x3f, r1	; 63
  7e:	cf ef       	ldi	r28, 0xFF	; 255
  80:	d8 e0       	ldi	r29, 0x08	; 8
  82:	de bf       	out	0x3e, r29	; 62
  84:	cd bf       	out	0x3d, r28	; 61

00000086 <__do_copy_data>:
  86:	11 e0       	ldi	r17, 0x01	; 1
  88:	a0 e0       	ldi	r26, 0x00	; 0
  8a:	b1 e0       	ldi	r27, 0x01	; 1
  8c:	ee e5       	ldi	r30, 0x5E	; 94
  8e:	fd e0       	ldi	r31, 0x0D	; 13
  90:	02 c0       	rjmp	.+4      	; 0x96 <__do_copy_data+0x10>
  92:	05 90       	lpm	r0, Z+
  94:	0d 92       	st	X+, r0
  96:	ac 31       	cpi	r26, 0x1C	; 28
  98:	b1 07       	cpc	r27, r17
  9a:	d9 f7       	brne	.-10     	; 0x92 <__do_copy_data+0xc>

0000009c <__do_clear_bss>:
  9c:	21 e0       	ldi	r18, 0x01	; 1
  9e:	ac e1       	ldi	r26, 0x1C	; 28
  a0:	b1 e0       	ldi	r27, 0x01	; 1
  a2:	01 c0       	rjmp	.+2      	; 0xa6 <.do_clear_bss_start>

000000a4 <.do_clear_bss_loop>:
  a4:	1d 92       	st	X+, r1

000000a6 <.do_clear_bss_start>:
  a6:	a7 38       	cpi	r26, 0x87	; 135
  a8:	b2 07       	cpc	r27, r18
  aa:	e1 f7       	brne	.-8      	; 0xa4 <.do_clear_bss_loop>

000000ac <__do_global_ctors>:
  ac:	10 e0       	ldi	r17, 0x00	; 0
  ae:	cc e3       	ldi	r28, 0x3C	; 60
  b0:	d0 e0       	ldi	r29, 0x00	; 0
  b2:	04 c0       	rjmp	.+8      	; 0xbc <__do_global_ctors+0x10>
  b4:	21 97       	sbiw	r28, 0x01	; 1
  b6:	fe 01       	movw	r30, r28
  b8:	0e 94 9c 06 	call	0xd38	; 0xd38 <__tablejump2__>
  bc:	c4 33       	cpi	r28, 0x34	; 52
  be:	d1 07       	cpc	r29, r17
  c0:	c9 f7       	brne	.-14     	; 0xb4 <__do_global_ctors+0x8>
  c2:	0e 94 f7 00 	call	0x1ee	; 0x1ee <main>
  c6:	0c 94 a2 06 	jmp	0xd44	; 0xd44 <__do_global_dtors>

000000ca <__bad_interrupt>:
  ca:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000ce <_Z10motor_testv>:
  ce:	81 e6       	ldi	r24, 0x61	; 97
  d0:	91 e0       	ldi	r25, 0x01	; 1
  d2:	0e 94 6f 02 	call	0x4de	; 0x4de <_ZN5Motor2onEv>
  d6:	40 e0       	ldi	r20, 0x00	; 0
  d8:	50 e0       	ldi	r21, 0x00	; 0
  da:	6f ef       	ldi	r22, 0xFF	; 255
  dc:	70 e0       	ldi	r23, 0x00	; 0
  de:	81 e6       	ldi	r24, 0x61	; 97
  e0:	91 e0       	ldi	r25, 0x01	; 1
  e2:	0e 94 9c 02 	call	0x538	; 0x538 <_ZN5Motor3runEii>
  e6:	48 ee       	ldi	r20, 0xE8	; 232
  e8:	53 e0       	ldi	r21, 0x03	; 3
  ea:	60 e0       	ldi	r22, 0x00	; 0
  ec:	70 e0       	ldi	r23, 0x00	; 0
  ee:	80 e6       	ldi	r24, 0x60	; 96
  f0:	91 e0       	ldi	r25, 0x01	; 1
  f2:	0e 94 cd 01 	call	0x39a	; 0x39a <_ZN5Timer8delay_msEm>
  f6:	40 e0       	ldi	r20, 0x00	; 0
  f8:	50 e0       	ldi	r21, 0x00	; 0
  fa:	61 e0       	ldi	r22, 0x01	; 1
  fc:	7f ef       	ldi	r23, 0xFF	; 255
  fe:	81 e6       	ldi	r24, 0x61	; 97
 100:	91 e0       	ldi	r25, 0x01	; 1
 102:	0e 94 9c 02 	call	0x538	; 0x538 <_ZN5Motor3runEii>
 106:	48 ee       	ldi	r20, 0xE8	; 232
 108:	53 e0       	ldi	r21, 0x03	; 3
 10a:	60 e0       	ldi	r22, 0x00	; 0
 10c:	70 e0       	ldi	r23, 0x00	; 0
 10e:	80 e6       	ldi	r24, 0x60	; 96
 110:	91 e0       	ldi	r25, 0x01	; 1
 112:	0e 94 cd 01 	call	0x39a	; 0x39a <_ZN5Timer8delay_msEm>
 116:	4f ef       	ldi	r20, 0xFF	; 255
 118:	50 e0       	ldi	r21, 0x00	; 0
 11a:	60 e0       	ldi	r22, 0x00	; 0
 11c:	70 e0       	ldi	r23, 0x00	; 0
 11e:	81 e6       	ldi	r24, 0x61	; 97
 120:	91 e0       	ldi	r25, 0x01	; 1
 122:	0e 94 9c 02 	call	0x538	; 0x538 <_ZN5Motor3runEii>
 126:	48 ee       	ldi	r20, 0xE8	; 232
 128:	53 e0       	ldi	r21, 0x03	; 3
 12a:	60 e0       	ldi	r22, 0x00	; 0
 12c:	70 e0       	ldi	r23, 0x00	; 0
 12e:	80 e6       	ldi	r24, 0x60	; 96
 130:	91 e0       	ldi	r25, 0x01	; 1
 132:	0e 94 cd 01 	call	0x39a	; 0x39a <_ZN5Timer8delay_msEm>
 136:	41 e0       	ldi	r20, 0x01	; 1
 138:	5f ef       	ldi	r21, 0xFF	; 255
 13a:	60 e0       	ldi	r22, 0x00	; 0
 13c:	70 e0       	ldi	r23, 0x00	; 0
 13e:	81 e6       	ldi	r24, 0x61	; 97
 140:	91 e0       	ldi	r25, 0x01	; 1
 142:	0e 94 9c 02 	call	0x538	; 0x538 <_ZN5Motor3runEii>
 146:	48 ee       	ldi	r20, 0xE8	; 232
 148:	53 e0       	ldi	r21, 0x03	; 3
 14a:	60 e0       	ldi	r22, 0x00	; 0
 14c:	70 e0       	ldi	r23, 0x00	; 0
 14e:	80 e6       	ldi	r24, 0x60	; 96
 150:	91 e0       	ldi	r25, 0x01	; 1
 152:	0e 94 cd 01 	call	0x39a	; 0x39a <_ZN5Timer8delay_msEm>
 156:	4f ef       	ldi	r20, 0xFF	; 255
 158:	50 e0       	ldi	r21, 0x00	; 0
 15a:	6f ef       	ldi	r22, 0xFF	; 255
 15c:	70 e0       	ldi	r23, 0x00	; 0
 15e:	81 e6       	ldi	r24, 0x61	; 97
 160:	91 e0       	ldi	r25, 0x01	; 1
 162:	0e 94 9c 02 	call	0x538	; 0x538 <_ZN5Motor3runEii>
 166:	48 ee       	ldi	r20, 0xE8	; 232
 168:	53 e0       	ldi	r21, 0x03	; 3
 16a:	60 e0       	ldi	r22, 0x00	; 0
 16c:	70 e0       	ldi	r23, 0x00	; 0
 16e:	80 e6       	ldi	r24, 0x60	; 96
 170:	91 e0       	ldi	r25, 0x01	; 1
 172:	0e 94 cd 01 	call	0x39a	; 0x39a <_ZN5Timer8delay_msEm>
 176:	41 e0       	ldi	r20, 0x01	; 1
 178:	5f ef       	ldi	r21, 0xFF	; 255
 17a:	61 e0       	ldi	r22, 0x01	; 1
 17c:	7f ef       	ldi	r23, 0xFF	; 255
 17e:	81 e6       	ldi	r24, 0x61	; 97
 180:	91 e0       	ldi	r25, 0x01	; 1
 182:	0e 94 9c 02 	call	0x538	; 0x538 <_ZN5Motor3runEii>
 186:	48 ee       	ldi	r20, 0xE8	; 232
 188:	53 e0       	ldi	r21, 0x03	; 3
 18a:	60 e0       	ldi	r22, 0x00	; 0
 18c:	70 e0       	ldi	r23, 0x00	; 0
 18e:	80 e6       	ldi	r24, 0x60	; 96
 190:	91 e0       	ldi	r25, 0x01	; 1
 192:	0e 94 cd 01 	call	0x39a	; 0x39a <_ZN5Timer8delay_msEm>
 196:	41 e0       	ldi	r20, 0x01	; 1
 198:	5f ef       	ldi	r21, 0xFF	; 255
 19a:	6f ef       	ldi	r22, 0xFF	; 255
 19c:	70 e0       	ldi	r23, 0x00	; 0
 19e:	81 e6       	ldi	r24, 0x61	; 97
 1a0:	91 e0       	ldi	r25, 0x01	; 1
 1a2:	0e 94 9c 02 	call	0x538	; 0x538 <_ZN5Motor3runEii>
 1a6:	48 ee       	ldi	r20, 0xE8	; 232
 1a8:	53 e0       	ldi	r21, 0x03	; 3
 1aa:	60 e0       	ldi	r22, 0x00	; 0
 1ac:	70 e0       	ldi	r23, 0x00	; 0
 1ae:	80 e6       	ldi	r24, 0x60	; 96
 1b0:	91 e0       	ldi	r25, 0x01	; 1
 1b2:	0e 94 cd 01 	call	0x39a	; 0x39a <_ZN5Timer8delay_msEm>
 1b6:	4f ef       	ldi	r20, 0xFF	; 255
 1b8:	50 e0       	ldi	r21, 0x00	; 0
 1ba:	61 e0       	ldi	r22, 0x01	; 1
 1bc:	7f ef       	ldi	r23, 0xFF	; 255
 1be:	81 e6       	ldi	r24, 0x61	; 97
 1c0:	91 e0       	ldi	r25, 0x01	; 1
 1c2:	0e 94 9c 02 	call	0x538	; 0x538 <_ZN5Motor3runEii>
 1c6:	48 ee       	ldi	r20, 0xE8	; 232
 1c8:	53 e0       	ldi	r21, 0x03	; 3
 1ca:	60 e0       	ldi	r22, 0x00	; 0
 1cc:	70 e0       	ldi	r23, 0x00	; 0
 1ce:	80 e6       	ldi	r24, 0x60	; 96
 1d0:	91 e0       	ldi	r25, 0x01	; 1
 1d2:	0e 94 cd 01 	call	0x39a	; 0x39a <_ZN5Timer8delay_msEm>
 1d6:	40 e0       	ldi	r20, 0x00	; 0
 1d8:	50 e0       	ldi	r21, 0x00	; 0
 1da:	60 e0       	ldi	r22, 0x00	; 0
 1dc:	70 e0       	ldi	r23, 0x00	; 0
 1de:	81 e6       	ldi	r24, 0x61	; 97
 1e0:	91 e0       	ldi	r25, 0x01	; 1
 1e2:	0e 94 9c 02 	call	0x538	; 0x538 <_ZN5Motor3runEii>
 1e6:	81 e6       	ldi	r24, 0x61	; 97
 1e8:	91 e0       	ldi	r25, 0x01	; 1
 1ea:	0c 94 90 02 	jmp	0x520	; 0x520 <_ZN5Motor3offEv>

000001ee <main>:
 1ee:	2d 98       	cbi	0x05, 5	; 5
 1f0:	0e 94 cb 02 	call	0x596	; 0x596 <_Z6buttonv>
 1f4:	c8 e0       	ldi	r28, 0x08	; 8
 1f6:	2d 9a       	sbi	0x05, 5	; 5
 1f8:	44 e1       	ldi	r20, 0x14	; 20
 1fa:	50 e0       	ldi	r21, 0x00	; 0
 1fc:	60 e0       	ldi	r22, 0x00	; 0
 1fe:	70 e0       	ldi	r23, 0x00	; 0
 200:	80 e6       	ldi	r24, 0x60	; 96
 202:	91 e0       	ldi	r25, 0x01	; 1
 204:	0e 94 cd 01 	call	0x39a	; 0x39a <_ZN5Timer8delay_msEm>
 208:	2d 98       	cbi	0x05, 5	; 5
 20a:	40 e5       	ldi	r20, 0x50	; 80
 20c:	50 e0       	ldi	r21, 0x00	; 0
 20e:	60 e0       	ldi	r22, 0x00	; 0
 210:	70 e0       	ldi	r23, 0x00	; 0
 212:	80 e6       	ldi	r24, 0x60	; 96
 214:	91 e0       	ldi	r25, 0x01	; 1
 216:	0e 94 cd 01 	call	0x39a	; 0x39a <_ZN5Timer8delay_msEm>
 21a:	c1 50       	subi	r28, 0x01	; 1
 21c:	61 f7       	brne	.-40     	; 0x1f6 <main+0x8>
 21e:	0e 94 67 00 	call	0xce	; 0xce <_Z10motor_testv>
 222:	8b e7       	ldi	r24, 0x7B	; 123
 224:	90 e0       	ldi	r25, 0x00	; 0
 226:	90 93 68 01 	sts	0x0168, r25	; 0x800168 <eeprom+0x2>
 22a:	80 93 67 01 	sts	0x0167, r24	; 0x800167 <eeprom+0x1>
 22e:	92 bd       	out	0x22, r25	; 34
 230:	81 bd       	out	0x21, r24	; 33
 232:	84 e8       	ldi	r24, 0x84	; 132
 234:	80 bd       	out	0x20, r24	; 32
 236:	fa 9a       	sbi	0x1f, 2	; 31
 238:	f9 9a       	sbi	0x1f, 1	; 31
 23a:	f9 9b       	sbis	0x1f, 1	; 31
 23c:	02 c0       	rjmp	.+4      	; 0x242 <main+0x54>
 23e:	00 00       	nop
 240:	fc cf       	rjmp	.-8      	; 0x23a <main+0x4c>
 242:	80 91 67 01 	lds	r24, 0x0167	; 0x800167 <eeprom+0x1>
 246:	90 91 68 01 	lds	r25, 0x0168	; 0x800168 <eeprom+0x2>
 24a:	f9 9b       	sbis	0x1f, 1	; 31
 24c:	02 c0       	rjmp	.+4      	; 0x252 <main+0x64>
 24e:	00 00       	nop
 250:	fc cf       	rjmp	.-8      	; 0x24a <main+0x5c>
 252:	92 bd       	out	0x22, r25	; 34
 254:	81 bd       	out	0x21, r24	; 33
 256:	f8 9a       	sbi	0x1f, 0	; 31
 258:	80 b5       	in	r24, 0x20	; 32
 25a:	80 93 66 01 	sts	0x0166, r24	; 0x800166 <eeprom>
 25e:	2d 9a       	sbi	0x05, 5	; 5
 260:	4a e0       	ldi	r20, 0x0A	; 10
 262:	50 e0       	ldi	r21, 0x00	; 0
 264:	60 e0       	ldi	r22, 0x00	; 0
 266:	70 e0       	ldi	r23, 0x00	; 0
 268:	80 e6       	ldi	r24, 0x60	; 96
 26a:	91 e0       	ldi	r25, 0x01	; 1
 26c:	0e 94 cd 01 	call	0x39a	; 0x39a <_ZN5Timer8delay_msEm>
 270:	2d 98       	cbi	0x05, 5	; 5
 272:	4a e5       	ldi	r20, 0x5A	; 90
 274:	50 e0       	ldi	r21, 0x00	; 0
 276:	60 e0       	ldi	r22, 0x00	; 0
 278:	70 e0       	ldi	r23, 0x00	; 0
 27a:	80 e6       	ldi	r24, 0x60	; 96
 27c:	91 e0       	ldi	r25, 0x01	; 1
 27e:	0e 94 cd 01 	call	0x39a	; 0x39a <_ZN5Timer8delay_msEm>
 282:	89 e6       	ldi	r24, 0x69	; 105
 284:	91 e0       	ldi	r25, 0x01	; 1
 286:	0e 94 57 03 	call	0x6ae	; 0x6ae <_ZN9IRSensors4readEv>
 28a:	c1 2c       	mov	r12, r1
 28c:	d1 2c       	mov	r13, r1
 28e:	76 01       	movw	r14, r12
 290:	b7 01       	movw	r22, r14
 292:	a6 01       	movw	r20, r12
 294:	8e e7       	ldi	r24, 0x7E	; 126
 296:	91 e0       	ldi	r25, 0x01	; 1
 298:	0e 94 cd 05 	call	0xb9a	; 0xb9a <_ZN8Terminal4putiEl>
 29c:	60 e0       	ldi	r22, 0x00	; 0
 29e:	71 e0       	ldi	r23, 0x01	; 1
 2a0:	8e e7       	ldi	r24, 0x7E	; 126
 2a2:	91 e0       	ldi	r25, 0x01	; 1
 2a4:	0e 94 cb 05 	call	0xb96	; 0xb96 <_ZN8Terminal4putsEPKc>
 2a8:	8f ef       	ldi	r24, 0xFF	; 255
 2aa:	c8 1a       	sub	r12, r24
 2ac:	d8 0a       	sbc	r13, r24
 2ae:	e8 0a       	sbc	r14, r24
 2b0:	f8 0a       	sbc	r15, r24
 2b2:	88 e0       	ldi	r24, 0x08	; 8
 2b4:	c8 16       	cp	r12, r24
 2b6:	d1 04       	cpc	r13, r1
 2b8:	e1 04       	cpc	r14, r1
 2ba:	f1 04       	cpc	r15, r1
 2bc:	49 f7       	brne	.-46     	; 0x290 <main+0xa2>
 2be:	62 e0       	ldi	r22, 0x02	; 2
 2c0:	71 e0       	ldi	r23, 0x01	; 1
 2c2:	8e e7       	ldi	r24, 0x7E	; 126
 2c4:	91 e0       	ldi	r25, 0x01	; 1
 2c6:	0e 94 cb 05 	call	0xb96	; 0xb96 <_ZN8Terminal4putsEPKc>
 2ca:	c9 cf       	rjmp	.-110    	; 0x25e <main+0x70>

000002cc <_GLOBAL__sub_I_led>:
 2cc:	25 9a       	sbi	0x04, 5	; 4
 2ce:	08 95       	ret

000002d0 <_ZN5USARTC1Ev>:
 2d0:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
 2d4:	8d e4       	ldi	r24, 0x4D	; 77
 2d6:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
 2da:	e2 ec       	ldi	r30, 0xC2	; 194
 2dc:	f0 e0       	ldi	r31, 0x00	; 0
 2de:	80 81       	ld	r24, Z
 2e0:	86 60       	ori	r24, 0x06	; 6
 2e2:	80 83       	st	Z, r24
 2e4:	e1 ec       	ldi	r30, 0xC1	; 193
 2e6:	f0 e0       	ldi	r31, 0x00	; 0
 2e8:	80 81       	ld	r24, Z
 2ea:	88 61       	ori	r24, 0x18	; 24
 2ec:	80 83       	st	Z, r24
 2ee:	08 95       	ret

000002f0 <_ZN5USARTD1Ev>:
 2f0:	08 95       	ret

000002f2 <_ZN5USART8put_charEc>:
 2f2:	60 93 c6 00 	sts	0x00C6, r22	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
 2f6:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
 2fa:	85 fd       	sbrc	r24, 5
 2fc:	02 c0       	rjmp	.+4      	; 0x302 <_ZN5USART8put_charEc+0x10>
 2fe:	00 00       	nop
 300:	fa cf       	rjmp	.-12     	; 0x2f6 <_ZN5USART8put_charEc+0x4>
 302:	08 95       	ret

00000304 <_ZN5TimerC1Ev>:
 304:	80 e0       	ldi	r24, 0x00	; 0
 306:	90 e0       	ldi	r25, 0x00	; 0
 308:	fc 01       	movw	r30, r24
 30a:	23 e0       	ldi	r18, 0x03	; 3
 30c:	ee 0f       	add	r30, r30
 30e:	ff 1f       	adc	r31, r31
 310:	2a 95       	dec	r18
 312:	e1 f7       	brne	.-8      	; 0x30c <_ZN5TimerC1Ev+0x8>
 314:	e4 5e       	subi	r30, 0xE4	; 228
 316:	fe 4f       	sbci	r31, 0xFE	; 254
 318:	11 82       	std	Z+1, r1	; 0x01
 31a:	10 82       	st	Z, r1
 31c:	13 82       	std	Z+3, r1	; 0x03
 31e:	12 82       	std	Z+2, r1	; 0x02
 320:	15 82       	std	Z+5, r1	; 0x05
 322:	14 82       	std	Z+4, r1	; 0x04
 324:	16 82       	std	Z+6, r1	; 0x06
 326:	17 82       	std	Z+7, r1	; 0x07
 328:	01 96       	adiw	r24, 0x01	; 1
 32a:	88 30       	cpi	r24, 0x08	; 8
 32c:	91 05       	cpc	r25, r1
 32e:	61 f7       	brne	.-40     	; 0x308 <_ZN5TimerC1Ev+0x4>
 330:	10 92 5c 01 	sts	0x015C, r1	; 0x80015c <g_time>
 334:	10 92 5d 01 	sts	0x015D, r1	; 0x80015d <g_time+0x1>
 338:	10 92 5e 01 	sts	0x015E, r1	; 0x80015e <g_time+0x2>
 33c:	10 92 5f 01 	sts	0x015F, r1	; 0x80015f <g_time+0x3>
 340:	84 b5       	in	r24, 0x24	; 36
 342:	82 60       	ori	r24, 0x02	; 2
 344:	84 bd       	out	0x24, r24	; 36
 346:	8a eb       	ldi	r24, 0xBA	; 186
 348:	87 bd       	out	0x27, r24	; 39
 34a:	83 e0       	ldi	r24, 0x03	; 3
 34c:	85 bd       	out	0x25, r24	; 37
 34e:	80 91 6e 00 	lds	r24, 0x006E	; 0x80006e <__TEXT_REGION_LENGTH__+0x7e006e>
 352:	82 60       	ori	r24, 0x02	; 2
 354:	80 93 6e 00 	sts	0x006E, r24	; 0x80006e <__TEXT_REGION_LENGTH__+0x7e006e>
 358:	78 94       	sei
 35a:	08 95       	ret

0000035c <_ZN5Timer8get_timeEv>:
 35c:	cf 93       	push	r28
 35e:	df 93       	push	r29
 360:	00 d0       	rcall	.+0      	; 0x362 <_ZN5Timer8get_timeEv+0x6>
 362:	00 d0       	rcall	.+0      	; 0x364 <_ZN5Timer8get_timeEv+0x8>
 364:	cd b7       	in	r28, 0x3d	; 61
 366:	de b7       	in	r29, 0x3e	; 62
 368:	f8 94       	cli
 36a:	80 91 5c 01 	lds	r24, 0x015C	; 0x80015c <g_time>
 36e:	90 91 5d 01 	lds	r25, 0x015D	; 0x80015d <g_time+0x1>
 372:	a0 91 5e 01 	lds	r26, 0x015E	; 0x80015e <g_time+0x2>
 376:	b0 91 5f 01 	lds	r27, 0x015F	; 0x80015f <g_time+0x3>
 37a:	89 83       	std	Y+1, r24	; 0x01
 37c:	9a 83       	std	Y+2, r25	; 0x02
 37e:	ab 83       	std	Y+3, r26	; 0x03
 380:	bc 83       	std	Y+4, r27	; 0x04
 382:	78 94       	sei
 384:	69 81       	ldd	r22, Y+1	; 0x01
 386:	7a 81       	ldd	r23, Y+2	; 0x02
 388:	8b 81       	ldd	r24, Y+3	; 0x03
 38a:	9c 81       	ldd	r25, Y+4	; 0x04
 38c:	0f 90       	pop	r0
 38e:	0f 90       	pop	r0
 390:	0f 90       	pop	r0
 392:	0f 90       	pop	r0
 394:	df 91       	pop	r29
 396:	cf 91       	pop	r28
 398:	08 95       	ret

0000039a <_ZN5Timer8delay_msEm>:
 39a:	cf 92       	push	r12
 39c:	df 92       	push	r13
 39e:	ef 92       	push	r14
 3a0:	ff 92       	push	r15
 3a2:	0f 93       	push	r16
 3a4:	1f 93       	push	r17
 3a6:	cf 93       	push	r28
 3a8:	df 93       	push	r29
 3aa:	00 d0       	rcall	.+0      	; 0x3ac <_ZN5Timer8delay_msEm+0x12>
 3ac:	00 d0       	rcall	.+0      	; 0x3ae <_ZN5Timer8delay_msEm+0x14>
 3ae:	cd b7       	in	r28, 0x3d	; 61
 3b0:	de b7       	in	r29, 0x3e	; 62
 3b2:	8c 01       	movw	r16, r24
 3b4:	6a 01       	movw	r12, r20
 3b6:	7b 01       	movw	r14, r22
 3b8:	0e 94 ae 01 	call	0x35c	; 0x35c <_ZN5Timer8get_timeEv>
 3bc:	c6 0e       	add	r12, r22
 3be:	d7 1e       	adc	r13, r23
 3c0:	e8 1e       	adc	r14, r24
 3c2:	f9 1e       	adc	r15, r25
 3c4:	c9 82       	std	Y+1, r12	; 0x01
 3c6:	da 82       	std	Y+2, r13	; 0x02
 3c8:	eb 82       	std	Y+3, r14	; 0x03
 3ca:	fc 82       	std	Y+4, r15	; 0x04
 3cc:	c8 01       	movw	r24, r16
 3ce:	0e 94 ae 01 	call	0x35c	; 0x35c <_ZN5Timer8get_timeEv>
 3d2:	c9 80       	ldd	r12, Y+1	; 0x01
 3d4:	da 80       	ldd	r13, Y+2	; 0x02
 3d6:	eb 80       	ldd	r14, Y+3	; 0x03
 3d8:	fc 80       	ldd	r15, Y+4	; 0x04
 3da:	6c 15       	cp	r22, r12
 3dc:	7d 05       	cpc	r23, r13
 3de:	8e 05       	cpc	r24, r14
 3e0:	9f 05       	cpc	r25, r15
 3e2:	10 f4       	brcc	.+4      	; 0x3e8 <_ZN5Timer8delay_msEm+0x4e>
 3e4:	00 00       	nop
 3e6:	f2 cf       	rjmp	.-28     	; 0x3cc <_ZN5Timer8delay_msEm+0x32>
 3e8:	0f 90       	pop	r0
 3ea:	0f 90       	pop	r0
 3ec:	0f 90       	pop	r0
 3ee:	0f 90       	pop	r0
 3f0:	df 91       	pop	r29
 3f2:	cf 91       	pop	r28
 3f4:	1f 91       	pop	r17
 3f6:	0f 91       	pop	r16
 3f8:	ff 90       	pop	r15
 3fa:	ef 90       	pop	r14
 3fc:	df 90       	pop	r13
 3fe:	cf 90       	pop	r12
 400:	08 95       	ret

00000402 <__vector_14>:
 402:	1f 92       	push	r1
 404:	0f 92       	push	r0
 406:	0f b6       	in	r0, 0x3f	; 63
 408:	0f 92       	push	r0
 40a:	11 24       	eor	r1, r1
 40c:	2f 93       	push	r18
 40e:	3f 93       	push	r19
 410:	4f 93       	push	r20
 412:	5f 93       	push	r21
 414:	6f 93       	push	r22
 416:	7f 93       	push	r23
 418:	8f 93       	push	r24
 41a:	9f 93       	push	r25
 41c:	af 93       	push	r26
 41e:	bf 93       	push	r27
 420:	cf 93       	push	r28
 422:	df 93       	push	r29
 424:	ef 93       	push	r30
 426:	ff 93       	push	r31
 428:	c0 e0       	ldi	r28, 0x00	; 0
 42a:	d0 e0       	ldi	r29, 0x00	; 0
 42c:	ce 01       	movw	r24, r28
 42e:	23 e0       	ldi	r18, 0x03	; 3
 430:	88 0f       	add	r24, r24
 432:	99 1f       	adc	r25, r25
 434:	2a 95       	dec	r18
 436:	e1 f7       	brne	.-8      	; 0x430 <__vector_14+0x2e>
 438:	fc 01       	movw	r30, r24
 43a:	e4 5e       	subi	r30, 0xE4	; 228
 43c:	fe 4f       	sbci	r31, 0xFE	; 254
 43e:	24 81       	ldd	r18, Z+4	; 0x04
 440:	35 81       	ldd	r19, Z+5	; 0x05
 442:	23 2b       	or	r18, r19
 444:	31 f0       	breq	.+12     	; 0x452 <__vector_14+0x50>
 446:	84 81       	ldd	r24, Z+4	; 0x04
 448:	95 81       	ldd	r25, Z+5	; 0x05
 44a:	01 97       	sbiw	r24, 0x01	; 1
 44c:	95 83       	std	Z+5, r25	; 0x05
 44e:	84 83       	std	Z+4, r24	; 0x04
 450:	18 c0       	rjmp	.+48     	; 0x482 <__vector_14+0x80>
 452:	22 81       	ldd	r18, Z+2	; 0x02
 454:	33 81       	ldd	r19, Z+3	; 0x03
 456:	35 83       	std	Z+5, r19	; 0x05
 458:	24 83       	std	Z+4, r18	; 0x04
 45a:	26 81       	ldd	r18, Z+6	; 0x06
 45c:	2f 3f       	cpi	r18, 0xFF	; 255
 45e:	19 f0       	breq	.+6      	; 0x466 <__vector_14+0x64>
 460:	26 81       	ldd	r18, Z+6	; 0x06
 462:	2f 5f       	subi	r18, 0xFF	; 255
 464:	26 83       	std	Z+6, r18	; 0x06
 466:	fc 01       	movw	r30, r24
 468:	e4 5e       	subi	r30, 0xE4	; 228
 46a:	fe 4f       	sbci	r31, 0xFE	; 254
 46c:	87 81       	ldd	r24, Z+7	; 0x07
 46e:	81 11       	cpse	r24, r1
 470:	08 c0       	rjmp	.+16     	; 0x482 <__vector_14+0x80>
 472:	80 81       	ld	r24, Z
 474:	91 81       	ldd	r25, Z+1	; 0x01
 476:	89 2b       	or	r24, r25
 478:	21 f0       	breq	.+8      	; 0x482 <__vector_14+0x80>
 47a:	01 90       	ld	r0, Z+
 47c:	f0 81       	ld	r31, Z
 47e:	e0 2d       	mov	r30, r0
 480:	09 95       	icall
 482:	21 96       	adiw	r28, 0x01	; 1
 484:	c8 30       	cpi	r28, 0x08	; 8
 486:	d1 05       	cpc	r29, r1
 488:	89 f6       	brne	.-94     	; 0x42c <__vector_14+0x2a>
 48a:	80 91 5c 01 	lds	r24, 0x015C	; 0x80015c <g_time>
 48e:	90 91 5d 01 	lds	r25, 0x015D	; 0x80015d <g_time+0x1>
 492:	a0 91 5e 01 	lds	r26, 0x015E	; 0x80015e <g_time+0x2>
 496:	b0 91 5f 01 	lds	r27, 0x015F	; 0x80015f <g_time+0x3>
 49a:	01 96       	adiw	r24, 0x01	; 1
 49c:	a1 1d       	adc	r26, r1
 49e:	b1 1d       	adc	r27, r1
 4a0:	80 93 5c 01 	sts	0x015C, r24	; 0x80015c <g_time>
 4a4:	90 93 5d 01 	sts	0x015D, r25	; 0x80015d <g_time+0x1>
 4a8:	a0 93 5e 01 	sts	0x015E, r26	; 0x80015e <g_time+0x2>
 4ac:	b0 93 5f 01 	sts	0x015F, r27	; 0x80015f <g_time+0x3>
 4b0:	ff 91       	pop	r31
 4b2:	ef 91       	pop	r30
 4b4:	df 91       	pop	r29
 4b6:	cf 91       	pop	r28
 4b8:	bf 91       	pop	r27
 4ba:	af 91       	pop	r26
 4bc:	9f 91       	pop	r25
 4be:	8f 91       	pop	r24
 4c0:	7f 91       	pop	r23
 4c2:	6f 91       	pop	r22
 4c4:	5f 91       	pop	r21
 4c6:	4f 91       	pop	r20
 4c8:	3f 91       	pop	r19
 4ca:	2f 91       	pop	r18
 4cc:	0f 90       	pop	r0
 4ce:	0f be       	out	0x3f, r0	; 63
 4d0:	0f 90       	pop	r0
 4d2:	1f 90       	pop	r1
 4d4:	18 95       	reti

000004d6 <_GLOBAL__sub_I_timer>:
 4d6:	80 e6       	ldi	r24, 0x60	; 96
 4d8:	91 e0       	ldi	r25, 0x01	; 1
 4da:	0c 94 82 01 	jmp	0x304	; 0x304 <_ZN5TimerC1Ev>

000004de <_ZN5Motor2onEv>:
 4de:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
 4e2:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
 4e6:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
 4ea:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
 4ee:	e0 e8       	ldi	r30, 0x80	; 128
 4f0:	f0 e0       	ldi	r31, 0x00	; 0
 4f2:	80 ea       	ldi	r24, 0xA0	; 160
 4f4:	80 83       	st	Z, r24
 4f6:	80 81       	ld	r24, Z
 4f8:	81 60       	ori	r24, 0x01	; 1
 4fa:	80 83       	st	Z, r24
 4fc:	e1 e8       	ldi	r30, 0x81	; 129
 4fe:	f0 e0       	ldi	r31, 0x00	; 0
 500:	88 e0       	ldi	r24, 0x08	; 8
 502:	80 83       	st	Z, r24
 504:	80 81       	ld	r24, Z
 506:	82 60       	ori	r24, 0x02	; 2
 508:	80 83       	st	Z, r24
 50a:	5d 9a       	sbi	0x0b, 5	; 11
 50c:	5e 98       	cbi	0x0b, 6	; 11
 50e:	28 98       	cbi	0x05, 0	; 5
 510:	08 95       	ret

00000512 <_ZN5MotorC1Ev>:
 512:	55 9a       	sbi	0x0a, 5	; 10
 514:	56 9a       	sbi	0x0a, 6	; 10
 516:	20 9a       	sbi	0x04, 0	; 4
 518:	21 9a       	sbi	0x04, 1	; 4
 51a:	22 9a       	sbi	0x04, 2	; 4
 51c:	0c 94 6f 02 	jmp	0x4de	; 0x4de <_ZN5Motor2onEv>

00000520 <_ZN5Motor3offEv>:
 520:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
 524:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
 528:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
 52c:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
 530:	5d 98       	cbi	0x0b, 5	; 11
 532:	5e 98       	cbi	0x0b, 6	; 11
 534:	28 98       	cbi	0x05, 0	; 5
 536:	08 95       	ret

00000538 <_ZN5Motor3runEii>:
 538:	77 ff       	sbrs	r23, 7
 53a:	05 c0       	rjmp	.+10     	; 0x546 <_ZN5Motor3runEii+0xe>
 53c:	28 98       	cbi	0x05, 0	; 5
 53e:	71 95       	neg	r23
 540:	61 95       	neg	r22
 542:	71 09       	sbc	r23, r1
 544:	01 c0       	rjmp	.+2      	; 0x548 <_ZN5Motor3runEii+0x10>
 546:	28 9a       	sbi	0x05, 0	; 5
 548:	6f 3f       	cpi	r22, 0xFF	; 255
 54a:	71 05       	cpc	r23, r1
 54c:	19 f0       	breq	.+6      	; 0x554 <_ZN5Motor3runEii+0x1c>
 54e:	14 f0       	brlt	.+4      	; 0x554 <_ZN5Motor3runEii+0x1c>
 550:	6f ef       	ldi	r22, 0xFF	; 255
 552:	70 e0       	ldi	r23, 0x00	; 0
 554:	57 ff       	sbrs	r21, 7
 556:	05 c0       	rjmp	.+10     	; 0x562 <_ZN5Motor3runEii+0x2a>
 558:	5e 98       	cbi	0x0b, 6	; 11
 55a:	51 95       	neg	r21
 55c:	41 95       	neg	r20
 55e:	51 09       	sbc	r21, r1
 560:	01 c0       	rjmp	.+2      	; 0x564 <_ZN5Motor3runEii+0x2c>
 562:	5e 9a       	sbi	0x0b, 6	; 11
 564:	70 93 8b 00 	sts	0x008B, r23	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
 568:	60 93 8a 00 	sts	0x008A, r22	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
 56c:	4f 3f       	cpi	r20, 0xFF	; 255
 56e:	51 05       	cpc	r21, r1
 570:	19 f0       	breq	.+6      	; 0x578 <_ZN5Motor3runEii+0x40>
 572:	14 f0       	brlt	.+4      	; 0x578 <_ZN5Motor3runEii+0x40>
 574:	4f ef       	ldi	r20, 0xFF	; 255
 576:	50 e0       	ldi	r21, 0x00	; 0
 578:	50 93 89 00 	sts	0x0089, r21	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
 57c:	40 93 88 00 	sts	0x0088, r20	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
 580:	08 95       	ret

00000582 <_GLOBAL__sub_I_motor>:
 582:	81 e6       	ldi	r24, 0x61	; 97
 584:	91 e0       	ldi	r25, 0x01	; 1
 586:	0c 94 89 02 	jmp	0x512	; 0x512 <_ZN5MotorC1Ev>

0000058a <_GLOBAL__sub_I_eeprom>:
 58a:	e6 e6       	ldi	r30, 0x66	; 102
 58c:	f1 e0       	ldi	r31, 0x01	; 1
 58e:	10 82       	st	Z, r1
 590:	12 82       	std	Z+2, r1	; 0x02
 592:	11 82       	std	Z+1, r1	; 0x01
 594:	08 95       	ret

00000596 <_Z6buttonv>:
 596:	cf 92       	push	r12
 598:	df 92       	push	r13
 59a:	ef 92       	push	r14
 59c:	ff 92       	push	r15
 59e:	cf 93       	push	r28
 5a0:	df 93       	push	r29
 5a2:	f9 9b       	sbis	0x1f, 1	; 31
 5a4:	02 c0       	rjmp	.+4      	; 0x5aa <_Z6buttonv+0x14>
 5a6:	00 00       	nop
 5a8:	fc cf       	rjmp	.-8      	; 0x5a2 <_Z6buttonv+0xc>
 5aa:	80 ee       	ldi	r24, 0xE0	; 224
 5ac:	93 e0       	ldi	r25, 0x03	; 3
 5ae:	92 bd       	out	0x22, r25	; 34
 5b0:	81 bd       	out	0x21, r24	; 33
 5b2:	f8 9a       	sbi	0x1f, 0	; 31
 5b4:	c0 b5       	in	r28, 0x20	; 32
 5b6:	cf 5f       	subi	r28, 0xFF	; 255
 5b8:	92 bd       	out	0x22, r25	; 34
 5ba:	81 bd       	out	0x21, r24	; 33
 5bc:	c0 bd       	out	0x20, r28	; 32
 5be:	fa 9a       	sbi	0x1f, 2	; 31
 5c0:	f9 9a       	sbi	0x1f, 1	; 31
 5c2:	f9 9b       	sbis	0x1f, 1	; 31
 5c4:	02 c0       	rjmp	.+4      	; 0x5ca <_Z6buttonv+0x34>
 5c6:	00 00       	nop
 5c8:	fc cf       	rjmp	.-8      	; 0x5c2 <_Z6buttonv+0x2c>
 5ca:	c0 ff       	sbrs	r28, 0
 5cc:	12 c0       	rjmp	.+36     	; 0x5f2 <_Z6buttonv+0x5c>
 5ce:	f8 94       	cli
 5d0:	81 e6       	ldi	r24, 0x61	; 97
 5d2:	91 e0       	ldi	r25, 0x01	; 1
 5d4:	0e 94 90 02 	call	0x520	; 0x520 <_ZN5Motor3offEv>
 5d8:	83 b7       	in	r24, 0x33	; 51
 5da:	81 7f       	andi	r24, 0xF1	; 241
 5dc:	84 60       	ori	r24, 0x04	; 4
 5de:	83 bf       	out	0x33, r24	; 51
 5e0:	83 b7       	in	r24, 0x33	; 51
 5e2:	81 60       	ori	r24, 0x01	; 1
 5e4:	83 bf       	out	0x33, r24	; 51
 5e6:	88 95       	sleep
 5e8:	83 b7       	in	r24, 0x33	; 51
 5ea:	8e 7f       	andi	r24, 0xFE	; 254
 5ec:	83 bf       	out	0x33, r24	; 51
 5ee:	88 95       	sleep
 5f0:	ee cf       	rjmp	.-36     	; 0x5ce <_Z6buttonv+0x38>
 5f2:	d0 e2       	ldi	r29, 0x20	; 32
 5f4:	40 e0       	ldi	r20, 0x00	; 0
 5f6:	50 e0       	ldi	r21, 0x00	; 0
 5f8:	ba 01       	movw	r22, r20
 5fa:	6a 01       	movw	r12, r20
 5fc:	7b 01       	movw	r14, r22
 5fe:	cc 0c       	add	r12, r12
 600:	dd 1c       	adc	r13, r13
 602:	ee 1c       	adc	r14, r14
 604:	ff 1c       	adc	r15, r15
 606:	80 e0       	ldi	r24, 0x00	; 0
 608:	0e 94 35 03 	call	0x66a	; 0x66a <_Z8adc_readh>
 60c:	81 70       	andi	r24, 0x01	; 1
 60e:	99 27       	eor	r25, r25
 610:	ac 01       	movw	r20, r24
 612:	99 0f       	add	r25, r25
 614:	66 0b       	sbc	r22, r22
 616:	77 0b       	sbc	r23, r23
 618:	4c 29       	or	r20, r12
 61a:	5d 29       	or	r21, r13
 61c:	6e 29       	or	r22, r14
 61e:	7f 29       	or	r23, r15
 620:	d1 50       	subi	r29, 0x01	; 1
 622:	59 f7       	brne	.-42     	; 0x5fa <_Z6buttonv+0x64>
 624:	4c 0f       	add	r20, r28
 626:	51 1d       	adc	r21, r1
 628:	61 1d       	adc	r22, r1
 62a:	71 1d       	adc	r23, r1
 62c:	8f e7       	ldi	r24, 0x7F	; 127
 62e:	91 e0       	ldi	r25, 0x01	; 1
 630:	df 91       	pop	r29
 632:	cf 91       	pop	r28
 634:	ff 90       	pop	r15
 636:	ef 90       	pop	r14
 638:	df 90       	pop	r13
 63a:	cf 90       	pop	r12
 63c:	0c 94 42 06 	jmp	0xc84	; 0xc84 <_ZN4Math5srandEm>

00000640 <_ZN9IRSensorsC1Ev>:
 640:	39 9a       	sbi	0x07, 1	; 7
 642:	41 98       	cbi	0x08, 1	; 8
 644:	9c 01       	movw	r18, r24
 646:	20 5f       	subi	r18, 0xF0	; 240
 648:	3f 4f       	sbci	r19, 0xFF	; 255
 64a:	47 e0       	ldi	r20, 0x07	; 7
 64c:	50 e0       	ldi	r21, 0x00	; 0
 64e:	fc 01       	movw	r30, r24
 650:	41 93       	st	Z+, r20
 652:	51 93       	st	Z+, r21
 654:	cf 01       	movw	r24, r30
 656:	e2 17       	cp	r30, r18
 658:	f3 07       	cpc	r31, r19
 65a:	c9 f7       	brne	.-14     	; 0x64e <_ZN9IRSensorsC1Ev+0xe>
 65c:	80 e4       	ldi	r24, 0x40	; 64
 65e:	80 93 7c 00 	sts	0x007C, r24	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
 662:	87 e8       	ldi	r24, 0x87	; 135
 664:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 668:	08 95       	ret

0000066a <_Z8adc_readh>:
 66a:	88 30       	cpi	r24, 0x08	; 8
 66c:	11 f4       	brne	.+4      	; 0x672 <_Z8adc_readh+0x8>
 66e:	88 e4       	ldi	r24, 0x48	; 72
 670:	01 c0       	rjmp	.+2      	; 0x674 <_Z8adc_readh+0xa>
 672:	80 64       	ori	r24, 0x40	; 64
 674:	80 93 7c 00 	sts	0x007C, r24	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
 678:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 67c:	80 64       	ori	r24, 0x40	; 64
 67e:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 682:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 686:	86 ff       	sbrs	r24, 6
 688:	02 c0       	rjmp	.+4      	; 0x68e <_Z8adc_readh+0x24>
 68a:	00 00       	nop
 68c:	fa cf       	rjmp	.-12     	; 0x682 <_Z8adc_readh+0x18>
 68e:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 692:	80 64       	ori	r24, 0x40	; 64
 694:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 698:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 69c:	86 ff       	sbrs	r24, 6
 69e:	02 c0       	rjmp	.+4      	; 0x6a4 <_Z8adc_readh+0x3a>
 6a0:	00 00       	nop
 6a2:	fa cf       	rjmp	.-12     	; 0x698 <_Z8adc_readh+0x2e>
 6a4:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
 6a8:	90 91 79 00 	lds	r25, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
 6ac:	08 95       	ret

000006ae <_ZN9IRSensors4readEv>:
 6ae:	cf 93       	push	r28
 6b0:	df 93       	push	r29
 6b2:	ec 01       	movw	r28, r24
 6b4:	80 e0       	ldi	r24, 0x00	; 0
 6b6:	0e 94 35 03 	call	0x66a	; 0x66a <_Z8adc_readh>
 6ba:	99 87       	std	Y+9, r25	; 0x09
 6bc:	88 87       	std	Y+8, r24	; 0x08
 6be:	87 e0       	ldi	r24, 0x07	; 7
 6c0:	0e 94 35 03 	call	0x66a	; 0x66a <_Z8adc_readh>
 6c4:	9b 87       	std	Y+11, r25	; 0x0b
 6c6:	8a 87       	std	Y+10, r24	; 0x0a
 6c8:	85 e0       	ldi	r24, 0x05	; 5
 6ca:	0e 94 35 03 	call	0x66a	; 0x66a <_Z8adc_readh>
 6ce:	99 83       	std	Y+1, r25	; 0x01
 6d0:	88 83       	st	Y, r24
 6d2:	86 e0       	ldi	r24, 0x06	; 6
 6d4:	0e 94 35 03 	call	0x66a	; 0x66a <_Z8adc_readh>
 6d8:	9b 83       	std	Y+3, r25	; 0x03
 6da:	8a 83       	std	Y+2, r24	; 0x02
 6dc:	83 e0       	ldi	r24, 0x03	; 3
 6de:	0e 94 35 03 	call	0x66a	; 0x66a <_Z8adc_readh>
 6e2:	9d 83       	std	Y+5, r25	; 0x05
 6e4:	8c 83       	std	Y+4, r24	; 0x04
 6e6:	82 e0       	ldi	r24, 0x02	; 2
 6e8:	0e 94 35 03 	call	0x66a	; 0x66a <_Z8adc_readh>
 6ec:	9f 83       	std	Y+7, r25	; 0x07
 6ee:	8e 83       	std	Y+6, r24	; 0x06
 6f0:	41 9a       	sbi	0x08, 1	; 8
 6f2:	8b e0       	ldi	r24, 0x0B	; 11
 6f4:	81 50       	subi	r24, 0x01	; 1
 6f6:	11 f0       	breq	.+4      	; 0x6fc <_ZN9IRSensors4readEv+0x4e>
 6f8:	00 00       	nop
 6fa:	fc cf       	rjmp	.-8      	; 0x6f4 <_ZN9IRSensors4readEv+0x46>
 6fc:	85 e0       	ldi	r24, 0x05	; 5
 6fe:	0e 94 35 03 	call	0x66a	; 0x66a <_Z8adc_readh>
 702:	28 81       	ld	r18, Y
 704:	39 81       	ldd	r19, Y+1	; 0x01
 706:	82 1b       	sub	r24, r18
 708:	93 0b       	sbc	r25, r19
 70a:	99 83       	std	Y+1, r25	; 0x01
 70c:	88 83       	st	Y, r24
 70e:	86 e0       	ldi	r24, 0x06	; 6
 710:	0e 94 35 03 	call	0x66a	; 0x66a <_Z8adc_readh>
 714:	2a 81       	ldd	r18, Y+2	; 0x02
 716:	3b 81       	ldd	r19, Y+3	; 0x03
 718:	82 1b       	sub	r24, r18
 71a:	93 0b       	sbc	r25, r19
 71c:	9b 83       	std	Y+3, r25	; 0x03
 71e:	8a 83       	std	Y+2, r24	; 0x02
 720:	83 e0       	ldi	r24, 0x03	; 3
 722:	0e 94 35 03 	call	0x66a	; 0x66a <_Z8adc_readh>
 726:	2c 81       	ldd	r18, Y+4	; 0x04
 728:	3d 81       	ldd	r19, Y+5	; 0x05
 72a:	82 1b       	sub	r24, r18
 72c:	93 0b       	sbc	r25, r19
 72e:	9d 83       	std	Y+5, r25	; 0x05
 730:	8c 83       	std	Y+4, r24	; 0x04
 732:	82 e0       	ldi	r24, 0x02	; 2
 734:	0e 94 35 03 	call	0x66a	; 0x66a <_Z8adc_readh>
 738:	2e 81       	ldd	r18, Y+6	; 0x06
 73a:	3f 81       	ldd	r19, Y+7	; 0x07
 73c:	82 1b       	sub	r24, r18
 73e:	93 0b       	sbc	r25, r19
 740:	9f 83       	std	Y+7, r25	; 0x07
 742:	8e 83       	std	Y+6, r24	; 0x06
 744:	80 e0       	ldi	r24, 0x00	; 0
 746:	0e 94 35 03 	call	0x66a	; 0x66a <_Z8adc_readh>
 74a:	28 85       	ldd	r18, Y+8	; 0x08
 74c:	39 85       	ldd	r19, Y+9	; 0x09
 74e:	82 1b       	sub	r24, r18
 750:	93 0b       	sbc	r25, r19
 752:	9d 87       	std	Y+13, r25	; 0x0d
 754:	8c 87       	std	Y+12, r24	; 0x0c
 756:	41 98       	cbi	0x08, 1	; 8
 758:	df 91       	pop	r29
 75a:	cf 91       	pop	r28
 75c:	08 95       	ret

0000075e <_GLOBAL__sub_I_ir_sensors>:
 75e:	89 e6       	ldi	r24, 0x69	; 105
 760:	91 e0       	ldi	r25, 0x01	; 1
 762:	0c 94 20 03 	jmp	0x640	; 0x640 <_ZN9IRSensorsC1Ev>

00000766 <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE9write_regEhhh>:
 766:	ff 92       	push	r15
 768:	0f 93       	push	r16
 76a:	1f 93       	push	r17
 76c:	cf 93       	push	r28
 76e:	df 93       	push	r29
 770:	ec 01       	movw	r28, r24
 772:	f6 2e       	mov	r15, r22
 774:	04 2f       	mov	r16, r20
 776:	12 2f       	mov	r17, r18
 778:	e8 81       	ld	r30, Y
 77a:	f9 81       	ldd	r31, Y+1	; 0x01
 77c:	01 90       	ld	r0, Z+
 77e:	f0 81       	ld	r31, Z
 780:	e0 2d       	mov	r30, r0
 782:	09 95       	icall
 784:	e8 81       	ld	r30, Y
 786:	f9 81       	ldd	r31, Y+1	; 0x01
 788:	04 80       	ldd	r0, Z+4	; 0x04
 78a:	f5 81       	ldd	r31, Z+5	; 0x05
 78c:	e0 2d       	mov	r30, r0
 78e:	6f 2d       	mov	r22, r15
 790:	ce 01       	movw	r24, r28
 792:	09 95       	icall
 794:	e8 81       	ld	r30, Y
 796:	f9 81       	ldd	r31, Y+1	; 0x01
 798:	04 80       	ldd	r0, Z+4	; 0x04
 79a:	f5 81       	ldd	r31, Z+5	; 0x05
 79c:	e0 2d       	mov	r30, r0
 79e:	60 2f       	mov	r22, r16
 7a0:	ce 01       	movw	r24, r28
 7a2:	09 95       	icall
 7a4:	e8 81       	ld	r30, Y
 7a6:	f9 81       	ldd	r31, Y+1	; 0x01
 7a8:	04 80       	ldd	r0, Z+4	; 0x04
 7aa:	f5 81       	ldd	r31, Z+5	; 0x05
 7ac:	e0 2d       	mov	r30, r0
 7ae:	61 2f       	mov	r22, r17
 7b0:	ce 01       	movw	r24, r28
 7b2:	09 95       	icall
 7b4:	e8 81       	ld	r30, Y
 7b6:	f9 81       	ldd	r31, Y+1	; 0x01
 7b8:	02 80       	ldd	r0, Z+2	; 0x02
 7ba:	f3 81       	ldd	r31, Z+3	; 0x03
 7bc:	e0 2d       	mov	r30, r0
 7be:	ce 01       	movw	r24, r28
 7c0:	df 91       	pop	r29
 7c2:	cf 91       	pop	r28
 7c4:	1f 91       	pop	r17
 7c6:	0f 91       	pop	r16
 7c8:	ff 90       	pop	r15
 7ca:	09 94       	ijmp

000007cc <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE15write_reg_16bitEhhj>:
 7cc:	ef 92       	push	r14
 7ce:	ff 92       	push	r15
 7d0:	0f 93       	push	r16
 7d2:	1f 93       	push	r17
 7d4:	cf 93       	push	r28
 7d6:	df 93       	push	r29
 7d8:	ec 01       	movw	r28, r24
 7da:	e6 2e       	mov	r14, r22
 7dc:	f4 2e       	mov	r15, r20
 7de:	12 2f       	mov	r17, r18
 7e0:	03 2f       	mov	r16, r19
 7e2:	e8 81       	ld	r30, Y
 7e4:	f9 81       	ldd	r31, Y+1	; 0x01
 7e6:	01 90       	ld	r0, Z+
 7e8:	f0 81       	ld	r31, Z
 7ea:	e0 2d       	mov	r30, r0
 7ec:	09 95       	icall
 7ee:	e8 81       	ld	r30, Y
 7f0:	f9 81       	ldd	r31, Y+1	; 0x01
 7f2:	04 80       	ldd	r0, Z+4	; 0x04
 7f4:	f5 81       	ldd	r31, Z+5	; 0x05
 7f6:	e0 2d       	mov	r30, r0
 7f8:	6e 2d       	mov	r22, r14
 7fa:	ce 01       	movw	r24, r28
 7fc:	09 95       	icall
 7fe:	e8 81       	ld	r30, Y
 800:	f9 81       	ldd	r31, Y+1	; 0x01
 802:	04 80       	ldd	r0, Z+4	; 0x04
 804:	f5 81       	ldd	r31, Z+5	; 0x05
 806:	e0 2d       	mov	r30, r0
 808:	6f 2d       	mov	r22, r15
 80a:	ce 01       	movw	r24, r28
 80c:	09 95       	icall
 80e:	e8 81       	ld	r30, Y
 810:	f9 81       	ldd	r31, Y+1	; 0x01
 812:	04 80       	ldd	r0, Z+4	; 0x04
 814:	f5 81       	ldd	r31, Z+5	; 0x05
 816:	e0 2d       	mov	r30, r0
 818:	60 2f       	mov	r22, r16
 81a:	ce 01       	movw	r24, r28
 81c:	09 95       	icall
 81e:	e8 81       	ld	r30, Y
 820:	f9 81       	ldd	r31, Y+1	; 0x01
 822:	04 80       	ldd	r0, Z+4	; 0x04
 824:	f5 81       	ldd	r31, Z+5	; 0x05
 826:	e0 2d       	mov	r30, r0
 828:	61 2f       	mov	r22, r17
 82a:	ce 01       	movw	r24, r28
 82c:	09 95       	icall
 82e:	e8 81       	ld	r30, Y
 830:	f9 81       	ldd	r31, Y+1	; 0x01
 832:	02 80       	ldd	r0, Z+2	; 0x02
 834:	f3 81       	ldd	r31, Z+3	; 0x03
 836:	e0 2d       	mov	r30, r0
 838:	ce 01       	movw	r24, r28
 83a:	df 91       	pop	r29
 83c:	cf 91       	pop	r28
 83e:	1f 91       	pop	r17
 840:	0f 91       	pop	r16
 842:	ff 90       	pop	r15
 844:	ef 90       	pop	r14
 846:	09 94       	ijmp

00000848 <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE15write_reg_multiEhhPhj>:
 848:	cf 92       	push	r12
 84a:	df 92       	push	r13
 84c:	ef 92       	push	r14
 84e:	ff 92       	push	r15
 850:	0f 93       	push	r16
 852:	1f 93       	push	r17
 854:	cf 93       	push	r28
 856:	df 93       	push	r29
 858:	ec 01       	movw	r28, r24
 85a:	e6 2e       	mov	r14, r22
 85c:	f4 2e       	mov	r15, r20
 85e:	69 01       	movw	r12, r18
 860:	e8 81       	ld	r30, Y
 862:	f9 81       	ldd	r31, Y+1	; 0x01
 864:	01 90       	ld	r0, Z+
 866:	f0 81       	ld	r31, Z
 868:	e0 2d       	mov	r30, r0
 86a:	09 95       	icall
 86c:	e8 81       	ld	r30, Y
 86e:	f9 81       	ldd	r31, Y+1	; 0x01
 870:	04 80       	ldd	r0, Z+4	; 0x04
 872:	f5 81       	ldd	r31, Z+5	; 0x05
 874:	e0 2d       	mov	r30, r0
 876:	6e 2d       	mov	r22, r14
 878:	ce 01       	movw	r24, r28
 87a:	09 95       	icall
 87c:	e8 81       	ld	r30, Y
 87e:	f9 81       	ldd	r31, Y+1	; 0x01
 880:	04 80       	ldd	r0, Z+4	; 0x04
 882:	f5 81       	ldd	r31, Z+5	; 0x05
 884:	e0 2d       	mov	r30, r0
 886:	6f 2d       	mov	r22, r15
 888:	ce 01       	movw	r24, r28
 88a:	09 95       	icall
 88c:	76 01       	movw	r14, r12
 88e:	0c 0d       	add	r16, r12
 890:	1d 1d       	adc	r17, r13
 892:	e8 81       	ld	r30, Y
 894:	f9 81       	ldd	r31, Y+1	; 0x01
 896:	e0 16       	cp	r14, r16
 898:	f1 06       	cpc	r15, r17
 89a:	49 f0       	breq	.+18     	; 0x8ae <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE15write_reg_multiEhhPhj+0x66>
 89c:	d7 01       	movw	r26, r14
 89e:	6d 91       	ld	r22, X+
 8a0:	7d 01       	movw	r14, r26
 8a2:	04 80       	ldd	r0, Z+4	; 0x04
 8a4:	f5 81       	ldd	r31, Z+5	; 0x05
 8a6:	e0 2d       	mov	r30, r0
 8a8:	ce 01       	movw	r24, r28
 8aa:	09 95       	icall
 8ac:	f2 cf       	rjmp	.-28     	; 0x892 <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE15write_reg_multiEhhPhj+0x4a>
 8ae:	02 80       	ldd	r0, Z+2	; 0x02
 8b0:	f3 81       	ldd	r31, Z+3	; 0x03
 8b2:	e0 2d       	mov	r30, r0
 8b4:	ce 01       	movw	r24, r28
 8b6:	df 91       	pop	r29
 8b8:	cf 91       	pop	r28
 8ba:	1f 91       	pop	r17
 8bc:	0f 91       	pop	r16
 8be:	ff 90       	pop	r15
 8c0:	ef 90       	pop	r14
 8c2:	df 90       	pop	r13
 8c4:	cf 90       	pop	r12
 8c6:	09 94       	ijmp

000008c8 <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE8read_regEhh>:
 8c8:	0f 93       	push	r16
 8ca:	1f 93       	push	r17
 8cc:	cf 93       	push	r28
 8ce:	df 93       	push	r29
 8d0:	ec 01       	movw	r28, r24
 8d2:	16 2f       	mov	r17, r22
 8d4:	04 2f       	mov	r16, r20
 8d6:	e8 81       	ld	r30, Y
 8d8:	f9 81       	ldd	r31, Y+1	; 0x01
 8da:	01 90       	ld	r0, Z+
 8dc:	f0 81       	ld	r31, Z
 8de:	e0 2d       	mov	r30, r0
 8e0:	09 95       	icall
 8e2:	e8 81       	ld	r30, Y
 8e4:	f9 81       	ldd	r31, Y+1	; 0x01
 8e6:	04 80       	ldd	r0, Z+4	; 0x04
 8e8:	f5 81       	ldd	r31, Z+5	; 0x05
 8ea:	e0 2d       	mov	r30, r0
 8ec:	61 2f       	mov	r22, r17
 8ee:	ce 01       	movw	r24, r28
 8f0:	09 95       	icall
 8f2:	e8 81       	ld	r30, Y
 8f4:	f9 81       	ldd	r31, Y+1	; 0x01
 8f6:	04 80       	ldd	r0, Z+4	; 0x04
 8f8:	f5 81       	ldd	r31, Z+5	; 0x05
 8fa:	e0 2d       	mov	r30, r0
 8fc:	60 2f       	mov	r22, r16
 8fe:	ce 01       	movw	r24, r28
 900:	09 95       	icall
 902:	e8 81       	ld	r30, Y
 904:	f9 81       	ldd	r31, Y+1	; 0x01
 906:	01 90       	ld	r0, Z+
 908:	f0 81       	ld	r31, Z
 90a:	e0 2d       	mov	r30, r0
 90c:	ce 01       	movw	r24, r28
 90e:	09 95       	icall
 910:	61 2f       	mov	r22, r17
 912:	61 60       	ori	r22, 0x01	; 1
 914:	e8 81       	ld	r30, Y
 916:	f9 81       	ldd	r31, Y+1	; 0x01
 918:	04 80       	ldd	r0, Z+4	; 0x04
 91a:	f5 81       	ldd	r31, Z+5	; 0x05
 91c:	e0 2d       	mov	r30, r0
 91e:	ce 01       	movw	r24, r28
 920:	09 95       	icall
 922:	e8 81       	ld	r30, Y
 924:	f9 81       	ldd	r31, Y+1	; 0x01
 926:	06 80       	ldd	r0, Z+6	; 0x06
 928:	f7 81       	ldd	r31, Z+7	; 0x07
 92a:	e0 2d       	mov	r30, r0
 92c:	60 e0       	ldi	r22, 0x00	; 0
 92e:	ce 01       	movw	r24, r28
 930:	09 95       	icall
 932:	18 2f       	mov	r17, r24
 934:	e8 81       	ld	r30, Y
 936:	f9 81       	ldd	r31, Y+1	; 0x01
 938:	02 80       	ldd	r0, Z+2	; 0x02
 93a:	f3 81       	ldd	r31, Z+3	; 0x03
 93c:	e0 2d       	mov	r30, r0
 93e:	ce 01       	movw	r24, r28
 940:	09 95       	icall
 942:	81 2f       	mov	r24, r17
 944:	df 91       	pop	r29
 946:	cf 91       	pop	r28
 948:	1f 91       	pop	r17
 94a:	0f 91       	pop	r16
 94c:	08 95       	ret

0000094e <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE14read_reg_16bitEhh>:
 94e:	0f 93       	push	r16
 950:	1f 93       	push	r17
 952:	cf 93       	push	r28
 954:	df 93       	push	r29
 956:	ec 01       	movw	r28, r24
 958:	16 2f       	mov	r17, r22
 95a:	04 2f       	mov	r16, r20
 95c:	e8 81       	ld	r30, Y
 95e:	f9 81       	ldd	r31, Y+1	; 0x01
 960:	01 90       	ld	r0, Z+
 962:	f0 81       	ld	r31, Z
 964:	e0 2d       	mov	r30, r0
 966:	09 95       	icall
 968:	e8 81       	ld	r30, Y
 96a:	f9 81       	ldd	r31, Y+1	; 0x01
 96c:	04 80       	ldd	r0, Z+4	; 0x04
 96e:	f5 81       	ldd	r31, Z+5	; 0x05
 970:	e0 2d       	mov	r30, r0
 972:	61 2f       	mov	r22, r17
 974:	ce 01       	movw	r24, r28
 976:	09 95       	icall
 978:	e8 81       	ld	r30, Y
 97a:	f9 81       	ldd	r31, Y+1	; 0x01
 97c:	04 80       	ldd	r0, Z+4	; 0x04
 97e:	f5 81       	ldd	r31, Z+5	; 0x05
 980:	e0 2d       	mov	r30, r0
 982:	60 2f       	mov	r22, r16
 984:	ce 01       	movw	r24, r28
 986:	09 95       	icall
 988:	e8 81       	ld	r30, Y
 98a:	f9 81       	ldd	r31, Y+1	; 0x01
 98c:	01 90       	ld	r0, Z+
 98e:	f0 81       	ld	r31, Z
 990:	e0 2d       	mov	r30, r0
 992:	ce 01       	movw	r24, r28
 994:	09 95       	icall
 996:	61 2f       	mov	r22, r17
 998:	61 60       	ori	r22, 0x01	; 1
 99a:	e8 81       	ld	r30, Y
 99c:	f9 81       	ldd	r31, Y+1	; 0x01
 99e:	04 80       	ldd	r0, Z+4	; 0x04
 9a0:	f5 81       	ldd	r31, Z+5	; 0x05
 9a2:	e0 2d       	mov	r30, r0
 9a4:	ce 01       	movw	r24, r28
 9a6:	09 95       	icall
 9a8:	e8 81       	ld	r30, Y
 9aa:	f9 81       	ldd	r31, Y+1	; 0x01
 9ac:	06 80       	ldd	r0, Z+6	; 0x06
 9ae:	f7 81       	ldd	r31, Z+7	; 0x07
 9b0:	e0 2d       	mov	r30, r0
 9b2:	61 e0       	ldi	r22, 0x01	; 1
 9b4:	ce 01       	movw	r24, r28
 9b6:	09 95       	icall
 9b8:	08 2f       	mov	r16, r24
 9ba:	10 e0       	ldi	r17, 0x00	; 0
 9bc:	10 2f       	mov	r17, r16
 9be:	00 27       	eor	r16, r16
 9c0:	e8 81       	ld	r30, Y
 9c2:	f9 81       	ldd	r31, Y+1	; 0x01
 9c4:	06 80       	ldd	r0, Z+6	; 0x06
 9c6:	f7 81       	ldd	r31, Z+7	; 0x07
 9c8:	e0 2d       	mov	r30, r0
 9ca:	60 e0       	ldi	r22, 0x00	; 0
 9cc:	ce 01       	movw	r24, r28
 9ce:	09 95       	icall
 9d0:	08 2b       	or	r16, r24
 9d2:	e8 81       	ld	r30, Y
 9d4:	f9 81       	ldd	r31, Y+1	; 0x01
 9d6:	02 80       	ldd	r0, Z+2	; 0x02
 9d8:	f3 81       	ldd	r31, Z+3	; 0x03
 9da:	e0 2d       	mov	r30, r0
 9dc:	ce 01       	movw	r24, r28
 9de:	09 95       	icall
 9e0:	c8 01       	movw	r24, r16
 9e2:	df 91       	pop	r29
 9e4:	cf 91       	pop	r28
 9e6:	1f 91       	pop	r17
 9e8:	0f 91       	pop	r16
 9ea:	08 95       	ret

000009ec <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE14read_reg_multiEhhPhj>:
 9ec:	cf 92       	push	r12
 9ee:	df 92       	push	r13
 9f0:	ef 92       	push	r14
 9f2:	ff 92       	push	r15
 9f4:	0f 93       	push	r16
 9f6:	1f 93       	push	r17
 9f8:	cf 93       	push	r28
 9fa:	df 93       	push	r29
 9fc:	ec 01       	movw	r28, r24
 9fe:	f6 2e       	mov	r15, r22
 a00:	e4 2e       	mov	r14, r20
 a02:	69 01       	movw	r12, r18
 a04:	e8 81       	ld	r30, Y
 a06:	f9 81       	ldd	r31, Y+1	; 0x01
 a08:	01 90       	ld	r0, Z+
 a0a:	f0 81       	ld	r31, Z
 a0c:	e0 2d       	mov	r30, r0
 a0e:	09 95       	icall
 a10:	e8 81       	ld	r30, Y
 a12:	f9 81       	ldd	r31, Y+1	; 0x01
 a14:	04 80       	ldd	r0, Z+4	; 0x04
 a16:	f5 81       	ldd	r31, Z+5	; 0x05
 a18:	e0 2d       	mov	r30, r0
 a1a:	6f 2d       	mov	r22, r15
 a1c:	ce 01       	movw	r24, r28
 a1e:	09 95       	icall
 a20:	e8 81       	ld	r30, Y
 a22:	f9 81       	ldd	r31, Y+1	; 0x01
 a24:	04 80       	ldd	r0, Z+4	; 0x04
 a26:	f5 81       	ldd	r31, Z+5	; 0x05
 a28:	e0 2d       	mov	r30, r0
 a2a:	6e 2d       	mov	r22, r14
 a2c:	ce 01       	movw	r24, r28
 a2e:	09 95       	icall
 a30:	e8 81       	ld	r30, Y
 a32:	f9 81       	ldd	r31, Y+1	; 0x01
 a34:	01 90       	ld	r0, Z+
 a36:	f0 81       	ld	r31, Z
 a38:	e0 2d       	mov	r30, r0
 a3a:	ce 01       	movw	r24, r28
 a3c:	09 95       	icall
 a3e:	6f 2d       	mov	r22, r15
 a40:	61 60       	ori	r22, 0x01	; 1
 a42:	e8 81       	ld	r30, Y
 a44:	f9 81       	ldd	r31, Y+1	; 0x01
 a46:	04 80       	ldd	r0, Z+4	; 0x04
 a48:	f5 81       	ldd	r31, Z+5	; 0x05
 a4a:	e0 2d       	mov	r30, r0
 a4c:	ce 01       	movw	r24, r28
 a4e:	09 95       	icall
 a50:	76 01       	movw	r14, r12
 a52:	0c 0d       	add	r16, r12
 a54:	1d 1d       	adc	r17, r13
 a56:	e8 81       	ld	r30, Y
 a58:	f9 81       	ldd	r31, Y+1	; 0x01
 a5a:	e0 16       	cp	r14, r16
 a5c:	f1 06       	cpc	r15, r17
 a5e:	51 f0       	breq	.+20     	; 0xa74 <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE14read_reg_multiEhhPhj+0x88>
 a60:	06 80       	ldd	r0, Z+6	; 0x06
 a62:	f7 81       	ldd	r31, Z+7	; 0x07
 a64:	e0 2d       	mov	r30, r0
 a66:	61 e0       	ldi	r22, 0x01	; 1
 a68:	ce 01       	movw	r24, r28
 a6a:	09 95       	icall
 a6c:	f7 01       	movw	r30, r14
 a6e:	81 93       	st	Z+, r24
 a70:	7f 01       	movw	r14, r30
 a72:	f1 cf       	rjmp	.-30     	; 0xa56 <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE14read_reg_multiEhhPhj+0x6a>
 a74:	02 80       	ldd	r0, Z+2	; 0x02
 a76:	f3 81       	ldd	r31, Z+3	; 0x03
 a78:	e0 2d       	mov	r30, r0
 a7a:	ce 01       	movw	r24, r28
 a7c:	df 91       	pop	r29
 a7e:	cf 91       	pop	r28
 a80:	1f 91       	pop	r17
 a82:	0f 91       	pop	r16
 a84:	ff 90       	pop	r15
 a86:	ef 90       	pop	r14
 a88:	df 90       	pop	r13
 a8a:	cf 90       	pop	r12
 a8c:	09 94       	ijmp

00000a8e <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE5delayEv.isra.6>:
 a8e:	8a e0       	ldi	r24, 0x0A	; 10
 a90:	00 00       	nop
 a92:	81 50       	subi	r24, 0x01	; 1
 a94:	e9 f7       	brne	.-6      	; 0xa90 <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE5delayEv.isra.6+0x2>
 a96:	08 95       	ret

00000a98 <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE4stopEv>:
 a98:	23 9a       	sbi	0x04, 3	; 4
 a9a:	24 9a       	sbi	0x04, 4	; 4
 a9c:	23 98       	cbi	0x04, 3	; 4
 a9e:	24 9a       	sbi	0x04, 4	; 4
 aa0:	23 98       	cbi	0x04, 3	; 4
 aa2:	24 98       	cbi	0x04, 4	; 4
 aa4:	0c 94 47 05 	jmp	0xa8e	; 0xa8e <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE5delayEv.isra.6>

00000aa8 <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE5startEv>:
 aa8:	23 98       	cbi	0x04, 3	; 4
 aaa:	24 98       	cbi	0x04, 4	; 4
 aac:	23 98       	cbi	0x04, 3	; 4
 aae:	24 9a       	sbi	0x04, 4	; 4
 ab0:	23 9a       	sbi	0x04, 3	; 4
 ab2:	24 98       	cbi	0x04, 4	; 4
 ab4:	0c 94 47 05 	jmp	0xa8e	; 0xa8e <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE5delayEv.isra.6>

00000ab8 <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE5writeEh>:
 ab8:	cf 93       	push	r28
 aba:	df 93       	push	r29
 abc:	d6 2f       	mov	r29, r22
 abe:	c8 e0       	ldi	r28, 0x08	; 8
 ac0:	23 9a       	sbi	0x04, 3	; 4
 ac2:	0e 94 47 05 	call	0xa8e	; 0xa8e <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE5delayEv.isra.6>
 ac6:	d7 ff       	sbrs	r29, 7
 ac8:	02 c0       	rjmp	.+4      	; 0xace <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE5writeEh+0x16>
 aca:	24 98       	cbi	0x04, 4	; 4
 acc:	01 c0       	rjmp	.+2      	; 0xad0 <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE5writeEh+0x18>
 ace:	24 9a       	sbi	0x04, 4	; 4
 ad0:	0e 94 47 05 	call	0xa8e	; 0xa8e <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE5delayEv.isra.6>
 ad4:	23 98       	cbi	0x04, 3	; 4
 ad6:	0e 94 47 05 	call	0xa8e	; 0xa8e <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE5delayEv.isra.6>
 ada:	dd 0f       	add	r29, r29
 adc:	c1 50       	subi	r28, 0x01	; 1
 ade:	81 f7       	brne	.-32     	; 0xac0 <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE5writeEh+0x8>
 ae0:	23 9a       	sbi	0x04, 3	; 4
 ae2:	0e 94 47 05 	call	0xa8e	; 0xa8e <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE5delayEv.isra.6>
 ae6:	24 98       	cbi	0x04, 4	; 4
 ae8:	0e 94 47 05 	call	0xa8e	; 0xa8e <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE5delayEv.isra.6>
 aec:	23 98       	cbi	0x04, 3	; 4
 aee:	0e 94 47 05 	call	0xa8e	; 0xa8e <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE5delayEv.isra.6>
 af2:	c3 b1       	in	r28, 0x03	; 3
 af4:	23 9a       	sbi	0x04, 3	; 4
 af6:	0e 94 47 05 	call	0xa8e	; 0xa8e <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE5delayEv.isra.6>
 afa:	c2 95       	swap	r28
 afc:	c1 70       	andi	r28, 0x01	; 1
 afe:	81 e0       	ldi	r24, 0x01	; 1
 b00:	8c 27       	eor	r24, r28
 b02:	df 91       	pop	r29
 b04:	cf 91       	pop	r28
 b06:	08 95       	ret

00000b08 <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE4readEh>:
 b08:	1f 93       	push	r17
 b0a:	cf 93       	push	r28
 b0c:	df 93       	push	r29
 b0e:	16 2f       	mov	r17, r22
 b10:	24 98       	cbi	0x04, 4	; 4
 b12:	23 9a       	sbi	0x04, 3	; 4
 b14:	0e 94 47 05 	call	0xa8e	; 0xa8e <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE5delayEv.isra.6>
 b18:	d8 e0       	ldi	r29, 0x08	; 8
 b1a:	c0 e0       	ldi	r28, 0x00	; 0
 b1c:	cc 0f       	add	r28, r28
 b1e:	23 98       	cbi	0x04, 3	; 4
 b20:	0e 94 47 05 	call	0xa8e	; 0xa8e <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE5delayEv.isra.6>
 b24:	1c 99       	sbic	0x03, 4	; 3
 b26:	c1 60       	ori	r28, 0x01	; 1
 b28:	23 9a       	sbi	0x04, 3	; 4
 b2a:	0e 94 47 05 	call	0xa8e	; 0xa8e <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE5delayEv.isra.6>
 b2e:	d1 50       	subi	r29, 0x01	; 1
 b30:	a9 f7       	brne	.-22     	; 0xb1c <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE4readEh+0x14>
 b32:	11 23       	and	r17, r17
 b34:	11 f0       	breq	.+4      	; 0xb3a <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE4readEh+0x32>
 b36:	24 9a       	sbi	0x04, 4	; 4
 b38:	01 c0       	rjmp	.+2      	; 0xb3c <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE4readEh+0x34>
 b3a:	24 98       	cbi	0x04, 4	; 4
 b3c:	0e 94 47 05 	call	0xa8e	; 0xa8e <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE5delayEv.isra.6>
 b40:	23 98       	cbi	0x04, 3	; 4
 b42:	0e 94 47 05 	call	0xa8e	; 0xa8e <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE5delayEv.isra.6>
 b46:	23 9a       	sbi	0x04, 3	; 4
 b48:	0e 94 47 05 	call	0xa8e	; 0xa8e <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE5delayEv.isra.6>
 b4c:	24 98       	cbi	0x04, 4	; 4
 b4e:	0e 94 47 05 	call	0xa8e	; 0xa8e <_ZN4TI2CILh1ELh4ELh3ELh10ELh1EE5delayEv.isra.6>
 b52:	8c 2f       	mov	r24, r28
 b54:	df 91       	pop	r29
 b56:	cf 91       	pop	r28
 b58:	1f 91       	pop	r17
 b5a:	08 95       	ret

00000b5c <_GLOBAL__sub_I_i2c>:
 b5c:	88 e0       	ldi	r24, 0x08	; 8
 b5e:	91 e0       	ldi	r25, 0x01	; 1
 b60:	90 93 7b 01 	sts	0x017B, r25	; 0x80017b <i2c+0x1>
 b64:	80 93 7a 01 	sts	0x017A, r24	; 0x80017a <i2c>
 b68:	24 98       	cbi	0x04, 4	; 4
 b6a:	23 98       	cbi	0x04, 3	; 4
 b6c:	2c 98       	cbi	0x05, 4	; 5
 b6e:	2b 98       	cbi	0x05, 3	; 5
 b70:	08 95       	ret

00000b72 <_ZN8Terminal4putsEPc>:
 b72:	0f 93       	push	r16
 b74:	1f 93       	push	r17
 b76:	cf 93       	push	r28
 b78:	df 93       	push	r29
 b7a:	8c 01       	movw	r16, r24
 b7c:	eb 01       	movw	r28, r22
 b7e:	69 91       	ld	r22, Y+
 b80:	66 23       	and	r22, r22
 b82:	21 f0       	breq	.+8      	; 0xb8c <_ZN8Terminal4putsEPc+0x1a>
 b84:	c8 01       	movw	r24, r16
 b86:	0e 94 79 01 	call	0x2f2	; 0x2f2 <_ZN5USART8put_charEc>
 b8a:	f9 cf       	rjmp	.-14     	; 0xb7e <_ZN8Terminal4putsEPc+0xc>
 b8c:	df 91       	pop	r29
 b8e:	cf 91       	pop	r28
 b90:	1f 91       	pop	r17
 b92:	0f 91       	pop	r16
 b94:	08 95       	ret

00000b96 <_ZN8Terminal4putsEPKc>:
 b96:	0c 94 b9 05 	jmp	0xb72	; 0xb72 <_ZN8Terminal4putsEPc>

00000b9a <_ZN8Terminal4putiEl>:
 b9a:	8f 92       	push	r8
 b9c:	9f 92       	push	r9
 b9e:	af 92       	push	r10
 ba0:	bf 92       	push	r11
 ba2:	cf 92       	push	r12
 ba4:	df 92       	push	r13
 ba6:	ef 92       	push	r14
 ba8:	ff 92       	push	r15
 baa:	0f 93       	push	r16
 bac:	1f 93       	push	r17
 bae:	cf 93       	push	r28
 bb0:	df 93       	push	r29
 bb2:	cd b7       	in	r28, 0x3d	; 61
 bb4:	de b7       	in	r29, 0x3e	; 62
 bb6:	2c 97       	sbiw	r28, 0x0c	; 12
 bb8:	0f b6       	in	r0, 0x3f	; 63
 bba:	f8 94       	cli
 bbc:	de bf       	out	0x3e, r29	; 62
 bbe:	0f be       	out	0x3f, r0	; 63
 bc0:	cd bf       	out	0x3d, r28	; 61
 bc2:	7c 01       	movw	r14, r24
 bc4:	77 ff       	sbrs	r23, 7
 bc6:	09 c0       	rjmp	.+18     	; 0xbda <_ZN8Terminal4putiEl+0x40>
 bc8:	70 95       	com	r23
 bca:	60 95       	com	r22
 bcc:	50 95       	com	r21
 bce:	41 95       	neg	r20
 bd0:	5f 4f       	sbci	r21, 0xFF	; 255
 bd2:	6f 4f       	sbci	r22, 0xFF	; 255
 bd4:	7f 4f       	sbci	r23, 0xFF	; 255
 bd6:	01 e0       	ldi	r16, 0x01	; 1
 bd8:	01 c0       	rjmp	.+2      	; 0xbdc <_ZN8Terminal4putiEl+0x42>
 bda:	00 e0       	ldi	r16, 0x00	; 0
 bdc:	1c 86       	std	Y+12, r1	; 0x0c
 bde:	1a e0       	ldi	r17, 0x0A	; 10
 be0:	9a e0       	ldi	r25, 0x0A	; 10
 be2:	89 2e       	mov	r8, r25
 be4:	91 2c       	mov	r9, r1
 be6:	a1 2c       	mov	r10, r1
 be8:	b1 2c       	mov	r11, r1
 bea:	cc 24       	eor	r12, r12
 bec:	c3 94       	inc	r12
 bee:	d1 2c       	mov	r13, r1
 bf0:	cc 0e       	add	r12, r28
 bf2:	dd 1e       	adc	r13, r29
 bf4:	c1 0e       	add	r12, r17
 bf6:	d1 1c       	adc	r13, r1
 bf8:	cb 01       	movw	r24, r22
 bfa:	ba 01       	movw	r22, r20
 bfc:	a5 01       	movw	r20, r10
 bfe:	94 01       	movw	r18, r8
 c00:	0e 94 7d 06 	call	0xcfa	; 0xcfa <__divmodsi4>
 c04:	94 2f       	mov	r25, r20
 c06:	85 2f       	mov	r24, r21
 c08:	60 5d       	subi	r22, 0xD0	; 208
 c0a:	f6 01       	movw	r30, r12
 c0c:	60 83       	st	Z, r22
 c0e:	a9 01       	movw	r20, r18
 c10:	69 2f       	mov	r22, r25
 c12:	78 2f       	mov	r23, r24
 c14:	8f ef       	ldi	r24, 0xFF	; 255
 c16:	81 0f       	add	r24, r17
 c18:	41 15       	cp	r20, r1
 c1a:	51 05       	cpc	r21, r1
 c1c:	61 05       	cpc	r22, r1
 c1e:	71 05       	cpc	r23, r1
 c20:	11 f0       	breq	.+4      	; 0xc26 <_ZN8Terminal4putiEl+0x8c>
 c22:	18 2f       	mov	r17, r24
 c24:	e2 cf       	rjmp	.-60     	; 0xbea <_ZN8Terminal4putiEl+0x50>
 c26:	00 23       	and	r16, r16
 c28:	49 f0       	breq	.+18     	; 0xc3c <_ZN8Terminal4putiEl+0xa2>
 c2a:	e1 e0       	ldi	r30, 0x01	; 1
 c2c:	f0 e0       	ldi	r31, 0x00	; 0
 c2e:	ec 0f       	add	r30, r28
 c30:	fd 1f       	adc	r31, r29
 c32:	e8 0f       	add	r30, r24
 c34:	f1 1d       	adc	r31, r1
 c36:	9d e2       	ldi	r25, 0x2D	; 45
 c38:	90 83       	st	Z, r25
 c3a:	18 2f       	mov	r17, r24
 c3c:	61 e0       	ldi	r22, 0x01	; 1
 c3e:	70 e0       	ldi	r23, 0x00	; 0
 c40:	6c 0f       	add	r22, r28
 c42:	7d 1f       	adc	r23, r29
 c44:	61 0f       	add	r22, r17
 c46:	71 1d       	adc	r23, r1
 c48:	c7 01       	movw	r24, r14
 c4a:	0e 94 b9 05 	call	0xb72	; 0xb72 <_ZN8Terminal4putsEPc>
 c4e:	2c 96       	adiw	r28, 0x0c	; 12
 c50:	0f b6       	in	r0, 0x3f	; 63
 c52:	f8 94       	cli
 c54:	de bf       	out	0x3e, r29	; 62
 c56:	0f be       	out	0x3f, r0	; 63
 c58:	cd bf       	out	0x3d, r28	; 61
 c5a:	df 91       	pop	r29
 c5c:	cf 91       	pop	r28
 c5e:	1f 91       	pop	r17
 c60:	0f 91       	pop	r16
 c62:	ff 90       	pop	r15
 c64:	ef 90       	pop	r14
 c66:	df 90       	pop	r13
 c68:	cf 90       	pop	r12
 c6a:	bf 90       	pop	r11
 c6c:	af 90       	pop	r10
 c6e:	9f 90       	pop	r9
 c70:	8f 90       	pop	r8
 c72:	08 95       	ret

00000c74 <_GLOBAL__sub_I_terminal>:
 c74:	8e e7       	ldi	r24, 0x7E	; 126
 c76:	91 e0       	ldi	r25, 0x01	; 1
 c78:	0c 94 68 01 	jmp	0x2d0	; 0x2d0 <_ZN5USARTC1Ev>

00000c7c <_GLOBAL__sub_D_terminal>:
 c7c:	8e e7       	ldi	r24, 0x7E	; 126
 c7e:	91 e0       	ldi	r25, 0x01	; 1
 c80:	0c 94 78 01 	jmp	0x2f0	; 0x2f0 <_ZN5USARTD1Ev>

00000c84 <_ZN4Math5srandEm>:
 c84:	fc 01       	movw	r30, r24
 c86:	40 83       	st	Z, r20
 c88:	51 83       	std	Z+1, r21	; 0x01
 c8a:	62 83       	std	Z+2, r22	; 0x02
 c8c:	73 83       	std	Z+3, r23	; 0x03
 c8e:	08 95       	ret

00000c90 <_GLOBAL__sub_I_math>:
 c90:	ef e7       	ldi	r30, 0x7F	; 127
 c92:	f1 e0       	ldi	r31, 0x01	; 1
 c94:	81 e0       	ldi	r24, 0x01	; 1
 c96:	90 e0       	ldi	r25, 0x00	; 0
 c98:	a0 e0       	ldi	r26, 0x00	; 0
 c9a:	b0 e0       	ldi	r27, 0x00	; 0
 c9c:	80 83       	st	Z, r24
 c9e:	91 83       	std	Z+1, r25	; 0x01
 ca0:	a2 83       	std	Z+2, r26	; 0x02
 ca2:	b3 83       	std	Z+3, r27	; 0x03
 ca4:	82 e0       	ldi	r24, 0x02	; 2
 ca6:	90 e0       	ldi	r25, 0x00	; 0
 ca8:	a0 e0       	ldi	r26, 0x00	; 0
 caa:	b0 e0       	ldi	r27, 0x00	; 0
 cac:	84 83       	std	Z+4, r24	; 0x04
 cae:	95 83       	std	Z+5, r25	; 0x05
 cb0:	a6 83       	std	Z+6, r26	; 0x06
 cb2:	b7 83       	std	Z+7, r27	; 0x07
 cb4:	08 95       	ret

00000cb6 <__udivmodsi4>:
 cb6:	a1 e2       	ldi	r26, 0x21	; 33
 cb8:	1a 2e       	mov	r1, r26
 cba:	aa 1b       	sub	r26, r26
 cbc:	bb 1b       	sub	r27, r27
 cbe:	fd 01       	movw	r30, r26
 cc0:	0d c0       	rjmp	.+26     	; 0xcdc <__udivmodsi4_ep>

00000cc2 <__udivmodsi4_loop>:
 cc2:	aa 1f       	adc	r26, r26
 cc4:	bb 1f       	adc	r27, r27
 cc6:	ee 1f       	adc	r30, r30
 cc8:	ff 1f       	adc	r31, r31
 cca:	a2 17       	cp	r26, r18
 ccc:	b3 07       	cpc	r27, r19
 cce:	e4 07       	cpc	r30, r20
 cd0:	f5 07       	cpc	r31, r21
 cd2:	20 f0       	brcs	.+8      	; 0xcdc <__udivmodsi4_ep>
 cd4:	a2 1b       	sub	r26, r18
 cd6:	b3 0b       	sbc	r27, r19
 cd8:	e4 0b       	sbc	r30, r20
 cda:	f5 0b       	sbc	r31, r21

00000cdc <__udivmodsi4_ep>:
 cdc:	66 1f       	adc	r22, r22
 cde:	77 1f       	adc	r23, r23
 ce0:	88 1f       	adc	r24, r24
 ce2:	99 1f       	adc	r25, r25
 ce4:	1a 94       	dec	r1
 ce6:	69 f7       	brne	.-38     	; 0xcc2 <__udivmodsi4_loop>
 ce8:	60 95       	com	r22
 cea:	70 95       	com	r23
 cec:	80 95       	com	r24
 cee:	90 95       	com	r25
 cf0:	9b 01       	movw	r18, r22
 cf2:	ac 01       	movw	r20, r24
 cf4:	bd 01       	movw	r22, r26
 cf6:	cf 01       	movw	r24, r30
 cf8:	08 95       	ret

00000cfa <__divmodsi4>:
 cfa:	05 2e       	mov	r0, r21
 cfc:	97 fb       	bst	r25, 7
 cfe:	1e f4       	brtc	.+6      	; 0xd06 <__divmodsi4+0xc>
 d00:	00 94       	com	r0
 d02:	0e 94 94 06 	call	0xd28	; 0xd28 <__negsi2>
 d06:	57 fd       	sbrc	r21, 7
 d08:	07 d0       	rcall	.+14     	; 0xd18 <__divmodsi4_neg2>
 d0a:	0e 94 5b 06 	call	0xcb6	; 0xcb6 <__udivmodsi4>
 d0e:	07 fc       	sbrc	r0, 7
 d10:	03 d0       	rcall	.+6      	; 0xd18 <__divmodsi4_neg2>
 d12:	4e f4       	brtc	.+18     	; 0xd26 <__divmodsi4_exit>
 d14:	0c 94 94 06 	jmp	0xd28	; 0xd28 <__negsi2>

00000d18 <__divmodsi4_neg2>:
 d18:	50 95       	com	r21
 d1a:	40 95       	com	r20
 d1c:	30 95       	com	r19
 d1e:	21 95       	neg	r18
 d20:	3f 4f       	sbci	r19, 0xFF	; 255
 d22:	4f 4f       	sbci	r20, 0xFF	; 255
 d24:	5f 4f       	sbci	r21, 0xFF	; 255

00000d26 <__divmodsi4_exit>:
 d26:	08 95       	ret

00000d28 <__negsi2>:
 d28:	90 95       	com	r25
 d2a:	80 95       	com	r24
 d2c:	70 95       	com	r23
 d2e:	61 95       	neg	r22
 d30:	7f 4f       	sbci	r23, 0xFF	; 255
 d32:	8f 4f       	sbci	r24, 0xFF	; 255
 d34:	9f 4f       	sbci	r25, 0xFF	; 255
 d36:	08 95       	ret

00000d38 <__tablejump2__>:
 d38:	ee 0f       	add	r30, r30
 d3a:	ff 1f       	adc	r31, r31
 d3c:	05 90       	lpm	r0, Z+
 d3e:	f4 91       	lpm	r31, Z
 d40:	e0 2d       	mov	r30, r0
 d42:	09 94       	ijmp

00000d44 <__do_global_dtors>:
 d44:	10 e0       	ldi	r17, 0x00	; 0
 d46:	cc e3       	ldi	r28, 0x3C	; 60
 d48:	d0 e0       	ldi	r29, 0x00	; 0
 d4a:	04 c0       	rjmp	.+8      	; 0xd54 <__do_global_dtors+0x10>
 d4c:	fe 01       	movw	r30, r28
 d4e:	0e 94 9c 06 	call	0xd38	; 0xd38 <__tablejump2__>
 d52:	21 96       	adiw	r28, 0x01	; 1
 d54:	cd 33       	cpi	r28, 0x3D	; 61
 d56:	d1 07       	cpc	r29, r17
 d58:	c9 f7       	brne	.-14     	; 0xd4c <__do_global_dtors+0x8>
 d5a:	f8 94       	cli

00000d5c <__stop_program>:
 d5c:	ff cf       	rjmp	.-2      	; 0xd5c <__stop_program>
