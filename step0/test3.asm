
test3:     file format elf64-x86-64


Disassembly of section .init:

00000000000004b8 <_init>:
 4b8:	48 83 ec 08          	sub    rsp,0x8
 4bc:	48 8b 05 25 0b 20 00 	mov    rax,QWORD PTR [rip+0x200b25]        # 200fe8 <__gmon_start__>
 4c3:	48 85 c0             	test   rax,rax
 4c6:	74 02                	je     4ca <_init+0x12>
 4c8:	ff d0                	call   rax
 4ca:	48 83 c4 08          	add    rsp,0x8
 4ce:	c3                   	ret    

Disassembly of section .plt:

00000000000004d0 <.plt>:
 4d0:	ff 35 f2 0a 20 00    	push   QWORD PTR [rip+0x200af2]        # 200fc8 <_GLOBAL_OFFSET_TABLE_+0x8>
 4d6:	ff 25 f4 0a 20 00    	jmp    QWORD PTR [rip+0x200af4]        # 200fd0 <_GLOBAL_OFFSET_TABLE_+0x10>
 4dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

Disassembly of section .plt.got:

00000000000004e0 <__cxa_finalize@plt>:
 4e0:	ff 25 12 0b 20 00    	jmp    QWORD PTR [rip+0x200b12]        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 4e6:	66 90                	xchg   ax,ax

Disassembly of section .text:

00000000000004f0 <_start>:
 4f0:	31 ed                	xor    ebp,ebp
 4f2:	49 89 d1             	mov    r9,rdx
 4f5:	5e                   	pop    rsi
 4f6:	48 89 e2             	mov    rdx,rsp
 4f9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
 4fd:	50                   	push   rax
 4fe:	54                   	push   rsp
 4ff:	4c 8d 05 9a 01 00 00 	lea    r8,[rip+0x19a]        # 6a0 <__libc_csu_fini>
 506:	48 8d 0d 23 01 00 00 	lea    rcx,[rip+0x123]        # 630 <__libc_csu_init>
 50d:	48 8d 3d fa 00 00 00 	lea    rdi,[rip+0xfa]        # 60e <main>
 514:	ff 15 c6 0a 20 00    	call   QWORD PTR [rip+0x200ac6]        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 51a:	f4                   	hlt    
 51b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000000520 <deregister_tm_clones>:
 520:	48 8d 3d e9 0a 20 00 	lea    rdi,[rip+0x200ae9]        # 201010 <__TMC_END__>
 527:	55                   	push   rbp
 528:	48 8d 05 e1 0a 20 00 	lea    rax,[rip+0x200ae1]        # 201010 <__TMC_END__>
 52f:	48 39 f8             	cmp    rax,rdi
 532:	48 89 e5             	mov    rbp,rsp
 535:	74 19                	je     550 <deregister_tm_clones+0x30>
 537:	48 8b 05 9a 0a 20 00 	mov    rax,QWORD PTR [rip+0x200a9a]        # 200fd8 <_ITM_deregisterTMCloneTable>
 53e:	48 85 c0             	test   rax,rax
 541:	74 0d                	je     550 <deregister_tm_clones+0x30>
 543:	5d                   	pop    rbp
 544:	ff e0                	jmp    rax
 546:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 54d:	00 00 00 
 550:	5d                   	pop    rbp
 551:	c3                   	ret    
 552:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 556:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 55d:	00 00 00 

0000000000000560 <register_tm_clones>:
 560:	48 8d 3d a9 0a 20 00 	lea    rdi,[rip+0x200aa9]        # 201010 <__TMC_END__>
 567:	48 8d 35 a2 0a 20 00 	lea    rsi,[rip+0x200aa2]        # 201010 <__TMC_END__>
 56e:	55                   	push   rbp
 56f:	48 29 fe             	sub    rsi,rdi
 572:	48 89 e5             	mov    rbp,rsp
 575:	48 c1 fe 03          	sar    rsi,0x3
 579:	48 89 f0             	mov    rax,rsi
 57c:	48 c1 e8 3f          	shr    rax,0x3f
 580:	48 01 c6             	add    rsi,rax
 583:	48 d1 fe             	sar    rsi,1
 586:	74 18                	je     5a0 <register_tm_clones+0x40>
 588:	48 8b 05 61 0a 20 00 	mov    rax,QWORD PTR [rip+0x200a61]        # 200ff0 <_ITM_registerTMCloneTable>
 58f:	48 85 c0             	test   rax,rax
 592:	74 0c                	je     5a0 <register_tm_clones+0x40>
 594:	5d                   	pop    rbp
 595:	ff e0                	jmp    rax
 597:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
 59e:	00 00 
 5a0:	5d                   	pop    rbp
 5a1:	c3                   	ret    
 5a2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 5a6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 5ad:	00 00 00 

00000000000005b0 <__do_global_dtors_aux>:
 5b0:	80 3d 59 0a 20 00 00 	cmp    BYTE PTR [rip+0x200a59],0x0        # 201010 <__TMC_END__>
 5b7:	75 2f                	jne    5e8 <__do_global_dtors_aux+0x38>
 5b9:	48 83 3d 37 0a 20 00 	cmp    QWORD PTR [rip+0x200a37],0x0        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 5c0:	00 
 5c1:	55                   	push   rbp
 5c2:	48 89 e5             	mov    rbp,rsp
 5c5:	74 0c                	je     5d3 <__do_global_dtors_aux+0x23>
 5c7:	48 8b 3d 3a 0a 20 00 	mov    rdi,QWORD PTR [rip+0x200a3a]        # 201008 <__dso_handle>
 5ce:	e8 0d ff ff ff       	call   4e0 <__cxa_finalize@plt>
 5d3:	e8 48 ff ff ff       	call   520 <deregister_tm_clones>
 5d8:	c6 05 31 0a 20 00 01 	mov    BYTE PTR [rip+0x200a31],0x1        # 201010 <__TMC_END__>
 5df:	5d                   	pop    rbp
 5e0:	c3                   	ret    
 5e1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
 5e8:	f3 c3                	repz ret 
 5ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000005f0 <frame_dummy>:
 5f0:	55                   	push   rbp
 5f1:	48 89 e5             	mov    rbp,rsp
 5f4:	5d                   	pop    rbp
 5f5:	e9 66 ff ff ff       	jmp    560 <register_tm_clones>

00000000000005fa <plus>:
 5fa:	55                   	push   rbp
 5fb:	48 89 e5             	mov    rbp,rsp
 5fe:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
 601:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
 604:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
 607:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
 60a:	01 d0                	add    eax,edx
 60c:	5d                   	pop    rbp
 60d:	c3                   	ret    

000000000000060e <main>:
 60e:	55                   	push   rbp
 60f:	48 89 e5             	mov    rbp,rsp
 612:	be 04 00 00 00       	mov    esi,0x4
 617:	bf 03 00 00 00       	mov    edi,0x3
 61c:	e8 d9 ff ff ff       	call   5fa <plus>
 621:	5d                   	pop    rbp
 622:	c3                   	ret    
 623:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 62a:	00 00 00 
 62d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000000630 <__libc_csu_init>:
 630:	41 57                	push   r15
 632:	41 56                	push   r14
 634:	49 89 d7             	mov    r15,rdx
 637:	41 55                	push   r13
 639:	41 54                	push   r12
 63b:	4c 8d 25 ae 07 20 00 	lea    r12,[rip+0x2007ae]        # 200df0 <__frame_dummy_init_array_entry>
 642:	55                   	push   rbp
 643:	48 8d 2d ae 07 20 00 	lea    rbp,[rip+0x2007ae]        # 200df8 <__init_array_end>
 64a:	53                   	push   rbx
 64b:	41 89 fd             	mov    r13d,edi
 64e:	49 89 f6             	mov    r14,rsi
 651:	4c 29 e5             	sub    rbp,r12
 654:	48 83 ec 08          	sub    rsp,0x8
 658:	48 c1 fd 03          	sar    rbp,0x3
 65c:	e8 57 fe ff ff       	call   4b8 <_init>
 661:	48 85 ed             	test   rbp,rbp
 664:	74 20                	je     686 <__libc_csu_init+0x56>
 666:	31 db                	xor    ebx,ebx
 668:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
 66f:	00 
 670:	4c 89 fa             	mov    rdx,r15
 673:	4c 89 f6             	mov    rsi,r14
 676:	44 89 ef             	mov    edi,r13d
 679:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
 67d:	48 83 c3 01          	add    rbx,0x1
 681:	48 39 dd             	cmp    rbp,rbx
 684:	75 ea                	jne    670 <__libc_csu_init+0x40>
 686:	48 83 c4 08          	add    rsp,0x8
 68a:	5b                   	pop    rbx
 68b:	5d                   	pop    rbp
 68c:	41 5c                	pop    r12
 68e:	41 5d                	pop    r13
 690:	41 5e                	pop    r14
 692:	41 5f                	pop    r15
 694:	c3                   	ret    
 695:	90                   	nop
 696:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 69d:	00 00 00 

00000000000006a0 <__libc_csu_fini>:
 6a0:	f3 c3                	repz ret 

Disassembly of section .fini:

00000000000006a4 <_fini>:
 6a4:	48 83 ec 08          	sub    rsp,0x8
 6a8:	48 83 c4 08          	add    rsp,0x8
 6ac:	c3                   	ret    
