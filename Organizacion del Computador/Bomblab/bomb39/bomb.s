
bomb:     formato del fichero elf64-x86-64


Desensamblado de la sección .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Desensamblado de la sección .plt:

0000000000001020 <.plt>:
    1020:	ff 35 ca 3e 00 00    	push   0x3eca(%rip)        # 4ef0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 3e 00 00    	jmp    *0x3ecc(%rip)        # 4ef8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <getenv@plt>:
    1030:	ff 25 ca 3e 00 00    	jmp    *0x3eca(%rip)        # 4f00 <getenv@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <.plt>

0000000000001040 <strcasecmp@plt>:
    1040:	ff 25 c2 3e 00 00    	jmp    *0x3ec2(%rip)        # 4f08 <strcasecmp@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <.plt>

0000000000001050 <__errno_location@plt>:
    1050:	ff 25 ba 3e 00 00    	jmp    *0x3eba(%rip)        # 4f10 <__errno_location@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <.plt>

0000000000001060 <strcpy@plt>:
    1060:	ff 25 b2 3e 00 00    	jmp    *0x3eb2(%rip)        # 4f18 <strcpy@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <.plt>

0000000000001070 <puts@plt>:
    1070:	ff 25 aa 3e 00 00    	jmp    *0x3eaa(%rip)        # 4f20 <puts@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <.plt>

0000000000001080 <write@plt>:
    1080:	ff 25 a2 3e 00 00    	jmp    *0x3ea2(%rip)        # 4f28 <write@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <.plt>

0000000000001090 <__stack_chk_fail@plt>:
    1090:	ff 25 9a 3e 00 00    	jmp    *0x3e9a(%rip)        # 4f30 <__stack_chk_fail@GLIBC_2.4>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <.plt>

00000000000010a0 <alarm@plt>:
    10a0:	ff 25 92 3e 00 00    	jmp    *0x3e92(%rip)        # 4f38 <alarm@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	push   $0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <.plt>

00000000000010b0 <close@plt>:
    10b0:	ff 25 8a 3e 00 00    	jmp    *0x3e8a(%rip)        # 4f40 <close@GLIBC_2.2.5>
    10b6:	68 08 00 00 00       	push   $0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <.plt>

00000000000010c0 <read@plt>:
    10c0:	ff 25 82 3e 00 00    	jmp    *0x3e82(%rip)        # 4f48 <read@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	push   $0x9
    10cb:	e9 50 ff ff ff       	jmp    1020 <.plt>

00000000000010d0 <fgets@plt>:
    10d0:	ff 25 7a 3e 00 00    	jmp    *0x3e7a(%rip)        # 4f50 <fgets@GLIBC_2.2.5>
    10d6:	68 0a 00 00 00       	push   $0xa
    10db:	e9 40 ff ff ff       	jmp    1020 <.plt>

00000000000010e0 <signal@plt>:
    10e0:	ff 25 72 3e 00 00    	jmp    *0x3e72(%rip)        # 4f58 <signal@GLIBC_2.2.5>
    10e6:	68 0b 00 00 00       	push   $0xb
    10eb:	e9 30 ff ff ff       	jmp    1020 <.plt>

00000000000010f0 <gethostbyname@plt>:
    10f0:	ff 25 6a 3e 00 00    	jmp    *0x3e6a(%rip)        # 4f60 <gethostbyname@GLIBC_2.2.5>
    10f6:	68 0c 00 00 00       	push   $0xc
    10fb:	e9 20 ff ff ff       	jmp    1020 <.plt>

0000000000001100 <__memmove_chk@plt>:
    1100:	ff 25 62 3e 00 00    	jmp    *0x3e62(%rip)        # 4f68 <__memmove_chk@GLIBC_2.3.4>
    1106:	68 0d 00 00 00       	push   $0xd
    110b:	e9 10 ff ff ff       	jmp    1020 <.plt>

0000000000001110 <strtol@plt>:
    1110:	ff 25 5a 3e 00 00    	jmp    *0x3e5a(%rip)        # 4f70 <strtol@GLIBC_2.2.5>
    1116:	68 0e 00 00 00       	push   $0xe
    111b:	e9 00 ff ff ff       	jmp    1020 <.plt>

0000000000001120 <fflush@plt>:
    1120:	ff 25 52 3e 00 00    	jmp    *0x3e52(%rip)        # 4f78 <fflush@GLIBC_2.2.5>
    1126:	68 0f 00 00 00       	push   $0xf
    112b:	e9 f0 fe ff ff       	jmp    1020 <.plt>

0000000000001130 <__isoc99_sscanf@plt>:
    1130:	ff 25 4a 3e 00 00    	jmp    *0x3e4a(%rip)        # 4f80 <__isoc99_sscanf@GLIBC_2.7>
    1136:	68 10 00 00 00       	push   $0x10
    113b:	e9 e0 fe ff ff       	jmp    1020 <.plt>

0000000000001140 <__printf_chk@plt>:
    1140:	ff 25 42 3e 00 00    	jmp    *0x3e42(%rip)        # 4f88 <__printf_chk@GLIBC_2.3.4>
    1146:	68 11 00 00 00       	push   $0x11
    114b:	e9 d0 fe ff ff       	jmp    1020 <.plt>

0000000000001150 <fopen@plt>:
    1150:	ff 25 3a 3e 00 00    	jmp    *0x3e3a(%rip)        # 4f90 <fopen@GLIBC_2.2.5>
    1156:	68 12 00 00 00       	push   $0x12
    115b:	e9 c0 fe ff ff       	jmp    1020 <.plt>

0000000000001160 <gethostname@plt>:
    1160:	ff 25 32 3e 00 00    	jmp    *0x3e32(%rip)        # 4f98 <gethostname@GLIBC_2.2.5>
    1166:	68 13 00 00 00       	push   $0x13
    116b:	e9 b0 fe ff ff       	jmp    1020 <.plt>

0000000000001170 <exit@plt>:
    1170:	ff 25 2a 3e 00 00    	jmp    *0x3e2a(%rip)        # 4fa0 <exit@GLIBC_2.2.5>
    1176:	68 14 00 00 00       	push   $0x14
    117b:	e9 a0 fe ff ff       	jmp    1020 <.plt>

0000000000001180 <connect@plt>:
    1180:	ff 25 22 3e 00 00    	jmp    *0x3e22(%rip)        # 4fa8 <connect@GLIBC_2.2.5>
    1186:	68 15 00 00 00       	push   $0x15
    118b:	e9 90 fe ff ff       	jmp    1020 <.plt>

0000000000001190 <__fprintf_chk@plt>:
    1190:	ff 25 1a 3e 00 00    	jmp    *0x3e1a(%rip)        # 4fb0 <__fprintf_chk@GLIBC_2.3.4>
    1196:	68 16 00 00 00       	push   $0x16
    119b:	e9 80 fe ff ff       	jmp    1020 <.plt>

00000000000011a0 <sleep@plt>:
    11a0:	ff 25 12 3e 00 00    	jmp    *0x3e12(%rip)        # 4fb8 <sleep@GLIBC_2.2.5>
    11a6:	68 17 00 00 00       	push   $0x17
    11ab:	e9 70 fe ff ff       	jmp    1020 <.plt>

00000000000011b0 <__ctype_b_loc@plt>:
    11b0:	ff 25 0a 3e 00 00    	jmp    *0x3e0a(%rip)        # 4fc0 <__ctype_b_loc@GLIBC_2.3>
    11b6:	68 18 00 00 00       	push   $0x18
    11bb:	e9 60 fe ff ff       	jmp    1020 <.plt>

00000000000011c0 <__sprintf_chk@plt>:
    11c0:	ff 25 02 3e 00 00    	jmp    *0x3e02(%rip)        # 4fc8 <__sprintf_chk@GLIBC_2.3.4>
    11c6:	68 19 00 00 00       	push   $0x19
    11cb:	e9 50 fe ff ff       	jmp    1020 <.plt>

00000000000011d0 <socket@plt>:
    11d0:	ff 25 fa 3d 00 00    	jmp    *0x3dfa(%rip)        # 4fd0 <socket@GLIBC_2.2.5>
    11d6:	68 1a 00 00 00       	push   $0x1a
    11db:	e9 40 fe ff ff       	jmp    1020 <.plt>

Desensamblado de la sección .plt.got:

00000000000011e0 <__cxa_finalize@plt>:
    11e0:	ff 25 12 3e 00 00    	jmp    *0x3e12(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    11e6:	66 90                	xchg   %ax,%ax

Desensamblado de la sección .text:

00000000000011f0 <_start>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	31 ed                	xor    %ebp,%ebp
    11f6:	49 89 d1             	mov    %rdx,%r9
    11f9:	5e                   	pop    %rsi
    11fa:	48 89 e2             	mov    %rsp,%rdx
    11fd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1201:	50                   	push   %rax
    1202:	54                   	push   %rsp
    1203:	4c 8d 05 e6 18 00 00 	lea    0x18e6(%rip),%r8        # 2af0 <__libc_csu_fini>
    120a:	48 8d 0d 6f 18 00 00 	lea    0x186f(%rip),%rcx        # 2a80 <__libc_csu_init>
    1211:	48 8d 3d e2 00 00 00 	lea    0xe2(%rip),%rdi        # 12fa <main>
    1218:	ff 15 c2 3d 00 00    	call   *0x3dc2(%rip)        # 4fe0 <__libc_start_main@GLIBC_2.2.5>
    121e:	f4                   	hlt    
    121f:	90                   	nop

0000000000001220 <deregister_tm_clones>:
    1220:	48 8d 3d 59 40 00 00 	lea    0x4059(%rip),%rdi        # 5280 <stdout@@GLIBC_2.2.5>
    1227:	55                   	push   %rbp
    1228:	48 8d 05 51 40 00 00 	lea    0x4051(%rip),%rax        # 5280 <stdout@@GLIBC_2.2.5>
    122f:	48 39 f8             	cmp    %rdi,%rax
    1232:	48 89 e5             	mov    %rsp,%rbp
    1235:	74 19                	je     1250 <deregister_tm_clones+0x30>
    1237:	48 8b 05 9a 3d 00 00 	mov    0x3d9a(%rip),%rax        # 4fd8 <_ITM_deregisterTMCloneTable>
    123e:	48 85 c0             	test   %rax,%rax
    1241:	74 0d                	je     1250 <deregister_tm_clones+0x30>
    1243:	5d                   	pop    %rbp
    1244:	ff e0                	jmp    *%rax
    1246:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    124d:	00 00 00 
    1250:	5d                   	pop    %rbp
    1251:	c3                   	ret    
    1252:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1259:	00 00 00 00 
    125d:	0f 1f 00             	nopl   (%rax)

0000000000001260 <register_tm_clones>:
    1260:	48 8d 3d 19 40 00 00 	lea    0x4019(%rip),%rdi        # 5280 <stdout@@GLIBC_2.2.5>
    1267:	48 8d 35 12 40 00 00 	lea    0x4012(%rip),%rsi        # 5280 <stdout@@GLIBC_2.2.5>
    126e:	55                   	push   %rbp
    126f:	48 29 fe             	sub    %rdi,%rsi
    1272:	48 89 e5             	mov    %rsp,%rbp
    1275:	48 c1 fe 03          	sar    $0x3,%rsi
    1279:	48 89 f0             	mov    %rsi,%rax
    127c:	48 c1 e8 3f          	shr    $0x3f,%rax
    1280:	48 01 c6             	add    %rax,%rsi
    1283:	48 d1 fe             	sar    %rsi
    1286:	74 18                	je     12a0 <register_tm_clones+0x40>
    1288:	48 8b 05 61 3d 00 00 	mov    0x3d61(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable>
    128f:	48 85 c0             	test   %rax,%rax
    1292:	74 0c                	je     12a0 <register_tm_clones+0x40>
    1294:	5d                   	pop    %rbp
    1295:	ff e0                	jmp    *%rax
    1297:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    129e:	00 00 
    12a0:	5d                   	pop    %rbp
    12a1:	c3                   	ret    
    12a2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    12a9:	00 00 00 00 
    12ad:	0f 1f 00             	nopl   (%rax)

00000000000012b0 <__do_global_dtors_aux>:
    12b0:	80 3d f1 3f 00 00 00 	cmpb   $0x0,0x3ff1(%rip)        # 52a8 <completed.7658>
    12b7:	75 2f                	jne    12e8 <__do_global_dtors_aux+0x38>
    12b9:	48 83 3d 37 3d 00 00 	cmpq   $0x0,0x3d37(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    12c0:	00 
    12c1:	55                   	push   %rbp
    12c2:	48 89 e5             	mov    %rsp,%rbp
    12c5:	74 0c                	je     12d3 <__do_global_dtors_aux+0x23>
    12c7:	48 8b 3d 3a 3d 00 00 	mov    0x3d3a(%rip),%rdi        # 5008 <__dso_handle>
    12ce:	e8 0d ff ff ff       	call   11e0 <__cxa_finalize@plt>
    12d3:	e8 48 ff ff ff       	call   1220 <deregister_tm_clones>
    12d8:	c6 05 c9 3f 00 00 01 	movb   $0x1,0x3fc9(%rip)        # 52a8 <completed.7658>
    12df:	5d                   	pop    %rbp
    12e0:	c3                   	ret    
    12e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    12e8:	f3 c3                	repz ret 
    12ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000012f0 <frame_dummy>:
    12f0:	55                   	push   %rbp
    12f1:	48 89 e5             	mov    %rsp,%rbp
    12f4:	5d                   	pop    %rbp
    12f5:	e9 66 ff ff ff       	jmp    1260 <register_tm_clones>

00000000000012fa <main>:
    12fa:	53                   	push   %rbx
    12fb:	83 ff 01             	cmp    $0x1,%edi
    12fe:	0f 84 f8 00 00 00    	je     13fc <main+0x102>
    1304:	48 89 f3             	mov    %rsi,%rbx
    1307:	83 ff 02             	cmp    $0x2,%edi
    130a:	0f 85 21 01 00 00    	jne    1431 <main+0x137>
    1310:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1314:	48 8d 35 c0 22 00 00 	lea    0x22c0(%rip),%rsi        # 35db <array.3342+0x3fb>
    131b:	e8 30 fe ff ff       	call   1150 <fopen@plt>
    1320:	48 89 05 b9 43 00 00 	mov    %rax,0x43b9(%rip)        # 56e0 <infile>
    1327:	48 85 c0             	test   %rax,%rax
    132a:	0f 84 df 00 00 00    	je     140f <main+0x115>
    1330:	e8 3d 06 00 00       	call   1972 <initialize_bomb>
    1335:	48 8d 3d 4c 1d 00 00 	lea    0x1d4c(%rip),%rdi        # 3088 <_IO_stdin_used+0x88>
    133c:	e8 2f fd ff ff       	call   1070 <puts@plt>
    1341:	48 8d 3d 80 1d 00 00 	lea    0x1d80(%rip),%rdi        # 30c8 <_IO_stdin_used+0xc8>
    1348:	e8 23 fd ff ff       	call   1070 <puts@plt>
    134d:	e8 49 09 00 00       	call   1c9b <read_line>
    1352:	48 89 c7             	mov    %rax,%rdi
    1355:	e8 fa 00 00 00       	call   1454 <phase_1>
    135a:	e8 80 0a 00 00       	call   1ddf <phase_defused>
    135f:	48 8d 3d 92 1d 00 00 	lea    0x1d92(%rip),%rdi        # 30f8 <_IO_stdin_used+0xf8>
    1366:	e8 05 fd ff ff       	call   1070 <puts@plt>
    136b:	e8 2b 09 00 00       	call   1c9b <read_line>
    1370:	48 89 c7             	mov    %rax,%rdi
    1373:	e8 fc 00 00 00       	call   1474 <phase_2>
    1378:	e8 62 0a 00 00       	call   1ddf <phase_defused>
    137d:	48 8d 3d b7 1c 00 00 	lea    0x1cb7(%rip),%rdi        # 303b <_IO_stdin_used+0x3b>
    1384:	e8 e7 fc ff ff       	call   1070 <puts@plt>
    1389:	e8 0d 09 00 00       	call   1c9b <read_line>
    138e:	48 89 c7             	mov    %rax,%rdi
    1391:	e8 4d 01 00 00       	call   14e3 <phase_3>
    1396:	e8 44 0a 00 00       	call   1ddf <phase_defused>
    139b:	48 8d 3d b7 1c 00 00 	lea    0x1cb7(%rip),%rdi        # 3059 <_IO_stdin_used+0x59>
    13a2:	e8 c9 fc ff ff       	call   1070 <puts@plt>
    13a7:	e8 ef 08 00 00       	call   1c9b <read_line>
    13ac:	48 89 c7             	mov    %rax,%rdi
    13af:	e8 44 02 00 00       	call   15f8 <phase_4>
    13b4:	e8 26 0a 00 00       	call   1ddf <phase_defused>
    13b9:	48 8d 3d 68 1d 00 00 	lea    0x1d68(%rip),%rdi        # 3128 <_IO_stdin_used+0x128>
    13c0:	e8 ab fc ff ff       	call   1070 <puts@plt>
    13c5:	e8 d1 08 00 00       	call   1c9b <read_line>
    13ca:	48 89 c7             	mov    %rax,%rdi
    13cd:	e8 9b 02 00 00       	call   166d <phase_5>
    13d2:	e8 08 0a 00 00       	call   1ddf <phase_defused>
    13d7:	48 8d 3d 8a 1c 00 00 	lea    0x1c8a(%rip),%rdi        # 3068 <_IO_stdin_used+0x68>
    13de:	e8 8d fc ff ff       	call   1070 <puts@plt>
    13e3:	e8 b3 08 00 00       	call   1c9b <read_line>
    13e8:	48 89 c7             	mov    %rax,%rdi
    13eb:	e8 c3 02 00 00       	call   16b3 <phase_6>
    13f0:	e8 ea 09 00 00       	call   1ddf <phase_defused>
    13f5:	b8 00 00 00 00       	mov    $0x0,%eax
    13fa:	5b                   	pop    %rbx
    13fb:	c3                   	ret    
    13fc:	48 8b 05 8d 3e 00 00 	mov    0x3e8d(%rip),%rax        # 5290 <stdin@@GLIBC_2.2.5>
    1403:	48 89 05 d6 42 00 00 	mov    %rax,0x42d6(%rip)        # 56e0 <infile>
    140a:	e9 21 ff ff ff       	jmp    1330 <main+0x36>
    140f:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1413:	48 8b 13             	mov    (%rbx),%rdx
    1416:	48 8d 35 e7 1b 00 00 	lea    0x1be7(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    141d:	bf 01 00 00 00       	mov    $0x1,%edi
    1422:	e8 19 fd ff ff       	call   1140 <__printf_chk@plt>
    1427:	bf 08 00 00 00       	mov    $0x8,%edi
    142c:	e8 3f fd ff ff       	call   1170 <exit@plt>
    1431:	48 8b 16             	mov    (%rsi),%rdx
    1434:	48 8d 35 e6 1b 00 00 	lea    0x1be6(%rip),%rsi        # 3021 <_IO_stdin_used+0x21>
    143b:	bf 01 00 00 00       	mov    $0x1,%edi
    1440:	b8 00 00 00 00       	mov    $0x0,%eax
    1445:	e8 f6 fc ff ff       	call   1140 <__printf_chk@plt>
    144a:	bf 08 00 00 00       	mov    $0x8,%edi
    144f:	e8 1c fd ff ff       	call   1170 <exit@plt>

0000000000001454 <phase_1>:
    1454:	48 83 ec 08          	sub    $0x8,%rsp
    1458:	48 8d 35 f1 1c 00 00 	lea    0x1cf1(%rip),%rsi        # 3150 <_IO_stdin_used+0x150>
    145f:	e8 a7 04 00 00       	call   190b <strings_not_equal>
    1464:	85 c0                	test   %eax,%eax
    1466:	75 05                	jne    146d <phase_1+0x19>
    1468:	48 83 c4 08          	add    $0x8,%rsp
    146c:	c3                   	ret    
    146d:	e8 ac 07 00 00       	call   1c1e <explode_bomb>
    1472:	eb f4                	jmp    1468 <phase_1+0x14>

0000000000001474 <phase_2>:
    1474:	55                   	push   %rbp
    1475:	53                   	push   %rbx
    1476:	48 83 ec 28          	sub    $0x28,%rsp
    147a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1481:	00 00 
    1483:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1488:	31 c0                	xor    %eax,%eax
    148a:	48 89 e6             	mov    %rsp,%rsi
    148d:	e8 c8 07 00 00       	call   1c5a <read_six_numbers>
    1492:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    1496:	75 07                	jne    149f <phase_2+0x2b>
    1498:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    149d:	74 05                	je     14a4 <phase_2+0x30>
    149f:	e8 7a 07 00 00       	call   1c1e <explode_bomb>
    14a4:	48 89 e3             	mov    %rsp,%rbx
    14a7:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    14ab:	eb 09                	jmp    14b6 <phase_2+0x42>
    14ad:	48 83 c3 04          	add    $0x4,%rbx
    14b1:	48 39 eb             	cmp    %rbp,%rbx
    14b4:	74 11                	je     14c7 <phase_2+0x53>
    14b6:	8b 43 04             	mov    0x4(%rbx),%eax
    14b9:	03 03                	add    (%rbx),%eax
    14bb:	39 43 08             	cmp    %eax,0x8(%rbx)
    14be:	74 ed                	je     14ad <phase_2+0x39>
    14c0:	e8 59 07 00 00       	call   1c1e <explode_bomb>
    14c5:	eb e6                	jmp    14ad <phase_2+0x39>
    14c7:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    14cc:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    14d3:	00 00 
    14d5:	75 07                	jne    14de <phase_2+0x6a>
    14d7:	48 83 c4 28          	add    $0x28,%rsp
    14db:	5b                   	pop    %rbx
    14dc:	5d                   	pop    %rbp
    14dd:	c3                   	ret    
    14de:	e8 ad fb ff ff       	call   1090 <__stack_chk_fail@plt>

00000000000014e3 <phase_3>:
    14e3:	48 83 ec 18          	sub    $0x18,%rsp
    14e7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    14ee:	00 00 
    14f0:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    14f5:	31 c0                	xor    %eax,%eax
    14f7:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    14fc:	48 89 e2             	mov    %rsp,%rdx
    14ff:	48 8d 35 67 1f 00 00 	lea    0x1f67(%rip),%rsi        # 346d <array.3342+0x28d>
    1506:	e8 25 fc ff ff       	call   1130 <__isoc99_sscanf@plt>
    150b:	83 f8 01             	cmp    $0x1,%eax
    150e:	7e 1d                	jle    152d <phase_3+0x4a>
    1510:	83 3c 24 07          	cmpl   $0x7,(%rsp)
    1514:	0f 87 99 00 00 00    	ja     15b3 <phase_3+0xd0>
    151a:	8b 04 24             	mov    (%rsp),%eax
    151d:	48 8d 15 9c 1c 00 00 	lea    0x1c9c(%rip),%rdx        # 31c0 <_IO_stdin_used+0x1c0>
    1524:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1528:	48 01 d0             	add    %rdx,%rax
    152b:	ff e0                	jmp    *%rax
    152d:	e8 ec 06 00 00       	call   1c1e <explode_bomb>
    1532:	eb dc                	jmp    1510 <phase_3+0x2d>
    1534:	b8 18 01 00 00       	mov    $0x118,%eax
    1539:	eb 05                	jmp    1540 <phase_3+0x5d>
    153b:	b8 00 00 00 00       	mov    $0x0,%eax
    1540:	2d 39 03 00 00       	sub    $0x339,%eax
    1545:	05 c9 01 00 00       	add    $0x1c9,%eax
    154a:	2d d4 01 00 00       	sub    $0x1d4,%eax
    154f:	05 d4 01 00 00       	add    $0x1d4,%eax
    1554:	2d d4 01 00 00       	sub    $0x1d4,%eax
    1559:	05 d4 01 00 00       	add    $0x1d4,%eax
    155e:	2d d4 01 00 00       	sub    $0x1d4,%eax
    1563:	83 3c 24 05          	cmpl   $0x5,(%rsp)
    1567:	7f 06                	jg     156f <phase_3+0x8c>
    1569:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    156d:	74 05                	je     1574 <phase_3+0x91>
    156f:	e8 aa 06 00 00       	call   1c1e <explode_bomb>
    1574:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1579:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1580:	00 00 
    1582:	75 3b                	jne    15bf <phase_3+0xdc>
    1584:	48 83 c4 18          	add    $0x18,%rsp
    1588:	c3                   	ret    
    1589:	b8 00 00 00 00       	mov    $0x0,%eax
    158e:	eb b5                	jmp    1545 <phase_3+0x62>
    1590:	b8 00 00 00 00       	mov    $0x0,%eax
    1595:	eb b3                	jmp    154a <phase_3+0x67>
    1597:	b8 00 00 00 00       	mov    $0x0,%eax
    159c:	eb b1                	jmp    154f <phase_3+0x6c>
    159e:	b8 00 00 00 00       	mov    $0x0,%eax
    15a3:	eb af                	jmp    1554 <phase_3+0x71>
    15a5:	b8 00 00 00 00       	mov    $0x0,%eax
    15aa:	eb ad                	jmp    1559 <phase_3+0x76>
    15ac:	b8 00 00 00 00       	mov    $0x0,%eax
    15b1:	eb ab                	jmp    155e <phase_3+0x7b>
    15b3:	e8 66 06 00 00       	call   1c1e <explode_bomb>
    15b8:	b8 00 00 00 00       	mov    $0x0,%eax
    15bd:	eb a4                	jmp    1563 <phase_3+0x80>
    15bf:	e8 cc fa ff ff       	call   1090 <__stack_chk_fail@plt>

00000000000015c4 <func4>:
    15c4:	53                   	push   %rbx
    15c5:	89 d0                	mov    %edx,%eax
    15c7:	29 f0                	sub    %esi,%eax
    15c9:	89 c3                	mov    %eax,%ebx
    15cb:	c1 eb 1f             	shr    $0x1f,%ebx
    15ce:	01 c3                	add    %eax,%ebx
    15d0:	d1 fb                	sar    %ebx
    15d2:	01 f3                	add    %esi,%ebx
    15d4:	39 fb                	cmp    %edi,%ebx
    15d6:	7f 08                	jg     15e0 <func4+0x1c>
    15d8:	39 fb                	cmp    %edi,%ebx
    15da:	7c 10                	jl     15ec <func4+0x28>
    15dc:	89 d8                	mov    %ebx,%eax
    15de:	5b                   	pop    %rbx
    15df:	c3                   	ret    
    15e0:	8d 53 ff             	lea    -0x1(%rbx),%edx
    15e3:	e8 dc ff ff ff       	call   15c4 <func4>
    15e8:	01 c3                	add    %eax,%ebx
    15ea:	eb f0                	jmp    15dc <func4+0x18>
    15ec:	8d 73 01             	lea    0x1(%rbx),%esi
    15ef:	e8 d0 ff ff ff       	call   15c4 <func4>
    15f4:	01 c3                	add    %eax,%ebx
    15f6:	eb e4                	jmp    15dc <func4+0x18>

00000000000015f8 <phase_4>:
    15f8:	48 83 ec 18          	sub    $0x18,%rsp
    15fc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1603:	00 00 
    1605:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    160a:	31 c0                	xor    %eax,%eax
    160c:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1611:	48 89 e2             	mov    %rsp,%rdx
    1614:	48 8d 35 52 1e 00 00 	lea    0x1e52(%rip),%rsi        # 346d <array.3342+0x28d>
    161b:	e8 10 fb ff ff       	call   1130 <__isoc99_sscanf@plt>
    1620:	83 f8 02             	cmp    $0x2,%eax
    1623:	75 06                	jne    162b <phase_4+0x33>
    1625:	83 3c 24 0e          	cmpl   $0xe,(%rsp)
    1629:	76 05                	jbe    1630 <phase_4+0x38>
    162b:	e8 ee 05 00 00       	call   1c1e <explode_bomb>
    1630:	ba 0e 00 00 00       	mov    $0xe,%edx
    1635:	be 00 00 00 00       	mov    $0x0,%esi
    163a:	8b 3c 24             	mov    (%rsp),%edi
    163d:	e8 82 ff ff ff       	call   15c4 <func4>
    1642:	83 f8 0b             	cmp    $0xb,%eax
    1645:	75 07                	jne    164e <phase_4+0x56>
    1647:	83 7c 24 04 0b       	cmpl   $0xb,0x4(%rsp)
    164c:	74 05                	je     1653 <phase_4+0x5b>
    164e:	e8 cb 05 00 00       	call   1c1e <explode_bomb>
    1653:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1658:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    165f:	00 00 
    1661:	75 05                	jne    1668 <phase_4+0x70>
    1663:	48 83 c4 18          	add    $0x18,%rsp
    1667:	c3                   	ret    
    1668:	e8 23 fa ff ff       	call   1090 <__stack_chk_fail@plt>

000000000000166d <phase_5>:
    166d:	53                   	push   %rbx
    166e:	48 89 fb             	mov    %rdi,%rbx
    1671:	e8 78 02 00 00       	call   18ee <string_length>
    1676:	83 f8 06             	cmp    $0x6,%eax
    1679:	75 31                	jne    16ac <phase_5+0x3f>
    167b:	48 89 d8             	mov    %rbx,%rax
    167e:	48 8d 7b 06          	lea    0x6(%rbx),%rdi
    1682:	b9 00 00 00 00       	mov    $0x0,%ecx
    1687:	48 8d 35 52 1b 00 00 	lea    0x1b52(%rip),%rsi        # 31e0 <array.3342>
    168e:	0f b6 10             	movzbl (%rax),%edx
    1691:	83 e2 0f             	and    $0xf,%edx
    1694:	03 0c 96             	add    (%rsi,%rdx,4),%ecx
    1697:	48 83 c0 01          	add    $0x1,%rax
    169b:	48 39 f8             	cmp    %rdi,%rax
    169e:	75 ee                	jne    168e <phase_5+0x21>
    16a0:	83 f9 33             	cmp    $0x33,%ecx
    16a3:	74 05                	je     16aa <phase_5+0x3d>
    16a5:	e8 74 05 00 00       	call   1c1e <explode_bomb>
    16aa:	5b                   	pop    %rbx
    16ab:	c3                   	ret    
    16ac:	e8 6d 05 00 00       	call   1c1e <explode_bomb>
    16b1:	eb c8                	jmp    167b <phase_5+0xe>

00000000000016b3 <phase_6>:
    16b3:	41 55                	push   %r13
    16b5:	41 54                	push   %r12
    16b7:	55                   	push   %rbp
    16b8:	53                   	push   %rbx
    16b9:	48 83 ec 68          	sub    $0x68,%rsp
    16bd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    16c4:	00 00 
    16c6:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    16cb:	31 c0                	xor    %eax,%eax
    16cd:	49 89 e4             	mov    %rsp,%r12
    16d0:	4c 89 e6             	mov    %r12,%rsi
    16d3:	e8 82 05 00 00       	call   1c5a <read_six_numbers>
    16d8:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    16de:	eb 25                	jmp    1705 <phase_6+0x52>
    16e0:	e8 39 05 00 00       	call   1c1e <explode_bomb>
    16e5:	eb 2d                	jmp    1714 <phase_6+0x61>
    16e7:	83 c3 01             	add    $0x1,%ebx
    16ea:	83 fb 05             	cmp    $0x5,%ebx
    16ed:	7f 12                	jg     1701 <phase_6+0x4e>
    16ef:	48 63 c3             	movslq %ebx,%rax
    16f2:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    16f5:	39 45 00             	cmp    %eax,0x0(%rbp)
    16f8:	75 ed                	jne    16e7 <phase_6+0x34>
    16fa:	e8 1f 05 00 00       	call   1c1e <explode_bomb>
    16ff:	eb e6                	jmp    16e7 <phase_6+0x34>
    1701:	49 83 c4 04          	add    $0x4,%r12
    1705:	4c 89 e5             	mov    %r12,%rbp
    1708:	41 8b 04 24          	mov    (%r12),%eax
    170c:	83 e8 01             	sub    $0x1,%eax
    170f:	83 f8 05             	cmp    $0x5,%eax
    1712:	77 cc                	ja     16e0 <phase_6+0x2d>
    1714:	41 83 c5 01          	add    $0x1,%r13d
    1718:	41 83 fd 06          	cmp    $0x6,%r13d
    171c:	74 35                	je     1753 <phase_6+0xa0>
    171e:	44 89 eb             	mov    %r13d,%ebx
    1721:	eb cc                	jmp    16ef <phase_6+0x3c>
    1723:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1727:	83 c0 01             	add    $0x1,%eax
    172a:	39 c8                	cmp    %ecx,%eax
    172c:	75 f5                	jne    1723 <phase_6+0x70>
    172e:	48 89 54 f4 20       	mov    %rdx,0x20(%rsp,%rsi,8)
    1733:	48 83 c6 01          	add    $0x1,%rsi
    1737:	48 83 fe 06          	cmp    $0x6,%rsi
    173b:	74 1d                	je     175a <phase_6+0xa7>
    173d:	8b 0c b4             	mov    (%rsp,%rsi,4),%ecx
    1740:	b8 01 00 00 00       	mov    $0x1,%eax
    1745:	48 8d 15 e4 3a 00 00 	lea    0x3ae4(%rip),%rdx        # 5230 <node1>
    174c:	83 f9 01             	cmp    $0x1,%ecx
    174f:	7f d2                	jg     1723 <phase_6+0x70>
    1751:	eb db                	jmp    172e <phase_6+0x7b>
    1753:	be 00 00 00 00       	mov    $0x0,%esi
    1758:	eb e3                	jmp    173d <phase_6+0x8a>
    175a:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    175f:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    1764:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1768:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    176d:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1771:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    1776:	48 89 42 08          	mov    %rax,0x8(%rdx)
    177a:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    177f:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1783:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    1788:	48 89 42 08          	mov    %rax,0x8(%rdx)
    178c:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    1793:	00 
    1794:	bd 05 00 00 00       	mov    $0x5,%ebp
    1799:	eb 09                	jmp    17a4 <phase_6+0xf1>
    179b:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    179f:	83 ed 01             	sub    $0x1,%ebp
    17a2:	74 11                	je     17b5 <phase_6+0x102>
    17a4:	48 8b 43 08          	mov    0x8(%rbx),%rax
    17a8:	8b 00                	mov    (%rax),%eax
    17aa:	39 03                	cmp    %eax,(%rbx)
    17ac:	7d ed                	jge    179b <phase_6+0xe8>
    17ae:	e8 6b 04 00 00       	call   1c1e <explode_bomb>
    17b3:	eb e6                	jmp    179b <phase_6+0xe8>
    17b5:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    17ba:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    17c1:	00 00 
    17c3:	75 0b                	jne    17d0 <phase_6+0x11d>
    17c5:	48 83 c4 68          	add    $0x68,%rsp
    17c9:	5b                   	pop    %rbx
    17ca:	5d                   	pop    %rbp
    17cb:	41 5c                	pop    %r12
    17cd:	41 5d                	pop    %r13
    17cf:	c3                   	ret    
    17d0:	e8 bb f8 ff ff       	call   1090 <__stack_chk_fail@plt>

00000000000017d5 <fun7>:
    17d5:	48 85 ff             	test   %rdi,%rdi
    17d8:	74 34                	je     180e <fun7+0x39>
    17da:	48 83 ec 08          	sub    $0x8,%rsp
    17de:	8b 17                	mov    (%rdi),%edx
    17e0:	39 f2                	cmp    %esi,%edx
    17e2:	7f 0e                	jg     17f2 <fun7+0x1d>
    17e4:	b8 00 00 00 00       	mov    $0x0,%eax
    17e9:	39 f2                	cmp    %esi,%edx
    17eb:	75 12                	jne    17ff <fun7+0x2a>
    17ed:	48 83 c4 08          	add    $0x8,%rsp
    17f1:	c3                   	ret    
    17f2:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    17f6:	e8 da ff ff ff       	call   17d5 <fun7>
    17fb:	01 c0                	add    %eax,%eax
    17fd:	eb ee                	jmp    17ed <fun7+0x18>
    17ff:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    1803:	e8 cd ff ff ff       	call   17d5 <fun7>
    1808:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    180c:	eb df                	jmp    17ed <fun7+0x18>
    180e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1813:	c3                   	ret    

0000000000001814 <secret_phase>:
    1814:	53                   	push   %rbx
    1815:	e8 81 04 00 00       	call   1c9b <read_line>
    181a:	ba 0a 00 00 00       	mov    $0xa,%edx
    181f:	be 00 00 00 00       	mov    $0x0,%esi
    1824:	48 89 c7             	mov    %rax,%rdi
    1827:	e8 e4 f8 ff ff       	call   1110 <strtol@plt>
    182c:	48 89 c3             	mov    %rax,%rbx
    182f:	8d 40 ff             	lea    -0x1(%rax),%eax
    1832:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    1837:	77 2b                	ja     1864 <secret_phase+0x50>
    1839:	89 de                	mov    %ebx,%esi
    183b:	48 8d 3d 0e 39 00 00 	lea    0x390e(%rip),%rdi        # 5150 <n1>
    1842:	e8 8e ff ff ff       	call   17d5 <fun7>
    1847:	83 f8 04             	cmp    $0x4,%eax
    184a:	74 05                	je     1851 <secret_phase+0x3d>
    184c:	e8 cd 03 00 00       	call   1c1e <explode_bomb>
    1851:	48 8d 3d 28 19 00 00 	lea    0x1928(%rip),%rdi        # 3180 <_IO_stdin_used+0x180>
    1858:	e8 13 f8 ff ff       	call   1070 <puts@plt>
    185d:	e8 7d 05 00 00       	call   1ddf <phase_defused>
    1862:	5b                   	pop    %rbx
    1863:	c3                   	ret    
    1864:	e8 b5 03 00 00       	call   1c1e <explode_bomb>
    1869:	eb ce                	jmp    1839 <secret_phase+0x25>

000000000000186b <sig_handler>:
    186b:	48 83 ec 08          	sub    $0x8,%rsp
    186f:	48 8d 3d aa 19 00 00 	lea    0x19aa(%rip),%rdi        # 3220 <array.3342+0x40>
    1876:	e8 f5 f7 ff ff       	call   1070 <puts@plt>
    187b:	bf 03 00 00 00       	mov    $0x3,%edi
    1880:	e8 1b f9 ff ff       	call   11a0 <sleep@plt>
    1885:	48 8d 35 5d 1b 00 00 	lea    0x1b5d(%rip),%rsi        # 33e9 <array.3342+0x209>
    188c:	bf 01 00 00 00       	mov    $0x1,%edi
    1891:	b8 00 00 00 00       	mov    $0x0,%eax
    1896:	e8 a5 f8 ff ff       	call   1140 <__printf_chk@plt>
    189b:	48 8b 3d de 39 00 00 	mov    0x39de(%rip),%rdi        # 5280 <stdout@@GLIBC_2.2.5>
    18a2:	e8 79 f8 ff ff       	call   1120 <fflush@plt>
    18a7:	bf 01 00 00 00       	mov    $0x1,%edi
    18ac:	e8 ef f8 ff ff       	call   11a0 <sleep@plt>
    18b1:	48 8d 3d 39 1b 00 00 	lea    0x1b39(%rip),%rdi        # 33f1 <array.3342+0x211>
    18b8:	e8 b3 f7 ff ff       	call   1070 <puts@plt>
    18bd:	bf 10 00 00 00       	mov    $0x10,%edi
    18c2:	e8 a9 f8 ff ff       	call   1170 <exit@plt>

00000000000018c7 <invalid_phase>:
    18c7:	48 83 ec 08          	sub    $0x8,%rsp
    18cb:	48 89 fa             	mov    %rdi,%rdx
    18ce:	48 8d 35 24 1b 00 00 	lea    0x1b24(%rip),%rsi        # 33f9 <array.3342+0x219>
    18d5:	bf 01 00 00 00       	mov    $0x1,%edi
    18da:	b8 00 00 00 00       	mov    $0x0,%eax
    18df:	e8 5c f8 ff ff       	call   1140 <__printf_chk@plt>
    18e4:	bf 08 00 00 00       	mov    $0x8,%edi
    18e9:	e8 82 f8 ff ff       	call   1170 <exit@plt>

00000000000018ee <string_length>:
    18ee:	80 3f 00             	cmpb   $0x0,(%rdi)
    18f1:	74 12                	je     1905 <string_length+0x17>
    18f3:	48 89 fa             	mov    %rdi,%rdx
    18f6:	48 83 c2 01          	add    $0x1,%rdx
    18fa:	89 d0                	mov    %edx,%eax
    18fc:	29 f8                	sub    %edi,%eax
    18fe:	80 3a 00             	cmpb   $0x0,(%rdx)
    1901:	75 f3                	jne    18f6 <string_length+0x8>
    1903:	f3 c3                	repz ret 
    1905:	b8 00 00 00 00       	mov    $0x0,%eax
    190a:	c3                   	ret    

000000000000190b <strings_not_equal>:
    190b:	41 54                	push   %r12
    190d:	55                   	push   %rbp
    190e:	53                   	push   %rbx
    190f:	48 89 fb             	mov    %rdi,%rbx
    1912:	48 89 f5             	mov    %rsi,%rbp
    1915:	e8 d4 ff ff ff       	call   18ee <string_length>
    191a:	41 89 c4             	mov    %eax,%r12d
    191d:	48 89 ef             	mov    %rbp,%rdi
    1920:	e8 c9 ff ff ff       	call   18ee <string_length>
    1925:	ba 01 00 00 00       	mov    $0x1,%edx
    192a:	41 39 c4             	cmp    %eax,%r12d
    192d:	74 07                	je     1936 <strings_not_equal+0x2b>
    192f:	89 d0                	mov    %edx,%eax
    1931:	5b                   	pop    %rbx
    1932:	5d                   	pop    %rbp
    1933:	41 5c                	pop    %r12
    1935:	c3                   	ret    
    1936:	0f b6 03             	movzbl (%rbx),%eax
    1939:	84 c0                	test   %al,%al
    193b:	74 27                	je     1964 <strings_not_equal+0x59>
    193d:	3a 45 00             	cmp    0x0(%rbp),%al
    1940:	75 29                	jne    196b <strings_not_equal+0x60>
    1942:	48 83 c3 01          	add    $0x1,%rbx
    1946:	48 83 c5 01          	add    $0x1,%rbp
    194a:	0f b6 03             	movzbl (%rbx),%eax
    194d:	84 c0                	test   %al,%al
    194f:	74 0c                	je     195d <strings_not_equal+0x52>
    1951:	38 45 00             	cmp    %al,0x0(%rbp)
    1954:	74 ec                	je     1942 <strings_not_equal+0x37>
    1956:	ba 01 00 00 00       	mov    $0x1,%edx
    195b:	eb d2                	jmp    192f <strings_not_equal+0x24>
    195d:	ba 00 00 00 00       	mov    $0x0,%edx
    1962:	eb cb                	jmp    192f <strings_not_equal+0x24>
    1964:	ba 00 00 00 00       	mov    $0x0,%edx
    1969:	eb c4                	jmp    192f <strings_not_equal+0x24>
    196b:	ba 01 00 00 00       	mov    $0x1,%edx
    1970:	eb bd                	jmp    192f <strings_not_equal+0x24>

0000000000001972 <initialize_bomb>:
    1972:	41 54                	push   %r12
    1974:	55                   	push   %rbp
    1975:	53                   	push   %rbx
    1976:	48 81 ec 50 20 00 00 	sub    $0x2050,%rsp
    197d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1984:	00 00 
    1986:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    198d:	00 
    198e:	31 c0                	xor    %eax,%eax
    1990:	48 8d 35 d4 fe ff ff 	lea    -0x12c(%rip),%rsi        # 186b <sig_handler>
    1997:	bf 02 00 00 00       	mov    $0x2,%edi
    199c:	e8 3f f7 ff ff       	call   10e0 <signal@plt>
    19a1:	48 89 e7             	mov    %rsp,%rdi
    19a4:	be 40 00 00 00       	mov    $0x40,%esi
    19a9:	e8 b2 f7 ff ff       	call   1160 <gethostname@plt>
    19ae:	85 c0                	test   %eax,%eax
    19b0:	75 67                	jne    1a19 <initialize_bomb+0xa7>
    19b2:	48 8b 3d 27 39 00 00 	mov    0x3927(%rip),%rdi        # 52e0 <host_table>
    19b9:	bb 01 00 00 00       	mov    $0x1,%ebx
    19be:	48 89 e5             	mov    %rsp,%rbp
    19c1:	4c 8d 25 10 39 00 00 	lea    0x3910(%rip),%r12        # 52d8 <num_input_strings+0x18>
    19c8:	48 85 ff             	test   %rdi,%rdi
    19cb:	74 1f                	je     19ec <initialize_bomb+0x7a>
    19cd:	48 89 ee             	mov    %rbp,%rsi
    19d0:	e8 6b f6 ff ff       	call   1040 <strcasecmp@plt>
    19d5:	85 c0                	test   %eax,%eax
    19d7:	74 13                	je     19ec <initialize_bomb+0x7a>
    19d9:	89 d8                	mov    %ebx,%eax
    19db:	48 83 c3 01          	add    $0x1,%rbx
    19df:	49 8b 3c dc          	mov    (%r12,%rbx,8),%rdi
    19e3:	48 85 ff             	test   %rdi,%rdi
    19e6:	75 e5                	jne    19cd <initialize_bomb+0x5b>
    19e8:	85 c0                	test   %eax,%eax
    19ea:	7f 43                	jg     1a2f <initialize_bomb+0xbd>
    19ec:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    19f1:	e8 05 0e 00 00       	call   27fb <init_driver>
    19f6:	85 c0                	test   %eax,%eax
    19f8:	78 4b                	js     1a45 <initialize_bomb+0xd3>
    19fa:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
    1a01:	00 
    1a02:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1a09:	00 00 
    1a0b:	75 5d                	jne    1a6a <initialize_bomb+0xf8>
    1a0d:	48 81 c4 50 20 00 00 	add    $0x2050,%rsp
    1a14:	5b                   	pop    %rbx
    1a15:	5d                   	pop    %rbp
    1a16:	41 5c                	pop    %r12
    1a18:	c3                   	ret    
    1a19:	48 8d 3d 38 18 00 00 	lea    0x1838(%rip),%rdi        # 3258 <array.3342+0x78>
    1a20:	e8 4b f6 ff ff       	call   1070 <puts@plt>
    1a25:	bf 08 00 00 00       	mov    $0x8,%edi
    1a2a:	e8 41 f7 ff ff       	call   1170 <exit@plt>
    1a2f:	48 8d 3d 5a 18 00 00 	lea    0x185a(%rip),%rdi        # 3290 <array.3342+0xb0>
    1a36:	e8 35 f6 ff ff       	call   1070 <puts@plt>
    1a3b:	bf 08 00 00 00       	mov    $0x8,%edi
    1a40:	e8 2b f7 ff ff       	call   1170 <exit@plt>
    1a45:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    1a4a:	48 8d 35 b9 19 00 00 	lea    0x19b9(%rip),%rsi        # 340a <array.3342+0x22a>
    1a51:	bf 01 00 00 00       	mov    $0x1,%edi
    1a56:	b8 00 00 00 00       	mov    $0x0,%eax
    1a5b:	e8 e0 f6 ff ff       	call   1140 <__printf_chk@plt>
    1a60:	bf 08 00 00 00       	mov    $0x8,%edi
    1a65:	e8 06 f7 ff ff       	call   1170 <exit@plt>
    1a6a:	e8 21 f6 ff ff       	call   1090 <__stack_chk_fail@plt>

0000000000001a6f <initialize_bomb_solve>:
    1a6f:	f3 c3                	repz ret 

0000000000001a71 <blank_line>:
    1a71:	55                   	push   %rbp
    1a72:	53                   	push   %rbx
    1a73:	48 83 ec 08          	sub    $0x8,%rsp
    1a77:	48 89 fd             	mov    %rdi,%rbp
    1a7a:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1a7e:	84 db                	test   %bl,%bl
    1a80:	74 1e                	je     1aa0 <blank_line+0x2f>
    1a82:	e8 29 f7 ff ff       	call   11b0 <__ctype_b_loc@plt>
    1a87:	48 83 c5 01          	add    $0x1,%rbp
    1a8b:	48 0f be db          	movsbq %bl,%rbx
    1a8f:	48 8b 00             	mov    (%rax),%rax
    1a92:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1a97:	75 e1                	jne    1a7a <blank_line+0x9>
    1a99:	b8 00 00 00 00       	mov    $0x0,%eax
    1a9e:	eb 05                	jmp    1aa5 <blank_line+0x34>
    1aa0:	b8 01 00 00 00       	mov    $0x1,%eax
    1aa5:	48 83 c4 08          	add    $0x8,%rsp
    1aa9:	5b                   	pop    %rbx
    1aaa:	5d                   	pop    %rbp
    1aab:	c3                   	ret    

0000000000001aac <skip>:
    1aac:	55                   	push   %rbp
    1aad:	53                   	push   %rbx
    1aae:	48 83 ec 08          	sub    $0x8,%rsp
    1ab2:	48 8d 2d 47 3c 00 00 	lea    0x3c47(%rip),%rbp        # 5700 <input_strings>
    1ab9:	48 63 05 00 38 00 00 	movslq 0x3800(%rip),%rax        # 52c0 <num_input_strings>
    1ac0:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    1ac4:	48 c1 e7 04          	shl    $0x4,%rdi
    1ac8:	48 01 ef             	add    %rbp,%rdi
    1acb:	48 8b 15 0e 3c 00 00 	mov    0x3c0e(%rip),%rdx        # 56e0 <infile>
    1ad2:	be 50 00 00 00       	mov    $0x50,%esi
    1ad7:	e8 f4 f5 ff ff       	call   10d0 <fgets@plt>
    1adc:	48 89 c3             	mov    %rax,%rbx
    1adf:	48 85 c0             	test   %rax,%rax
    1ae2:	74 0c                	je     1af0 <skip+0x44>
    1ae4:	48 89 c7             	mov    %rax,%rdi
    1ae7:	e8 85 ff ff ff       	call   1a71 <blank_line>
    1aec:	85 c0                	test   %eax,%eax
    1aee:	75 c9                	jne    1ab9 <skip+0xd>
    1af0:	48 89 d8             	mov    %rbx,%rax
    1af3:	48 83 c4 08          	add    $0x8,%rsp
    1af7:	5b                   	pop    %rbx
    1af8:	5d                   	pop    %rbp
    1af9:	c3                   	ret    

0000000000001afa <send_msg>:
    1afa:	53                   	push   %rbx
    1afb:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
    1b02:	41 89 f8             	mov    %edi,%r8d
    1b05:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1b0c:	00 00 
    1b0e:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1b15:	00 
    1b16:	31 c0                	xor    %eax,%eax
    1b18:	8b 35 a2 37 00 00    	mov    0x37a2(%rip),%esi        # 52c0 <num_input_strings>
    1b1e:	8d 46 ff             	lea    -0x1(%rsi),%eax
    1b21:	48 98                	cltq   
    1b23:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    1b27:	48 c1 e2 04          	shl    $0x4,%rdx
    1b2b:	48 8d 05 ce 3b 00 00 	lea    0x3bce(%rip),%rax        # 5700 <input_strings>
    1b32:	48 01 c2             	add    %rax,%rdx
    1b35:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1b3c:	b8 00 00 00 00       	mov    $0x0,%eax
    1b41:	48 89 d7             	mov    %rdx,%rdi
    1b44:	f2 ae                	repnz scas %es:(%rdi),%al
    1b46:	48 89 c8             	mov    %rcx,%rax
    1b49:	48 f7 d0             	not    %rax
    1b4c:	48 83 c0 63          	add    $0x63,%rax
    1b50:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    1b56:	0f 87 86 00 00 00    	ja     1be2 <send_msg+0xe8>
    1b5c:	45 85 c0             	test   %r8d,%r8d
    1b5f:	4c 8d 0d be 18 00 00 	lea    0x18be(%rip),%r9        # 3424 <array.3342+0x244>
    1b66:	48 8d 05 bf 18 00 00 	lea    0x18bf(%rip),%rax        # 342c <array.3342+0x24c>
    1b6d:	4c 0f 44 c8          	cmove  %rax,%r9
    1b71:	48 89 e3             	mov    %rsp,%rbx
    1b74:	52                   	push   %rdx
    1b75:	56                   	push   %rsi
    1b76:	44 8b 05 cb 35 00 00 	mov    0x35cb(%rip),%r8d        # 5148 <bomb_id>
    1b7d:	48 8d 0d b1 18 00 00 	lea    0x18b1(%rip),%rcx        # 3435 <array.3342+0x255>
    1b84:	ba 00 20 00 00       	mov    $0x2000,%edx
    1b89:	be 01 00 00 00       	mov    $0x1,%esi
    1b8e:	48 89 df             	mov    %rbx,%rdi
    1b91:	b8 00 00 00 00       	mov    $0x0,%eax
    1b96:	e8 25 f6 ff ff       	call   11c0 <__sprintf_chk@plt>
    1b9b:	4c 8d 84 24 10 20 00 	lea    0x2010(%rsp),%r8
    1ba2:	00 
    1ba3:	b9 00 00 00 00       	mov    $0x0,%ecx
    1ba8:	48 89 da             	mov    %rbx,%rdx
    1bab:	48 8d 35 6e 35 00 00 	lea    0x356e(%rip),%rsi        # 5120 <user_password>
    1bb2:	48 8d 3d 7f 35 00 00 	lea    0x357f(%rip),%rdi        # 5138 <userid>
    1bb9:	e8 46 0e 00 00       	call   2a04 <driver_post>
    1bbe:	48 83 c4 10          	add    $0x10,%rsp
    1bc2:	85 c0                	test   %eax,%eax
    1bc4:	78 3c                	js     1c02 <send_msg+0x108>
    1bc6:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1bcd:	00 
    1bce:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1bd5:	00 00 
    1bd7:	75 40                	jne    1c19 <send_msg+0x11f>
    1bd9:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
    1be0:	5b                   	pop    %rbx
    1be1:	c3                   	ret    
    1be2:	48 8d 35 df 16 00 00 	lea    0x16df(%rip),%rsi        # 32c8 <array.3342+0xe8>
    1be9:	bf 01 00 00 00       	mov    $0x1,%edi
    1bee:	b8 00 00 00 00       	mov    $0x0,%eax
    1bf3:	e8 48 f5 ff ff       	call   1140 <__printf_chk@plt>
    1bf8:	bf 08 00 00 00       	mov    $0x8,%edi
    1bfd:	e8 6e f5 ff ff       	call   1170 <exit@plt>
    1c02:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    1c09:	00 
    1c0a:	e8 61 f4 ff ff       	call   1070 <puts@plt>
    1c0f:	bf 00 00 00 00       	mov    $0x0,%edi
    1c14:	e8 57 f5 ff ff       	call   1170 <exit@plt>
    1c19:	e8 72 f4 ff ff       	call   1090 <__stack_chk_fail@plt>

0000000000001c1e <explode_bomb>:
    1c1e:	48 83 ec 08          	sub    $0x8,%rsp
    1c22:	48 8d 3d 18 18 00 00 	lea    0x1818(%rip),%rdi        # 3441 <array.3342+0x261>
    1c29:	e8 42 f4 ff ff       	call   1070 <puts@plt>
    1c2e:	48 8d 3d 15 18 00 00 	lea    0x1815(%rip),%rdi        # 344a <array.3342+0x26a>
    1c35:	e8 36 f4 ff ff       	call   1070 <puts@plt>
    1c3a:	bf 00 00 00 00       	mov    $0x0,%edi
    1c3f:	e8 b6 fe ff ff       	call   1afa <send_msg>
    1c44:	48 8d 3d a5 16 00 00 	lea    0x16a5(%rip),%rdi        # 32f0 <array.3342+0x110>
    1c4b:	e8 20 f4 ff ff       	call   1070 <puts@plt>
    1c50:	bf 08 00 00 00       	mov    $0x8,%edi
    1c55:	e8 16 f5 ff ff       	call   1170 <exit@plt>

0000000000001c5a <read_six_numbers>:
    1c5a:	48 83 ec 08          	sub    $0x8,%rsp
    1c5e:	48 89 f2             	mov    %rsi,%rdx
    1c61:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1c65:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1c69:	50                   	push   %rax
    1c6a:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1c6e:	50                   	push   %rax
    1c6f:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1c73:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1c77:	48 8d 35 e3 17 00 00 	lea    0x17e3(%rip),%rsi        # 3461 <array.3342+0x281>
    1c7e:	b8 00 00 00 00       	mov    $0x0,%eax
    1c83:	e8 a8 f4 ff ff       	call   1130 <__isoc99_sscanf@plt>
    1c88:	48 83 c4 10          	add    $0x10,%rsp
    1c8c:	83 f8 05             	cmp    $0x5,%eax
    1c8f:	7e 05                	jle    1c96 <read_six_numbers+0x3c>
    1c91:	48 83 c4 08          	add    $0x8,%rsp
    1c95:	c3                   	ret    
    1c96:	e8 83 ff ff ff       	call   1c1e <explode_bomb>

0000000000001c9b <read_line>:
    1c9b:	48 83 ec 08          	sub    $0x8,%rsp
    1c9f:	b8 00 00 00 00       	mov    $0x0,%eax
    1ca4:	e8 03 fe ff ff       	call   1aac <skip>
    1ca9:	48 85 c0             	test   %rax,%rax
    1cac:	74 6f                	je     1d1d <read_line+0x82>
    1cae:	8b 35 0c 36 00 00    	mov    0x360c(%rip),%esi        # 52c0 <num_input_strings>
    1cb4:	48 63 c6             	movslq %esi,%rax
    1cb7:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    1cbb:	48 c1 e2 04          	shl    $0x4,%rdx
    1cbf:	48 8d 05 3a 3a 00 00 	lea    0x3a3a(%rip),%rax        # 5700 <input_strings>
    1cc6:	48 01 c2             	add    %rax,%rdx
    1cc9:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1cd0:	b8 00 00 00 00       	mov    $0x0,%eax
    1cd5:	48 89 d7             	mov    %rdx,%rdi
    1cd8:	f2 ae                	repnz scas %es:(%rdi),%al
    1cda:	48 f7 d1             	not    %rcx
    1cdd:	48 83 e9 01          	sub    $0x1,%rcx
    1ce1:	83 f9 4e             	cmp    $0x4e,%ecx
    1ce4:	0f 8f ab 00 00 00    	jg     1d95 <read_line+0xfa>
    1cea:	83 e9 01             	sub    $0x1,%ecx
    1ced:	48 63 c9             	movslq %ecx,%rcx
    1cf0:	48 63 c6             	movslq %esi,%rax
    1cf3:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1cf7:	48 c1 e0 04          	shl    $0x4,%rax
    1cfb:	48 89 c7             	mov    %rax,%rdi
    1cfe:	48 8d 05 fb 39 00 00 	lea    0x39fb(%rip),%rax        # 5700 <input_strings>
    1d05:	48 01 f8             	add    %rdi,%rax
    1d08:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    1d0c:	83 c6 01             	add    $0x1,%esi
    1d0f:	89 35 ab 35 00 00    	mov    %esi,0x35ab(%rip)        # 52c0 <num_input_strings>
    1d15:	48 89 d0             	mov    %rdx,%rax
    1d18:	48 83 c4 08          	add    $0x8,%rsp
    1d1c:	c3                   	ret    
    1d1d:	48 8b 05 6c 35 00 00 	mov    0x356c(%rip),%rax        # 5290 <stdin@@GLIBC_2.2.5>
    1d24:	48 39 05 b5 39 00 00 	cmp    %rax,0x39b5(%rip)        # 56e0 <infile>
    1d2b:	74 1b                	je     1d48 <read_line+0xad>
    1d2d:	48 8d 3d 5d 17 00 00 	lea    0x175d(%rip),%rdi        # 3491 <array.3342+0x2b1>
    1d34:	e8 f7 f2 ff ff       	call   1030 <getenv@plt>
    1d39:	48 85 c0             	test   %rax,%rax
    1d3c:	74 20                	je     1d5e <read_line+0xc3>
    1d3e:	bf 00 00 00 00       	mov    $0x0,%edi
    1d43:	e8 28 f4 ff ff       	call   1170 <exit@plt>
    1d48:	48 8d 3d 24 17 00 00 	lea    0x1724(%rip),%rdi        # 3473 <array.3342+0x293>
    1d4f:	e8 1c f3 ff ff       	call   1070 <puts@plt>
    1d54:	bf 08 00 00 00       	mov    $0x8,%edi
    1d59:	e8 12 f4 ff ff       	call   1170 <exit@plt>
    1d5e:	48 8b 05 2b 35 00 00 	mov    0x352b(%rip),%rax        # 5290 <stdin@@GLIBC_2.2.5>
    1d65:	48 89 05 74 39 00 00 	mov    %rax,0x3974(%rip)        # 56e0 <infile>
    1d6c:	b8 00 00 00 00       	mov    $0x0,%eax
    1d71:	e8 36 fd ff ff       	call   1aac <skip>
    1d76:	48 85 c0             	test   %rax,%rax
    1d79:	0f 85 2f ff ff ff    	jne    1cae <read_line+0x13>
    1d7f:	48 8d 3d ed 16 00 00 	lea    0x16ed(%rip),%rdi        # 3473 <array.3342+0x293>
    1d86:	e8 e5 f2 ff ff       	call   1070 <puts@plt>
    1d8b:	bf 00 00 00 00       	mov    $0x0,%edi
    1d90:	e8 db f3 ff ff       	call   1170 <exit@plt>
    1d95:	48 8d 3d 00 17 00 00 	lea    0x1700(%rip),%rdi        # 349c <array.3342+0x2bc>
    1d9c:	e8 cf f2 ff ff       	call   1070 <puts@plt>
    1da1:	8b 05 19 35 00 00    	mov    0x3519(%rip),%eax        # 52c0 <num_input_strings>
    1da7:	8d 50 01             	lea    0x1(%rax),%edx
    1daa:	89 15 10 35 00 00    	mov    %edx,0x3510(%rip)        # 52c0 <num_input_strings>
    1db0:	48 98                	cltq   
    1db2:	48 6b c0 50          	imul   $0x50,%rax,%rax
    1db6:	48 8d 15 43 39 00 00 	lea    0x3943(%rip),%rdx        # 5700 <input_strings>
    1dbd:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1dc4:	75 6e 63 
    1dc7:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1dce:	2a 2a 00 
    1dd1:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1dd5:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1dda:	e8 3f fe ff ff       	call   1c1e <explode_bomb>

0000000000001ddf <phase_defused>:
    1ddf:	48 83 ec 78          	sub    $0x78,%rsp
    1de3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1dea:	00 00 
    1dec:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    1df1:	31 c0                	xor    %eax,%eax
    1df3:	bf 01 00 00 00       	mov    $0x1,%edi
    1df8:	e8 fd fc ff ff       	call   1afa <send_msg>
    1dfd:	83 3d bc 34 00 00 06 	cmpl   $0x6,0x34bc(%rip)        # 52c0 <num_input_strings>
    1e04:	74 19                	je     1e1f <phase_defused+0x40>
    1e06:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1e0b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1e12:	00 00 
    1e14:	0f 85 84 00 00 00    	jne    1e9e <phase_defused+0xbf>
    1e1a:	48 83 c4 78          	add    $0x78,%rsp
    1e1e:	c3                   	ret    
    1e1f:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    1e24:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1e29:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1e2e:	48 8d 35 82 16 00 00 	lea    0x1682(%rip),%rsi        # 34b7 <array.3342+0x2d7>
    1e35:	48 8d 3d b4 39 00 00 	lea    0x39b4(%rip),%rdi        # 57f0 <input_strings+0xf0>
    1e3c:	b8 00 00 00 00       	mov    $0x0,%eax
    1e41:	e8 ea f2 ff ff       	call   1130 <__isoc99_sscanf@plt>
    1e46:	83 f8 03             	cmp    $0x3,%eax
    1e49:	74 1a                	je     1e65 <phase_defused+0x86>
    1e4b:	48 8d 3d 26 15 00 00 	lea    0x1526(%rip),%rdi        # 3378 <array.3342+0x198>
    1e52:	e8 19 f2 ff ff       	call   1070 <puts@plt>
    1e57:	48 8d 3d 4a 15 00 00 	lea    0x154a(%rip),%rdi        # 33a8 <array.3342+0x1c8>
    1e5e:	e8 0d f2 ff ff       	call   1070 <puts@plt>
    1e63:	eb a1                	jmp    1e06 <phase_defused+0x27>
    1e65:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1e6a:	48 8d 35 4f 16 00 00 	lea    0x164f(%rip),%rsi        # 34c0 <array.3342+0x2e0>
    1e71:	e8 95 fa ff ff       	call   190b <strings_not_equal>
    1e76:	85 c0                	test   %eax,%eax
    1e78:	75 d1                	jne    1e4b <phase_defused+0x6c>
    1e7a:	48 8d 3d 97 14 00 00 	lea    0x1497(%rip),%rdi        # 3318 <array.3342+0x138>
    1e81:	e8 ea f1 ff ff       	call   1070 <puts@plt>
    1e86:	48 8d 3d b3 14 00 00 	lea    0x14b3(%rip),%rdi        # 3340 <array.3342+0x160>
    1e8d:	e8 de f1 ff ff       	call   1070 <puts@plt>
    1e92:	b8 00 00 00 00       	mov    $0x0,%eax
    1e97:	e8 78 f9 ff ff       	call   1814 <secret_phase>
    1e9c:	eb ad                	jmp    1e4b <phase_defused+0x6c>
    1e9e:	e8 ed f1 ff ff       	call   1090 <__stack_chk_fail@plt>

0000000000001ea3 <sigalrm_handler>:
    1ea3:	48 83 ec 08          	sub    $0x8,%rsp
    1ea7:	b9 00 00 00 00       	mov    $0x0,%ecx
    1eac:	48 8d 15 25 16 00 00 	lea    0x1625(%rip),%rdx        # 34d8 <array.3342+0x2f8>
    1eb3:	be 01 00 00 00       	mov    $0x1,%esi
    1eb8:	48 8b 3d e1 33 00 00 	mov    0x33e1(%rip),%rdi        # 52a0 <stderr@@GLIBC_2.2.5>
    1ebf:	b8 00 00 00 00       	mov    $0x0,%eax
    1ec4:	e8 c7 f2 ff ff       	call   1190 <__fprintf_chk@plt>
    1ec9:	bf 01 00 00 00       	mov    $0x1,%edi
    1ece:	e8 9d f2 ff ff       	call   1170 <exit@plt>

0000000000001ed3 <rio_readlineb>:
    1ed3:	41 56                	push   %r14
    1ed5:	41 55                	push   %r13
    1ed7:	41 54                	push   %r12
    1ed9:	55                   	push   %rbp
    1eda:	53                   	push   %rbx
    1edb:	48 89 fb             	mov    %rdi,%rbx
    1ede:	49 89 f4             	mov    %rsi,%r12
    1ee1:	49 89 d6             	mov    %rdx,%r14
    1ee4:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1eea:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    1eee:	48 83 fa 01          	cmp    $0x1,%rdx
    1ef2:	77 0c                	ja     1f00 <rio_readlineb+0x2d>
    1ef4:	eb 60                	jmp    1f56 <rio_readlineb+0x83>
    1ef6:	e8 55 f1 ff ff       	call   1050 <__errno_location@plt>
    1efb:	83 38 04             	cmpl   $0x4,(%rax)
    1efe:	75 67                	jne    1f67 <rio_readlineb+0x94>
    1f00:	8b 43 04             	mov    0x4(%rbx),%eax
    1f03:	85 c0                	test   %eax,%eax
    1f05:	7f 20                	jg     1f27 <rio_readlineb+0x54>
    1f07:	ba 00 20 00 00       	mov    $0x2000,%edx
    1f0c:	48 89 ee             	mov    %rbp,%rsi
    1f0f:	8b 3b                	mov    (%rbx),%edi
    1f11:	e8 aa f1 ff ff       	call   10c0 <read@plt>
    1f16:	89 43 04             	mov    %eax,0x4(%rbx)
    1f19:	85 c0                	test   %eax,%eax
    1f1b:	78 d9                	js     1ef6 <rio_readlineb+0x23>
    1f1d:	85 c0                	test   %eax,%eax
    1f1f:	74 4f                	je     1f70 <rio_readlineb+0x9d>
    1f21:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    1f25:	eb d9                	jmp    1f00 <rio_readlineb+0x2d>
    1f27:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    1f2b:	0f b6 0a             	movzbl (%rdx),%ecx
    1f2e:	48 83 c2 01          	add    $0x1,%rdx
    1f32:	48 89 53 08          	mov    %rdx,0x8(%rbx)
    1f36:	83 e8 01             	sub    $0x1,%eax
    1f39:	89 43 04             	mov    %eax,0x4(%rbx)
    1f3c:	49 83 c4 01          	add    $0x1,%r12
    1f40:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    1f45:	80 f9 0a             	cmp    $0xa,%cl
    1f48:	74 0c                	je     1f56 <rio_readlineb+0x83>
    1f4a:	41 83 c5 01          	add    $0x1,%r13d
    1f4e:	49 63 c5             	movslq %r13d,%rax
    1f51:	4c 39 f0             	cmp    %r14,%rax
    1f54:	72 aa                	jb     1f00 <rio_readlineb+0x2d>
    1f56:	41 c6 04 24 00       	movb   $0x0,(%r12)
    1f5b:	49 63 c5             	movslq %r13d,%rax
    1f5e:	5b                   	pop    %rbx
    1f5f:	5d                   	pop    %rbp
    1f60:	41 5c                	pop    %r12
    1f62:	41 5d                	pop    %r13
    1f64:	41 5e                	pop    %r14
    1f66:	c3                   	ret    
    1f67:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1f6e:	eb 05                	jmp    1f75 <rio_readlineb+0xa2>
    1f70:	b8 00 00 00 00       	mov    $0x0,%eax
    1f75:	85 c0                	test   %eax,%eax
    1f77:	75 0d                	jne    1f86 <rio_readlineb+0xb3>
    1f79:	b8 00 00 00 00       	mov    $0x0,%eax
    1f7e:	41 83 fd 01          	cmp    $0x1,%r13d
    1f82:	75 d2                	jne    1f56 <rio_readlineb+0x83>
    1f84:	eb d8                	jmp    1f5e <rio_readlineb+0x8b>
    1f86:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1f8d:	eb cf                	jmp    1f5e <rio_readlineb+0x8b>

0000000000001f8f <submitr>:
    1f8f:	41 57                	push   %r15
    1f91:	41 56                	push   %r14
    1f93:	41 55                	push   %r13
    1f95:	41 54                	push   %r12
    1f97:	55                   	push   %rbp
    1f98:	53                   	push   %rbx
    1f99:	48 81 ec 78 a0 00 00 	sub    $0xa078,%rsp
    1fa0:	49 89 fd             	mov    %rdi,%r13
    1fa3:	89 f5                	mov    %esi,%ebp
    1fa5:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    1faa:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    1faf:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    1fb4:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    1fb9:	48 8b 9c 24 b0 a0 00 	mov    0xa0b0(%rsp),%rbx
    1fc0:	00 
    1fc1:	4c 8b bc 24 b8 a0 00 	mov    0xa0b8(%rsp),%r15
    1fc8:	00 
    1fc9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1fd0:	00 00 
    1fd2:	48 89 84 24 68 a0 00 	mov    %rax,0xa068(%rsp)
    1fd9:	00 
    1fda:	31 c0                	xor    %eax,%eax
    1fdc:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    1fe3:	00 
    1fe4:	ba 00 00 00 00       	mov    $0x0,%edx
    1fe9:	be 01 00 00 00       	mov    $0x1,%esi
    1fee:	bf 02 00 00 00       	mov    $0x2,%edi
    1ff3:	e8 d8 f1 ff ff       	call   11d0 <socket@plt>
    1ff8:	85 c0                	test   %eax,%eax
    1ffa:	0f 88 35 01 00 00    	js     2135 <submitr+0x1a6>
    2000:	41 89 c4             	mov    %eax,%r12d
    2003:	4c 89 ef             	mov    %r13,%rdi
    2006:	e8 e5 f0 ff ff       	call   10f0 <gethostbyname@plt>
    200b:	48 85 c0             	test   %rax,%rax
    200e:	0f 84 71 01 00 00    	je     2185 <submitr+0x1f6>
    2014:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
    2019:	48 c7 44 24 42 00 00 	movq   $0x0,0x42(%rsp)
    2020:	00 00 
    2022:	c7 44 24 4a 00 00 00 	movl   $0x0,0x4a(%rsp)
    2029:	00 
    202a:	66 c7 44 24 4e 00 00 	movw   $0x0,0x4e(%rsp)
    2031:	66 c7 44 24 40 02 00 	movw   $0x2,0x40(%rsp)
    2038:	48 63 50 14          	movslq 0x14(%rax),%rdx
    203c:	48 8b 40 18          	mov    0x18(%rax),%rax
    2040:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    2045:	b9 0c 00 00 00       	mov    $0xc,%ecx
    204a:	48 8b 30             	mov    (%rax),%rsi
    204d:	e8 ae f0 ff ff       	call   1100 <__memmove_chk@plt>
    2052:	66 c1 c5 08          	rol    $0x8,%bp
    2056:	66 89 6c 24 42       	mov    %bp,0x42(%rsp)
    205b:	ba 10 00 00 00       	mov    $0x10,%edx
    2060:	4c 89 ee             	mov    %r13,%rsi
    2063:	44 89 e7             	mov    %r12d,%edi
    2066:	e8 15 f1 ff ff       	call   1180 <connect@plt>
    206b:	85 c0                	test   %eax,%eax
    206d:	0f 88 7d 01 00 00    	js     21f0 <submitr+0x261>
    2073:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
    207a:	b8 00 00 00 00       	mov    $0x0,%eax
    207f:	4c 89 c9             	mov    %r9,%rcx
    2082:	48 89 df             	mov    %rbx,%rdi
    2085:	f2 ae                	repnz scas %es:(%rdi),%al
    2087:	48 89 ce             	mov    %rcx,%rsi
    208a:	48 f7 d6             	not    %rsi
    208d:	4c 89 c9             	mov    %r9,%rcx
    2090:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    2095:	f2 ae                	repnz scas %es:(%rdi),%al
    2097:	49 89 c8             	mov    %rcx,%r8
    209a:	4c 89 c9             	mov    %r9,%rcx
    209d:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    20a2:	f2 ae                	repnz scas %es:(%rdi),%al
    20a4:	48 89 ca             	mov    %rcx,%rdx
    20a7:	48 f7 d2             	not    %rdx
    20aa:	4c 89 c9             	mov    %r9,%rcx
    20ad:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    20b2:	f2 ae                	repnz scas %es:(%rdi),%al
    20b4:	4c 29 c2             	sub    %r8,%rdx
    20b7:	48 29 ca             	sub    %rcx,%rdx
    20ba:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
    20bf:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
    20c4:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    20ca:	0f 87 7d 01 00 00    	ja     224d <submitr+0x2be>
    20d0:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
    20d7:	00 
    20d8:	b9 00 04 00 00       	mov    $0x400,%ecx
    20dd:	b8 00 00 00 00       	mov    $0x0,%eax
    20e2:	48 89 d7             	mov    %rdx,%rdi
    20e5:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    20e8:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    20ef:	48 89 df             	mov    %rbx,%rdi
    20f2:	f2 ae                	repnz scas %es:(%rdi),%al
    20f4:	48 89 ca             	mov    %rcx,%rdx
    20f7:	48 f7 d2             	not    %rdx
    20fa:	48 89 d1             	mov    %rdx,%rcx
    20fd:	48 83 e9 01          	sub    $0x1,%rcx
    2101:	85 c9                	test   %ecx,%ecx
    2103:	0f 84 3f 06 00 00    	je     2748 <submitr+0x7b9>
    2109:	8d 41 ff             	lea    -0x1(%rcx),%eax
    210c:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
    2111:	48 8d ac 24 60 40 00 	lea    0x4060(%rsp),%rbp
    2118:	00 
    2119:	48 8d 84 24 60 80 00 	lea    0x8060(%rsp),%rax
    2120:	00 
    2121:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    2126:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
    212d:	00 20 00 
    2130:	e9 a6 01 00 00       	jmp    22db <submitr+0x34c>
    2135:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    213c:	3a 20 43 
    213f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2146:	20 75 6e 
    2149:	49 89 07             	mov    %rax,(%r15)
    214c:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2150:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2157:	74 6f 20 
    215a:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2161:	65 20 73 
    2164:	49 89 47 10          	mov    %rax,0x10(%r15)
    2168:	49 89 57 18          	mov    %rdx,0x18(%r15)
    216c:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    2173:	65 
    2174:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    217b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2180:	e9 9a 04 00 00       	jmp    261f <submitr+0x690>
    2185:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    218c:	3a 20 44 
    218f:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2196:	20 75 6e 
    2199:	49 89 07             	mov    %rax,(%r15)
    219c:	49 89 57 08          	mov    %rdx,0x8(%r15)
    21a0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    21a7:	74 6f 20 
    21aa:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    21b1:	76 65 20 
    21b4:	49 89 47 10          	mov    %rax,0x10(%r15)
    21b8:	49 89 57 18          	mov    %rdx,0x18(%r15)
    21bc:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    21c3:	72 20 61 
    21c6:	49 89 47 20          	mov    %rax,0x20(%r15)
    21ca:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    21d1:	65 
    21d2:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    21d9:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    21de:	44 89 e7             	mov    %r12d,%edi
    21e1:	e8 ca ee ff ff       	call   10b0 <close@plt>
    21e6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    21eb:	e9 2f 04 00 00       	jmp    261f <submitr+0x690>
    21f0:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    21f7:	3a 20 55 
    21fa:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2201:	20 74 6f 
    2204:	49 89 07             	mov    %rax,(%r15)
    2207:	49 89 57 08          	mov    %rdx,0x8(%r15)
    220b:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2212:	65 63 74 
    2215:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    221c:	68 65 20 
    221f:	49 89 47 10          	mov    %rax,0x10(%r15)
    2223:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2227:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    222e:	76 
    222f:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    2236:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    223b:	44 89 e7             	mov    %r12d,%edi
    223e:	e8 6d ee ff ff       	call   10b0 <close@plt>
    2243:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2248:	e9 d2 03 00 00       	jmp    261f <submitr+0x690>
    224d:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2254:	3a 20 52 
    2257:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    225e:	20 73 74 
    2261:	49 89 07             	mov    %rax,(%r15)
    2264:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2268:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    226f:	74 6f 6f 
    2272:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2279:	65 2e 20 
    227c:	49 89 47 10          	mov    %rax,0x10(%r15)
    2280:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2284:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    228b:	61 73 65 
    228e:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2295:	49 54 52 
    2298:	49 89 47 20          	mov    %rax,0x20(%r15)
    229c:	49 89 57 28          	mov    %rdx,0x28(%r15)
    22a0:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    22a7:	55 46 00 
    22aa:	49 89 47 30          	mov    %rax,0x30(%r15)
    22ae:	44 89 e7             	mov    %r12d,%edi
    22b1:	e8 fa ed ff ff       	call   10b0 <close@plt>
    22b6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    22bb:	e9 5f 03 00 00       	jmp    261f <submitr+0x690>
    22c0:	49 0f a3 c5          	bt     %rax,%r13
    22c4:	73 21                	jae    22e7 <submitr+0x358>
    22c6:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    22ca:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    22ce:	48 83 c3 01          	add    $0x1,%rbx
    22d2:	4c 39 f3             	cmp    %r14,%rbx
    22d5:	0f 84 6d 04 00 00    	je     2748 <submitr+0x7b9>
    22db:	44 0f b6 03          	movzbl (%rbx),%r8d
    22df:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    22e3:	3c 35                	cmp    $0x35,%al
    22e5:	76 d9                	jbe    22c0 <submitr+0x331>
    22e7:	44 89 c0             	mov    %r8d,%eax
    22ea:	83 e0 df             	and    $0xffffffdf,%eax
    22ed:	83 e8 41             	sub    $0x41,%eax
    22f0:	3c 19                	cmp    $0x19,%al
    22f2:	76 d2                	jbe    22c6 <submitr+0x337>
    22f4:	41 80 f8 20          	cmp    $0x20,%r8b
    22f8:	74 60                	je     235a <submitr+0x3cb>
    22fa:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    22fe:	3c 5f                	cmp    $0x5f,%al
    2300:	76 0a                	jbe    230c <submitr+0x37d>
    2302:	41 80 f8 09          	cmp    $0x9,%r8b
    2306:	0f 85 af 03 00 00    	jne    26bb <submitr+0x72c>
    230c:	45 0f b6 c0          	movzbl %r8b,%r8d
    2310:	48 8d 0d 97 12 00 00 	lea    0x1297(%rip),%rcx        # 35ae <array.3342+0x3ce>
    2317:	ba 08 00 00 00       	mov    $0x8,%edx
    231c:	be 01 00 00 00       	mov    $0x1,%esi
    2321:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    2326:	b8 00 00 00 00       	mov    $0x0,%eax
    232b:	e8 90 ee ff ff       	call   11c0 <__sprintf_chk@plt>
    2330:	0f b6 84 24 60 80 00 	movzbl 0x8060(%rsp),%eax
    2337:	00 
    2338:	88 45 00             	mov    %al,0x0(%rbp)
    233b:	0f b6 84 24 61 80 00 	movzbl 0x8061(%rsp),%eax
    2342:	00 
    2343:	88 45 01             	mov    %al,0x1(%rbp)
    2346:	0f b6 84 24 62 80 00 	movzbl 0x8062(%rsp),%eax
    234d:	00 
    234e:	88 45 02             	mov    %al,0x2(%rbp)
    2351:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    2355:	e9 74 ff ff ff       	jmp    22ce <submitr+0x33f>
    235a:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    235e:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2362:	e9 67 ff ff ff       	jmp    22ce <submitr+0x33f>
    2367:	49 01 c5             	add    %rax,%r13
    236a:	48 29 c5             	sub    %rax,%rbp
    236d:	74 26                	je     2395 <submitr+0x406>
    236f:	48 89 ea             	mov    %rbp,%rdx
    2372:	4c 89 ee             	mov    %r13,%rsi
    2375:	44 89 e7             	mov    %r12d,%edi
    2378:	e8 03 ed ff ff       	call   1080 <write@plt>
    237d:	48 85 c0             	test   %rax,%rax
    2380:	7f e5                	jg     2367 <submitr+0x3d8>
    2382:	e8 c9 ec ff ff       	call   1050 <__errno_location@plt>
    2387:	83 38 04             	cmpl   $0x4,(%rax)
    238a:	0f 85 31 01 00 00    	jne    24c1 <submitr+0x532>
    2390:	4c 89 f0             	mov    %r14,%rax
    2393:	eb d2                	jmp    2367 <submitr+0x3d8>
    2395:	48 85 db             	test   %rbx,%rbx
    2398:	0f 88 23 01 00 00    	js     24c1 <submitr+0x532>
    239e:	44 89 64 24 50       	mov    %r12d,0x50(%rsp)
    23a3:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    23aa:	00 
    23ab:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    23b0:	48 8d 47 10          	lea    0x10(%rdi),%rax
    23b4:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    23b9:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    23c0:	00 
    23c1:	ba 00 20 00 00       	mov    $0x2000,%edx
    23c6:	e8 08 fb ff ff       	call   1ed3 <rio_readlineb>
    23cb:	48 85 c0             	test   %rax,%rax
    23ce:	0f 8e 4c 01 00 00    	jle    2520 <submitr+0x591>
    23d4:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    23d9:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
    23e0:	00 
    23e1:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    23e8:	00 
    23e9:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
    23f0:	00 
    23f1:	48 8d 35 bd 11 00 00 	lea    0x11bd(%rip),%rsi        # 35b5 <array.3342+0x3d5>
    23f8:	b8 00 00 00 00       	mov    $0x0,%eax
    23fd:	e8 2e ed ff ff       	call   1130 <__isoc99_sscanf@plt>
    2402:	44 8b 44 24 3c       	mov    0x3c(%rsp),%r8d
    2407:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    240e:	0f 85 80 01 00 00    	jne    2594 <submitr+0x605>
    2414:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    241b:	00 
    241c:	48 8d 2d a3 11 00 00 	lea    0x11a3(%rip),%rbp        # 35c6 <array.3342+0x3e6>
    2423:	4c 8d 6c 24 50       	lea    0x50(%rsp),%r13
    2428:	b9 03 00 00 00       	mov    $0x3,%ecx
    242d:	48 89 de             	mov    %rbx,%rsi
    2430:	48 89 ef             	mov    %rbp,%rdi
    2433:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2435:	0f 97 c0             	seta   %al
    2438:	1c 00                	sbb    $0x0,%al
    243a:	84 c0                	test   %al,%al
    243c:	0f 84 89 01 00 00    	je     25cb <submitr+0x63c>
    2442:	ba 00 20 00 00       	mov    $0x2000,%edx
    2447:	48 89 de             	mov    %rbx,%rsi
    244a:	4c 89 ef             	mov    %r13,%rdi
    244d:	e8 81 fa ff ff       	call   1ed3 <rio_readlineb>
    2452:	48 85 c0             	test   %rax,%rax
    2455:	7f d1                	jg     2428 <submitr+0x499>
    2457:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    245e:	3a 20 43 
    2461:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2468:	20 75 6e 
    246b:	49 89 07             	mov    %rax,(%r15)
    246e:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2472:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2479:	74 6f 20 
    247c:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2483:	68 65 61 
    2486:	49 89 47 10          	mov    %rax,0x10(%r15)
    248a:	49 89 57 18          	mov    %rdx,0x18(%r15)
    248e:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2495:	66 72 6f 
    2498:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    249f:	76 65 72 
    24a2:	49 89 47 20          	mov    %rax,0x20(%r15)
    24a6:	49 89 57 28          	mov    %rdx,0x28(%r15)
    24aa:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    24af:	44 89 e7             	mov    %r12d,%edi
    24b2:	e8 f9 eb ff ff       	call   10b0 <close@plt>
    24b7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24bc:	e9 5e 01 00 00       	jmp    261f <submitr+0x690>
    24c1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    24c8:	3a 20 43 
    24cb:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    24d2:	20 75 6e 
    24d5:	49 89 07             	mov    %rax,(%r15)
    24d8:	49 89 57 08          	mov    %rdx,0x8(%r15)
    24dc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    24e3:	74 6f 20 
    24e6:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    24ed:	20 74 6f 
    24f0:	49 89 47 10          	mov    %rax,0x10(%r15)
    24f4:	49 89 57 18          	mov    %rdx,0x18(%r15)
    24f8:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    24ff:	73 65 72 
    2502:	49 89 47 20          	mov    %rax,0x20(%r15)
    2506:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    250d:	00 
    250e:	44 89 e7             	mov    %r12d,%edi
    2511:	e8 9a eb ff ff       	call   10b0 <close@plt>
    2516:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    251b:	e9 ff 00 00 00       	jmp    261f <submitr+0x690>
    2520:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2527:	3a 20 43 
    252a:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2531:	20 75 6e 
    2534:	49 89 07             	mov    %rax,(%r15)
    2537:	49 89 57 08          	mov    %rdx,0x8(%r15)
    253b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2542:	74 6f 20 
    2545:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    254c:	66 69 72 
    254f:	49 89 47 10          	mov    %rax,0x10(%r15)
    2553:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2557:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    255e:	61 64 65 
    2561:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    2568:	6d 20 73 
    256b:	49 89 47 20          	mov    %rax,0x20(%r15)
    256f:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2573:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    257a:	65 
    257b:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    2582:	44 89 e7             	mov    %r12d,%edi
    2585:	e8 26 eb ff ff       	call   10b0 <close@plt>
    258a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    258f:	e9 8b 00 00 00       	jmp    261f <submitr+0x690>
    2594:	4c 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%r9
    259b:	00 
    259c:	48 8d 0d 5d 0f 00 00 	lea    0xf5d(%rip),%rcx        # 3500 <array.3342+0x320>
    25a3:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    25aa:	be 01 00 00 00       	mov    $0x1,%esi
    25af:	4c 89 ff             	mov    %r15,%rdi
    25b2:	b8 00 00 00 00       	mov    $0x0,%eax
    25b7:	e8 04 ec ff ff       	call   11c0 <__sprintf_chk@plt>
    25bc:	44 89 e7             	mov    %r12d,%edi
    25bf:	e8 ec ea ff ff       	call   10b0 <close@plt>
    25c4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25c9:	eb 54                	jmp    261f <submitr+0x690>
    25cb:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    25d2:	00 
    25d3:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    25d8:	ba 00 20 00 00       	mov    $0x2000,%edx
    25dd:	e8 f1 f8 ff ff       	call   1ed3 <rio_readlineb>
    25e2:	48 85 c0             	test   %rax,%rax
    25e5:	7e 61                	jle    2648 <submitr+0x6b9>
    25e7:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    25ee:	00 
    25ef:	4c 89 ff             	mov    %r15,%rdi
    25f2:	e8 69 ea ff ff       	call   1060 <strcpy@plt>
    25f7:	44 89 e7             	mov    %r12d,%edi
    25fa:	e8 b1 ea ff ff       	call   10b0 <close@plt>
    25ff:	b9 03 00 00 00       	mov    $0x3,%ecx
    2604:	48 8d 3d be 0f 00 00 	lea    0xfbe(%rip),%rdi        # 35c9 <array.3342+0x3e9>
    260b:	4c 89 fe             	mov    %r15,%rsi
    260e:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2610:	0f 97 c0             	seta   %al
    2613:	1c 00                	sbb    $0x0,%al
    2615:	84 c0                	test   %al,%al
    2617:	0f 95 c0             	setne  %al
    261a:	0f b6 c0             	movzbl %al,%eax
    261d:	f7 d8                	neg    %eax
    261f:	48 8b 94 24 68 a0 00 	mov    0xa068(%rsp),%rdx
    2626:	00 
    2627:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    262e:	00 00 
    2630:	0f 85 95 01 00 00    	jne    27cb <submitr+0x83c>
    2636:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
    263d:	5b                   	pop    %rbx
    263e:	5d                   	pop    %rbp
    263f:	41 5c                	pop    %r12
    2641:	41 5d                	pop    %r13
    2643:	41 5e                	pop    %r14
    2645:	41 5f                	pop    %r15
    2647:	c3                   	ret    
    2648:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    264f:	3a 20 43 
    2652:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2659:	20 75 6e 
    265c:	49 89 07             	mov    %rax,(%r15)
    265f:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2663:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    266a:	74 6f 20 
    266d:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2674:	73 74 61 
    2677:	49 89 47 10          	mov    %rax,0x10(%r15)
    267b:	49 89 57 18          	mov    %rdx,0x18(%r15)
    267f:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2686:	65 73 73 
    2689:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2690:	72 6f 6d 
    2693:	49 89 47 20          	mov    %rax,0x20(%r15)
    2697:	49 89 57 28          	mov    %rdx,0x28(%r15)
    269b:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    26a2:	65 72 00 
    26a5:	49 89 47 30          	mov    %rax,0x30(%r15)
    26a9:	44 89 e7             	mov    %r12d,%edi
    26ac:	e8 ff e9 ff ff       	call   10b0 <close@plt>
    26b1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    26b6:	e9 64 ff ff ff       	jmp    261f <submitr+0x690>
    26bb:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    26c2:	3a 20 52 
    26c5:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    26cc:	20 73 74 
    26cf:	49 89 07             	mov    %rax,(%r15)
    26d2:	49 89 57 08          	mov    %rdx,0x8(%r15)
    26d6:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    26dd:	63 6f 6e 
    26e0:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    26e7:	20 61 6e 
    26ea:	49 89 47 10          	mov    %rax,0x10(%r15)
    26ee:	49 89 57 18          	mov    %rdx,0x18(%r15)
    26f2:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    26f9:	67 61 6c 
    26fc:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2703:	6e 70 72 
    2706:	49 89 47 20          	mov    %rax,0x20(%r15)
    270a:	49 89 57 28          	mov    %rdx,0x28(%r15)
    270e:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2715:	6c 65 20 
    2718:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    271f:	63 74 65 
    2722:	49 89 47 30          	mov    %rax,0x30(%r15)
    2726:	49 89 57 38          	mov    %rdx,0x38(%r15)
    272a:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    2731:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    2736:	44 89 e7             	mov    %r12d,%edi
    2739:	e8 72 e9 ff ff       	call   10b0 <close@plt>
    273e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2743:	e9 d7 fe ff ff       	jmp    261f <submitr+0x690>
    2748:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    274f:	00 
    2750:	48 83 ec 08          	sub    $0x8,%rsp
    2754:	48 8d 84 24 68 40 00 	lea    0x4068(%rsp),%rax
    275b:	00 
    275c:	50                   	push   %rax
    275d:	ff 74 24 28          	push   0x28(%rsp)
    2761:	ff 74 24 38          	push   0x38(%rsp)
    2765:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    276a:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    276f:	48 8d 0d ba 0d 00 00 	lea    0xdba(%rip),%rcx        # 3530 <array.3342+0x350>
    2776:	ba 00 20 00 00       	mov    $0x2000,%edx
    277b:	be 01 00 00 00       	mov    $0x1,%esi
    2780:	48 89 df             	mov    %rbx,%rdi
    2783:	b8 00 00 00 00       	mov    $0x0,%eax
    2788:	e8 33 ea ff ff       	call   11c0 <__sprintf_chk@plt>
    278d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2794:	b8 00 00 00 00       	mov    $0x0,%eax
    2799:	48 89 df             	mov    %rbx,%rdi
    279c:	f2 ae                	repnz scas %es:(%rdi),%al
    279e:	48 f7 d1             	not    %rcx
    27a1:	48 89 cb             	mov    %rcx,%rbx
    27a4:	48 83 eb 01          	sub    $0x1,%rbx
    27a8:	48 83 c4 20          	add    $0x20,%rsp
    27ac:	48 89 dd             	mov    %rbx,%rbp
    27af:	4c 8d ac 24 60 20 00 	lea    0x2060(%rsp),%r13
    27b6:	00 
    27b7:	41 be 00 00 00 00    	mov    $0x0,%r14d
    27bd:	48 85 db             	test   %rbx,%rbx
    27c0:	0f 85 a9 fb ff ff    	jne    236f <submitr+0x3e0>
    27c6:	e9 d3 fb ff ff       	jmp    239e <submitr+0x40f>
    27cb:	e8 c0 e8 ff ff       	call   1090 <__stack_chk_fail@plt>

00000000000027d0 <init_timeout>:
    27d0:	85 ff                	test   %edi,%edi
    27d2:	74 25                	je     27f9 <init_timeout+0x29>
    27d4:	53                   	push   %rbx
    27d5:	89 fb                	mov    %edi,%ebx
    27d7:	48 8d 35 c5 f6 ff ff 	lea    -0x93b(%rip),%rsi        # 1ea3 <sigalrm_handler>
    27de:	bf 0e 00 00 00       	mov    $0xe,%edi
    27e3:	e8 f8 e8 ff ff       	call   10e0 <signal@plt>
    27e8:	85 db                	test   %ebx,%ebx
    27ea:	bf 00 00 00 00       	mov    $0x0,%edi
    27ef:	0f 49 fb             	cmovns %ebx,%edi
    27f2:	e8 a9 e8 ff ff       	call   10a0 <alarm@plt>
    27f7:	5b                   	pop    %rbx
    27f8:	c3                   	ret    
    27f9:	f3 c3                	repz ret 

00000000000027fb <init_driver>:
    27fb:	41 54                	push   %r12
    27fd:	55                   	push   %rbp
    27fe:	53                   	push   %rbx
    27ff:	48 83 ec 20          	sub    $0x20,%rsp
    2803:	49 89 fc             	mov    %rdi,%r12
    2806:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    280d:	00 00 
    280f:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2814:	31 c0                	xor    %eax,%eax
    2816:	be 01 00 00 00       	mov    $0x1,%esi
    281b:	bf 0d 00 00 00       	mov    $0xd,%edi
    2820:	e8 bb e8 ff ff       	call   10e0 <signal@plt>
    2825:	be 01 00 00 00       	mov    $0x1,%esi
    282a:	bf 1d 00 00 00       	mov    $0x1d,%edi
    282f:	e8 ac e8 ff ff       	call   10e0 <signal@plt>
    2834:	be 01 00 00 00       	mov    $0x1,%esi
    2839:	bf 1d 00 00 00       	mov    $0x1d,%edi
    283e:	e8 9d e8 ff ff       	call   10e0 <signal@plt>
    2843:	ba 00 00 00 00       	mov    $0x0,%edx
    2848:	be 01 00 00 00       	mov    $0x1,%esi
    284d:	bf 02 00 00 00       	mov    $0x2,%edi
    2852:	e8 79 e9 ff ff       	call   11d0 <socket@plt>
    2857:	85 c0                	test   %eax,%eax
    2859:	0f 88 a3 00 00 00    	js     2902 <init_driver+0x107>
    285f:	89 c3                	mov    %eax,%ebx
    2861:	48 8d 3d 64 0d 00 00 	lea    0xd64(%rip),%rdi        # 35cc <array.3342+0x3ec>
    2868:	e8 83 e8 ff ff       	call   10f0 <gethostbyname@plt>
    286d:	48 85 c0             	test   %rax,%rax
    2870:	0f 84 df 00 00 00    	je     2955 <init_driver+0x15a>
    2876:	48 89 e5             	mov    %rsp,%rbp
    2879:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
    2880:	00 00 
    2882:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
    2889:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
    288f:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2895:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2899:	48 8b 40 18          	mov    0x18(%rax),%rax
    289d:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
    28a1:	b9 0c 00 00 00       	mov    $0xc,%ecx
    28a6:	48 8b 30             	mov    (%rax),%rsi
    28a9:	e8 52 e8 ff ff       	call   1100 <__memmove_chk@plt>
    28ae:	66 c7 44 24 02 3d 6a 	movw   $0x6a3d,0x2(%rsp)
    28b5:	ba 10 00 00 00       	mov    $0x10,%edx
    28ba:	48 89 ee             	mov    %rbp,%rsi
    28bd:	89 df                	mov    %ebx,%edi
    28bf:	e8 bc e8 ff ff       	call   1180 <connect@plt>
    28c4:	85 c0                	test   %eax,%eax
    28c6:	0f 88 fb 00 00 00    	js     29c7 <init_driver+0x1cc>
    28cc:	89 df                	mov    %ebx,%edi
    28ce:	e8 dd e7 ff ff       	call   10b0 <close@plt>
    28d3:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
    28da:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
    28e0:	b8 00 00 00 00       	mov    $0x0,%eax
    28e5:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    28ea:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    28f1:	00 00 
    28f3:	0f 85 06 01 00 00    	jne    29ff <init_driver+0x204>
    28f9:	48 83 c4 20          	add    $0x20,%rsp
    28fd:	5b                   	pop    %rbx
    28fe:	5d                   	pop    %rbp
    28ff:	41 5c                	pop    %r12
    2901:	c3                   	ret    
    2902:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2909:	3a 20 43 
    290c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2913:	20 75 6e 
    2916:	49 89 04 24          	mov    %rax,(%r12)
    291a:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    291f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2926:	74 6f 20 
    2929:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2930:	65 20 73 
    2933:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2938:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    293d:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
    2944:	6b 65 
    2946:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
    294d:	00 
    294e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2953:	eb 90                	jmp    28e5 <init_driver+0xea>
    2955:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    295c:	3a 20 44 
    295f:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2966:	20 75 6e 
    2969:	49 89 04 24          	mov    %rax,(%r12)
    296d:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2972:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2979:	74 6f 20 
    297c:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2983:	76 65 20 
    2986:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    298b:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2990:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2997:	72 20 61 
    299a:	49 89 44 24 20       	mov    %rax,0x20(%r12)
    299f:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
    29a6:	72 65 
    29a8:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
    29af:	73 
    29b0:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
    29b6:	89 df                	mov    %ebx,%edi
    29b8:	e8 f3 e6 ff ff       	call   10b0 <close@plt>
    29bd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29c2:	e9 1e ff ff ff       	jmp    28e5 <init_driver+0xea>
    29c7:	4c 8d 05 fe 0b 00 00 	lea    0xbfe(%rip),%r8        # 35cc <array.3342+0x3ec>
    29ce:	48 8d 0d b3 0b 00 00 	lea    0xbb3(%rip),%rcx        # 3588 <array.3342+0x3a8>
    29d5:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    29dc:	be 01 00 00 00       	mov    $0x1,%esi
    29e1:	4c 89 e7             	mov    %r12,%rdi
    29e4:	b8 00 00 00 00       	mov    $0x0,%eax
    29e9:	e8 d2 e7 ff ff       	call   11c0 <__sprintf_chk@plt>
    29ee:	89 df                	mov    %ebx,%edi
    29f0:	e8 bb e6 ff ff       	call   10b0 <close@plt>
    29f5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29fa:	e9 e6 fe ff ff       	jmp    28e5 <init_driver+0xea>
    29ff:	e8 8c e6 ff ff       	call   1090 <__stack_chk_fail@plt>

0000000000002a04 <driver_post>:
    2a04:	53                   	push   %rbx
    2a05:	4c 89 c3             	mov    %r8,%rbx
    2a08:	85 c9                	test   %ecx,%ecx
    2a0a:	75 17                	jne    2a23 <driver_post+0x1f>
    2a0c:	48 85 ff             	test   %rdi,%rdi
    2a0f:	74 05                	je     2a16 <driver_post+0x12>
    2a11:	80 3f 00             	cmpb   $0x0,(%rdi)
    2a14:	75 33                	jne    2a49 <driver_post+0x45>
    2a16:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2a1b:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2a1f:	89 c8                	mov    %ecx,%eax
    2a21:	5b                   	pop    %rbx
    2a22:	c3                   	ret    
    2a23:	48 8d 35 b3 0b 00 00 	lea    0xbb3(%rip),%rsi        # 35dd <array.3342+0x3fd>
    2a2a:	bf 01 00 00 00       	mov    $0x1,%edi
    2a2f:	b8 00 00 00 00       	mov    $0x0,%eax
    2a34:	e8 07 e7 ff ff       	call   1140 <__printf_chk@plt>
    2a39:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2a3e:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2a42:	b8 00 00 00 00       	mov    $0x0,%eax
    2a47:	eb d8                	jmp    2a21 <driver_post+0x1d>
    2a49:	41 50                	push   %r8
    2a4b:	52                   	push   %rdx
    2a4c:	4c 8d 0d a1 0b 00 00 	lea    0xba1(%rip),%r9        # 35f4 <array.3342+0x414>
    2a53:	49 89 f0             	mov    %rsi,%r8
    2a56:	48 89 f9             	mov    %rdi,%rcx
    2a59:	48 8d 15 9a 0b 00 00 	lea    0xb9a(%rip),%rdx        # 35fa <array.3342+0x41a>
    2a60:	be 6a 3d 00 00       	mov    $0x3d6a,%esi
    2a65:	48 8d 3d 60 0b 00 00 	lea    0xb60(%rip),%rdi        # 35cc <array.3342+0x3ec>
    2a6c:	e8 1e f5 ff ff       	call   1f8f <submitr>
    2a71:	48 83 c4 10          	add    $0x10,%rsp
    2a75:	eb aa                	jmp    2a21 <driver_post+0x1d>
    2a77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    2a7e:	00 00 

0000000000002a80 <__libc_csu_init>:
    2a80:	f3 0f 1e fa          	endbr64 
    2a84:	41 57                	push   %r15
    2a86:	4c 8d 3d 5b 22 00 00 	lea    0x225b(%rip),%r15        # 4ce8 <__frame_dummy_init_array_entry>
    2a8d:	41 56                	push   %r14
    2a8f:	49 89 d6             	mov    %rdx,%r14
    2a92:	41 55                	push   %r13
    2a94:	49 89 f5             	mov    %rsi,%r13
    2a97:	41 54                	push   %r12
    2a99:	41 89 fc             	mov    %edi,%r12d
    2a9c:	55                   	push   %rbp
    2a9d:	48 8d 2d 4c 22 00 00 	lea    0x224c(%rip),%rbp        # 4cf0 <__do_global_dtors_aux_fini_array_entry>
    2aa4:	53                   	push   %rbx
    2aa5:	4c 29 fd             	sub    %r15,%rbp
    2aa8:	48 83 ec 08          	sub    $0x8,%rsp
    2aac:	e8 4f e5 ff ff       	call   1000 <_init>
    2ab1:	48 c1 fd 03          	sar    $0x3,%rbp
    2ab5:	74 1f                	je     2ad6 <__libc_csu_init+0x56>
    2ab7:	31 db                	xor    %ebx,%ebx
    2ab9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2ac0:	4c 89 f2             	mov    %r14,%rdx
    2ac3:	4c 89 ee             	mov    %r13,%rsi
    2ac6:	44 89 e7             	mov    %r12d,%edi
    2ac9:	41 ff 14 df          	call   *(%r15,%rbx,8)
    2acd:	48 83 c3 01          	add    $0x1,%rbx
    2ad1:	48 39 dd             	cmp    %rbx,%rbp
    2ad4:	75 ea                	jne    2ac0 <__libc_csu_init+0x40>
    2ad6:	48 83 c4 08          	add    $0x8,%rsp
    2ada:	5b                   	pop    %rbx
    2adb:	5d                   	pop    %rbp
    2adc:	41 5c                	pop    %r12
    2ade:	41 5d                	pop    %r13
    2ae0:	41 5e                	pop    %r14
    2ae2:	41 5f                	pop    %r15
    2ae4:	c3                   	ret    
    2ae5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    2aec:	00 00 00 00 

0000000000002af0 <__libc_csu_fini>:
    2af0:	f3 0f 1e fa          	endbr64 
    2af4:	c3                   	ret    

Desensamblado de la sección .fini:

0000000000002af8 <_fini>:
    2af8:	f3 0f 1e fa          	endbr64 
    2afc:	48 83 ec 08          	sub    $0x8,%rsp
    2b00:	48 83 c4 08          	add    $0x8,%rsp
    2b04:	c3                   	ret    
