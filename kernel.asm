
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	88813103          	ld	sp,-1912(sp) # 80005888 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	408020ef          	jal	ra,80002424 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256
    800010f4:	00008067          	ret
	...

0000000080001100 <_ZN5Riscv14supervisorTrapEv>:

.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    addi sp, sp, -256
    80001100:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001104:	00013023          	sd	zero,0(sp)
    80001108:	00113423          	sd	ra,8(sp)
    8000110c:	00213823          	sd	sp,16(sp)
    80001110:	00313c23          	sd	gp,24(sp)
    80001114:	02413023          	sd	tp,32(sp)
    80001118:	02513423          	sd	t0,40(sp)
    8000111c:	02613823          	sd	t1,48(sp)
    80001120:	02713c23          	sd	t2,56(sp)
    80001124:	04813023          	sd	s0,64(sp)
    80001128:	04913423          	sd	s1,72(sp)
    8000112c:	04a13823          	sd	a0,80(sp)
    80001130:	04b13c23          	sd	a1,88(sp)
    80001134:	06c13023          	sd	a2,96(sp)
    80001138:	06d13423          	sd	a3,104(sp)
    8000113c:	06e13823          	sd	a4,112(sp)
    80001140:	06f13c23          	sd	a5,120(sp)
    80001144:	09013023          	sd	a6,128(sp)
    80001148:	09113423          	sd	a7,136(sp)
    8000114c:	09213823          	sd	s2,144(sp)
    80001150:	09313c23          	sd	s3,152(sp)
    80001154:	0b413023          	sd	s4,160(sp)
    80001158:	0b513423          	sd	s5,168(sp)
    8000115c:	0b613823          	sd	s6,176(sp)
    80001160:	0b713c23          	sd	s7,184(sp)
    80001164:	0d813023          	sd	s8,192(sp)
    80001168:	0d913423          	sd	s9,200(sp)
    8000116c:	0da13823          	sd	s10,208(sp)
    80001170:	0db13c23          	sd	s11,216(sp)
    80001174:	0fc13023          	sd	t3,224(sp)
    80001178:	0fd13423          	sd	t4,232(sp)
    8000117c:	0fe13823          	sd	t5,240(sp)
    80001180:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001184:	689000ef          	jal	ra,8000200c <_ZN5Riscv20handleSupervisorTrapEv>

    csrr t0, scause
    80001188:	142022f3          	csrr	t0,scause
    addi t0, t0, -8
    8000118c:	ff828293          	addi	t0,t0,-8
    beqz t0, ret_value_ecall
    80001190:	00028663          	beqz	t0,8000119c <ret_value_ecall>
    addi t0, t0, -1
    80001194:	fff28293          	addi	t0,t0,-1
    bnez t0, pop_registers
    80001198:	00029463          	bnez	t0,800011a0 <pop_registers>

000000008000119c <ret_value_ecall>:

ret_value_ecall:
    sd a0, 80(sp)
    8000119c:	04a13823          	sd	a0,80(sp)

00000000800011a0 <pop_registers>:

pop_registers:
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800011a0:	00013003          	ld	zero,0(sp)
    800011a4:	00813083          	ld	ra,8(sp)
    800011a8:	01013103          	ld	sp,16(sp)
    800011ac:	01813183          	ld	gp,24(sp)
    800011b0:	02013203          	ld	tp,32(sp)
    800011b4:	02813283          	ld	t0,40(sp)
    800011b8:	03013303          	ld	t1,48(sp)
    800011bc:	03813383          	ld	t2,56(sp)
    800011c0:	04013403          	ld	s0,64(sp)
    800011c4:	04813483          	ld	s1,72(sp)
    800011c8:	05013503          	ld	a0,80(sp)
    800011cc:	05813583          	ld	a1,88(sp)
    800011d0:	06013603          	ld	a2,96(sp)
    800011d4:	06813683          	ld	a3,104(sp)
    800011d8:	07013703          	ld	a4,112(sp)
    800011dc:	07813783          	ld	a5,120(sp)
    800011e0:	08013803          	ld	a6,128(sp)
    800011e4:	08813883          	ld	a7,136(sp)
    800011e8:	09013903          	ld	s2,144(sp)
    800011ec:	09813983          	ld	s3,152(sp)
    800011f0:	0a013a03          	ld	s4,160(sp)
    800011f4:	0a813a83          	ld	s5,168(sp)
    800011f8:	0b013b03          	ld	s6,176(sp)
    800011fc:	0b813b83          	ld	s7,184(sp)
    80001200:	0c013c03          	ld	s8,192(sp)
    80001204:	0c813c83          	ld	s9,200(sp)
    80001208:	0d013d03          	ld	s10,208(sp)
    8000120c:	0d813d83          	ld	s11,216(sp)
    80001210:	0e013e03          	ld	t3,224(sp)
    80001214:	0e813e83          	ld	t4,232(sp)
    80001218:	0f013f03          	ld	t5,240(sp)
    8000121c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001220:	10010113          	addi	sp,sp,256

    80001224:	10200073          	sret
	...

0000000080001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    # a0 = &old->context
    # a1 = &running->context
    sd ra, 0 * 8(a0)
    80001230:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001234:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001238:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000123c:	0085b103          	ld	sp,8(a1)

    80001240:	00008067          	ret

0000000080001244 <_mem_alloc>:
static struct mem_block* free_mem_head = NULL;
static struct mem_block* used_mem_head = NULL;
static int beginning = 0;

void* _mem_alloc(size_t blocks)
{
    80001244:	ff010113          	addi	sp,sp,-16
    80001248:	00813423          	sd	s0,8(sp)
    8000124c:	01010413          	addi	s0,sp,16
    // Sta ako alociramo svaki blok? Onda ce ponovo da kaze da ima mesta. Ovo mora negde gore.
    if (free_mem_head == NULL && beginning == 0)
    80001250:	00004797          	auipc	a5,0x4
    80001254:	6807b783          	ld	a5,1664(a5) # 800058d0 <free_mem_head>
    80001258:	08078463          	beqz	a5,800012e0 <_mem_alloc+0x9c>

        free_mem_head->next = NULL;
        free_mem_head->prev = NULL;
    }

    size_t allocate = blocks * MEM_BLOCK_SIZE; // Now this is in bytes
    8000125c:	00651793          	slli	a5,a0,0x6

    // I'm not a sure I have to check for this other case in the for loop:  || ((char*) curr + allocate) < HEAP_END_ADDR
    for (struct mem_block* curr = free_mem_head; curr != NULL; curr = curr->next)
    80001260:	00004517          	auipc	a0,0x4
    80001264:	67053503          	ld	a0,1648(a0) # 800058d0 <free_mem_head>
    80001268:	06050663          	beqz	a0,800012d4 <_mem_alloc+0x90>
    {
        /* FIRST FIT */
        if (curr->size < allocate)        // ========== Less ============
    8000126c:	00053703          	ld	a4,0(a0)
    80001270:	0af76c63          	bltu	a4,a5,80001328 <_mem_alloc+0xe4>
            continue;
        else if (curr->size == allocate)  // ========== Equals ==========
    80001274:	0af70e63          	beq	a4,a5,80001330 <_mem_alloc+0xec>
        }
        else // curr->size > allocate     // ========== Greater =========
        {
            size_t leftover_allocatable_size = 0;

            leftover_allocatable_size = curr->size - allocate; // That is the leftover part
    80001278:	40f70733          	sub	a4,a4,a5
            leftover_allocatable_size -= sizeof(struct mem_block);
    8000127c:	fe870713          	addi	a4,a4,-24

            if (leftover_allocatable_size < MEM_BLOCK_SIZE)
    80001280:	03f00693          	li	a3,63
    80001284:	18e6ee63          	bltu	a3,a4,80001420 <_mem_alloc+0x1dc>
            {
                // Unlink current block
                if (curr->prev != NULL)
    80001288:	00853783          	ld	a5,8(a0)
    8000128c:	14078463          	beqz	a5,800013d4 <_mem_alloc+0x190>
                    curr->prev->next = curr->next;
    80001290:	01053703          	ld	a4,16(a0)
    80001294:	00e7b823          	sd	a4,16(a5)
                else
                    free_mem_head = curr->next;

                if (curr->next != NULL)
    80001298:	01053783          	ld	a5,16(a0)
    8000129c:	00078663          	beqz	a5,800012a8 <_mem_alloc+0x64>
                    curr->next->prev = curr->prev;
    800012a0:	00853703          	ld	a4,8(a0)
    800012a4:	00e7b423          	sd	a4,8(a5)

                curr->prev = NULL;
    800012a8:	00053423          	sd	zero,8(a0)
                curr->next = NULL;
    800012ac:	00053823          	sd	zero,16(a0)

                // Put curr in "used_mem" Linked List
                // You already wrote it
                // ========== Equals ==========
                if (used_mem_head == NULL)
    800012b0:	00004797          	auipc	a5,0x4
    800012b4:	6187b783          	ld	a5,1560(a5) # 800058c8 <used_mem_head>
    800012b8:	12078663          	beqz	a5,800013e4 <_mem_alloc+0x1a0>
                {
                    used_mem_head = curr;
                }
                else
                {
                    if ((char*)curr < (char*) used_mem_head)
    800012bc:	14f57e63          	bgeu	a0,a5,80001418 <_mem_alloc+0x1d4>
                    {
                        used_mem_head->prev = curr;
    800012c0:	00a7b423          	sd	a0,8(a5)
                        curr->next = used_mem_head;
    800012c4:	00f53823          	sd	a5,16(a0)
                        used_mem_head = curr;
    800012c8:	00004797          	auipc	a5,0x4
    800012cc:	60a7b023          	sd	a0,1536(a5) # 800058c8 <used_mem_head>
                            curr->next = tmp;
                        }
                    }
                }

                return (void*)((char*)curr + sizeof(struct mem_block));
    800012d0:	01850513          	addi	a0,a0,24
        }
    }

    // There is not enough space
    return NULL;
}
    800012d4:	00813403          	ld	s0,8(sp)
    800012d8:	01010113          	addi	sp,sp,16
    800012dc:	00008067          	ret
    if (free_mem_head == NULL && beginning == 0)
    800012e0:	00004797          	auipc	a5,0x4
    800012e4:	5e07a783          	lw	a5,1504(a5) # 800058c0 <beginning>
    800012e8:	f6079ae3          	bnez	a5,8000125c <_mem_alloc+0x18>
        beginning = 1;
    800012ec:	00100793          	li	a5,1
    800012f0:	00004717          	auipc	a4,0x4
    800012f4:	5cf72823          	sw	a5,1488(a4) # 800058c0 <beginning>
        free_mem_head = (struct mem_block*) HEAP_START_ADDR;
    800012f8:	00004797          	auipc	a5,0x4
    800012fc:	5607b783          	ld	a5,1376(a5) # 80005858 <HEAP_START_ADDR>
    80001300:	00004717          	auipc	a4,0x4
    80001304:	5cf73823          	sd	a5,1488(a4) # 800058d0 <free_mem_head>
        free_mem_head->size = ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR) - sizeof(struct mem_block);
    80001308:	00004717          	auipc	a4,0x4
    8000130c:	54873703          	ld	a4,1352(a4) # 80005850 <HEAP_END_ADDR>
    80001310:	40f70733          	sub	a4,a4,a5
    80001314:	fe870713          	addi	a4,a4,-24
    80001318:	00e7b023          	sd	a4,0(a5)
        free_mem_head->next = NULL;
    8000131c:	0007b823          	sd	zero,16(a5)
        free_mem_head->prev = NULL;
    80001320:	0007b423          	sd	zero,8(a5)
    80001324:	f39ff06f          	j	8000125c <_mem_alloc+0x18>
    for (struct mem_block* curr = free_mem_head; curr != NULL; curr = curr->next)
    80001328:	01053503          	ld	a0,16(a0)
    8000132c:	f3dff06f          	j	80001268 <_mem_alloc+0x24>
            if (curr->prev != NULL)
    80001330:	00853783          	ld	a5,8(a0)
    80001334:	04078663          	beqz	a5,80001380 <_mem_alloc+0x13c>
                curr->prev->next = curr->next;
    80001338:	01053703          	ld	a4,16(a0)
    8000133c:	00e7b823          	sd	a4,16(a5)
            if (curr->next != NULL)
    80001340:	01053783          	ld	a5,16(a0)
    80001344:	00078663          	beqz	a5,80001350 <_mem_alloc+0x10c>
                curr->next->prev = curr->prev;
    80001348:	00853703          	ld	a4,8(a0)
    8000134c:	00e7b423          	sd	a4,8(a5)
            curr->prev = NULL;
    80001350:	00053423          	sd	zero,8(a0)
            curr->next = NULL;
    80001354:	00053823          	sd	zero,16(a0)
            if (used_mem_head == NULL)
    80001358:	00004797          	auipc	a5,0x4
    8000135c:	5707b783          	ld	a5,1392(a5) # 800058c8 <used_mem_head>
    80001360:	02078863          	beqz	a5,80001390 <_mem_alloc+0x14c>
                if ((char*)curr < (char*)used_mem_head) // Should be first in the list
    80001364:	06f57463          	bgeu	a0,a5,800013cc <_mem_alloc+0x188>
                    used_mem_head->prev = curr;
    80001368:	00a7b423          	sd	a0,8(a5)
                    curr->next = used_mem_head;
    8000136c:	00f53823          	sd	a5,16(a0)
                    used_mem_head = curr;
    80001370:	00004797          	auipc	a5,0x4
    80001374:	54a7bc23          	sd	a0,1368(a5) # 800058c8 <used_mem_head>
                    return (void*)((char*) curr + sizeof(struct mem_block));
    80001378:	01850513          	addi	a0,a0,24
    8000137c:	f59ff06f          	j	800012d4 <_mem_alloc+0x90>
                free_mem_head = curr->next;
    80001380:	01053783          	ld	a5,16(a0)
    80001384:	00004717          	auipc	a4,0x4
    80001388:	54f73623          	sd	a5,1356(a4) # 800058d0 <free_mem_head>
    8000138c:	fb5ff06f          	j	80001340 <_mem_alloc+0xfc>
                used_mem_head = curr;
    80001390:	00004797          	auipc	a5,0x4
    80001394:	52a7bc23          	sd	a0,1336(a5) # 800058c8 <used_mem_head>
                return (void*)((char*) curr + sizeof(struct mem_block));
    80001398:	01850513          	addi	a0,a0,24
    8000139c:	f39ff06f          	j	800012d4 <_mem_alloc+0x90>
                        prev_tmp = tmp;
    800013a0:	00078713          	mv	a4,a5
                        tmp = tmp->next;
    800013a4:	0107b783          	ld	a5,16(a5)
                    while (tmp != NULL && (char*)tmp < (char*)curr)
    800013a8:	00078463          	beqz	a5,800013b0 <_mem_alloc+0x16c>
    800013ac:	fea7eae3          	bltu	a5,a0,800013a0 <_mem_alloc+0x15c>
                    prev_tmp->next = curr;
    800013b0:	00a73823          	sd	a0,16(a4)
                    curr->prev = prev_tmp;
    800013b4:	00e53423          	sd	a4,8(a0)
                    if (tmp != NULL)
    800013b8:	00078663          	beqz	a5,800013c4 <_mem_alloc+0x180>
                        tmp->prev = curr;
    800013bc:	00a7b423          	sd	a0,8(a5)
                        curr->next = tmp;
    800013c0:	00f53823          	sd	a5,16(a0)
                    return (void*)((char*) curr + sizeof(struct mem_block));
    800013c4:	01850513          	addi	a0,a0,24
    800013c8:	f0dff06f          	j	800012d4 <_mem_alloc+0x90>
                    struct mem_block* prev_tmp = NULL;
    800013cc:	00000713          	li	a4,0
    800013d0:	fd9ff06f          	j	800013a8 <_mem_alloc+0x164>
                    free_mem_head = curr->next;
    800013d4:	01053783          	ld	a5,16(a0)
    800013d8:	00004717          	auipc	a4,0x4
    800013dc:	4ef73c23          	sd	a5,1272(a4) # 800058d0 <free_mem_head>
    800013e0:	eb9ff06f          	j	80001298 <_mem_alloc+0x54>
                    used_mem_head = curr;
    800013e4:	00004797          	auipc	a5,0x4
    800013e8:	4ea7b223          	sd	a0,1252(a5) # 800058c8 <used_mem_head>
    800013ec:	ee5ff06f          	j	800012d0 <_mem_alloc+0x8c>
                            prev_tmp = tmp;
    800013f0:	00078713          	mv	a4,a5
                            tmp = tmp->next;
    800013f4:	0107b783          	ld	a5,16(a5)
                        while (tmp && (char*)tmp < (char*)curr)
    800013f8:	00078463          	beqz	a5,80001400 <_mem_alloc+0x1bc>
    800013fc:	fea7eae3          	bltu	a5,a0,800013f0 <_mem_alloc+0x1ac>
                        prev_tmp->next = curr;
    80001400:	00a73823          	sd	a0,16(a4)
                        curr->prev = prev_tmp;
    80001404:	00e53423          	sd	a4,8(a0)
                        if (tmp != NULL)
    80001408:	ec0784e3          	beqz	a5,800012d0 <_mem_alloc+0x8c>
                            tmp->prev = curr;
    8000140c:	00a7b423          	sd	a0,8(a5)
                            curr->next = tmp;
    80001410:	00f53823          	sd	a5,16(a0)
    80001414:	ebdff06f          	j	800012d0 <_mem_alloc+0x8c>
                        struct mem_block* prev_tmp = NULL;
    80001418:	00000713          	li	a4,0
    8000141c:	fddff06f          	j	800013f8 <_mem_alloc+0x1b4>
                if (curr->prev != NULL)
    80001420:	00853683          	ld	a3,8(a0)
    80001424:	06068863          	beqz	a3,80001494 <_mem_alloc+0x250>
                    curr->prev->next = curr->next;
    80001428:	01053603          	ld	a2,16(a0)
    8000142c:	00c6b823          	sd	a2,16(a3)
                if (curr->next != NULL)
    80001430:	01053683          	ld	a3,16(a0)
    80001434:	00068663          	beqz	a3,80001440 <_mem_alloc+0x1fc>
                    curr->next->prev = curr->prev;
    80001438:	00853603          	ld	a2,8(a0)
    8000143c:	00c6b423          	sd	a2,8(a3)
                struct mem_block* prev_curr = curr->prev;
    80001440:	00853583          	ld	a1,8(a0)
                struct mem_block* next_curr = curr->next;
    80001444:	01053803          	ld	a6,16(a0)
                curr->prev = NULL;
    80001448:	00053423          	sd	zero,8(a0)
                curr->next = NULL;
    8000144c:	00053823          	sd	zero,16(a0)
                curr->size = allocate;
    80001450:	00f53023          	sd	a5,0(a0)
                if (used_mem_head == NULL)
    80001454:	00004697          	auipc	a3,0x4
    80001458:	4746b683          	ld	a3,1140(a3) # 800058c8 <used_mem_head>
    8000145c:	04068463          	beqz	a3,800014a4 <_mem_alloc+0x260>
                    if ((char*)curr < (char*) used_mem_head)
    80001460:	06d57c63          	bgeu	a0,a3,800014d8 <_mem_alloc+0x294>
                        used_mem_head->prev = curr;
    80001464:	00a6b423          	sd	a0,8(a3)
                        curr->next = used_mem_head;
    80001468:	00d53823          	sd	a3,16(a0)
                        used_mem_head = curr;
    8000146c:	00004697          	auipc	a3,0x4
    80001470:	44a6be23          	sd	a0,1116(a3) # 800058c8 <used_mem_head>
                struct mem_block* leftover = (struct mem_block*) ((char*)curr + sizeof(struct mem_block) + allocate);
    80001474:	01878793          	addi	a5,a5,24
    80001478:	00f507b3          	add	a5,a0,a5
                leftover->size = leftover_allocatable_size;
    8000147c:	00e7b023          	sd	a4,0(a5)
                if (prev_curr == NULL) // If it's the head that is divided
    80001480:	06058063          	beqz	a1,800014e0 <_mem_alloc+0x29c>
                    leftover->prev = prev_curr;
    80001484:	00b7b423          	sd	a1,8(a5)
                leftover->next = next_curr;
    80001488:	0107b823          	sd	a6,16(a5)
                return (void*)((char*) curr + sizeof(struct mem_block));
    8000148c:	01850513          	addi	a0,a0,24
    80001490:	e45ff06f          	j	800012d4 <_mem_alloc+0x90>
                    free_mem_head = curr->next;
    80001494:	01053683          	ld	a3,16(a0)
    80001498:	00004617          	auipc	a2,0x4
    8000149c:	42d63c23          	sd	a3,1080(a2) # 800058d0 <free_mem_head>
    800014a0:	f91ff06f          	j	80001430 <_mem_alloc+0x1ec>
                    used_mem_head = curr;
    800014a4:	00004697          	auipc	a3,0x4
    800014a8:	42a6b223          	sd	a0,1060(a3) # 800058c8 <used_mem_head>
    800014ac:	fc9ff06f          	j	80001474 <_mem_alloc+0x230>
                            prev_tmp = tmp;
    800014b0:	00068613          	mv	a2,a3
                            tmp = tmp->next;
    800014b4:	0106b683          	ld	a3,16(a3)
                        while (tmp != NULL && (char*)tmp < (char*)curr)
    800014b8:	00068463          	beqz	a3,800014c0 <_mem_alloc+0x27c>
    800014bc:	fea6eae3          	bltu	a3,a0,800014b0 <_mem_alloc+0x26c>
                        prev_tmp->next = curr;
    800014c0:	00a63823          	sd	a0,16(a2)
                        curr->prev = prev_tmp; // Because tmp could be NULL, that's why we can't tmp->prev
    800014c4:	00c53423          	sd	a2,8(a0)
                        if (tmp != NULL)
    800014c8:	fa0686e3          	beqz	a3,80001474 <_mem_alloc+0x230>
                            tmp->prev = curr;
    800014cc:	00a6b423          	sd	a0,8(a3)
                            curr->next = tmp;
    800014d0:	00d53823          	sd	a3,16(a0)
    800014d4:	fa1ff06f          	j	80001474 <_mem_alloc+0x230>
                        struct mem_block* prev_tmp = NULL;
    800014d8:	00000613          	li	a2,0
    800014dc:	fddff06f          	j	800014b8 <_mem_alloc+0x274>
                    free_mem_head = leftover;
    800014e0:	00004717          	auipc	a4,0x4
    800014e4:	3ef73823          	sd	a5,1008(a4) # 800058d0 <free_mem_head>
                    leftover->prev = NULL;
    800014e8:	0007b423          	sd	zero,8(a5)
    800014ec:	f9dff06f          	j	80001488 <_mem_alloc+0x244>

00000000800014f0 <_mem_free>:




int _mem_free(void* allocated_address)
{
    800014f0:	ff010113          	addi	sp,sp,-16
    800014f4:	00813423          	sd	s0,8(sp)
    800014f8:	01010413          	addi	s0,sp,16
    if (allocated_address == NULL)
    800014fc:	26050a63          	beqz	a0,80001770 <_mem_free+0x280>
        return -1;

    // Nothing to free
    if (used_mem_head == NULL && (char*)allocated_address < (char*)used_mem_head)
    80001500:	00004717          	auipc	a4,0x4
    80001504:	3c873703          	ld	a4,968(a4) # 800058c8 <used_mem_head>
    80001508:	04070863          	beqz	a4,80001558 <_mem_free+0x68>
        return -1;

    struct mem_block* block_to_free = (struct mem_block*) ((char*)allocated_address - sizeof(struct mem_block));
    8000150c:	fe850693          	addi	a3,a0,-24

    if ((char*)block_to_free == (char*)used_mem_head)
    80001510:	04d70a63          	beq	a4,a3,80001564 <_mem_free+0x74>
    }
    else
    {
        struct mem_block* iter_used = used_mem_head;

        while (iter_used != NULL)
    80001514:	00071063          	bnez	a4,80001514 <_mem_free+0x24>
            if ((char*)iter_used == (char*)block_to_free)
                break;
        }

        // No such block was allocated.
        if (iter_used == NULL)
    80001518:	26070463          	beqz	a4,80001780 <_mem_free+0x290>
            return -1;

        struct mem_block* prev_used = block_to_free->prev;
    8000151c:	ff053603          	ld	a2,-16(a0)
        struct mem_block* next_used = block_to_free->next;
    80001520:	ff853783          	ld	a5,-8(a0)

        prev_used->next = next_used;
    80001524:	00f63823          	sd	a5,16(a2)
        if (next_used)
    80001528:	00078463          	beqz	a5,80001530 <_mem_free+0x40>
            next_used->prev = prev_used;
    8000152c:	00c7b423          	sd	a2,8(a5)

        block_to_free->prev = NULL;
    80001530:	fe053823          	sd	zero,-16(a0)
        block_to_free->next = NULL;
    80001534:	fe053c23          	sd	zero,-8(a0)


        // What if free_mem_head is Empty?
        if (free_mem_head == NULL)
    80001538:	00004797          	auipc	a5,0x4
    8000153c:	3987b783          	ld	a5,920(a5) # 800058d0 <free_mem_head>
    80001540:	14078463          	beqz	a5,80001688 <_mem_free+0x198>

            // Put back "free_mem" Linked List with a potential of merging
            struct mem_block* prev_tmp = NULL;
            struct mem_block* tmp = free_mem_head;

            while (tmp && (char*)tmp < (char*)block_to_free)
    80001544:	14078a63          	beqz	a5,80001698 <_mem_free+0x1a8>
    80001548:	14d7f863          	bgeu	a5,a3,80001698 <_mem_free+0x1a8>
            {
                prev_tmp = tmp;
    8000154c:	00078713          	mv	a4,a5
                tmp = tmp->next;
    80001550:	0107b783          	ld	a5,16(a5)
    80001554:	ff1ff06f          	j	80001544 <_mem_free+0x54>
    if (used_mem_head == NULL && (char*)allocated_address < (char*)used_mem_head)
    80001558:	fae57ae3          	bgeu	a0,a4,8000150c <_mem_free+0x1c>
        return -1;
    8000155c:	fff00513          	li	a0,-1
    80001560:	1700006f          	j	800016d0 <_mem_free+0x1e0>
        used_mem_head = block_to_free->next;
    80001564:	ff853783          	ld	a5,-8(a0)
    80001568:	00004717          	auipc	a4,0x4
    8000156c:	36f73023          	sd	a5,864(a4) # 800058c8 <used_mem_head>
        if (used_mem_head)
    80001570:	00078463          	beqz	a5,80001578 <_mem_free+0x88>
            used_mem_head->prev = NULL;
    80001574:	0007b423          	sd	zero,8(a5)
        block_to_free->next = NULL;
    80001578:	fe053c23          	sd	zero,-8(a0)
        if (free_mem_head == NULL)
    8000157c:	00004797          	auipc	a5,0x4
    80001580:	3547b783          	ld	a5,852(a5) # 800058d0 <free_mem_head>
    80001584:	00078663          	beqz	a5,80001590 <_mem_free+0xa0>
            struct mem_block* prev_tmp = NULL;
    80001588:	00000713          	li	a4,0
    8000158c:	01c0006f          	j	800015a8 <_mem_free+0xb8>
            free_mem_head = block_to_free;
    80001590:	00004797          	auipc	a5,0x4
    80001594:	34d7b023          	sd	a3,832(a5) # 800058d0 <free_mem_head>
            return 0;
    80001598:	00000513          	li	a0,0
    8000159c:	1340006f          	j	800016d0 <_mem_free+0x1e0>
                prev_tmp = tmp;
    800015a0:	00078713          	mv	a4,a5
                tmp = tmp->next;
    800015a4:	0107b783          	ld	a5,16(a5)
            while (tmp && (char*)tmp < (char*)block_to_free)
    800015a8:	00078463          	beqz	a5,800015b0 <_mem_free+0xc0>
    800015ac:	fed7eae3          	bltu	a5,a3,800015a0 <_mem_free+0xb0>
            if (prev_tmp)
    800015b0:	04070463          	beqz	a4,800015f8 <_mem_free+0x108>
                prev_tmp->next = block_to_free;
    800015b4:	00d73823          	sd	a3,16(a4)
            block_to_free->prev = prev_tmp;
    800015b8:	fee53823          	sd	a4,-16(a0)
            if (tmp != NULL)
    800015bc:	00078663          	beqz	a5,800015c8 <_mem_free+0xd8>
                tmp->prev = block_to_free;
    800015c0:	00d7b423          	sd	a3,8(a5)
                block_to_free->next = tmp;
    800015c4:	fef53c23          	sd	a5,-8(a0)
            if (prev_tmp != NULL && (char*)prev_tmp + sizeof(struct mem_block) + prev_tmp->size == (char*)block_to_free)
    800015c8:	00070a63          	beqz	a4,800015dc <_mem_free+0xec>
    800015cc:	00073603          	ld	a2,0(a4)
    800015d0:	01860793          	addi	a5,a2,24
    800015d4:	00f707b3          	add	a5,a4,a5
    800015d8:	02d78663          	beq	a5,a3,80001604 <_mem_free+0x114>
            else if (block_to_free->next && (char*)block_to_free + sizeof(struct mem_block) + block_to_free->size == (char*)block_to_free->next)
    800015dc:	ff853783          	ld	a5,-8(a0)
    800015e0:	18078c63          	beqz	a5,80001778 <_mem_free+0x288>
    800015e4:	fe853703          	ld	a4,-24(a0)
    800015e8:	00e50633          	add	a2,a0,a4
    800015ec:	06c78863          	beq	a5,a2,8000165c <_mem_free+0x16c>
            }

            return 0;
        }
    }
    return 0;
    800015f0:	00000513          	li	a0,0
    800015f4:	0dc0006f          	j	800016d0 <_mem_free+0x1e0>
                free_mem_head = block_to_free;
    800015f8:	00004617          	auipc	a2,0x4
    800015fc:	2cd63c23          	sd	a3,728(a2) # 800058d0 <free_mem_head>
    80001600:	fb9ff06f          	j	800015b8 <_mem_free+0xc8>
                prev_tmp->size = prev_tmp->size + (block_to_free->size + sizeof(struct mem_block));
    80001604:	fe853783          	ld	a5,-24(a0)
    80001608:	00f607b3          	add	a5,a2,a5
    8000160c:	01878793          	addi	a5,a5,24
    80001610:	00f73023          	sd	a5,0(a4)
                prev_tmp->next = block_to_free->next;
    80001614:	ff853783          	ld	a5,-8(a0)
    80001618:	00f73823          	sd	a5,16(a4)
                if (block_to_free->next)
    8000161c:	00078e63          	beqz	a5,80001638 <_mem_free+0x148>
                    block_to_free->next->prev = prev_tmp;
    80001620:	00e7b423          	sd	a4,8(a5)
                    if ((char*)prev_tmp + sizeof(struct mem_block) + prev_tmp->size == (char*)prev_tmp->next)
    80001624:	00073683          	ld	a3,0(a4)
    80001628:	01868793          	addi	a5,a3,24
    8000162c:	00f707b3          	add	a5,a4,a5
    80001630:	01073603          	ld	a2,16(a4)
    80001634:	00c78663          	beq	a5,a2,80001640 <_mem_free+0x150>
                return 0;
    80001638:	00000513          	li	a0,0
    8000163c:	0940006f          	j	800016d0 <_mem_free+0x1e0>
                        prev_tmp->size = prev_tmp->size + (prev_tmp->next->size + sizeof(struct mem_block));
    80001640:	00063783          	ld	a5,0(a2)
    80001644:	00f687b3          	add	a5,a3,a5
    80001648:	01878793          	addi	a5,a5,24
    8000164c:	00f73023          	sd	a5,0(a4)
                        prev_tmp->next = prev_tmp->next->next;
    80001650:	01063783          	ld	a5,16(a2)
    80001654:	00f73823          	sd	a5,16(a4)
    80001658:	fe1ff06f          	j	80001638 <_mem_free+0x148>
                block_to_free->size = block_to_free->size + (block_to_free->next->size + sizeof(struct mem_block) + block_to_free->next->size);
    8000165c:	0007b603          	ld	a2,0(a5)
    80001660:	00c60613          	addi	a2,a2,12
    80001664:	00161613          	slli	a2,a2,0x1
    80001668:	00c70733          	add	a4,a4,a2
    8000166c:	fee53423          	sd	a4,-24(a0)
                block_to_free->next = block_to_free->next->next;
    80001670:	0107b783          	ld	a5,16(a5)
    80001674:	fef53c23          	sd	a5,-8(a0)
                if (block_to_free->next)
    80001678:	00078463          	beqz	a5,80001680 <_mem_free+0x190>
                    block_to_free->next->prev = block_to_free;
    8000167c:	00d7b423          	sd	a3,8(a5)
                return 0;
    80001680:	00000513          	li	a0,0
    80001684:	04c0006f          	j	800016d0 <_mem_free+0x1e0>
            free_mem_head = block_to_free;
    80001688:	00004797          	auipc	a5,0x4
    8000168c:	24d7b423          	sd	a3,584(a5) # 800058d0 <free_mem_head>
            return 0;
    80001690:	00000513          	li	a0,0
    80001694:	03c0006f          	j	800016d0 <_mem_free+0x1e0>
            prev_tmp->next = block_to_free;
    80001698:	00d73823          	sd	a3,16(a4)
            block_to_free->prev = prev_tmp;
    8000169c:	fee53823          	sd	a4,-16(a0)
            if (tmp != NULL)
    800016a0:	00078663          	beqz	a5,800016ac <_mem_free+0x1bc>
                tmp->prev = block_to_free;
    800016a4:	00d7b423          	sd	a3,8(a5)
                block_to_free->next = tmp;
    800016a8:	fef53c23          	sd	a5,-8(a0)
            if ((char*)prev_tmp + sizeof(struct mem_block) + prev_tmp->size == (char*)block_to_free)
    800016ac:	00073603          	ld	a2,0(a4)
    800016b0:	01860793          	addi	a5,a2,24
    800016b4:	00f707b3          	add	a5,a4,a5
    800016b8:	02d78263          	beq	a5,a3,800016dc <_mem_free+0x1ec>
            else if ((char*)block_to_free + sizeof(struct mem_block) + block_to_free->size == (char*)block_to_free->next)
    800016bc:	fe853783          	ld	a5,-24(a0)
    800016c0:	00f50633          	add	a2,a0,a5
    800016c4:	ff853703          	ld	a4,-8(a0)
    800016c8:	06e60e63          	beq	a2,a4,80001744 <_mem_free+0x254>
            return 0;
    800016cc:	00000513          	li	a0,0
}
    800016d0:	00813403          	ld	s0,8(sp)
    800016d4:	01010113          	addi	sp,sp,16
    800016d8:	00008067          	ret
                prev_tmp->size = prev_tmp->size + (block_to_free->size + sizeof(struct mem_block));
    800016dc:	fe853783          	ld	a5,-24(a0)
    800016e0:	00f60633          	add	a2,a2,a5
    800016e4:	01860613          	addi	a2,a2,24
    800016e8:	00c73023          	sd	a2,0(a4)
                prev_tmp->next = block_to_free->next;
    800016ec:	ff853783          	ld	a5,-8(a0)
    800016f0:	00f73823          	sd	a5,16(a4)
                if (block_to_free->next)
    800016f4:	fc078ce3          	beqz	a5,800016cc <_mem_free+0x1dc>
                    block_to_free->next->prev = prev_tmp;
    800016f8:	00e7b423          	sd	a4,8(a5)
                    if ((char*)prev_tmp + sizeof(struct mem_block) + prev_tmp->size == (char*)block_to_free->next)
    800016fc:	00073683          	ld	a3,0(a4)
    80001700:	01868793          	addi	a5,a3,24
    80001704:	00f707b3          	add	a5,a4,a5
    80001708:	ff853603          	ld	a2,-8(a0)
    8000170c:	fcc790e3          	bne	a5,a2,800016cc <_mem_free+0x1dc>
                        prev_tmp->size = prev_tmp->size + (block_to_free->next->size + sizeof(struct mem_block));
    80001710:	00063783          	ld	a5,0(a2)
    80001714:	00f687b3          	add	a5,a3,a5
    80001718:	01878793          	addi	a5,a5,24
    8000171c:	00f73023          	sd	a5,0(a4)
                        prev_tmp->next = block_to_free->next->next;
    80001720:	ff853783          	ld	a5,-8(a0)
    80001724:	0107b783          	ld	a5,16(a5)
    80001728:	00f73823          	sd	a5,16(a4)
                        if (block_to_free->next->next)
    8000172c:	ff853783          	ld	a5,-8(a0)
    80001730:	0107b783          	ld	a5,16(a5)
    80001734:	00078463          	beqz	a5,8000173c <_mem_free+0x24c>
                            block_to_free->next->next->prev = prev_tmp;
    80001738:	00e7b423          	sd	a4,8(a5)
                        return 0;
    8000173c:	00000513          	li	a0,0
    80001740:	f91ff06f          	j	800016d0 <_mem_free+0x1e0>
                block_to_free->size = block_to_free->size + (block_to_free->next->size + sizeof(struct mem_block));
    80001744:	00073603          	ld	a2,0(a4)
    80001748:	00c787b3          	add	a5,a5,a2
    8000174c:	01878793          	addi	a5,a5,24
    80001750:	fef53423          	sd	a5,-24(a0)
                block_to_free->next = block_to_free->next->next;
    80001754:	01073783          	ld	a5,16(a4)
    80001758:	fef53c23          	sd	a5,-8(a0)
                if (block_to_free->next->next)
    8000175c:	0107b783          	ld	a5,16(a5)
    80001760:	00078463          	beqz	a5,80001768 <_mem_free+0x278>
                    block_to_free->next->next->prev = block_to_free;
    80001764:	00d7b423          	sd	a3,8(a5)
                return 0;
    80001768:	00000513          	li	a0,0
    8000176c:	f65ff06f          	j	800016d0 <_mem_free+0x1e0>
        return -1;
    80001770:	fff00513          	li	a0,-1
    80001774:	f5dff06f          	j	800016d0 <_mem_free+0x1e0>
    return 0;
    80001778:	00000513          	li	a0,0
    8000177c:	f55ff06f          	j	800016d0 <_mem_free+0x1e0>
            return -1;
    80001780:	fff00513          	li	a0,-1
    80001784:	f4dff06f          	j	800016d0 <_mem_free+0x1e0>

0000000080001788 <_Z13thread_createPP3TCBPFvPvES2_>:
//    return (uint64*)address;
//}


int thread_create(thread_t *handle, void(*start_routine)(void*), void *arg)
{
    80001788:	fe010113          	addi	sp,sp,-32
    8000178c:	00113c23          	sd	ra,24(sp)
    80001790:	00813823          	sd	s0,16(sp)
    80001794:	00913423          	sd	s1,8(sp)
    80001798:	02010413          	addi	s0,sp,32
//    else if (!start_routine == 0)
//        return -2;

    uint64 number = 0x11;

    __asm__ volatile("mv a3, %0" : : "r" (arg));
    8000179c:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    800017a0:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    800017a4:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (number));
    800017a8:	01100793          	li	a5,17
    800017ac:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800017b0:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800017b4:	00050493          	mv	s1,a0

    printString("--------------------------------------------- CREATE THREAD RET: ");
    800017b8:	00004517          	auipc	a0,0x4
    800017bc:	86850513          	addi	a0,a0,-1944 # 80005020 <CONSOLE_STATUS+0x10>
    800017c0:	00001097          	auipc	ra,0x1
    800017c4:	b38080e7          	jalr	-1224(ra) # 800022f8 <_Z11printStringPKc>
    printInteger(ret);
    800017c8:	00048513          	mv	a0,s1
    800017cc:	00001097          	auipc	ra,0x1
    800017d0:	b9c080e7          	jalr	-1124(ra) # 80002368 <_Z12printIntegerm>
    printString("\n");
    800017d4:	00004517          	auipc	a0,0x4
    800017d8:	93c50513          	addi	a0,a0,-1732 # 80005110 <CONSOLE_STATUS+0x100>
    800017dc:	00001097          	auipc	ra,0x1
    800017e0:	b1c080e7          	jalr	-1252(ra) # 800022f8 <_Z11printStringPKc>

    return (int)ret;

}
    800017e4:	0004851b          	sext.w	a0,s1
    800017e8:	01813083          	ld	ra,24(sp)
    800017ec:	01013403          	ld	s0,16(sp)
    800017f0:	00813483          	ld	s1,8(sp)
    800017f4:	02010113          	addi	sp,sp,32
    800017f8:	00008067          	ret

00000000800017fc <_Z15thread_dispatchv>:

void thread_dispatch()
{
    800017fc:	ff010113          	addi	sp,sp,-16
    80001800:	00813423          	sd	s0,8(sp)
    80001804:	01010413          	addi	s0,sp,16
    int number = 0x13;
    __asm__ volatile("mv a0, %0" : : "r" (number));
    80001808:	01300793          	li	a5,19
    8000180c:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001810:	00000073          	ecall
    80001814:	00813403          	ld	s0,8(sp)
    80001818:	01010113          	addi	sp,sp,16
    8000181c:	00008067          	ret

0000000080001820 <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    80001820:	fe010113          	addi	sp,sp,-32
    80001824:	00113c23          	sd	ra,24(sp)
    80001828:	00813823          	sd	s0,16(sp)
    8000182c:	00913423          	sd	s1,8(sp)
    80001830:	01213023          	sd	s2,0(sp)
    80001834:	02010413          	addi	s0,sp,32
    80001838:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000183c:	00100793          	li	a5,1
    80001840:	02a7f863          	bgeu	a5,a0,80001870 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80001844:	00a00793          	li	a5,10
    80001848:	02f577b3          	remu	a5,a0,a5
    8000184c:	02078e63          	beqz	a5,80001888 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001850:	fff48513          	addi	a0,s1,-1
    80001854:	00000097          	auipc	ra,0x0
    80001858:	fcc080e7          	jalr	-52(ra) # 80001820 <_ZL9fibonaccim>
    8000185c:	00050913          	mv	s2,a0
    80001860:	ffe48513          	addi	a0,s1,-2
    80001864:	00000097          	auipc	ra,0x0
    80001868:	fbc080e7          	jalr	-68(ra) # 80001820 <_ZL9fibonaccim>
    8000186c:	00a90533          	add	a0,s2,a0
}
    80001870:	01813083          	ld	ra,24(sp)
    80001874:	01013403          	ld	s0,16(sp)
    80001878:	00813483          	ld	s1,8(sp)
    8000187c:	00013903          	ld	s2,0(sp)
    80001880:	02010113          	addi	sp,sp,32
    80001884:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001888:	00000097          	auipc	ra,0x0
    8000188c:	f74080e7          	jalr	-140(ra) # 800017fc <_Z15thread_dispatchv>
    80001890:	fc1ff06f          	j	80001850 <_ZL9fibonaccim+0x30>

0000000080001894 <_Z11workerBodyAv>:
{
    80001894:	fe010113          	addi	sp,sp,-32
    80001898:	00113c23          	sd	ra,24(sp)
    8000189c:	00813823          	sd	s0,16(sp)
    800018a0:	00913423          	sd	s1,8(sp)
    800018a4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    800018a8:	00000493          	li	s1,0
    800018ac:	0300006f          	j	800018dc <_Z11workerBodyAv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    800018b0:	00168693          	addi	a3,a3,1
    800018b4:	000027b7          	lui	a5,0x2
    800018b8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800018bc:	00d7ee63          	bltu	a5,a3,800018d8 <_Z11workerBodyAv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800018c0:	00000713          	li	a4,0
    800018c4:	000077b7          	lui	a5,0x7
    800018c8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800018cc:	fee7e2e3          	bltu	a5,a4,800018b0 <_Z11workerBodyAv+0x1c>
    800018d0:	00170713          	addi	a4,a4,1
    800018d4:	ff1ff06f          	j	800018c4 <_Z11workerBodyAv+0x30>
    for (uint64 i = 0; i < 10; i++)
    800018d8:	00148493          	addi	s1,s1,1
    800018dc:	00900793          	li	a5,9
    800018e0:	0297ec63          	bltu	a5,s1,80001918 <_Z11workerBodyAv+0x84>
        printString("A: i=");
    800018e4:	00003517          	auipc	a0,0x3
    800018e8:	78450513          	addi	a0,a0,1924 # 80005068 <CONSOLE_STATUS+0x58>
    800018ec:	00001097          	auipc	ra,0x1
    800018f0:	a0c080e7          	jalr	-1524(ra) # 800022f8 <_Z11printStringPKc>
        printInteger(i);
    800018f4:	00048513          	mv	a0,s1
    800018f8:	00001097          	auipc	ra,0x1
    800018fc:	a70080e7          	jalr	-1424(ra) # 80002368 <_Z12printIntegerm>
        printString("\n");
    80001900:	00004517          	auipc	a0,0x4
    80001904:	81050513          	addi	a0,a0,-2032 # 80005110 <CONSOLE_STATUS+0x100>
    80001908:	00001097          	auipc	ra,0x1
    8000190c:	9f0080e7          	jalr	-1552(ra) # 800022f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001910:	00000693          	li	a3,0
    80001914:	fa1ff06f          	j	800018b4 <_Z11workerBodyAv+0x20>
}
    80001918:	01813083          	ld	ra,24(sp)
    8000191c:	01013403          	ld	s0,16(sp)
    80001920:	00813483          	ld	s1,8(sp)
    80001924:	02010113          	addi	sp,sp,32
    80001928:	00008067          	ret

000000008000192c <_Z11workerBodyBv>:
{
    8000192c:	fe010113          	addi	sp,sp,-32
    80001930:	00113c23          	sd	ra,24(sp)
    80001934:	00813823          	sd	s0,16(sp)
    80001938:	00913423          	sd	s1,8(sp)
    8000193c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001940:	00000493          	li	s1,0
    80001944:	0300006f          	j	80001974 <_Z11workerBodyBv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001948:	00168693          	addi	a3,a3,1
    8000194c:	000027b7          	lui	a5,0x2
    80001950:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001954:	00d7ee63          	bltu	a5,a3,80001970 <_Z11workerBodyBv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001958:	00000713          	li	a4,0
    8000195c:	000077b7          	lui	a5,0x7
    80001960:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001964:	fee7e2e3          	bltu	a5,a4,80001948 <_Z11workerBodyBv+0x1c>
    80001968:	00170713          	addi	a4,a4,1
    8000196c:	ff1ff06f          	j	8000195c <_Z11workerBodyBv+0x30>
    for (uint64 i = 0; i < 16; i++)
    80001970:	00148493          	addi	s1,s1,1
    80001974:	00f00793          	li	a5,15
    80001978:	0297ec63          	bltu	a5,s1,800019b0 <_Z11workerBodyBv+0x84>
        printString("B: i=");
    8000197c:	00003517          	auipc	a0,0x3
    80001980:	6f450513          	addi	a0,a0,1780 # 80005070 <CONSOLE_STATUS+0x60>
    80001984:	00001097          	auipc	ra,0x1
    80001988:	974080e7          	jalr	-1676(ra) # 800022f8 <_Z11printStringPKc>
        printInteger(i);
    8000198c:	00048513          	mv	a0,s1
    80001990:	00001097          	auipc	ra,0x1
    80001994:	9d8080e7          	jalr	-1576(ra) # 80002368 <_Z12printIntegerm>
        printString("\n");
    80001998:	00003517          	auipc	a0,0x3
    8000199c:	77850513          	addi	a0,a0,1912 # 80005110 <CONSOLE_STATUS+0x100>
    800019a0:	00001097          	auipc	ra,0x1
    800019a4:	958080e7          	jalr	-1704(ra) # 800022f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800019a8:	00000693          	li	a3,0
    800019ac:	fa1ff06f          	j	8000194c <_Z11workerBodyBv+0x20>
}
    800019b0:	01813083          	ld	ra,24(sp)
    800019b4:	01013403          	ld	s0,16(sp)
    800019b8:	00813483          	ld	s1,8(sp)
    800019bc:	02010113          	addi	sp,sp,32
    800019c0:	00008067          	ret

00000000800019c4 <_Z11workerBodyCPv>:

void workerBodyC(void*)
{
    800019c4:	fe010113          	addi	sp,sp,-32
    800019c8:	00113c23          	sd	ra,24(sp)
    800019cc:	00813823          	sd	s0,16(sp)
    800019d0:	00913423          	sd	s1,8(sp)
    800019d4:	01213023          	sd	s2,0(sp)
    800019d8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800019dc:	00000493          	li	s1,0
    800019e0:	0380006f          	j	80001a18 <_Z11workerBodyCPv+0x54>
    for (; i < 3; i++)
    {
        printString("C: i=");
    800019e4:	00003517          	auipc	a0,0x3
    800019e8:	69450513          	addi	a0,a0,1684 # 80005078 <CONSOLE_STATUS+0x68>
    800019ec:	00001097          	auipc	ra,0x1
    800019f0:	90c080e7          	jalr	-1780(ra) # 800022f8 <_Z11printStringPKc>
        printInteger(i);
    800019f4:	00048513          	mv	a0,s1
    800019f8:	00001097          	auipc	ra,0x1
    800019fc:	970080e7          	jalr	-1680(ra) # 80002368 <_Z12printIntegerm>
        printString("\n");
    80001a00:	00003517          	auipc	a0,0x3
    80001a04:	71050513          	addi	a0,a0,1808 # 80005110 <CONSOLE_STATUS+0x100>
    80001a08:	00001097          	auipc	ra,0x1
    80001a0c:	8f0080e7          	jalr	-1808(ra) # 800022f8 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001a10:	0014849b          	addiw	s1,s1,1
    80001a14:	0ff4f493          	andi	s1,s1,255
    80001a18:	00200793          	li	a5,2
    80001a1c:	fc97f4e3          	bgeu	a5,s1,800019e4 <_Z11workerBodyCPv+0x20>
    }

    printString("C: yield\n");
    80001a20:	00003517          	auipc	a0,0x3
    80001a24:	66050513          	addi	a0,a0,1632 # 80005080 <CONSOLE_STATUS+0x70>
    80001a28:	00001097          	auipc	ra,0x1
    80001a2c:	8d0080e7          	jalr	-1840(ra) # 800022f8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001a30:	00700313          	li	t1,7
//    TCB::yield();
    thread_dispatch();
    80001a34:	00000097          	auipc	ra,0x0
    80001a38:	dc8080e7          	jalr	-568(ra) # 800017fc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001a3c:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001a40:	00003517          	auipc	a0,0x3
    80001a44:	65050513          	addi	a0,a0,1616 # 80005090 <CONSOLE_STATUS+0x80>
    80001a48:	00001097          	auipc	ra,0x1
    80001a4c:	8b0080e7          	jalr	-1872(ra) # 800022f8 <_Z11printStringPKc>
    printInteger(t1);
    80001a50:	00090513          	mv	a0,s2
    80001a54:	00001097          	auipc	ra,0x1
    80001a58:	914080e7          	jalr	-1772(ra) # 80002368 <_Z12printIntegerm>
    printString("\n");
    80001a5c:	00003517          	auipc	a0,0x3
    80001a60:	6b450513          	addi	a0,a0,1716 # 80005110 <CONSOLE_STATUS+0x100>
    80001a64:	00001097          	auipc	ra,0x1
    80001a68:	894080e7          	jalr	-1900(ra) # 800022f8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001a6c:	00c00513          	li	a0,12
    80001a70:	00000097          	auipc	ra,0x0
    80001a74:	db0080e7          	jalr	-592(ra) # 80001820 <_ZL9fibonaccim>
    80001a78:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001a7c:	00003517          	auipc	a0,0x3
    80001a80:	61c50513          	addi	a0,a0,1564 # 80005098 <CONSOLE_STATUS+0x88>
    80001a84:	00001097          	auipc	ra,0x1
    80001a88:	874080e7          	jalr	-1932(ra) # 800022f8 <_Z11printStringPKc>
    printInteger(result);
    80001a8c:	00090513          	mv	a0,s2
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	8d8080e7          	jalr	-1832(ra) # 80002368 <_Z12printIntegerm>
    printString("\n");
    80001a98:	00003517          	auipc	a0,0x3
    80001a9c:	67850513          	addi	a0,a0,1656 # 80005110 <CONSOLE_STATUS+0x100>
    80001aa0:	00001097          	auipc	ra,0x1
    80001aa4:	858080e7          	jalr	-1960(ra) # 800022f8 <_Z11printStringPKc>
    80001aa8:	0380006f          	j	80001ae0 <_Z11workerBodyCPv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    80001aac:	00003517          	auipc	a0,0x3
    80001ab0:	5cc50513          	addi	a0,a0,1484 # 80005078 <CONSOLE_STATUS+0x68>
    80001ab4:	00001097          	auipc	ra,0x1
    80001ab8:	844080e7          	jalr	-1980(ra) # 800022f8 <_Z11printStringPKc>
        printInteger(i);
    80001abc:	00048513          	mv	a0,s1
    80001ac0:	00001097          	auipc	ra,0x1
    80001ac4:	8a8080e7          	jalr	-1880(ra) # 80002368 <_Z12printIntegerm>
        printString("\n");
    80001ac8:	00003517          	auipc	a0,0x3
    80001acc:	64850513          	addi	a0,a0,1608 # 80005110 <CONSOLE_STATUS+0x100>
    80001ad0:	00001097          	auipc	ra,0x1
    80001ad4:	828080e7          	jalr	-2008(ra) # 800022f8 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001ad8:	0014849b          	addiw	s1,s1,1
    80001adc:	0ff4f493          	andi	s1,s1,255
    80001ae0:	00500793          	li	a5,5
    80001ae4:	fc97f4e3          	bgeu	a5,s1,80001aac <_Z11workerBodyCPv+0xe8>
    }
//    TCB::yield();
}
    80001ae8:	01813083          	ld	ra,24(sp)
    80001aec:	01013403          	ld	s0,16(sp)
    80001af0:	00813483          	ld	s1,8(sp)
    80001af4:	00013903          	ld	s2,0(sp)
    80001af8:	02010113          	addi	sp,sp,32
    80001afc:	00008067          	ret

0000000080001b00 <_Z11workerBodyDPv>:

void workerBodyD(void *)
{
    80001b00:	fe010113          	addi	sp,sp,-32
    80001b04:	00113c23          	sd	ra,24(sp)
    80001b08:	00813823          	sd	s0,16(sp)
    80001b0c:	00913423          	sd	s1,8(sp)
    80001b10:	01213023          	sd	s2,0(sp)
    80001b14:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001b18:	00a00493          	li	s1,10
    80001b1c:	0380006f          	j	80001b54 <_Z11workerBodyDPv+0x54>
    for (; i < 13; i++)
    {
        printString("D: i=");
    80001b20:	00003517          	auipc	a0,0x3
    80001b24:	58850513          	addi	a0,a0,1416 # 800050a8 <CONSOLE_STATUS+0x98>
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	7d0080e7          	jalr	2000(ra) # 800022f8 <_Z11printStringPKc>
        printInteger(i);
    80001b30:	00048513          	mv	a0,s1
    80001b34:	00001097          	auipc	ra,0x1
    80001b38:	834080e7          	jalr	-1996(ra) # 80002368 <_Z12printIntegerm>
        printString("\n");
    80001b3c:	00003517          	auipc	a0,0x3
    80001b40:	5d450513          	addi	a0,a0,1492 # 80005110 <CONSOLE_STATUS+0x100>
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	7b4080e7          	jalr	1972(ra) # 800022f8 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001b4c:	0014849b          	addiw	s1,s1,1
    80001b50:	0ff4f493          	andi	s1,s1,255
    80001b54:	00c00793          	li	a5,12
    80001b58:	fc97f4e3          	bgeu	a5,s1,80001b20 <_Z11workerBodyDPv+0x20>
    }

    printString("D: yield\n");
    80001b5c:	00003517          	auipc	a0,0x3
    80001b60:	55450513          	addi	a0,a0,1364 # 800050b0 <CONSOLE_STATUS+0xa0>
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	794080e7          	jalr	1940(ra) # 800022f8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001b6c:	00500313          	li	t1,5
//    TCB::yield();
    thread_dispatch();
    80001b70:	00000097          	auipc	ra,0x0
    80001b74:	c8c080e7          	jalr	-884(ra) # 800017fc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80001b78:	01000513          	li	a0,16
    80001b7c:	00000097          	auipc	ra,0x0
    80001b80:	ca4080e7          	jalr	-860(ra) # 80001820 <_ZL9fibonaccim>
    80001b84:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001b88:	00003517          	auipc	a0,0x3
    80001b8c:	53850513          	addi	a0,a0,1336 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001b90:	00000097          	auipc	ra,0x0
    80001b94:	768080e7          	jalr	1896(ra) # 800022f8 <_Z11printStringPKc>
    printInteger(result);
    80001b98:	00090513          	mv	a0,s2
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	7cc080e7          	jalr	1996(ra) # 80002368 <_Z12printIntegerm>
    printString("\n");
    80001ba4:	00003517          	auipc	a0,0x3
    80001ba8:	56c50513          	addi	a0,a0,1388 # 80005110 <CONSOLE_STATUS+0x100>
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	74c080e7          	jalr	1868(ra) # 800022f8 <_Z11printStringPKc>
    80001bb4:	0380006f          	j	80001bec <_Z11workerBodyDPv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001bb8:	00003517          	auipc	a0,0x3
    80001bbc:	4f050513          	addi	a0,a0,1264 # 800050a8 <CONSOLE_STATUS+0x98>
    80001bc0:	00000097          	auipc	ra,0x0
    80001bc4:	738080e7          	jalr	1848(ra) # 800022f8 <_Z11printStringPKc>
        printInteger(i);
    80001bc8:	00048513          	mv	a0,s1
    80001bcc:	00000097          	auipc	ra,0x0
    80001bd0:	79c080e7          	jalr	1948(ra) # 80002368 <_Z12printIntegerm>
        printString("\n");
    80001bd4:	00003517          	auipc	a0,0x3
    80001bd8:	53c50513          	addi	a0,a0,1340 # 80005110 <CONSOLE_STATUS+0x100>
    80001bdc:	00000097          	auipc	ra,0x0
    80001be0:	71c080e7          	jalr	1820(ra) # 800022f8 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001be4:	0014849b          	addiw	s1,s1,1
    80001be8:	0ff4f493          	andi	s1,s1,255
    80001bec:	00f00793          	li	a5,15
    80001bf0:	fc97f4e3          	bgeu	a5,s1,80001bb8 <_Z11workerBodyDPv+0xb8>
    }
//    TCB::yield();
    80001bf4:	01813083          	ld	ra,24(sp)
    80001bf8:	01013403          	ld	s0,16(sp)
    80001bfc:	00813483          	ld	s1,8(sp)
    80001c00:	00013903          	ld	s2,0(sp)
    80001c04:	02010113          	addi	sp,sp,32
    80001c08:	00008067          	ret

0000000080001c0c <main>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"

int main()
{
    80001c0c:	fb010113          	addi	sp,sp,-80
    80001c10:	04113423          	sd	ra,72(sp)
    80001c14:	04813023          	sd	s0,64(sp)
    80001c18:	02913c23          	sd	s1,56(sp)
    80001c1c:	03213823          	sd	s2,48(sp)
    80001c20:	05010413          	addi	s0,sp,80
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001c24:	00004797          	auipc	a5,0x4
    80001c28:	c547b783          	ld	a5,-940(a5) # 80005878 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001c2c:	10579073          	csrw	stvec,a5
    TCB* threads[5];

    thread_create(&threads[0], nullptr, nullptr);
    80001c30:	00000613          	li	a2,0
    80001c34:	00000593          	li	a1,0
    80001c38:	fb840513          	addi	a0,s0,-72
    80001c3c:	00000097          	auipc	ra,0x0
    80001c40:	b4c080e7          	jalr	-1204(ra) # 80001788 <_Z13thread_createPP3TCBPFvPvES2_>
    // threads[0] = TCB::createThread(nullptr);
    TCB::running = threads[0];
    80001c44:	fb843703          	ld	a4,-72(s0)
    80001c48:	00004797          	auipc	a5,0x4
    80001c4c:	c487b783          	ld	a5,-952(a5) # 80005890 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c50:	00e7b023          	sd	a4,0(a5)
//
//    threads[2] = TCB::createThread(workerBodyB);
//    printString("ThreadB Created\n");

//    threads[3] = TCB::createThread(workerBodyC);
    thread_create(&threads[3], workerBodyC, nullptr);
    80001c54:	00000613          	li	a2,0
    80001c58:	00004597          	auipc	a1,0x4
    80001c5c:	c185b583          	ld	a1,-1000(a1) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c60:	fd040513          	addi	a0,s0,-48
    80001c64:	00000097          	auipc	ra,0x0
    80001c68:	b24080e7          	jalr	-1244(ra) # 80001788 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC Created\n");
    80001c6c:	00003517          	auipc	a0,0x3
    80001c70:	46450513          	addi	a0,a0,1124 # 800050d0 <CONSOLE_STATUS+0xc0>
    80001c74:	00000097          	auipc	ra,0x0
    80001c78:	684080e7          	jalr	1668(ra) # 800022f8 <_Z11printStringPKc>
//
//    threads[4] = TCB::createThread(workerBodyD);
    thread_create(&threads[4], workerBodyD, nullptr);
    80001c7c:	00000613          	li	a2,0
    80001c80:	00004597          	auipc	a1,0x4
    80001c84:	c185b583          	ld	a1,-1000(a1) # 80005898 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c88:	fd840513          	addi	a0,s0,-40
    80001c8c:	00000097          	auipc	ra,0x0
    80001c90:	afc080e7          	jalr	-1284(ra) # 80001788 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD Created\n");
    80001c94:	00003517          	auipc	a0,0x3
    80001c98:	45450513          	addi	a0,a0,1108 # 800050e8 <CONSOLE_STATUS+0xd8>
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	65c080e7          	jalr	1628(ra) # 800022f8 <_Z11printStringPKc>
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001ca4:	00200793          	li	a5,2
    80001ca8:	1007a073          	csrs	sstatus,a5
}
    80001cac:	01c0006f          	j	80001cc8 <main+0xbc>

    while (!(
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        printString("OVDE SAM--------\n");
    80001cb0:	00003517          	auipc	a0,0x3
    80001cb4:	45050513          	addi	a0,a0,1104 # 80005100 <CONSOLE_STATUS+0xf0>
    80001cb8:	00000097          	auipc	ra,0x0
    80001cbc:	640080e7          	jalr	1600(ra) # 800022f8 <_Z11printStringPKc>
        //TCB::yield();
        thread_dispatch();
    80001cc0:	00000097          	auipc	ra,0x0
    80001cc4:	b3c080e7          	jalr	-1220(ra) # 800017fc <_Z15thread_dispatchv>
             threads[3]->isFinished() &&
    80001cc8:	fd043783          	ld	a5,-48(s0)
// Thread Control Block
class TCB {
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    80001ccc:	0307c783          	lbu	a5,48(a5)
    while (!(
    80001cd0:	fe0780e3          	beqz	a5,80001cb0 <main+0xa4>
             threads[4]->isFinished()))
    80001cd4:	fd843783          	ld	a5,-40(s0)
    80001cd8:	0307c783          	lbu	a5,48(a5)
    while (!(
    80001cdc:	fc078ae3          	beqz	a5,80001cb0 <main+0xa4>
    80001ce0:	fb840493          	addi	s1,s0,-72
    80001ce4:	0140006f          	j	80001cf8 <main+0xec>
    }


    for(auto& thread : threads)
        delete thread;
    80001ce8:	00090513          	mv	a0,s2
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	2b0080e7          	jalr	688(ra) # 80001f9c <_ZdlPv>
    for(auto& thread : threads)
    80001cf4:	00848493          	addi	s1,s1,8
    80001cf8:	fe040793          	addi	a5,s0,-32
    80001cfc:	02f48063          	beq	s1,a5,80001d1c <main+0x110>
        delete thread;
    80001d00:	0004b903          	ld	s2,0(s1)
    80001d04:	fe0908e3          	beqz	s2,80001cf4 <main+0xe8>
    ~TCB() { delete[] stack; }
    80001d08:	01093503          	ld	a0,16(s2)
    80001d0c:	fc050ee3          	beqz	a0,80001ce8 <main+0xdc>
    80001d10:	00000097          	auipc	ra,0x0
    80001d14:	2b4080e7          	jalr	692(ra) # 80001fc4 <_ZdaPv>
    80001d18:	fd1ff06f          	j	80001ce8 <main+0xdc>

    printString("Finished\n");
    80001d1c:	00003517          	auipc	a0,0x3
    80001d20:	3fc50513          	addi	a0,a0,1020 # 80005118 <CONSOLE_STATUS+0x108>
    80001d24:	00000097          	auipc	ra,0x0
    80001d28:	5d4080e7          	jalr	1492(ra) # 800022f8 <_Z11printStringPKc>

    return 0;
    80001d2c:	00000513          	li	a0,0
    80001d30:	04813083          	ld	ra,72(sp)
    80001d34:	04013403          	ld	s0,64(sp)
    80001d38:	03813483          	ld	s1,56(sp)
    80001d3c:	03013903          	ld	s2,48(sp)
    80001d40:	05010113          	addi	sp,sp,80
    80001d44:	00008067          	ret

0000000080001d48 <_ZN3TCB12createThreadEPFvPvES0_S0_b>:
//
//    return new TCB(body, TIME_SLICE);
//}

TCB* TCB::createThread(Body body, void* arg, void* stack_space, bool start_immediately)
{
    80001d48:	fc010113          	addi	sp,sp,-64
    80001d4c:	02113c23          	sd	ra,56(sp)
    80001d50:	02813823          	sd	s0,48(sp)
    80001d54:	02913423          	sd	s1,40(sp)
    80001d58:	03213023          	sd	s2,32(sp)
    80001d5c:	01313c23          	sd	s3,24(sp)
    80001d60:	01413823          	sd	s4,16(sp)
    80001d64:	01513423          	sd	s5,8(sp)
    80001d68:	04010413          	addi	s0,sp,64
    80001d6c:	00050993          	mv	s3,a0
    80001d70:	00058a93          	mv	s5,a1
    80001d74:	00060913          	mv	s2,a2
    80001d78:	00068a13          	mv	s4,a3

    return new TCB(body, arg, stack_space, start_immediately);
    80001d7c:	03800513          	li	a0,56
    80001d80:	00000097          	auipc	ra,0x0
    80001d84:	1cc080e7          	jalr	460(ra) # 80001f4c <_Znwm>
    80001d88:	00050493          	mv	s1,a0
            context({(uint64)&threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            timeSlice(DEFAULT_TIME_SLICE),
            finished(false),
            start_immediately(start_immediately){
    80001d8c:	01353023          	sd	s3,0(a0)
    80001d90:	01553423          	sd	s5,8(a0)
            stack(body != nullptr ? (uint64*)stack_space : nullptr),
    80001d94:	06098263          	beqz	s3,80001df8 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0xb0>
            start_immediately(start_immediately){
    80001d98:	0124b823          	sd	s2,16(s1)
    80001d9c:	00000797          	auipc	a5,0x0
    80001da0:	14478793          	addi	a5,a5,324 # 80001ee0 <_ZN3TCB13threadWrapperEv>
    80001da4:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001da8:	04090c63          	beqz	s2,80001e00 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0xb8>
    80001dac:	00008637          	lui	a2,0x8
    80001db0:	00c90933          	add	s2,s2,a2
            start_immediately(start_immediately){
    80001db4:	0324b023          	sd	s2,32(s1)
    80001db8:	00200793          	li	a5,2
    80001dbc:	02f4b423          	sd	a5,40(s1)
    80001dc0:	02048823          	sb	zero,48(s1)
    80001dc4:	034488a3          	sb	s4,49(s1)
        if (body != nullptr && start_immediately == true)
    80001dc8:	00098463          	beqz	s3,80001dd0 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0x88>
    80001dcc:	020a1e63          	bnez	s4,80001e08 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0xc0>
}
    80001dd0:	00048513          	mv	a0,s1
    80001dd4:	03813083          	ld	ra,56(sp)
    80001dd8:	03013403          	ld	s0,48(sp)
    80001ddc:	02813483          	ld	s1,40(sp)
    80001de0:	02013903          	ld	s2,32(sp)
    80001de4:	01813983          	ld	s3,24(sp)
    80001de8:	01013a03          	ld	s4,16(sp)
    80001dec:	00813a83          	ld	s5,8(sp)
    80001df0:	04010113          	addi	sp,sp,64
    80001df4:	00008067          	ret
            stack(body != nullptr ? (uint64*)stack_space : nullptr),
    80001df8:	00000913          	li	s2,0
    80001dfc:	f9dff06f          	j	80001d98 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0x50>
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001e00:	00000913          	li	s2,0
    80001e04:	fb1ff06f          	j	80001db4 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0x6c>
            Scheduler::put(this);
    80001e08:	00048513          	mv	a0,s1
    80001e0c:	00000097          	auipc	ra,0x0
    80001e10:	44c080e7          	jalr	1100(ra) # 80002258 <_ZN9Scheduler3putEP3TCB>
    80001e14:	fbdff06f          	j	80001dd0 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0x88>
    80001e18:	00050913          	mv	s2,a0
    return new TCB(body, arg, stack_space, start_immediately);
    80001e1c:	00048513          	mv	a0,s1
    80001e20:	00000097          	auipc	ra,0x0
    80001e24:	17c080e7          	jalr	380(ra) # 80001f9c <_ZdlPv>
    80001e28:	00090513          	mv	a0,s2
    80001e2c:	00005097          	auipc	ra,0x5
    80001e30:	bcc080e7          	jalr	-1076(ra) # 800069f8 <_Unwind_Resume>

0000000080001e34 <_ZN3TCB5yieldEv>:


void TCB::yield()
{
    80001e34:	ff010113          	addi	sp,sp,-16
    80001e38:	00113423          	sd	ra,8(sp)
    80001e3c:	00813023          	sd	s0,0(sp)
    80001e40:	01010413          	addi	s0,sp,16
    printString("\n\t--- YIELD \n");
    80001e44:	00003517          	auipc	a0,0x3
    80001e48:	2e450513          	addi	a0,a0,740 # 80005128 <CONSOLE_STATUS+0x118>
    80001e4c:	00000097          	auipc	ra,0x0
    80001e50:	4ac080e7          	jalr	1196(ra) # 800022f8 <_Z11printStringPKc>
    __asm__ volatile("ecall");
    80001e54:	00000073          	ecall
}
    80001e58:	00813083          	ld	ra,8(sp)
    80001e5c:	00013403          	ld	s0,0(sp)
    80001e60:	01010113          	addi	sp,sp,16
    80001e64:	00008067          	ret

0000000080001e68 <_ZN3TCB8dispatchEv>:

void TCB::dispatch()
{
    80001e68:	fe010113          	addi	sp,sp,-32
    80001e6c:	00113c23          	sd	ra,24(sp)
    80001e70:	00813823          	sd	s0,16(sp)
    80001e74:	00913423          	sd	s1,8(sp)
    80001e78:	02010413          	addi	s0,sp,32
    printString("\n\t--- DISPECTH \n");
    80001e7c:	00003517          	auipc	a0,0x3
    80001e80:	2bc50513          	addi	a0,a0,700 # 80005138 <CONSOLE_STATUS+0x128>
    80001e84:	00000097          	auipc	ra,0x0
    80001e88:	474080e7          	jalr	1140(ra) # 800022f8 <_Z11printStringPKc>
    TCB *old = running;
    80001e8c:	00004497          	auipc	s1,0x4
    80001e90:	a844b483          	ld	s1,-1404(s1) # 80005910 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001e94:	0304c783          	lbu	a5,48(s1)

    if (!old->isFinished())
    80001e98:	02078c63          	beqz	a5,80001ed0 <_ZN3TCB8dispatchEv+0x68>
        Scheduler::put(old);

    running = Scheduler::get();
    80001e9c:	00000097          	auipc	ra,0x0
    80001ea0:	354080e7          	jalr	852(ra) # 800021f0 <_ZN9Scheduler3getEv>
    80001ea4:	00004797          	auipc	a5,0x4
    80001ea8:	a6a7b623          	sd	a0,-1428(a5) # 80005910 <_ZN3TCB7runningE>

    TCB::contextSwitch(&old->context, &running->context);
    80001eac:	01850593          	addi	a1,a0,24
    80001eb0:	01848513          	addi	a0,s1,24
    80001eb4:	fffff097          	auipc	ra,0xfffff
    80001eb8:	37c080e7          	jalr	892(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001ebc:	01813083          	ld	ra,24(sp)
    80001ec0:	01013403          	ld	s0,16(sp)
    80001ec4:	00813483          	ld	s1,8(sp)
    80001ec8:	02010113          	addi	sp,sp,32
    80001ecc:	00008067          	ret
        Scheduler::put(old);
    80001ed0:	00048513          	mv	a0,s1
    80001ed4:	00000097          	auipc	ra,0x0
    80001ed8:	384080e7          	jalr	900(ra) # 80002258 <_ZN9Scheduler3putEP3TCB>
    80001edc:	fc1ff06f          	j	80001e9c <_ZN3TCB8dispatchEv+0x34>

0000000080001ee0 <_ZN3TCB13threadWrapperEv>:

void TCB::threadWrapper()
{
    80001ee0:	fe010113          	addi	sp,sp,-32
    80001ee4:	00113c23          	sd	ra,24(sp)
    80001ee8:	00813823          	sd	s0,16(sp)
    80001eec:	00913423          	sd	s1,8(sp)
    80001ef0:	02010413          	addi	s0,sp,32
    printString("\n\tWrapper\n");
    80001ef4:	00003517          	auipc	a0,0x3
    80001ef8:	25c50513          	addi	a0,a0,604 # 80005150 <CONSOLE_STATUS+0x140>
    80001efc:	00000097          	auipc	ra,0x0
    80001f00:	3fc080e7          	jalr	1020(ra) # 800022f8 <_Z11printStringPKc>

    Riscv::popSppSpie();
    80001f04:	00000097          	auipc	ra,0x0
    80001f08:	0e8080e7          	jalr	232(ra) # 80001fec <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001f0c:	00004497          	auipc	s1,0x4
    80001f10:	a0448493          	addi	s1,s1,-1532 # 80005910 <_ZN3TCB7runningE>
    80001f14:	0004b783          	ld	a5,0(s1)
    80001f18:	0007b703          	ld	a4,0(a5)
    80001f1c:	0087b503          	ld	a0,8(a5)
    80001f20:	000700e7          	jalr	a4
    running->setFinished(true);
    80001f24:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001f28:	00100713          	li	a4,1
    80001f2c:	02e78823          	sb	a4,48(a5)
    //TCB::yield();
    TCB::dispatch();
    80001f30:	00000097          	auipc	ra,0x0
    80001f34:	f38080e7          	jalr	-200(ra) # 80001e68 <_ZN3TCB8dispatchEv>
    80001f38:	01813083          	ld	ra,24(sp)
    80001f3c:	01013403          	ld	s0,16(sp)
    80001f40:	00813483          	ld	s1,8(sp)
    80001f44:	02010113          	addi	sp,sp,32
    80001f48:	00008067          	ret

0000000080001f4c <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001f4c:	ff010113          	addi	sp,sp,-16
    80001f50:	00113423          	sd	ra,8(sp)
    80001f54:	00813023          	sd	s0,0(sp)
    80001f58:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001f5c:	00002097          	auipc	ra,0x2
    80001f60:	65c080e7          	jalr	1628(ra) # 800045b8 <__mem_alloc>
}
    80001f64:	00813083          	ld	ra,8(sp)
    80001f68:	00013403          	ld	s0,0(sp)
    80001f6c:	01010113          	addi	sp,sp,16
    80001f70:	00008067          	ret

0000000080001f74 <_Znam>:

void *operator new[](size_t n)
{
    80001f74:	ff010113          	addi	sp,sp,-16
    80001f78:	00113423          	sd	ra,8(sp)
    80001f7c:	00813023          	sd	s0,0(sp)
    80001f80:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001f84:	00002097          	auipc	ra,0x2
    80001f88:	634080e7          	jalr	1588(ra) # 800045b8 <__mem_alloc>
}
    80001f8c:	00813083          	ld	ra,8(sp)
    80001f90:	00013403          	ld	s0,0(sp)
    80001f94:	01010113          	addi	sp,sp,16
    80001f98:	00008067          	ret

0000000080001f9c <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001f9c:	ff010113          	addi	sp,sp,-16
    80001fa0:	00113423          	sd	ra,8(sp)
    80001fa4:	00813023          	sd	s0,0(sp)
    80001fa8:	01010413          	addi	s0,sp,16
__mem_free(p);
    80001fac:	00002097          	auipc	ra,0x2
    80001fb0:	540080e7          	jalr	1344(ra) # 800044ec <__mem_free>
}
    80001fb4:	00813083          	ld	ra,8(sp)
    80001fb8:	00013403          	ld	s0,0(sp)
    80001fbc:	01010113          	addi	sp,sp,16
    80001fc0:	00008067          	ret

0000000080001fc4 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001fc4:	ff010113          	addi	sp,sp,-16
    80001fc8:	00113423          	sd	ra,8(sp)
    80001fcc:	00813023          	sd	s0,0(sp)
    80001fd0:	01010413          	addi	s0,sp,16
__mem_free(p);
    80001fd4:	00002097          	auipc	ra,0x2
    80001fd8:	518080e7          	jalr	1304(ra) # 800044ec <__mem_free>
    80001fdc:	00813083          	ld	ra,8(sp)
    80001fe0:	00013403          	ld	s0,0(sp)
    80001fe4:	01010113          	addi	sp,sp,16
    80001fe8:	00008067          	ret

0000000080001fec <_ZN5Riscv10popSppSpieEv>:
#include "../h/syscall_c.h"

using Body = void (*)(void*);

void Riscv::popSppSpie()
{
    80001fec:	ff010113          	addi	sp,sp,-16
    80001ff0:	00813423          	sd	s0,8(sp)
    80001ff4:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001ff8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001ffc:	10200073          	sret
}
    80002000:	00813403          	ld	s0,8(sp)
    80002004:	01010113          	addi	sp,sp,16
    80002008:	00008067          	ret

000000008000200c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    8000200c:	f9010113          	addi	sp,sp,-112
    80002010:	06113423          	sd	ra,104(sp)
    80002014:	06813023          	sd	s0,96(sp)
    80002018:	04913c23          	sd	s1,88(sp)
    8000201c:	05213823          	sd	s2,80(sp)
    80002020:	05313423          	sd	s3,72(sp)
    80002024:	05413023          	sd	s4,64(sp)
    80002028:	03513c23          	sd	s5,56(sp)
    8000202c:	07010413          	addi	s0,sp,112
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002030:	142027f3          	csrr	a5,scause
    80002034:	f8f43c23          	sd	a5,-104(s0)
    return scause;
    80002038:	f9843703          	ld	a4,-104(s0)
    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    8000203c:	ff870693          	addi	a3,a4,-8
    80002040:	00100793          	li	a5,1
    80002044:	02d7f863          	bgeu	a5,a3,80002074 <_ZN5Riscv20handleSupervisorTrapEv+0x68>
//        TCB::timeSliceCounter = 0;
//        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80002048:	fff00793          	li	a5,-1
    8000204c:	03f79793          	slli	a5,a5,0x3f
    80002050:	00178793          	addi	a5,a5,1
    80002054:	0ef70863          	beq	a4,a5,80002144 <_ZN5Riscv20handleSupervisorTrapEv+0x138>
            w_sepc(sepc);
        }

        mc_sip(SIP_SSIP);
    }
    else if (scause == 0x8000000000000009UL)
    80002058:	fff00793          	li	a5,-1
    8000205c:	03f79793          	slli	a5,a5,0x3f
    80002060:	00978793          	addi	a5,a5,9
    80002064:	04f71463          	bne	a4,a5,800020ac <_ZN5Riscv20handleSupervisorTrapEv+0xa0>
    {
        // Interrupt: yes, cause code: Software external interrupt (console)
        console_handler();
    80002068:	00002097          	auipc	ra,0x2
    8000206c:	71c080e7          	jalr	1820(ra) # 80004784 <console_handler>
        // print(scause)
        // print(sepc)
        // print(stvalue)

    }
    80002070:	03c0006f          	j	800020ac <_ZN5Riscv20handleSupervisorTrapEv+0xa0>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002074:	141027f3          	csrr	a5,sepc
    80002078:	faf43423          	sd	a5,-88(s0)
    return sepc;
    8000207c:	fa843483          	ld	s1,-88(s0)
        uint64 sepc = r_sepc() + 4;
    80002080:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002084:	100027f3          	csrr	a5,sstatus
    80002088:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    8000208c:	fa043903          	ld	s2,-96(s0)
        __asm__ volatile ("mv %0, a0" : "=r" (number));
    80002090:	00050793          	mv	a5,a0
        switch (number)
    80002094:	01100713          	li	a4,17
    80002098:	02e78c63          	beq	a5,a4,800020d0 <_ZN5Riscv20handleSupervisorTrapEv+0xc4>
    8000209c:	01300713          	li	a4,19
    800020a0:	08e78463          	beq	a5,a4,80002128 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800020a4:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800020a8:	14149073          	csrw	sepc,s1
    800020ac:	06813083          	ld	ra,104(sp)
    800020b0:	06013403          	ld	s0,96(sp)
    800020b4:	05813483          	ld	s1,88(sp)
    800020b8:	05013903          	ld	s2,80(sp)
    800020bc:	04813983          	ld	s3,72(sp)
    800020c0:	04013a03          	ld	s4,64(sp)
    800020c4:	03813a83          	ld	s5,56(sp)
    800020c8:	07010113          	addi	sp,sp,112
    800020cc:	00008067          	ret
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    800020d0:	00058a13          	mv	s4,a1
                __asm__ volatile ("mv %0, a2" : "=r" (body));
    800020d4:	00060993          	mv	s3,a2
                __asm__ volatile ("mv %0, a3" : "=r" (arg));
    800020d8:	00068a93          	mv	s5,a3
                if (body != 0)
    800020dc:	02098e63          	beqz	s3,80002118 <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
                    stack = (uint64 *)new uint64[DEFAULT_STACK_SIZE];
    800020e0:	00008537          	lui	a0,0x8
    800020e4:	00000097          	auipc	ra,0x0
    800020e8:	e90080e7          	jalr	-368(ra) # 80001f74 <_Znam>
    800020ec:	00050613          	mv	a2,a0
                *handle = TCB::createThread(body, arg, stack, true);
    800020f0:	00100693          	li	a3,1
    800020f4:	000a8593          	mv	a1,s5
    800020f8:	00098513          	mv	a0,s3
    800020fc:	00000097          	auipc	ra,0x0
    80002100:	c4c080e7          	jalr	-948(ra) # 80001d48 <_ZN3TCB12createThreadEPFvPvES0_S0_b>
    80002104:	00aa3023          	sd	a0,0(s4)
                ret = (*handle) != nullptr ? 0 : -1;
    80002108:	00050c63          	beqz	a0,80002120 <_ZN5Riscv20handleSupervisorTrapEv+0x114>
    8000210c:	00000793          	li	a5,0
                __asm__ volatile ("mv a0, %0" : : "r" (ret));
    80002110:	00078513          	mv	a0,a5
                break;
    80002114:	f91ff06f          	j	800020a4 <_ZN5Riscv20handleSupervisorTrapEv+0x98>
                    stack = 0;
    80002118:	00000613          	li	a2,0
    8000211c:	fd5ff06f          	j	800020f0 <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
                ret = (*handle) != nullptr ? 0 : -1;
    80002120:	fff00793          	li	a5,-1
    80002124:	fedff06f          	j	80002110 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
                printString("ecall dispatch");
    80002128:	00003517          	auipc	a0,0x3
    8000212c:	03850513          	addi	a0,a0,56 # 80005160 <CONSOLE_STATUS+0x150>
    80002130:	00000097          	auipc	ra,0x0
    80002134:	1c8080e7          	jalr	456(ra) # 800022f8 <_Z11printStringPKc>
                TCB::dispatch();
    80002138:	00000097          	auipc	ra,0x0
    8000213c:	d30080e7          	jalr	-720(ra) # 80001e68 <_ZN3TCB8dispatchEv>
                break;
    80002140:	f65ff06f          	j	800020a4 <_ZN5Riscv20handleSupervisorTrapEv+0x98>
        TCB::timeSliceCounter++;
    80002144:	00003717          	auipc	a4,0x3
    80002148:	73c73703          	ld	a4,1852(a4) # 80005880 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000214c:	00073783          	ld	a5,0(a4)
    80002150:	00178793          	addi	a5,a5,1
    80002154:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80002158:	00003717          	auipc	a4,0x3
    8000215c:	73873703          	ld	a4,1848(a4) # 80005890 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002160:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80002164:	02873703          	ld	a4,40(a4)
    80002168:	00e7f863          	bgeu	a5,a4,80002178 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000216c:	00200793          	li	a5,2
    80002170:	1447b073          	csrc	sip,a5
}
    80002174:	f39ff06f          	j	800020ac <_ZN5Riscv20handleSupervisorTrapEv+0xa0>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002178:	141027f3          	csrr	a5,sepc
    8000217c:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80002180:	fb843483          	ld	s1,-72(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002184:	100027f3          	csrr	a5,sstatus
    80002188:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    8000218c:	fb043903          	ld	s2,-80(s0)
            TCB::timeSliceCounter = 0;
    80002190:	00003797          	auipc	a5,0x3
    80002194:	6f07b783          	ld	a5,1776(a5) # 80005880 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002198:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    8000219c:	00000097          	auipc	ra,0x0
    800021a0:	ccc080e7          	jalr	-820(ra) # 80001e68 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800021a4:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800021a8:	14149073          	csrw	sepc,s1
}
    800021ac:	fc1ff06f          	j	8000216c <_ZN5Riscv20handleSupervisorTrapEv+0x160>

00000000800021b0 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    800021b0:	ff010113          	addi	sp,sp,-16
    800021b4:	00813423          	sd	s0,8(sp)
    800021b8:	01010413          	addi	s0,sp,16
    800021bc:	00100793          	li	a5,1
    800021c0:	00f50863          	beq	a0,a5,800021d0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800021c4:	00813403          	ld	s0,8(sp)
    800021c8:	01010113          	addi	sp,sp,16
    800021cc:	00008067          	ret
    800021d0:	000107b7          	lui	a5,0x10
    800021d4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800021d8:	fef596e3          	bne	a1,a5,800021c4 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800021dc:	00003797          	auipc	a5,0x3
    800021e0:	74478793          	addi	a5,a5,1860 # 80005920 <_ZN9Scheduler19readyCoroutineQueueE>
    800021e4:	0007b023          	sd	zero,0(a5)
    800021e8:	0007b423          	sd	zero,8(a5)
    800021ec:	fd9ff06f          	j	800021c4 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800021f0 <_ZN9Scheduler3getEv>:
{
    800021f0:	fe010113          	addi	sp,sp,-32
    800021f4:	00113c23          	sd	ra,24(sp)
    800021f8:	00813823          	sd	s0,16(sp)
    800021fc:	00913423          	sd	s1,8(sp)
    80002200:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80002204:	00003517          	auipc	a0,0x3
    80002208:	71c53503          	ld	a0,1820(a0) # 80005920 <_ZN9Scheduler19readyCoroutineQueueE>
    8000220c:	04050263          	beqz	a0,80002250 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80002210:	00853783          	ld	a5,8(a0)
    80002214:	00003717          	auipc	a4,0x3
    80002218:	70f73623          	sd	a5,1804(a4) # 80005920 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    8000221c:	02078463          	beqz	a5,80002244 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80002220:	00053483          	ld	s1,0(a0)
        delete elem;
    80002224:	00000097          	auipc	ra,0x0
    80002228:	d78080e7          	jalr	-648(ra) # 80001f9c <_ZdlPv>
}
    8000222c:	00048513          	mv	a0,s1
    80002230:	01813083          	ld	ra,24(sp)
    80002234:	01013403          	ld	s0,16(sp)
    80002238:	00813483          	ld	s1,8(sp)
    8000223c:	02010113          	addi	sp,sp,32
    80002240:	00008067          	ret
        if (!head) { tail = 0; }
    80002244:	00003797          	auipc	a5,0x3
    80002248:	6e07b223          	sd	zero,1764(a5) # 80005928 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    8000224c:	fd5ff06f          	j	80002220 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002250:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80002254:	fd9ff06f          	j	8000222c <_ZN9Scheduler3getEv+0x3c>

0000000080002258 <_ZN9Scheduler3putEP3TCB>:
{
    80002258:	fe010113          	addi	sp,sp,-32
    8000225c:	00113c23          	sd	ra,24(sp)
    80002260:	00813823          	sd	s0,16(sp)
    80002264:	00913423          	sd	s1,8(sp)
    80002268:	02010413          	addi	s0,sp,32
    8000226c:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002270:	01000513          	li	a0,16
    80002274:	00000097          	auipc	ra,0x0
    80002278:	cd8080e7          	jalr	-808(ra) # 80001f4c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000227c:	00953023          	sd	s1,0(a0)
    80002280:	00053423          	sd	zero,8(a0)
        if (tail)
    80002284:	00003797          	auipc	a5,0x3
    80002288:	6a47b783          	ld	a5,1700(a5) # 80005928 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    8000228c:	02078263          	beqz	a5,800022b0 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002290:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002294:	00003797          	auipc	a5,0x3
    80002298:	68a7ba23          	sd	a0,1684(a5) # 80005928 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    8000229c:	01813083          	ld	ra,24(sp)
    800022a0:	01013403          	ld	s0,16(sp)
    800022a4:	00813483          	ld	s1,8(sp)
    800022a8:	02010113          	addi	sp,sp,32
    800022ac:	00008067          	ret
            head = tail = elem;
    800022b0:	00003797          	auipc	a5,0x3
    800022b4:	67078793          	addi	a5,a5,1648 # 80005920 <_ZN9Scheduler19readyCoroutineQueueE>
    800022b8:	00a7b423          	sd	a0,8(a5)
    800022bc:	00a7b023          	sd	a0,0(a5)
    800022c0:	fddff06f          	j	8000229c <_ZN9Scheduler3putEP3TCB+0x44>

00000000800022c4 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    800022c4:	ff010113          	addi	sp,sp,-16
    800022c8:	00113423          	sd	ra,8(sp)
    800022cc:	00813023          	sd	s0,0(sp)
    800022d0:	01010413          	addi	s0,sp,16
    800022d4:	000105b7          	lui	a1,0x10
    800022d8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800022dc:	00100513          	li	a0,1
    800022e0:	00000097          	auipc	ra,0x0
    800022e4:	ed0080e7          	jalr	-304(ra) # 800021b0 <_Z41__static_initialization_and_destruction_0ii>
    800022e8:	00813083          	ld	ra,8(sp)
    800022ec:	00013403          	ld	s0,0(sp)
    800022f0:	01010113          	addi	sp,sp,16
    800022f4:	00008067          	ret

00000000800022f8 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../lib/console.h"
#include "../h/riscv.hpp"

void printString(char const *string)
{
    800022f8:	fd010113          	addi	sp,sp,-48
    800022fc:	02113423          	sd	ra,40(sp)
    80002300:	02813023          	sd	s0,32(sp)
    80002304:	00913c23          	sd	s1,24(sp)
    80002308:	01213823          	sd	s2,16(sp)
    8000230c:	03010413          	addi	s0,sp,48
    80002310:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002314:	100027f3          	csrr	a5,sstatus
    80002318:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    8000231c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002320:	00200793          	li	a5,2
    80002324:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80002328:	0004c503          	lbu	a0,0(s1)
    8000232c:	00050a63          	beqz	a0,80002340 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80002330:	00002097          	auipc	ra,0x2
    80002334:	3e0080e7          	jalr	992(ra) # 80004710 <__putc>
        string++;
    80002338:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000233c:	fedff06f          	j	80002328 <_Z11printStringPKc+0x30>
    }

    Riscv::ms_sstatus( sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002340:	0009091b          	sext.w	s2,s2
    80002344:	00297913          	andi	s2,s2,2
    80002348:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000234c:	10092073          	csrs	sstatus,s2
}
    80002350:	02813083          	ld	ra,40(sp)
    80002354:	02013403          	ld	s0,32(sp)
    80002358:	01813483          	ld	s1,24(sp)
    8000235c:	01013903          	ld	s2,16(sp)
    80002360:	03010113          	addi	sp,sp,48
    80002364:	00008067          	ret

0000000080002368 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80002368:	fc010113          	addi	sp,sp,-64
    8000236c:	02113c23          	sd	ra,56(sp)
    80002370:	02813823          	sd	s0,48(sp)
    80002374:	02913423          	sd	s1,40(sp)
    80002378:	03213023          	sd	s2,32(sp)
    8000237c:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002380:	100027f3          	csrr	a5,sstatus
    80002384:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002388:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000238c:	00200793          	li	a5,2
    80002390:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002394:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002398:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    8000239c:	00a00613          	li	a2,10
    800023a0:	02c5773b          	remuw	a4,a0,a2
    800023a4:	02071693          	slli	a3,a4,0x20
    800023a8:	0206d693          	srli	a3,a3,0x20
    800023ac:	00003717          	auipc	a4,0x3
    800023b0:	dc470713          	addi	a4,a4,-572 # 80005170 <_ZZ12printIntegermE6digits>
    800023b4:	00d70733          	add	a4,a4,a3
    800023b8:	00074703          	lbu	a4,0(a4)
    800023bc:	fe040693          	addi	a3,s0,-32
    800023c0:	009687b3          	add	a5,a3,s1
    800023c4:	0014849b          	addiw	s1,s1,1
    800023c8:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    800023cc:	0005071b          	sext.w	a4,a0
    800023d0:	02c5553b          	divuw	a0,a0,a2
    800023d4:	00900793          	li	a5,9
    800023d8:	fce7e2e3          	bltu	a5,a4,8000239c <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
    800023dc:	fff4849b          	addiw	s1,s1,-1
    800023e0:	0004ce63          	bltz	s1,800023fc <_Z12printIntegerm+0x94>
        __putc(buf[i]);
    800023e4:	fe040793          	addi	a5,s0,-32
    800023e8:	009787b3          	add	a5,a5,s1
    800023ec:	ff07c503          	lbu	a0,-16(a5)
    800023f0:	00002097          	auipc	ra,0x2
    800023f4:	320080e7          	jalr	800(ra) # 80004710 <__putc>
    800023f8:	fe5ff06f          	j	800023dc <_Z12printIntegerm+0x74>

    Riscv::ms_sstatus( sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800023fc:	0009091b          	sext.w	s2,s2
    80002400:	00297913          	andi	s2,s2,2
    80002404:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002408:	10092073          	csrs	sstatus,s2
    8000240c:	03813083          	ld	ra,56(sp)
    80002410:	03013403          	ld	s0,48(sp)
    80002414:	02813483          	ld	s1,40(sp)
    80002418:	02013903          	ld	s2,32(sp)
    8000241c:	04010113          	addi	sp,sp,64
    80002420:	00008067          	ret

0000000080002424 <start>:
    80002424:	ff010113          	addi	sp,sp,-16
    80002428:	00813423          	sd	s0,8(sp)
    8000242c:	01010413          	addi	s0,sp,16
    80002430:	300027f3          	csrr	a5,mstatus
    80002434:	ffffe737          	lui	a4,0xffffe
    80002438:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c5f>
    8000243c:	00e7f7b3          	and	a5,a5,a4
    80002440:	00001737          	lui	a4,0x1
    80002444:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002448:	00e7e7b3          	or	a5,a5,a4
    8000244c:	30079073          	csrw	mstatus,a5
    80002450:	00000797          	auipc	a5,0x0
    80002454:	16078793          	addi	a5,a5,352 # 800025b0 <system_main>
    80002458:	34179073          	csrw	mepc,a5
    8000245c:	00000793          	li	a5,0
    80002460:	18079073          	csrw	satp,a5
    80002464:	000107b7          	lui	a5,0x10
    80002468:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000246c:	30279073          	csrw	medeleg,a5
    80002470:	30379073          	csrw	mideleg,a5
    80002474:	104027f3          	csrr	a5,sie
    80002478:	2227e793          	ori	a5,a5,546
    8000247c:	10479073          	csrw	sie,a5
    80002480:	fff00793          	li	a5,-1
    80002484:	00a7d793          	srli	a5,a5,0xa
    80002488:	3b079073          	csrw	pmpaddr0,a5
    8000248c:	00f00793          	li	a5,15
    80002490:	3a079073          	csrw	pmpcfg0,a5
    80002494:	f14027f3          	csrr	a5,mhartid
    80002498:	0200c737          	lui	a4,0x200c
    8000249c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800024a0:	0007869b          	sext.w	a3,a5
    800024a4:	00269713          	slli	a4,a3,0x2
    800024a8:	000f4637          	lui	a2,0xf4
    800024ac:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800024b0:	00d70733          	add	a4,a4,a3
    800024b4:	0037979b          	slliw	a5,a5,0x3
    800024b8:	020046b7          	lui	a3,0x2004
    800024bc:	00d787b3          	add	a5,a5,a3
    800024c0:	00c585b3          	add	a1,a1,a2
    800024c4:	00371693          	slli	a3,a4,0x3
    800024c8:	00003717          	auipc	a4,0x3
    800024cc:	46870713          	addi	a4,a4,1128 # 80005930 <timer_scratch>
    800024d0:	00b7b023          	sd	a1,0(a5)
    800024d4:	00d70733          	add	a4,a4,a3
    800024d8:	00f73c23          	sd	a5,24(a4)
    800024dc:	02c73023          	sd	a2,32(a4)
    800024e0:	34071073          	csrw	mscratch,a4
    800024e4:	00000797          	auipc	a5,0x0
    800024e8:	6ec78793          	addi	a5,a5,1772 # 80002bd0 <timervec>
    800024ec:	30579073          	csrw	mtvec,a5
    800024f0:	300027f3          	csrr	a5,mstatus
    800024f4:	0087e793          	ori	a5,a5,8
    800024f8:	30079073          	csrw	mstatus,a5
    800024fc:	304027f3          	csrr	a5,mie
    80002500:	0807e793          	ori	a5,a5,128
    80002504:	30479073          	csrw	mie,a5
    80002508:	f14027f3          	csrr	a5,mhartid
    8000250c:	0007879b          	sext.w	a5,a5
    80002510:	00078213          	mv	tp,a5
    80002514:	30200073          	mret
    80002518:	00813403          	ld	s0,8(sp)
    8000251c:	01010113          	addi	sp,sp,16
    80002520:	00008067          	ret

0000000080002524 <timerinit>:
    80002524:	ff010113          	addi	sp,sp,-16
    80002528:	00813423          	sd	s0,8(sp)
    8000252c:	01010413          	addi	s0,sp,16
    80002530:	f14027f3          	csrr	a5,mhartid
    80002534:	0200c737          	lui	a4,0x200c
    80002538:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000253c:	0007869b          	sext.w	a3,a5
    80002540:	00269713          	slli	a4,a3,0x2
    80002544:	000f4637          	lui	a2,0xf4
    80002548:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000254c:	00d70733          	add	a4,a4,a3
    80002550:	0037979b          	slliw	a5,a5,0x3
    80002554:	020046b7          	lui	a3,0x2004
    80002558:	00d787b3          	add	a5,a5,a3
    8000255c:	00c585b3          	add	a1,a1,a2
    80002560:	00371693          	slli	a3,a4,0x3
    80002564:	00003717          	auipc	a4,0x3
    80002568:	3cc70713          	addi	a4,a4,972 # 80005930 <timer_scratch>
    8000256c:	00b7b023          	sd	a1,0(a5)
    80002570:	00d70733          	add	a4,a4,a3
    80002574:	00f73c23          	sd	a5,24(a4)
    80002578:	02c73023          	sd	a2,32(a4)
    8000257c:	34071073          	csrw	mscratch,a4
    80002580:	00000797          	auipc	a5,0x0
    80002584:	65078793          	addi	a5,a5,1616 # 80002bd0 <timervec>
    80002588:	30579073          	csrw	mtvec,a5
    8000258c:	300027f3          	csrr	a5,mstatus
    80002590:	0087e793          	ori	a5,a5,8
    80002594:	30079073          	csrw	mstatus,a5
    80002598:	304027f3          	csrr	a5,mie
    8000259c:	0807e793          	ori	a5,a5,128
    800025a0:	30479073          	csrw	mie,a5
    800025a4:	00813403          	ld	s0,8(sp)
    800025a8:	01010113          	addi	sp,sp,16
    800025ac:	00008067          	ret

00000000800025b0 <system_main>:
    800025b0:	fe010113          	addi	sp,sp,-32
    800025b4:	00813823          	sd	s0,16(sp)
    800025b8:	00913423          	sd	s1,8(sp)
    800025bc:	00113c23          	sd	ra,24(sp)
    800025c0:	02010413          	addi	s0,sp,32
    800025c4:	00000097          	auipc	ra,0x0
    800025c8:	0c4080e7          	jalr	196(ra) # 80002688 <cpuid>
    800025cc:	00003497          	auipc	s1,0x3
    800025d0:	30c48493          	addi	s1,s1,780 # 800058d8 <started>
    800025d4:	02050263          	beqz	a0,800025f8 <system_main+0x48>
    800025d8:	0004a783          	lw	a5,0(s1)
    800025dc:	0007879b          	sext.w	a5,a5
    800025e0:	fe078ce3          	beqz	a5,800025d8 <system_main+0x28>
    800025e4:	0ff0000f          	fence
    800025e8:	00003517          	auipc	a0,0x3
    800025ec:	bc850513          	addi	a0,a0,-1080 # 800051b0 <_ZZ12printIntegermE6digits+0x40>
    800025f0:	00001097          	auipc	ra,0x1
    800025f4:	a7c080e7          	jalr	-1412(ra) # 8000306c <panic>
    800025f8:	00001097          	auipc	ra,0x1
    800025fc:	9d0080e7          	jalr	-1584(ra) # 80002fc8 <consoleinit>
    80002600:	00001097          	auipc	ra,0x1
    80002604:	15c080e7          	jalr	348(ra) # 8000375c <printfinit>
    80002608:	00003517          	auipc	a0,0x3
    8000260c:	b0850513          	addi	a0,a0,-1272 # 80005110 <CONSOLE_STATUS+0x100>
    80002610:	00001097          	auipc	ra,0x1
    80002614:	ab8080e7          	jalr	-1352(ra) # 800030c8 <__printf>
    80002618:	00003517          	auipc	a0,0x3
    8000261c:	b6850513          	addi	a0,a0,-1176 # 80005180 <_ZZ12printIntegermE6digits+0x10>
    80002620:	00001097          	auipc	ra,0x1
    80002624:	aa8080e7          	jalr	-1368(ra) # 800030c8 <__printf>
    80002628:	00003517          	auipc	a0,0x3
    8000262c:	ae850513          	addi	a0,a0,-1304 # 80005110 <CONSOLE_STATUS+0x100>
    80002630:	00001097          	auipc	ra,0x1
    80002634:	a98080e7          	jalr	-1384(ra) # 800030c8 <__printf>
    80002638:	00001097          	auipc	ra,0x1
    8000263c:	4b0080e7          	jalr	1200(ra) # 80003ae8 <kinit>
    80002640:	00000097          	auipc	ra,0x0
    80002644:	148080e7          	jalr	328(ra) # 80002788 <trapinit>
    80002648:	00000097          	auipc	ra,0x0
    8000264c:	16c080e7          	jalr	364(ra) # 800027b4 <trapinithart>
    80002650:	00000097          	auipc	ra,0x0
    80002654:	5c0080e7          	jalr	1472(ra) # 80002c10 <plicinit>
    80002658:	00000097          	auipc	ra,0x0
    8000265c:	5e0080e7          	jalr	1504(ra) # 80002c38 <plicinithart>
    80002660:	00000097          	auipc	ra,0x0
    80002664:	078080e7          	jalr	120(ra) # 800026d8 <userinit>
    80002668:	0ff0000f          	fence
    8000266c:	00100793          	li	a5,1
    80002670:	00003517          	auipc	a0,0x3
    80002674:	b2850513          	addi	a0,a0,-1240 # 80005198 <_ZZ12printIntegermE6digits+0x28>
    80002678:	00f4a023          	sw	a5,0(s1)
    8000267c:	00001097          	auipc	ra,0x1
    80002680:	a4c080e7          	jalr	-1460(ra) # 800030c8 <__printf>
    80002684:	0000006f          	j	80002684 <system_main+0xd4>

0000000080002688 <cpuid>:
    80002688:	ff010113          	addi	sp,sp,-16
    8000268c:	00813423          	sd	s0,8(sp)
    80002690:	01010413          	addi	s0,sp,16
    80002694:	00020513          	mv	a0,tp
    80002698:	00813403          	ld	s0,8(sp)
    8000269c:	0005051b          	sext.w	a0,a0
    800026a0:	01010113          	addi	sp,sp,16
    800026a4:	00008067          	ret

00000000800026a8 <mycpu>:
    800026a8:	ff010113          	addi	sp,sp,-16
    800026ac:	00813423          	sd	s0,8(sp)
    800026b0:	01010413          	addi	s0,sp,16
    800026b4:	00020793          	mv	a5,tp
    800026b8:	00813403          	ld	s0,8(sp)
    800026bc:	0007879b          	sext.w	a5,a5
    800026c0:	00779793          	slli	a5,a5,0x7
    800026c4:	00004517          	auipc	a0,0x4
    800026c8:	29c50513          	addi	a0,a0,668 # 80006960 <cpus>
    800026cc:	00f50533          	add	a0,a0,a5
    800026d0:	01010113          	addi	sp,sp,16
    800026d4:	00008067          	ret

00000000800026d8 <userinit>:
    800026d8:	ff010113          	addi	sp,sp,-16
    800026dc:	00813423          	sd	s0,8(sp)
    800026e0:	01010413          	addi	s0,sp,16
    800026e4:	00813403          	ld	s0,8(sp)
    800026e8:	01010113          	addi	sp,sp,16
    800026ec:	fffff317          	auipc	t1,0xfffff
    800026f0:	52030067          	jr	1312(t1) # 80001c0c <main>

00000000800026f4 <either_copyout>:
    800026f4:	ff010113          	addi	sp,sp,-16
    800026f8:	00813023          	sd	s0,0(sp)
    800026fc:	00113423          	sd	ra,8(sp)
    80002700:	01010413          	addi	s0,sp,16
    80002704:	02051663          	bnez	a0,80002730 <either_copyout+0x3c>
    80002708:	00058513          	mv	a0,a1
    8000270c:	00060593          	mv	a1,a2
    80002710:	0006861b          	sext.w	a2,a3
    80002714:	00002097          	auipc	ra,0x2
    80002718:	c60080e7          	jalr	-928(ra) # 80004374 <__memmove>
    8000271c:	00813083          	ld	ra,8(sp)
    80002720:	00013403          	ld	s0,0(sp)
    80002724:	00000513          	li	a0,0
    80002728:	01010113          	addi	sp,sp,16
    8000272c:	00008067          	ret
    80002730:	00003517          	auipc	a0,0x3
    80002734:	aa850513          	addi	a0,a0,-1368 # 800051d8 <_ZZ12printIntegermE6digits+0x68>
    80002738:	00001097          	auipc	ra,0x1
    8000273c:	934080e7          	jalr	-1740(ra) # 8000306c <panic>

0000000080002740 <either_copyin>:
    80002740:	ff010113          	addi	sp,sp,-16
    80002744:	00813023          	sd	s0,0(sp)
    80002748:	00113423          	sd	ra,8(sp)
    8000274c:	01010413          	addi	s0,sp,16
    80002750:	02059463          	bnez	a1,80002778 <either_copyin+0x38>
    80002754:	00060593          	mv	a1,a2
    80002758:	0006861b          	sext.w	a2,a3
    8000275c:	00002097          	auipc	ra,0x2
    80002760:	c18080e7          	jalr	-1000(ra) # 80004374 <__memmove>
    80002764:	00813083          	ld	ra,8(sp)
    80002768:	00013403          	ld	s0,0(sp)
    8000276c:	00000513          	li	a0,0
    80002770:	01010113          	addi	sp,sp,16
    80002774:	00008067          	ret
    80002778:	00003517          	auipc	a0,0x3
    8000277c:	a8850513          	addi	a0,a0,-1400 # 80005200 <_ZZ12printIntegermE6digits+0x90>
    80002780:	00001097          	auipc	ra,0x1
    80002784:	8ec080e7          	jalr	-1812(ra) # 8000306c <panic>

0000000080002788 <trapinit>:
    80002788:	ff010113          	addi	sp,sp,-16
    8000278c:	00813423          	sd	s0,8(sp)
    80002790:	01010413          	addi	s0,sp,16
    80002794:	00813403          	ld	s0,8(sp)
    80002798:	00003597          	auipc	a1,0x3
    8000279c:	a9058593          	addi	a1,a1,-1392 # 80005228 <_ZZ12printIntegermE6digits+0xb8>
    800027a0:	00004517          	auipc	a0,0x4
    800027a4:	24050513          	addi	a0,a0,576 # 800069e0 <tickslock>
    800027a8:	01010113          	addi	sp,sp,16
    800027ac:	00001317          	auipc	t1,0x1
    800027b0:	5cc30067          	jr	1484(t1) # 80003d78 <initlock>

00000000800027b4 <trapinithart>:
    800027b4:	ff010113          	addi	sp,sp,-16
    800027b8:	00813423          	sd	s0,8(sp)
    800027bc:	01010413          	addi	s0,sp,16
    800027c0:	00000797          	auipc	a5,0x0
    800027c4:	30078793          	addi	a5,a5,768 # 80002ac0 <kernelvec>
    800027c8:	10579073          	csrw	stvec,a5
    800027cc:	00813403          	ld	s0,8(sp)
    800027d0:	01010113          	addi	sp,sp,16
    800027d4:	00008067          	ret

00000000800027d8 <usertrap>:
    800027d8:	ff010113          	addi	sp,sp,-16
    800027dc:	00813423          	sd	s0,8(sp)
    800027e0:	01010413          	addi	s0,sp,16
    800027e4:	00813403          	ld	s0,8(sp)
    800027e8:	01010113          	addi	sp,sp,16
    800027ec:	00008067          	ret

00000000800027f0 <usertrapret>:
    800027f0:	ff010113          	addi	sp,sp,-16
    800027f4:	00813423          	sd	s0,8(sp)
    800027f8:	01010413          	addi	s0,sp,16
    800027fc:	00813403          	ld	s0,8(sp)
    80002800:	01010113          	addi	sp,sp,16
    80002804:	00008067          	ret

0000000080002808 <kerneltrap>:
    80002808:	fe010113          	addi	sp,sp,-32
    8000280c:	00813823          	sd	s0,16(sp)
    80002810:	00113c23          	sd	ra,24(sp)
    80002814:	00913423          	sd	s1,8(sp)
    80002818:	02010413          	addi	s0,sp,32
    8000281c:	142025f3          	csrr	a1,scause
    80002820:	100027f3          	csrr	a5,sstatus
    80002824:	0027f793          	andi	a5,a5,2
    80002828:	10079c63          	bnez	a5,80002940 <kerneltrap+0x138>
    8000282c:	142027f3          	csrr	a5,scause
    80002830:	0207ce63          	bltz	a5,8000286c <kerneltrap+0x64>
    80002834:	00003517          	auipc	a0,0x3
    80002838:	a3c50513          	addi	a0,a0,-1476 # 80005270 <_ZZ12printIntegermE6digits+0x100>
    8000283c:	00001097          	auipc	ra,0x1
    80002840:	88c080e7          	jalr	-1908(ra) # 800030c8 <__printf>
    80002844:	141025f3          	csrr	a1,sepc
    80002848:	14302673          	csrr	a2,stval
    8000284c:	00003517          	auipc	a0,0x3
    80002850:	a3450513          	addi	a0,a0,-1484 # 80005280 <_ZZ12printIntegermE6digits+0x110>
    80002854:	00001097          	auipc	ra,0x1
    80002858:	874080e7          	jalr	-1932(ra) # 800030c8 <__printf>
    8000285c:	00003517          	auipc	a0,0x3
    80002860:	a3c50513          	addi	a0,a0,-1476 # 80005298 <_ZZ12printIntegermE6digits+0x128>
    80002864:	00001097          	auipc	ra,0x1
    80002868:	808080e7          	jalr	-2040(ra) # 8000306c <panic>
    8000286c:	0ff7f713          	andi	a4,a5,255
    80002870:	00900693          	li	a3,9
    80002874:	04d70063          	beq	a4,a3,800028b4 <kerneltrap+0xac>
    80002878:	fff00713          	li	a4,-1
    8000287c:	03f71713          	slli	a4,a4,0x3f
    80002880:	00170713          	addi	a4,a4,1
    80002884:	fae798e3          	bne	a5,a4,80002834 <kerneltrap+0x2c>
    80002888:	00000097          	auipc	ra,0x0
    8000288c:	e00080e7          	jalr	-512(ra) # 80002688 <cpuid>
    80002890:	06050663          	beqz	a0,800028fc <kerneltrap+0xf4>
    80002894:	144027f3          	csrr	a5,sip
    80002898:	ffd7f793          	andi	a5,a5,-3
    8000289c:	14479073          	csrw	sip,a5
    800028a0:	01813083          	ld	ra,24(sp)
    800028a4:	01013403          	ld	s0,16(sp)
    800028a8:	00813483          	ld	s1,8(sp)
    800028ac:	02010113          	addi	sp,sp,32
    800028b0:	00008067          	ret
    800028b4:	00000097          	auipc	ra,0x0
    800028b8:	3d0080e7          	jalr	976(ra) # 80002c84 <plic_claim>
    800028bc:	00a00793          	li	a5,10
    800028c0:	00050493          	mv	s1,a0
    800028c4:	06f50863          	beq	a0,a5,80002934 <kerneltrap+0x12c>
    800028c8:	fc050ce3          	beqz	a0,800028a0 <kerneltrap+0x98>
    800028cc:	00050593          	mv	a1,a0
    800028d0:	00003517          	auipc	a0,0x3
    800028d4:	98050513          	addi	a0,a0,-1664 # 80005250 <_ZZ12printIntegermE6digits+0xe0>
    800028d8:	00000097          	auipc	ra,0x0
    800028dc:	7f0080e7          	jalr	2032(ra) # 800030c8 <__printf>
    800028e0:	01013403          	ld	s0,16(sp)
    800028e4:	01813083          	ld	ra,24(sp)
    800028e8:	00048513          	mv	a0,s1
    800028ec:	00813483          	ld	s1,8(sp)
    800028f0:	02010113          	addi	sp,sp,32
    800028f4:	00000317          	auipc	t1,0x0
    800028f8:	3c830067          	jr	968(t1) # 80002cbc <plic_complete>
    800028fc:	00004517          	auipc	a0,0x4
    80002900:	0e450513          	addi	a0,a0,228 # 800069e0 <tickslock>
    80002904:	00001097          	auipc	ra,0x1
    80002908:	498080e7          	jalr	1176(ra) # 80003d9c <acquire>
    8000290c:	00003717          	auipc	a4,0x3
    80002910:	fd070713          	addi	a4,a4,-48 # 800058dc <ticks>
    80002914:	00072783          	lw	a5,0(a4)
    80002918:	00004517          	auipc	a0,0x4
    8000291c:	0c850513          	addi	a0,a0,200 # 800069e0 <tickslock>
    80002920:	0017879b          	addiw	a5,a5,1
    80002924:	00f72023          	sw	a5,0(a4)
    80002928:	00001097          	auipc	ra,0x1
    8000292c:	540080e7          	jalr	1344(ra) # 80003e68 <release>
    80002930:	f65ff06f          	j	80002894 <kerneltrap+0x8c>
    80002934:	00001097          	auipc	ra,0x1
    80002938:	09c080e7          	jalr	156(ra) # 800039d0 <uartintr>
    8000293c:	fa5ff06f          	j	800028e0 <kerneltrap+0xd8>
    80002940:	00003517          	auipc	a0,0x3
    80002944:	8f050513          	addi	a0,a0,-1808 # 80005230 <_ZZ12printIntegermE6digits+0xc0>
    80002948:	00000097          	auipc	ra,0x0
    8000294c:	724080e7          	jalr	1828(ra) # 8000306c <panic>

0000000080002950 <clockintr>:
    80002950:	fe010113          	addi	sp,sp,-32
    80002954:	00813823          	sd	s0,16(sp)
    80002958:	00913423          	sd	s1,8(sp)
    8000295c:	00113c23          	sd	ra,24(sp)
    80002960:	02010413          	addi	s0,sp,32
    80002964:	00004497          	auipc	s1,0x4
    80002968:	07c48493          	addi	s1,s1,124 # 800069e0 <tickslock>
    8000296c:	00048513          	mv	a0,s1
    80002970:	00001097          	auipc	ra,0x1
    80002974:	42c080e7          	jalr	1068(ra) # 80003d9c <acquire>
    80002978:	00003717          	auipc	a4,0x3
    8000297c:	f6470713          	addi	a4,a4,-156 # 800058dc <ticks>
    80002980:	00072783          	lw	a5,0(a4)
    80002984:	01013403          	ld	s0,16(sp)
    80002988:	01813083          	ld	ra,24(sp)
    8000298c:	00048513          	mv	a0,s1
    80002990:	0017879b          	addiw	a5,a5,1
    80002994:	00813483          	ld	s1,8(sp)
    80002998:	00f72023          	sw	a5,0(a4)
    8000299c:	02010113          	addi	sp,sp,32
    800029a0:	00001317          	auipc	t1,0x1
    800029a4:	4c830067          	jr	1224(t1) # 80003e68 <release>

00000000800029a8 <devintr>:
    800029a8:	142027f3          	csrr	a5,scause
    800029ac:	00000513          	li	a0,0
    800029b0:	0007c463          	bltz	a5,800029b8 <devintr+0x10>
    800029b4:	00008067          	ret
    800029b8:	fe010113          	addi	sp,sp,-32
    800029bc:	00813823          	sd	s0,16(sp)
    800029c0:	00113c23          	sd	ra,24(sp)
    800029c4:	00913423          	sd	s1,8(sp)
    800029c8:	02010413          	addi	s0,sp,32
    800029cc:	0ff7f713          	andi	a4,a5,255
    800029d0:	00900693          	li	a3,9
    800029d4:	04d70c63          	beq	a4,a3,80002a2c <devintr+0x84>
    800029d8:	fff00713          	li	a4,-1
    800029dc:	03f71713          	slli	a4,a4,0x3f
    800029e0:	00170713          	addi	a4,a4,1
    800029e4:	00e78c63          	beq	a5,a4,800029fc <devintr+0x54>
    800029e8:	01813083          	ld	ra,24(sp)
    800029ec:	01013403          	ld	s0,16(sp)
    800029f0:	00813483          	ld	s1,8(sp)
    800029f4:	02010113          	addi	sp,sp,32
    800029f8:	00008067          	ret
    800029fc:	00000097          	auipc	ra,0x0
    80002a00:	c8c080e7          	jalr	-884(ra) # 80002688 <cpuid>
    80002a04:	06050663          	beqz	a0,80002a70 <devintr+0xc8>
    80002a08:	144027f3          	csrr	a5,sip
    80002a0c:	ffd7f793          	andi	a5,a5,-3
    80002a10:	14479073          	csrw	sip,a5
    80002a14:	01813083          	ld	ra,24(sp)
    80002a18:	01013403          	ld	s0,16(sp)
    80002a1c:	00813483          	ld	s1,8(sp)
    80002a20:	00200513          	li	a0,2
    80002a24:	02010113          	addi	sp,sp,32
    80002a28:	00008067          	ret
    80002a2c:	00000097          	auipc	ra,0x0
    80002a30:	258080e7          	jalr	600(ra) # 80002c84 <plic_claim>
    80002a34:	00a00793          	li	a5,10
    80002a38:	00050493          	mv	s1,a0
    80002a3c:	06f50663          	beq	a0,a5,80002aa8 <devintr+0x100>
    80002a40:	00100513          	li	a0,1
    80002a44:	fa0482e3          	beqz	s1,800029e8 <devintr+0x40>
    80002a48:	00048593          	mv	a1,s1
    80002a4c:	00003517          	auipc	a0,0x3
    80002a50:	80450513          	addi	a0,a0,-2044 # 80005250 <_ZZ12printIntegermE6digits+0xe0>
    80002a54:	00000097          	auipc	ra,0x0
    80002a58:	674080e7          	jalr	1652(ra) # 800030c8 <__printf>
    80002a5c:	00048513          	mv	a0,s1
    80002a60:	00000097          	auipc	ra,0x0
    80002a64:	25c080e7          	jalr	604(ra) # 80002cbc <plic_complete>
    80002a68:	00100513          	li	a0,1
    80002a6c:	f7dff06f          	j	800029e8 <devintr+0x40>
    80002a70:	00004517          	auipc	a0,0x4
    80002a74:	f7050513          	addi	a0,a0,-144 # 800069e0 <tickslock>
    80002a78:	00001097          	auipc	ra,0x1
    80002a7c:	324080e7          	jalr	804(ra) # 80003d9c <acquire>
    80002a80:	00003717          	auipc	a4,0x3
    80002a84:	e5c70713          	addi	a4,a4,-420 # 800058dc <ticks>
    80002a88:	00072783          	lw	a5,0(a4)
    80002a8c:	00004517          	auipc	a0,0x4
    80002a90:	f5450513          	addi	a0,a0,-172 # 800069e0 <tickslock>
    80002a94:	0017879b          	addiw	a5,a5,1
    80002a98:	00f72023          	sw	a5,0(a4)
    80002a9c:	00001097          	auipc	ra,0x1
    80002aa0:	3cc080e7          	jalr	972(ra) # 80003e68 <release>
    80002aa4:	f65ff06f          	j	80002a08 <devintr+0x60>
    80002aa8:	00001097          	auipc	ra,0x1
    80002aac:	f28080e7          	jalr	-216(ra) # 800039d0 <uartintr>
    80002ab0:	fadff06f          	j	80002a5c <devintr+0xb4>
	...

0000000080002ac0 <kernelvec>:
    80002ac0:	f0010113          	addi	sp,sp,-256
    80002ac4:	00113023          	sd	ra,0(sp)
    80002ac8:	00213423          	sd	sp,8(sp)
    80002acc:	00313823          	sd	gp,16(sp)
    80002ad0:	00413c23          	sd	tp,24(sp)
    80002ad4:	02513023          	sd	t0,32(sp)
    80002ad8:	02613423          	sd	t1,40(sp)
    80002adc:	02713823          	sd	t2,48(sp)
    80002ae0:	02813c23          	sd	s0,56(sp)
    80002ae4:	04913023          	sd	s1,64(sp)
    80002ae8:	04a13423          	sd	a0,72(sp)
    80002aec:	04b13823          	sd	a1,80(sp)
    80002af0:	04c13c23          	sd	a2,88(sp)
    80002af4:	06d13023          	sd	a3,96(sp)
    80002af8:	06e13423          	sd	a4,104(sp)
    80002afc:	06f13823          	sd	a5,112(sp)
    80002b00:	07013c23          	sd	a6,120(sp)
    80002b04:	09113023          	sd	a7,128(sp)
    80002b08:	09213423          	sd	s2,136(sp)
    80002b0c:	09313823          	sd	s3,144(sp)
    80002b10:	09413c23          	sd	s4,152(sp)
    80002b14:	0b513023          	sd	s5,160(sp)
    80002b18:	0b613423          	sd	s6,168(sp)
    80002b1c:	0b713823          	sd	s7,176(sp)
    80002b20:	0b813c23          	sd	s8,184(sp)
    80002b24:	0d913023          	sd	s9,192(sp)
    80002b28:	0da13423          	sd	s10,200(sp)
    80002b2c:	0db13823          	sd	s11,208(sp)
    80002b30:	0dc13c23          	sd	t3,216(sp)
    80002b34:	0fd13023          	sd	t4,224(sp)
    80002b38:	0fe13423          	sd	t5,232(sp)
    80002b3c:	0ff13823          	sd	t6,240(sp)
    80002b40:	cc9ff0ef          	jal	ra,80002808 <kerneltrap>
    80002b44:	00013083          	ld	ra,0(sp)
    80002b48:	00813103          	ld	sp,8(sp)
    80002b4c:	01013183          	ld	gp,16(sp)
    80002b50:	02013283          	ld	t0,32(sp)
    80002b54:	02813303          	ld	t1,40(sp)
    80002b58:	03013383          	ld	t2,48(sp)
    80002b5c:	03813403          	ld	s0,56(sp)
    80002b60:	04013483          	ld	s1,64(sp)
    80002b64:	04813503          	ld	a0,72(sp)
    80002b68:	05013583          	ld	a1,80(sp)
    80002b6c:	05813603          	ld	a2,88(sp)
    80002b70:	06013683          	ld	a3,96(sp)
    80002b74:	06813703          	ld	a4,104(sp)
    80002b78:	07013783          	ld	a5,112(sp)
    80002b7c:	07813803          	ld	a6,120(sp)
    80002b80:	08013883          	ld	a7,128(sp)
    80002b84:	08813903          	ld	s2,136(sp)
    80002b88:	09013983          	ld	s3,144(sp)
    80002b8c:	09813a03          	ld	s4,152(sp)
    80002b90:	0a013a83          	ld	s5,160(sp)
    80002b94:	0a813b03          	ld	s6,168(sp)
    80002b98:	0b013b83          	ld	s7,176(sp)
    80002b9c:	0b813c03          	ld	s8,184(sp)
    80002ba0:	0c013c83          	ld	s9,192(sp)
    80002ba4:	0c813d03          	ld	s10,200(sp)
    80002ba8:	0d013d83          	ld	s11,208(sp)
    80002bac:	0d813e03          	ld	t3,216(sp)
    80002bb0:	0e013e83          	ld	t4,224(sp)
    80002bb4:	0e813f03          	ld	t5,232(sp)
    80002bb8:	0f013f83          	ld	t6,240(sp)
    80002bbc:	10010113          	addi	sp,sp,256
    80002bc0:	10200073          	sret
    80002bc4:	00000013          	nop
    80002bc8:	00000013          	nop
    80002bcc:	00000013          	nop

0000000080002bd0 <timervec>:
    80002bd0:	34051573          	csrrw	a0,mscratch,a0
    80002bd4:	00b53023          	sd	a1,0(a0)
    80002bd8:	00c53423          	sd	a2,8(a0)
    80002bdc:	00d53823          	sd	a3,16(a0)
    80002be0:	01853583          	ld	a1,24(a0)
    80002be4:	02053603          	ld	a2,32(a0)
    80002be8:	0005b683          	ld	a3,0(a1)
    80002bec:	00c686b3          	add	a3,a3,a2
    80002bf0:	00d5b023          	sd	a3,0(a1)
    80002bf4:	00200593          	li	a1,2
    80002bf8:	14459073          	csrw	sip,a1
    80002bfc:	01053683          	ld	a3,16(a0)
    80002c00:	00853603          	ld	a2,8(a0)
    80002c04:	00053583          	ld	a1,0(a0)
    80002c08:	34051573          	csrrw	a0,mscratch,a0
    80002c0c:	30200073          	mret

0000000080002c10 <plicinit>:
    80002c10:	ff010113          	addi	sp,sp,-16
    80002c14:	00813423          	sd	s0,8(sp)
    80002c18:	01010413          	addi	s0,sp,16
    80002c1c:	00813403          	ld	s0,8(sp)
    80002c20:	0c0007b7          	lui	a5,0xc000
    80002c24:	00100713          	li	a4,1
    80002c28:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002c2c:	00e7a223          	sw	a4,4(a5)
    80002c30:	01010113          	addi	sp,sp,16
    80002c34:	00008067          	ret

0000000080002c38 <plicinithart>:
    80002c38:	ff010113          	addi	sp,sp,-16
    80002c3c:	00813023          	sd	s0,0(sp)
    80002c40:	00113423          	sd	ra,8(sp)
    80002c44:	01010413          	addi	s0,sp,16
    80002c48:	00000097          	auipc	ra,0x0
    80002c4c:	a40080e7          	jalr	-1472(ra) # 80002688 <cpuid>
    80002c50:	0085171b          	slliw	a4,a0,0x8
    80002c54:	0c0027b7          	lui	a5,0xc002
    80002c58:	00e787b3          	add	a5,a5,a4
    80002c5c:	40200713          	li	a4,1026
    80002c60:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002c64:	00813083          	ld	ra,8(sp)
    80002c68:	00013403          	ld	s0,0(sp)
    80002c6c:	00d5151b          	slliw	a0,a0,0xd
    80002c70:	0c2017b7          	lui	a5,0xc201
    80002c74:	00a78533          	add	a0,a5,a0
    80002c78:	00052023          	sw	zero,0(a0)
    80002c7c:	01010113          	addi	sp,sp,16
    80002c80:	00008067          	ret

0000000080002c84 <plic_claim>:
    80002c84:	ff010113          	addi	sp,sp,-16
    80002c88:	00813023          	sd	s0,0(sp)
    80002c8c:	00113423          	sd	ra,8(sp)
    80002c90:	01010413          	addi	s0,sp,16
    80002c94:	00000097          	auipc	ra,0x0
    80002c98:	9f4080e7          	jalr	-1548(ra) # 80002688 <cpuid>
    80002c9c:	00813083          	ld	ra,8(sp)
    80002ca0:	00013403          	ld	s0,0(sp)
    80002ca4:	00d5151b          	slliw	a0,a0,0xd
    80002ca8:	0c2017b7          	lui	a5,0xc201
    80002cac:	00a78533          	add	a0,a5,a0
    80002cb0:	00452503          	lw	a0,4(a0)
    80002cb4:	01010113          	addi	sp,sp,16
    80002cb8:	00008067          	ret

0000000080002cbc <plic_complete>:
    80002cbc:	fe010113          	addi	sp,sp,-32
    80002cc0:	00813823          	sd	s0,16(sp)
    80002cc4:	00913423          	sd	s1,8(sp)
    80002cc8:	00113c23          	sd	ra,24(sp)
    80002ccc:	02010413          	addi	s0,sp,32
    80002cd0:	00050493          	mv	s1,a0
    80002cd4:	00000097          	auipc	ra,0x0
    80002cd8:	9b4080e7          	jalr	-1612(ra) # 80002688 <cpuid>
    80002cdc:	01813083          	ld	ra,24(sp)
    80002ce0:	01013403          	ld	s0,16(sp)
    80002ce4:	00d5179b          	slliw	a5,a0,0xd
    80002ce8:	0c201737          	lui	a4,0xc201
    80002cec:	00f707b3          	add	a5,a4,a5
    80002cf0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002cf4:	00813483          	ld	s1,8(sp)
    80002cf8:	02010113          	addi	sp,sp,32
    80002cfc:	00008067          	ret

0000000080002d00 <consolewrite>:
    80002d00:	fb010113          	addi	sp,sp,-80
    80002d04:	04813023          	sd	s0,64(sp)
    80002d08:	04113423          	sd	ra,72(sp)
    80002d0c:	02913c23          	sd	s1,56(sp)
    80002d10:	03213823          	sd	s2,48(sp)
    80002d14:	03313423          	sd	s3,40(sp)
    80002d18:	03413023          	sd	s4,32(sp)
    80002d1c:	01513c23          	sd	s5,24(sp)
    80002d20:	05010413          	addi	s0,sp,80
    80002d24:	06c05c63          	blez	a2,80002d9c <consolewrite+0x9c>
    80002d28:	00060993          	mv	s3,a2
    80002d2c:	00050a13          	mv	s4,a0
    80002d30:	00058493          	mv	s1,a1
    80002d34:	00000913          	li	s2,0
    80002d38:	fff00a93          	li	s5,-1
    80002d3c:	01c0006f          	j	80002d58 <consolewrite+0x58>
    80002d40:	fbf44503          	lbu	a0,-65(s0)
    80002d44:	0019091b          	addiw	s2,s2,1
    80002d48:	00148493          	addi	s1,s1,1
    80002d4c:	00001097          	auipc	ra,0x1
    80002d50:	a9c080e7          	jalr	-1380(ra) # 800037e8 <uartputc>
    80002d54:	03298063          	beq	s3,s2,80002d74 <consolewrite+0x74>
    80002d58:	00048613          	mv	a2,s1
    80002d5c:	00100693          	li	a3,1
    80002d60:	000a0593          	mv	a1,s4
    80002d64:	fbf40513          	addi	a0,s0,-65
    80002d68:	00000097          	auipc	ra,0x0
    80002d6c:	9d8080e7          	jalr	-1576(ra) # 80002740 <either_copyin>
    80002d70:	fd5518e3          	bne	a0,s5,80002d40 <consolewrite+0x40>
    80002d74:	04813083          	ld	ra,72(sp)
    80002d78:	04013403          	ld	s0,64(sp)
    80002d7c:	03813483          	ld	s1,56(sp)
    80002d80:	02813983          	ld	s3,40(sp)
    80002d84:	02013a03          	ld	s4,32(sp)
    80002d88:	01813a83          	ld	s5,24(sp)
    80002d8c:	00090513          	mv	a0,s2
    80002d90:	03013903          	ld	s2,48(sp)
    80002d94:	05010113          	addi	sp,sp,80
    80002d98:	00008067          	ret
    80002d9c:	00000913          	li	s2,0
    80002da0:	fd5ff06f          	j	80002d74 <consolewrite+0x74>

0000000080002da4 <consoleread>:
    80002da4:	f9010113          	addi	sp,sp,-112
    80002da8:	06813023          	sd	s0,96(sp)
    80002dac:	04913c23          	sd	s1,88(sp)
    80002db0:	05213823          	sd	s2,80(sp)
    80002db4:	05313423          	sd	s3,72(sp)
    80002db8:	05413023          	sd	s4,64(sp)
    80002dbc:	03513c23          	sd	s5,56(sp)
    80002dc0:	03613823          	sd	s6,48(sp)
    80002dc4:	03713423          	sd	s7,40(sp)
    80002dc8:	03813023          	sd	s8,32(sp)
    80002dcc:	06113423          	sd	ra,104(sp)
    80002dd0:	01913c23          	sd	s9,24(sp)
    80002dd4:	07010413          	addi	s0,sp,112
    80002dd8:	00060b93          	mv	s7,a2
    80002ddc:	00050913          	mv	s2,a0
    80002de0:	00058c13          	mv	s8,a1
    80002de4:	00060b1b          	sext.w	s6,a2
    80002de8:	00004497          	auipc	s1,0x4
    80002dec:	c2048493          	addi	s1,s1,-992 # 80006a08 <cons>
    80002df0:	00400993          	li	s3,4
    80002df4:	fff00a13          	li	s4,-1
    80002df8:	00a00a93          	li	s5,10
    80002dfc:	05705e63          	blez	s7,80002e58 <consoleread+0xb4>
    80002e00:	09c4a703          	lw	a4,156(s1)
    80002e04:	0984a783          	lw	a5,152(s1)
    80002e08:	0007071b          	sext.w	a4,a4
    80002e0c:	08e78463          	beq	a5,a4,80002e94 <consoleread+0xf0>
    80002e10:	07f7f713          	andi	a4,a5,127
    80002e14:	00e48733          	add	a4,s1,a4
    80002e18:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002e1c:	0017869b          	addiw	a3,a5,1
    80002e20:	08d4ac23          	sw	a3,152(s1)
    80002e24:	00070c9b          	sext.w	s9,a4
    80002e28:	0b370663          	beq	a4,s3,80002ed4 <consoleread+0x130>
    80002e2c:	00100693          	li	a3,1
    80002e30:	f9f40613          	addi	a2,s0,-97
    80002e34:	000c0593          	mv	a1,s8
    80002e38:	00090513          	mv	a0,s2
    80002e3c:	f8e40fa3          	sb	a4,-97(s0)
    80002e40:	00000097          	auipc	ra,0x0
    80002e44:	8b4080e7          	jalr	-1868(ra) # 800026f4 <either_copyout>
    80002e48:	01450863          	beq	a0,s4,80002e58 <consoleread+0xb4>
    80002e4c:	001c0c13          	addi	s8,s8,1
    80002e50:	fffb8b9b          	addiw	s7,s7,-1
    80002e54:	fb5c94e3          	bne	s9,s5,80002dfc <consoleread+0x58>
    80002e58:	000b851b          	sext.w	a0,s7
    80002e5c:	06813083          	ld	ra,104(sp)
    80002e60:	06013403          	ld	s0,96(sp)
    80002e64:	05813483          	ld	s1,88(sp)
    80002e68:	05013903          	ld	s2,80(sp)
    80002e6c:	04813983          	ld	s3,72(sp)
    80002e70:	04013a03          	ld	s4,64(sp)
    80002e74:	03813a83          	ld	s5,56(sp)
    80002e78:	02813b83          	ld	s7,40(sp)
    80002e7c:	02013c03          	ld	s8,32(sp)
    80002e80:	01813c83          	ld	s9,24(sp)
    80002e84:	40ab053b          	subw	a0,s6,a0
    80002e88:	03013b03          	ld	s6,48(sp)
    80002e8c:	07010113          	addi	sp,sp,112
    80002e90:	00008067          	ret
    80002e94:	00001097          	auipc	ra,0x1
    80002e98:	1d8080e7          	jalr	472(ra) # 8000406c <push_on>
    80002e9c:	0984a703          	lw	a4,152(s1)
    80002ea0:	09c4a783          	lw	a5,156(s1)
    80002ea4:	0007879b          	sext.w	a5,a5
    80002ea8:	fef70ce3          	beq	a4,a5,80002ea0 <consoleread+0xfc>
    80002eac:	00001097          	auipc	ra,0x1
    80002eb0:	234080e7          	jalr	564(ra) # 800040e0 <pop_on>
    80002eb4:	0984a783          	lw	a5,152(s1)
    80002eb8:	07f7f713          	andi	a4,a5,127
    80002ebc:	00e48733          	add	a4,s1,a4
    80002ec0:	01874703          	lbu	a4,24(a4)
    80002ec4:	0017869b          	addiw	a3,a5,1
    80002ec8:	08d4ac23          	sw	a3,152(s1)
    80002ecc:	00070c9b          	sext.w	s9,a4
    80002ed0:	f5371ee3          	bne	a4,s3,80002e2c <consoleread+0x88>
    80002ed4:	000b851b          	sext.w	a0,s7
    80002ed8:	f96bf2e3          	bgeu	s7,s6,80002e5c <consoleread+0xb8>
    80002edc:	08f4ac23          	sw	a5,152(s1)
    80002ee0:	f7dff06f          	j	80002e5c <consoleread+0xb8>

0000000080002ee4 <consputc>:
    80002ee4:	10000793          	li	a5,256
    80002ee8:	00f50663          	beq	a0,a5,80002ef4 <consputc+0x10>
    80002eec:	00001317          	auipc	t1,0x1
    80002ef0:	9f430067          	jr	-1548(t1) # 800038e0 <uartputc_sync>
    80002ef4:	ff010113          	addi	sp,sp,-16
    80002ef8:	00113423          	sd	ra,8(sp)
    80002efc:	00813023          	sd	s0,0(sp)
    80002f00:	01010413          	addi	s0,sp,16
    80002f04:	00800513          	li	a0,8
    80002f08:	00001097          	auipc	ra,0x1
    80002f0c:	9d8080e7          	jalr	-1576(ra) # 800038e0 <uartputc_sync>
    80002f10:	02000513          	li	a0,32
    80002f14:	00001097          	auipc	ra,0x1
    80002f18:	9cc080e7          	jalr	-1588(ra) # 800038e0 <uartputc_sync>
    80002f1c:	00013403          	ld	s0,0(sp)
    80002f20:	00813083          	ld	ra,8(sp)
    80002f24:	00800513          	li	a0,8
    80002f28:	01010113          	addi	sp,sp,16
    80002f2c:	00001317          	auipc	t1,0x1
    80002f30:	9b430067          	jr	-1612(t1) # 800038e0 <uartputc_sync>

0000000080002f34 <consoleintr>:
    80002f34:	fe010113          	addi	sp,sp,-32
    80002f38:	00813823          	sd	s0,16(sp)
    80002f3c:	00913423          	sd	s1,8(sp)
    80002f40:	01213023          	sd	s2,0(sp)
    80002f44:	00113c23          	sd	ra,24(sp)
    80002f48:	02010413          	addi	s0,sp,32
    80002f4c:	00004917          	auipc	s2,0x4
    80002f50:	abc90913          	addi	s2,s2,-1348 # 80006a08 <cons>
    80002f54:	00050493          	mv	s1,a0
    80002f58:	00090513          	mv	a0,s2
    80002f5c:	00001097          	auipc	ra,0x1
    80002f60:	e40080e7          	jalr	-448(ra) # 80003d9c <acquire>
    80002f64:	02048c63          	beqz	s1,80002f9c <consoleintr+0x68>
    80002f68:	0a092783          	lw	a5,160(s2)
    80002f6c:	09892703          	lw	a4,152(s2)
    80002f70:	07f00693          	li	a3,127
    80002f74:	40e7873b          	subw	a4,a5,a4
    80002f78:	02e6e263          	bltu	a3,a4,80002f9c <consoleintr+0x68>
    80002f7c:	00d00713          	li	a4,13
    80002f80:	04e48063          	beq	s1,a4,80002fc0 <consoleintr+0x8c>
    80002f84:	07f7f713          	andi	a4,a5,127
    80002f88:	00e90733          	add	a4,s2,a4
    80002f8c:	0017879b          	addiw	a5,a5,1
    80002f90:	0af92023          	sw	a5,160(s2)
    80002f94:	00970c23          	sb	s1,24(a4)
    80002f98:	08f92e23          	sw	a5,156(s2)
    80002f9c:	01013403          	ld	s0,16(sp)
    80002fa0:	01813083          	ld	ra,24(sp)
    80002fa4:	00813483          	ld	s1,8(sp)
    80002fa8:	00013903          	ld	s2,0(sp)
    80002fac:	00004517          	auipc	a0,0x4
    80002fb0:	a5c50513          	addi	a0,a0,-1444 # 80006a08 <cons>
    80002fb4:	02010113          	addi	sp,sp,32
    80002fb8:	00001317          	auipc	t1,0x1
    80002fbc:	eb030067          	jr	-336(t1) # 80003e68 <release>
    80002fc0:	00a00493          	li	s1,10
    80002fc4:	fc1ff06f          	j	80002f84 <consoleintr+0x50>

0000000080002fc8 <consoleinit>:
    80002fc8:	fe010113          	addi	sp,sp,-32
    80002fcc:	00113c23          	sd	ra,24(sp)
    80002fd0:	00813823          	sd	s0,16(sp)
    80002fd4:	00913423          	sd	s1,8(sp)
    80002fd8:	02010413          	addi	s0,sp,32
    80002fdc:	00004497          	auipc	s1,0x4
    80002fe0:	a2c48493          	addi	s1,s1,-1492 # 80006a08 <cons>
    80002fe4:	00048513          	mv	a0,s1
    80002fe8:	00002597          	auipc	a1,0x2
    80002fec:	2c058593          	addi	a1,a1,704 # 800052a8 <_ZZ12printIntegermE6digits+0x138>
    80002ff0:	00001097          	auipc	ra,0x1
    80002ff4:	d88080e7          	jalr	-632(ra) # 80003d78 <initlock>
    80002ff8:	00000097          	auipc	ra,0x0
    80002ffc:	7ac080e7          	jalr	1964(ra) # 800037a4 <uartinit>
    80003000:	01813083          	ld	ra,24(sp)
    80003004:	01013403          	ld	s0,16(sp)
    80003008:	00000797          	auipc	a5,0x0
    8000300c:	d9c78793          	addi	a5,a5,-612 # 80002da4 <consoleread>
    80003010:	0af4bc23          	sd	a5,184(s1)
    80003014:	00000797          	auipc	a5,0x0
    80003018:	cec78793          	addi	a5,a5,-788 # 80002d00 <consolewrite>
    8000301c:	0cf4b023          	sd	a5,192(s1)
    80003020:	00813483          	ld	s1,8(sp)
    80003024:	02010113          	addi	sp,sp,32
    80003028:	00008067          	ret

000000008000302c <console_read>:
    8000302c:	ff010113          	addi	sp,sp,-16
    80003030:	00813423          	sd	s0,8(sp)
    80003034:	01010413          	addi	s0,sp,16
    80003038:	00813403          	ld	s0,8(sp)
    8000303c:	00004317          	auipc	t1,0x4
    80003040:	a8433303          	ld	t1,-1404(t1) # 80006ac0 <devsw+0x10>
    80003044:	01010113          	addi	sp,sp,16
    80003048:	00030067          	jr	t1

000000008000304c <console_write>:
    8000304c:	ff010113          	addi	sp,sp,-16
    80003050:	00813423          	sd	s0,8(sp)
    80003054:	01010413          	addi	s0,sp,16
    80003058:	00813403          	ld	s0,8(sp)
    8000305c:	00004317          	auipc	t1,0x4
    80003060:	a6c33303          	ld	t1,-1428(t1) # 80006ac8 <devsw+0x18>
    80003064:	01010113          	addi	sp,sp,16
    80003068:	00030067          	jr	t1

000000008000306c <panic>:
    8000306c:	fe010113          	addi	sp,sp,-32
    80003070:	00113c23          	sd	ra,24(sp)
    80003074:	00813823          	sd	s0,16(sp)
    80003078:	00913423          	sd	s1,8(sp)
    8000307c:	02010413          	addi	s0,sp,32
    80003080:	00050493          	mv	s1,a0
    80003084:	00002517          	auipc	a0,0x2
    80003088:	22c50513          	addi	a0,a0,556 # 800052b0 <_ZZ12printIntegermE6digits+0x140>
    8000308c:	00004797          	auipc	a5,0x4
    80003090:	ac07ae23          	sw	zero,-1316(a5) # 80006b68 <pr+0x18>
    80003094:	00000097          	auipc	ra,0x0
    80003098:	034080e7          	jalr	52(ra) # 800030c8 <__printf>
    8000309c:	00048513          	mv	a0,s1
    800030a0:	00000097          	auipc	ra,0x0
    800030a4:	028080e7          	jalr	40(ra) # 800030c8 <__printf>
    800030a8:	00002517          	auipc	a0,0x2
    800030ac:	06850513          	addi	a0,a0,104 # 80005110 <CONSOLE_STATUS+0x100>
    800030b0:	00000097          	auipc	ra,0x0
    800030b4:	018080e7          	jalr	24(ra) # 800030c8 <__printf>
    800030b8:	00100793          	li	a5,1
    800030bc:	00003717          	auipc	a4,0x3
    800030c0:	82f72223          	sw	a5,-2012(a4) # 800058e0 <panicked>
    800030c4:	0000006f          	j	800030c4 <panic+0x58>

00000000800030c8 <__printf>:
    800030c8:	f3010113          	addi	sp,sp,-208
    800030cc:	08813023          	sd	s0,128(sp)
    800030d0:	07313423          	sd	s3,104(sp)
    800030d4:	09010413          	addi	s0,sp,144
    800030d8:	05813023          	sd	s8,64(sp)
    800030dc:	08113423          	sd	ra,136(sp)
    800030e0:	06913c23          	sd	s1,120(sp)
    800030e4:	07213823          	sd	s2,112(sp)
    800030e8:	07413023          	sd	s4,96(sp)
    800030ec:	05513c23          	sd	s5,88(sp)
    800030f0:	05613823          	sd	s6,80(sp)
    800030f4:	05713423          	sd	s7,72(sp)
    800030f8:	03913c23          	sd	s9,56(sp)
    800030fc:	03a13823          	sd	s10,48(sp)
    80003100:	03b13423          	sd	s11,40(sp)
    80003104:	00004317          	auipc	t1,0x4
    80003108:	a4c30313          	addi	t1,t1,-1460 # 80006b50 <pr>
    8000310c:	01832c03          	lw	s8,24(t1)
    80003110:	00b43423          	sd	a1,8(s0)
    80003114:	00c43823          	sd	a2,16(s0)
    80003118:	00d43c23          	sd	a3,24(s0)
    8000311c:	02e43023          	sd	a4,32(s0)
    80003120:	02f43423          	sd	a5,40(s0)
    80003124:	03043823          	sd	a6,48(s0)
    80003128:	03143c23          	sd	a7,56(s0)
    8000312c:	00050993          	mv	s3,a0
    80003130:	4a0c1663          	bnez	s8,800035dc <__printf+0x514>
    80003134:	60098c63          	beqz	s3,8000374c <__printf+0x684>
    80003138:	0009c503          	lbu	a0,0(s3)
    8000313c:	00840793          	addi	a5,s0,8
    80003140:	f6f43c23          	sd	a5,-136(s0)
    80003144:	00000493          	li	s1,0
    80003148:	22050063          	beqz	a0,80003368 <__printf+0x2a0>
    8000314c:	00002a37          	lui	s4,0x2
    80003150:	00018ab7          	lui	s5,0x18
    80003154:	000f4b37          	lui	s6,0xf4
    80003158:	00989bb7          	lui	s7,0x989
    8000315c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003160:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003164:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003168:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000316c:	00148c9b          	addiw	s9,s1,1
    80003170:	02500793          	li	a5,37
    80003174:	01998933          	add	s2,s3,s9
    80003178:	38f51263          	bne	a0,a5,800034fc <__printf+0x434>
    8000317c:	00094783          	lbu	a5,0(s2)
    80003180:	00078c9b          	sext.w	s9,a5
    80003184:	1e078263          	beqz	a5,80003368 <__printf+0x2a0>
    80003188:	0024849b          	addiw	s1,s1,2
    8000318c:	07000713          	li	a4,112
    80003190:	00998933          	add	s2,s3,s1
    80003194:	38e78a63          	beq	a5,a4,80003528 <__printf+0x460>
    80003198:	20f76863          	bltu	a4,a5,800033a8 <__printf+0x2e0>
    8000319c:	42a78863          	beq	a5,a0,800035cc <__printf+0x504>
    800031a0:	06400713          	li	a4,100
    800031a4:	40e79663          	bne	a5,a4,800035b0 <__printf+0x4e8>
    800031a8:	f7843783          	ld	a5,-136(s0)
    800031ac:	0007a603          	lw	a2,0(a5)
    800031b0:	00878793          	addi	a5,a5,8
    800031b4:	f6f43c23          	sd	a5,-136(s0)
    800031b8:	42064a63          	bltz	a2,800035ec <__printf+0x524>
    800031bc:	00a00713          	li	a4,10
    800031c0:	02e677bb          	remuw	a5,a2,a4
    800031c4:	00002d97          	auipc	s11,0x2
    800031c8:	114d8d93          	addi	s11,s11,276 # 800052d8 <digits>
    800031cc:	00900593          	li	a1,9
    800031d0:	0006051b          	sext.w	a0,a2
    800031d4:	00000c93          	li	s9,0
    800031d8:	02079793          	slli	a5,a5,0x20
    800031dc:	0207d793          	srli	a5,a5,0x20
    800031e0:	00fd87b3          	add	a5,s11,a5
    800031e4:	0007c783          	lbu	a5,0(a5)
    800031e8:	02e656bb          	divuw	a3,a2,a4
    800031ec:	f8f40023          	sb	a5,-128(s0)
    800031f0:	14c5d863          	bge	a1,a2,80003340 <__printf+0x278>
    800031f4:	06300593          	li	a1,99
    800031f8:	00100c93          	li	s9,1
    800031fc:	02e6f7bb          	remuw	a5,a3,a4
    80003200:	02079793          	slli	a5,a5,0x20
    80003204:	0207d793          	srli	a5,a5,0x20
    80003208:	00fd87b3          	add	a5,s11,a5
    8000320c:	0007c783          	lbu	a5,0(a5)
    80003210:	02e6d73b          	divuw	a4,a3,a4
    80003214:	f8f400a3          	sb	a5,-127(s0)
    80003218:	12a5f463          	bgeu	a1,a0,80003340 <__printf+0x278>
    8000321c:	00a00693          	li	a3,10
    80003220:	00900593          	li	a1,9
    80003224:	02d777bb          	remuw	a5,a4,a3
    80003228:	02079793          	slli	a5,a5,0x20
    8000322c:	0207d793          	srli	a5,a5,0x20
    80003230:	00fd87b3          	add	a5,s11,a5
    80003234:	0007c503          	lbu	a0,0(a5)
    80003238:	02d757bb          	divuw	a5,a4,a3
    8000323c:	f8a40123          	sb	a0,-126(s0)
    80003240:	48e5f263          	bgeu	a1,a4,800036c4 <__printf+0x5fc>
    80003244:	06300513          	li	a0,99
    80003248:	02d7f5bb          	remuw	a1,a5,a3
    8000324c:	02059593          	slli	a1,a1,0x20
    80003250:	0205d593          	srli	a1,a1,0x20
    80003254:	00bd85b3          	add	a1,s11,a1
    80003258:	0005c583          	lbu	a1,0(a1)
    8000325c:	02d7d7bb          	divuw	a5,a5,a3
    80003260:	f8b401a3          	sb	a1,-125(s0)
    80003264:	48e57263          	bgeu	a0,a4,800036e8 <__printf+0x620>
    80003268:	3e700513          	li	a0,999
    8000326c:	02d7f5bb          	remuw	a1,a5,a3
    80003270:	02059593          	slli	a1,a1,0x20
    80003274:	0205d593          	srli	a1,a1,0x20
    80003278:	00bd85b3          	add	a1,s11,a1
    8000327c:	0005c583          	lbu	a1,0(a1)
    80003280:	02d7d7bb          	divuw	a5,a5,a3
    80003284:	f8b40223          	sb	a1,-124(s0)
    80003288:	46e57663          	bgeu	a0,a4,800036f4 <__printf+0x62c>
    8000328c:	02d7f5bb          	remuw	a1,a5,a3
    80003290:	02059593          	slli	a1,a1,0x20
    80003294:	0205d593          	srli	a1,a1,0x20
    80003298:	00bd85b3          	add	a1,s11,a1
    8000329c:	0005c583          	lbu	a1,0(a1)
    800032a0:	02d7d7bb          	divuw	a5,a5,a3
    800032a4:	f8b402a3          	sb	a1,-123(s0)
    800032a8:	46ea7863          	bgeu	s4,a4,80003718 <__printf+0x650>
    800032ac:	02d7f5bb          	remuw	a1,a5,a3
    800032b0:	02059593          	slli	a1,a1,0x20
    800032b4:	0205d593          	srli	a1,a1,0x20
    800032b8:	00bd85b3          	add	a1,s11,a1
    800032bc:	0005c583          	lbu	a1,0(a1)
    800032c0:	02d7d7bb          	divuw	a5,a5,a3
    800032c4:	f8b40323          	sb	a1,-122(s0)
    800032c8:	3eeaf863          	bgeu	s5,a4,800036b8 <__printf+0x5f0>
    800032cc:	02d7f5bb          	remuw	a1,a5,a3
    800032d0:	02059593          	slli	a1,a1,0x20
    800032d4:	0205d593          	srli	a1,a1,0x20
    800032d8:	00bd85b3          	add	a1,s11,a1
    800032dc:	0005c583          	lbu	a1,0(a1)
    800032e0:	02d7d7bb          	divuw	a5,a5,a3
    800032e4:	f8b403a3          	sb	a1,-121(s0)
    800032e8:	42eb7e63          	bgeu	s6,a4,80003724 <__printf+0x65c>
    800032ec:	02d7f5bb          	remuw	a1,a5,a3
    800032f0:	02059593          	slli	a1,a1,0x20
    800032f4:	0205d593          	srli	a1,a1,0x20
    800032f8:	00bd85b3          	add	a1,s11,a1
    800032fc:	0005c583          	lbu	a1,0(a1)
    80003300:	02d7d7bb          	divuw	a5,a5,a3
    80003304:	f8b40423          	sb	a1,-120(s0)
    80003308:	42ebfc63          	bgeu	s7,a4,80003740 <__printf+0x678>
    8000330c:	02079793          	slli	a5,a5,0x20
    80003310:	0207d793          	srli	a5,a5,0x20
    80003314:	00fd8db3          	add	s11,s11,a5
    80003318:	000dc703          	lbu	a4,0(s11)
    8000331c:	00a00793          	li	a5,10
    80003320:	00900c93          	li	s9,9
    80003324:	f8e404a3          	sb	a4,-119(s0)
    80003328:	00065c63          	bgez	a2,80003340 <__printf+0x278>
    8000332c:	f9040713          	addi	a4,s0,-112
    80003330:	00f70733          	add	a4,a4,a5
    80003334:	02d00693          	li	a3,45
    80003338:	fed70823          	sb	a3,-16(a4)
    8000333c:	00078c93          	mv	s9,a5
    80003340:	f8040793          	addi	a5,s0,-128
    80003344:	01978cb3          	add	s9,a5,s9
    80003348:	f7f40d13          	addi	s10,s0,-129
    8000334c:	000cc503          	lbu	a0,0(s9)
    80003350:	fffc8c93          	addi	s9,s9,-1
    80003354:	00000097          	auipc	ra,0x0
    80003358:	b90080e7          	jalr	-1136(ra) # 80002ee4 <consputc>
    8000335c:	ffac98e3          	bne	s9,s10,8000334c <__printf+0x284>
    80003360:	00094503          	lbu	a0,0(s2)
    80003364:	e00514e3          	bnez	a0,8000316c <__printf+0xa4>
    80003368:	1a0c1663          	bnez	s8,80003514 <__printf+0x44c>
    8000336c:	08813083          	ld	ra,136(sp)
    80003370:	08013403          	ld	s0,128(sp)
    80003374:	07813483          	ld	s1,120(sp)
    80003378:	07013903          	ld	s2,112(sp)
    8000337c:	06813983          	ld	s3,104(sp)
    80003380:	06013a03          	ld	s4,96(sp)
    80003384:	05813a83          	ld	s5,88(sp)
    80003388:	05013b03          	ld	s6,80(sp)
    8000338c:	04813b83          	ld	s7,72(sp)
    80003390:	04013c03          	ld	s8,64(sp)
    80003394:	03813c83          	ld	s9,56(sp)
    80003398:	03013d03          	ld	s10,48(sp)
    8000339c:	02813d83          	ld	s11,40(sp)
    800033a0:	0d010113          	addi	sp,sp,208
    800033a4:	00008067          	ret
    800033a8:	07300713          	li	a4,115
    800033ac:	1ce78a63          	beq	a5,a4,80003580 <__printf+0x4b8>
    800033b0:	07800713          	li	a4,120
    800033b4:	1ee79e63          	bne	a5,a4,800035b0 <__printf+0x4e8>
    800033b8:	f7843783          	ld	a5,-136(s0)
    800033bc:	0007a703          	lw	a4,0(a5)
    800033c0:	00878793          	addi	a5,a5,8
    800033c4:	f6f43c23          	sd	a5,-136(s0)
    800033c8:	28074263          	bltz	a4,8000364c <__printf+0x584>
    800033cc:	00002d97          	auipc	s11,0x2
    800033d0:	f0cd8d93          	addi	s11,s11,-244 # 800052d8 <digits>
    800033d4:	00f77793          	andi	a5,a4,15
    800033d8:	00fd87b3          	add	a5,s11,a5
    800033dc:	0007c683          	lbu	a3,0(a5)
    800033e0:	00f00613          	li	a2,15
    800033e4:	0007079b          	sext.w	a5,a4
    800033e8:	f8d40023          	sb	a3,-128(s0)
    800033ec:	0047559b          	srliw	a1,a4,0x4
    800033f0:	0047569b          	srliw	a3,a4,0x4
    800033f4:	00000c93          	li	s9,0
    800033f8:	0ee65063          	bge	a2,a4,800034d8 <__printf+0x410>
    800033fc:	00f6f693          	andi	a3,a3,15
    80003400:	00dd86b3          	add	a3,s11,a3
    80003404:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003408:	0087d79b          	srliw	a5,a5,0x8
    8000340c:	00100c93          	li	s9,1
    80003410:	f8d400a3          	sb	a3,-127(s0)
    80003414:	0cb67263          	bgeu	a2,a1,800034d8 <__printf+0x410>
    80003418:	00f7f693          	andi	a3,a5,15
    8000341c:	00dd86b3          	add	a3,s11,a3
    80003420:	0006c583          	lbu	a1,0(a3)
    80003424:	00f00613          	li	a2,15
    80003428:	0047d69b          	srliw	a3,a5,0x4
    8000342c:	f8b40123          	sb	a1,-126(s0)
    80003430:	0047d593          	srli	a1,a5,0x4
    80003434:	28f67e63          	bgeu	a2,a5,800036d0 <__printf+0x608>
    80003438:	00f6f693          	andi	a3,a3,15
    8000343c:	00dd86b3          	add	a3,s11,a3
    80003440:	0006c503          	lbu	a0,0(a3)
    80003444:	0087d813          	srli	a6,a5,0x8
    80003448:	0087d69b          	srliw	a3,a5,0x8
    8000344c:	f8a401a3          	sb	a0,-125(s0)
    80003450:	28b67663          	bgeu	a2,a1,800036dc <__printf+0x614>
    80003454:	00f6f693          	andi	a3,a3,15
    80003458:	00dd86b3          	add	a3,s11,a3
    8000345c:	0006c583          	lbu	a1,0(a3)
    80003460:	00c7d513          	srli	a0,a5,0xc
    80003464:	00c7d69b          	srliw	a3,a5,0xc
    80003468:	f8b40223          	sb	a1,-124(s0)
    8000346c:	29067a63          	bgeu	a2,a6,80003700 <__printf+0x638>
    80003470:	00f6f693          	andi	a3,a3,15
    80003474:	00dd86b3          	add	a3,s11,a3
    80003478:	0006c583          	lbu	a1,0(a3)
    8000347c:	0107d813          	srli	a6,a5,0x10
    80003480:	0107d69b          	srliw	a3,a5,0x10
    80003484:	f8b402a3          	sb	a1,-123(s0)
    80003488:	28a67263          	bgeu	a2,a0,8000370c <__printf+0x644>
    8000348c:	00f6f693          	andi	a3,a3,15
    80003490:	00dd86b3          	add	a3,s11,a3
    80003494:	0006c683          	lbu	a3,0(a3)
    80003498:	0147d79b          	srliw	a5,a5,0x14
    8000349c:	f8d40323          	sb	a3,-122(s0)
    800034a0:	21067663          	bgeu	a2,a6,800036ac <__printf+0x5e4>
    800034a4:	02079793          	slli	a5,a5,0x20
    800034a8:	0207d793          	srli	a5,a5,0x20
    800034ac:	00fd8db3          	add	s11,s11,a5
    800034b0:	000dc683          	lbu	a3,0(s11)
    800034b4:	00800793          	li	a5,8
    800034b8:	00700c93          	li	s9,7
    800034bc:	f8d403a3          	sb	a3,-121(s0)
    800034c0:	00075c63          	bgez	a4,800034d8 <__printf+0x410>
    800034c4:	f9040713          	addi	a4,s0,-112
    800034c8:	00f70733          	add	a4,a4,a5
    800034cc:	02d00693          	li	a3,45
    800034d0:	fed70823          	sb	a3,-16(a4)
    800034d4:	00078c93          	mv	s9,a5
    800034d8:	f8040793          	addi	a5,s0,-128
    800034dc:	01978cb3          	add	s9,a5,s9
    800034e0:	f7f40d13          	addi	s10,s0,-129
    800034e4:	000cc503          	lbu	a0,0(s9)
    800034e8:	fffc8c93          	addi	s9,s9,-1
    800034ec:	00000097          	auipc	ra,0x0
    800034f0:	9f8080e7          	jalr	-1544(ra) # 80002ee4 <consputc>
    800034f4:	ff9d18e3          	bne	s10,s9,800034e4 <__printf+0x41c>
    800034f8:	0100006f          	j	80003508 <__printf+0x440>
    800034fc:	00000097          	auipc	ra,0x0
    80003500:	9e8080e7          	jalr	-1560(ra) # 80002ee4 <consputc>
    80003504:	000c8493          	mv	s1,s9
    80003508:	00094503          	lbu	a0,0(s2)
    8000350c:	c60510e3          	bnez	a0,8000316c <__printf+0xa4>
    80003510:	e40c0ee3          	beqz	s8,8000336c <__printf+0x2a4>
    80003514:	00003517          	auipc	a0,0x3
    80003518:	63c50513          	addi	a0,a0,1596 # 80006b50 <pr>
    8000351c:	00001097          	auipc	ra,0x1
    80003520:	94c080e7          	jalr	-1716(ra) # 80003e68 <release>
    80003524:	e49ff06f          	j	8000336c <__printf+0x2a4>
    80003528:	f7843783          	ld	a5,-136(s0)
    8000352c:	03000513          	li	a0,48
    80003530:	01000d13          	li	s10,16
    80003534:	00878713          	addi	a4,a5,8
    80003538:	0007bc83          	ld	s9,0(a5)
    8000353c:	f6e43c23          	sd	a4,-136(s0)
    80003540:	00000097          	auipc	ra,0x0
    80003544:	9a4080e7          	jalr	-1628(ra) # 80002ee4 <consputc>
    80003548:	07800513          	li	a0,120
    8000354c:	00000097          	auipc	ra,0x0
    80003550:	998080e7          	jalr	-1640(ra) # 80002ee4 <consputc>
    80003554:	00002d97          	auipc	s11,0x2
    80003558:	d84d8d93          	addi	s11,s11,-636 # 800052d8 <digits>
    8000355c:	03ccd793          	srli	a5,s9,0x3c
    80003560:	00fd87b3          	add	a5,s11,a5
    80003564:	0007c503          	lbu	a0,0(a5)
    80003568:	fffd0d1b          	addiw	s10,s10,-1
    8000356c:	004c9c93          	slli	s9,s9,0x4
    80003570:	00000097          	auipc	ra,0x0
    80003574:	974080e7          	jalr	-1676(ra) # 80002ee4 <consputc>
    80003578:	fe0d12e3          	bnez	s10,8000355c <__printf+0x494>
    8000357c:	f8dff06f          	j	80003508 <__printf+0x440>
    80003580:	f7843783          	ld	a5,-136(s0)
    80003584:	0007bc83          	ld	s9,0(a5)
    80003588:	00878793          	addi	a5,a5,8
    8000358c:	f6f43c23          	sd	a5,-136(s0)
    80003590:	000c9a63          	bnez	s9,800035a4 <__printf+0x4dc>
    80003594:	1080006f          	j	8000369c <__printf+0x5d4>
    80003598:	001c8c93          	addi	s9,s9,1
    8000359c:	00000097          	auipc	ra,0x0
    800035a0:	948080e7          	jalr	-1720(ra) # 80002ee4 <consputc>
    800035a4:	000cc503          	lbu	a0,0(s9)
    800035a8:	fe0518e3          	bnez	a0,80003598 <__printf+0x4d0>
    800035ac:	f5dff06f          	j	80003508 <__printf+0x440>
    800035b0:	02500513          	li	a0,37
    800035b4:	00000097          	auipc	ra,0x0
    800035b8:	930080e7          	jalr	-1744(ra) # 80002ee4 <consputc>
    800035bc:	000c8513          	mv	a0,s9
    800035c0:	00000097          	auipc	ra,0x0
    800035c4:	924080e7          	jalr	-1756(ra) # 80002ee4 <consputc>
    800035c8:	f41ff06f          	j	80003508 <__printf+0x440>
    800035cc:	02500513          	li	a0,37
    800035d0:	00000097          	auipc	ra,0x0
    800035d4:	914080e7          	jalr	-1772(ra) # 80002ee4 <consputc>
    800035d8:	f31ff06f          	j	80003508 <__printf+0x440>
    800035dc:	00030513          	mv	a0,t1
    800035e0:	00000097          	auipc	ra,0x0
    800035e4:	7bc080e7          	jalr	1980(ra) # 80003d9c <acquire>
    800035e8:	b4dff06f          	j	80003134 <__printf+0x6c>
    800035ec:	40c0053b          	negw	a0,a2
    800035f0:	00a00713          	li	a4,10
    800035f4:	02e576bb          	remuw	a3,a0,a4
    800035f8:	00002d97          	auipc	s11,0x2
    800035fc:	ce0d8d93          	addi	s11,s11,-800 # 800052d8 <digits>
    80003600:	ff700593          	li	a1,-9
    80003604:	02069693          	slli	a3,a3,0x20
    80003608:	0206d693          	srli	a3,a3,0x20
    8000360c:	00dd86b3          	add	a3,s11,a3
    80003610:	0006c683          	lbu	a3,0(a3)
    80003614:	02e557bb          	divuw	a5,a0,a4
    80003618:	f8d40023          	sb	a3,-128(s0)
    8000361c:	10b65e63          	bge	a2,a1,80003738 <__printf+0x670>
    80003620:	06300593          	li	a1,99
    80003624:	02e7f6bb          	remuw	a3,a5,a4
    80003628:	02069693          	slli	a3,a3,0x20
    8000362c:	0206d693          	srli	a3,a3,0x20
    80003630:	00dd86b3          	add	a3,s11,a3
    80003634:	0006c683          	lbu	a3,0(a3)
    80003638:	02e7d73b          	divuw	a4,a5,a4
    8000363c:	00200793          	li	a5,2
    80003640:	f8d400a3          	sb	a3,-127(s0)
    80003644:	bca5ece3          	bltu	a1,a0,8000321c <__printf+0x154>
    80003648:	ce5ff06f          	j	8000332c <__printf+0x264>
    8000364c:	40e007bb          	negw	a5,a4
    80003650:	00002d97          	auipc	s11,0x2
    80003654:	c88d8d93          	addi	s11,s11,-888 # 800052d8 <digits>
    80003658:	00f7f693          	andi	a3,a5,15
    8000365c:	00dd86b3          	add	a3,s11,a3
    80003660:	0006c583          	lbu	a1,0(a3)
    80003664:	ff100613          	li	a2,-15
    80003668:	0047d69b          	srliw	a3,a5,0x4
    8000366c:	f8b40023          	sb	a1,-128(s0)
    80003670:	0047d59b          	srliw	a1,a5,0x4
    80003674:	0ac75e63          	bge	a4,a2,80003730 <__printf+0x668>
    80003678:	00f6f693          	andi	a3,a3,15
    8000367c:	00dd86b3          	add	a3,s11,a3
    80003680:	0006c603          	lbu	a2,0(a3)
    80003684:	00f00693          	li	a3,15
    80003688:	0087d79b          	srliw	a5,a5,0x8
    8000368c:	f8c400a3          	sb	a2,-127(s0)
    80003690:	d8b6e4e3          	bltu	a3,a1,80003418 <__printf+0x350>
    80003694:	00200793          	li	a5,2
    80003698:	e2dff06f          	j	800034c4 <__printf+0x3fc>
    8000369c:	00002c97          	auipc	s9,0x2
    800036a0:	c1cc8c93          	addi	s9,s9,-996 # 800052b8 <_ZZ12printIntegermE6digits+0x148>
    800036a4:	02800513          	li	a0,40
    800036a8:	ef1ff06f          	j	80003598 <__printf+0x4d0>
    800036ac:	00700793          	li	a5,7
    800036b0:	00600c93          	li	s9,6
    800036b4:	e0dff06f          	j	800034c0 <__printf+0x3f8>
    800036b8:	00700793          	li	a5,7
    800036bc:	00600c93          	li	s9,6
    800036c0:	c69ff06f          	j	80003328 <__printf+0x260>
    800036c4:	00300793          	li	a5,3
    800036c8:	00200c93          	li	s9,2
    800036cc:	c5dff06f          	j	80003328 <__printf+0x260>
    800036d0:	00300793          	li	a5,3
    800036d4:	00200c93          	li	s9,2
    800036d8:	de9ff06f          	j	800034c0 <__printf+0x3f8>
    800036dc:	00400793          	li	a5,4
    800036e0:	00300c93          	li	s9,3
    800036e4:	dddff06f          	j	800034c0 <__printf+0x3f8>
    800036e8:	00400793          	li	a5,4
    800036ec:	00300c93          	li	s9,3
    800036f0:	c39ff06f          	j	80003328 <__printf+0x260>
    800036f4:	00500793          	li	a5,5
    800036f8:	00400c93          	li	s9,4
    800036fc:	c2dff06f          	j	80003328 <__printf+0x260>
    80003700:	00500793          	li	a5,5
    80003704:	00400c93          	li	s9,4
    80003708:	db9ff06f          	j	800034c0 <__printf+0x3f8>
    8000370c:	00600793          	li	a5,6
    80003710:	00500c93          	li	s9,5
    80003714:	dadff06f          	j	800034c0 <__printf+0x3f8>
    80003718:	00600793          	li	a5,6
    8000371c:	00500c93          	li	s9,5
    80003720:	c09ff06f          	j	80003328 <__printf+0x260>
    80003724:	00800793          	li	a5,8
    80003728:	00700c93          	li	s9,7
    8000372c:	bfdff06f          	j	80003328 <__printf+0x260>
    80003730:	00100793          	li	a5,1
    80003734:	d91ff06f          	j	800034c4 <__printf+0x3fc>
    80003738:	00100793          	li	a5,1
    8000373c:	bf1ff06f          	j	8000332c <__printf+0x264>
    80003740:	00900793          	li	a5,9
    80003744:	00800c93          	li	s9,8
    80003748:	be1ff06f          	j	80003328 <__printf+0x260>
    8000374c:	00002517          	auipc	a0,0x2
    80003750:	b7450513          	addi	a0,a0,-1164 # 800052c0 <_ZZ12printIntegermE6digits+0x150>
    80003754:	00000097          	auipc	ra,0x0
    80003758:	918080e7          	jalr	-1768(ra) # 8000306c <panic>

000000008000375c <printfinit>:
    8000375c:	fe010113          	addi	sp,sp,-32
    80003760:	00813823          	sd	s0,16(sp)
    80003764:	00913423          	sd	s1,8(sp)
    80003768:	00113c23          	sd	ra,24(sp)
    8000376c:	02010413          	addi	s0,sp,32
    80003770:	00003497          	auipc	s1,0x3
    80003774:	3e048493          	addi	s1,s1,992 # 80006b50 <pr>
    80003778:	00048513          	mv	a0,s1
    8000377c:	00002597          	auipc	a1,0x2
    80003780:	b5458593          	addi	a1,a1,-1196 # 800052d0 <_ZZ12printIntegermE6digits+0x160>
    80003784:	00000097          	auipc	ra,0x0
    80003788:	5f4080e7          	jalr	1524(ra) # 80003d78 <initlock>
    8000378c:	01813083          	ld	ra,24(sp)
    80003790:	01013403          	ld	s0,16(sp)
    80003794:	0004ac23          	sw	zero,24(s1)
    80003798:	00813483          	ld	s1,8(sp)
    8000379c:	02010113          	addi	sp,sp,32
    800037a0:	00008067          	ret

00000000800037a4 <uartinit>:
    800037a4:	ff010113          	addi	sp,sp,-16
    800037a8:	00813423          	sd	s0,8(sp)
    800037ac:	01010413          	addi	s0,sp,16
    800037b0:	100007b7          	lui	a5,0x10000
    800037b4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800037b8:	f8000713          	li	a4,-128
    800037bc:	00e781a3          	sb	a4,3(a5)
    800037c0:	00300713          	li	a4,3
    800037c4:	00e78023          	sb	a4,0(a5)
    800037c8:	000780a3          	sb	zero,1(a5)
    800037cc:	00e781a3          	sb	a4,3(a5)
    800037d0:	00700693          	li	a3,7
    800037d4:	00d78123          	sb	a3,2(a5)
    800037d8:	00e780a3          	sb	a4,1(a5)
    800037dc:	00813403          	ld	s0,8(sp)
    800037e0:	01010113          	addi	sp,sp,16
    800037e4:	00008067          	ret

00000000800037e8 <uartputc>:
    800037e8:	00002797          	auipc	a5,0x2
    800037ec:	0f87a783          	lw	a5,248(a5) # 800058e0 <panicked>
    800037f0:	00078463          	beqz	a5,800037f8 <uartputc+0x10>
    800037f4:	0000006f          	j	800037f4 <uartputc+0xc>
    800037f8:	fd010113          	addi	sp,sp,-48
    800037fc:	02813023          	sd	s0,32(sp)
    80003800:	00913c23          	sd	s1,24(sp)
    80003804:	01213823          	sd	s2,16(sp)
    80003808:	01313423          	sd	s3,8(sp)
    8000380c:	02113423          	sd	ra,40(sp)
    80003810:	03010413          	addi	s0,sp,48
    80003814:	00002917          	auipc	s2,0x2
    80003818:	0d490913          	addi	s2,s2,212 # 800058e8 <uart_tx_r>
    8000381c:	00093783          	ld	a5,0(s2)
    80003820:	00002497          	auipc	s1,0x2
    80003824:	0d048493          	addi	s1,s1,208 # 800058f0 <uart_tx_w>
    80003828:	0004b703          	ld	a4,0(s1)
    8000382c:	02078693          	addi	a3,a5,32
    80003830:	00050993          	mv	s3,a0
    80003834:	02e69c63          	bne	a3,a4,8000386c <uartputc+0x84>
    80003838:	00001097          	auipc	ra,0x1
    8000383c:	834080e7          	jalr	-1996(ra) # 8000406c <push_on>
    80003840:	00093783          	ld	a5,0(s2)
    80003844:	0004b703          	ld	a4,0(s1)
    80003848:	02078793          	addi	a5,a5,32
    8000384c:	00e79463          	bne	a5,a4,80003854 <uartputc+0x6c>
    80003850:	0000006f          	j	80003850 <uartputc+0x68>
    80003854:	00001097          	auipc	ra,0x1
    80003858:	88c080e7          	jalr	-1908(ra) # 800040e0 <pop_on>
    8000385c:	00093783          	ld	a5,0(s2)
    80003860:	0004b703          	ld	a4,0(s1)
    80003864:	02078693          	addi	a3,a5,32
    80003868:	fce688e3          	beq	a3,a4,80003838 <uartputc+0x50>
    8000386c:	01f77693          	andi	a3,a4,31
    80003870:	00003597          	auipc	a1,0x3
    80003874:	30058593          	addi	a1,a1,768 # 80006b70 <uart_tx_buf>
    80003878:	00d586b3          	add	a3,a1,a3
    8000387c:	00170713          	addi	a4,a4,1
    80003880:	01368023          	sb	s3,0(a3)
    80003884:	00e4b023          	sd	a4,0(s1)
    80003888:	10000637          	lui	a2,0x10000
    8000388c:	02f71063          	bne	a4,a5,800038ac <uartputc+0xc4>
    80003890:	0340006f          	j	800038c4 <uartputc+0xdc>
    80003894:	00074703          	lbu	a4,0(a4)
    80003898:	00f93023          	sd	a5,0(s2)
    8000389c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800038a0:	00093783          	ld	a5,0(s2)
    800038a4:	0004b703          	ld	a4,0(s1)
    800038a8:	00f70e63          	beq	a4,a5,800038c4 <uartputc+0xdc>
    800038ac:	00564683          	lbu	a3,5(a2)
    800038b0:	01f7f713          	andi	a4,a5,31
    800038b4:	00e58733          	add	a4,a1,a4
    800038b8:	0206f693          	andi	a3,a3,32
    800038bc:	00178793          	addi	a5,a5,1
    800038c0:	fc069ae3          	bnez	a3,80003894 <uartputc+0xac>
    800038c4:	02813083          	ld	ra,40(sp)
    800038c8:	02013403          	ld	s0,32(sp)
    800038cc:	01813483          	ld	s1,24(sp)
    800038d0:	01013903          	ld	s2,16(sp)
    800038d4:	00813983          	ld	s3,8(sp)
    800038d8:	03010113          	addi	sp,sp,48
    800038dc:	00008067          	ret

00000000800038e0 <uartputc_sync>:
    800038e0:	ff010113          	addi	sp,sp,-16
    800038e4:	00813423          	sd	s0,8(sp)
    800038e8:	01010413          	addi	s0,sp,16
    800038ec:	00002717          	auipc	a4,0x2
    800038f0:	ff472703          	lw	a4,-12(a4) # 800058e0 <panicked>
    800038f4:	02071663          	bnez	a4,80003920 <uartputc_sync+0x40>
    800038f8:	00050793          	mv	a5,a0
    800038fc:	100006b7          	lui	a3,0x10000
    80003900:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003904:	02077713          	andi	a4,a4,32
    80003908:	fe070ce3          	beqz	a4,80003900 <uartputc_sync+0x20>
    8000390c:	0ff7f793          	andi	a5,a5,255
    80003910:	00f68023          	sb	a5,0(a3)
    80003914:	00813403          	ld	s0,8(sp)
    80003918:	01010113          	addi	sp,sp,16
    8000391c:	00008067          	ret
    80003920:	0000006f          	j	80003920 <uartputc_sync+0x40>

0000000080003924 <uartstart>:
    80003924:	ff010113          	addi	sp,sp,-16
    80003928:	00813423          	sd	s0,8(sp)
    8000392c:	01010413          	addi	s0,sp,16
    80003930:	00002617          	auipc	a2,0x2
    80003934:	fb860613          	addi	a2,a2,-72 # 800058e8 <uart_tx_r>
    80003938:	00002517          	auipc	a0,0x2
    8000393c:	fb850513          	addi	a0,a0,-72 # 800058f0 <uart_tx_w>
    80003940:	00063783          	ld	a5,0(a2)
    80003944:	00053703          	ld	a4,0(a0)
    80003948:	04f70263          	beq	a4,a5,8000398c <uartstart+0x68>
    8000394c:	100005b7          	lui	a1,0x10000
    80003950:	00003817          	auipc	a6,0x3
    80003954:	22080813          	addi	a6,a6,544 # 80006b70 <uart_tx_buf>
    80003958:	01c0006f          	j	80003974 <uartstart+0x50>
    8000395c:	0006c703          	lbu	a4,0(a3)
    80003960:	00f63023          	sd	a5,0(a2)
    80003964:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003968:	00063783          	ld	a5,0(a2)
    8000396c:	00053703          	ld	a4,0(a0)
    80003970:	00f70e63          	beq	a4,a5,8000398c <uartstart+0x68>
    80003974:	01f7f713          	andi	a4,a5,31
    80003978:	00e806b3          	add	a3,a6,a4
    8000397c:	0055c703          	lbu	a4,5(a1)
    80003980:	00178793          	addi	a5,a5,1
    80003984:	02077713          	andi	a4,a4,32
    80003988:	fc071ae3          	bnez	a4,8000395c <uartstart+0x38>
    8000398c:	00813403          	ld	s0,8(sp)
    80003990:	01010113          	addi	sp,sp,16
    80003994:	00008067          	ret

0000000080003998 <uartgetc>:
    80003998:	ff010113          	addi	sp,sp,-16
    8000399c:	00813423          	sd	s0,8(sp)
    800039a0:	01010413          	addi	s0,sp,16
    800039a4:	10000737          	lui	a4,0x10000
    800039a8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800039ac:	0017f793          	andi	a5,a5,1
    800039b0:	00078c63          	beqz	a5,800039c8 <uartgetc+0x30>
    800039b4:	00074503          	lbu	a0,0(a4)
    800039b8:	0ff57513          	andi	a0,a0,255
    800039bc:	00813403          	ld	s0,8(sp)
    800039c0:	01010113          	addi	sp,sp,16
    800039c4:	00008067          	ret
    800039c8:	fff00513          	li	a0,-1
    800039cc:	ff1ff06f          	j	800039bc <uartgetc+0x24>

00000000800039d0 <uartintr>:
    800039d0:	100007b7          	lui	a5,0x10000
    800039d4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800039d8:	0017f793          	andi	a5,a5,1
    800039dc:	0a078463          	beqz	a5,80003a84 <uartintr+0xb4>
    800039e0:	fe010113          	addi	sp,sp,-32
    800039e4:	00813823          	sd	s0,16(sp)
    800039e8:	00913423          	sd	s1,8(sp)
    800039ec:	00113c23          	sd	ra,24(sp)
    800039f0:	02010413          	addi	s0,sp,32
    800039f4:	100004b7          	lui	s1,0x10000
    800039f8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800039fc:	0ff57513          	andi	a0,a0,255
    80003a00:	fffff097          	auipc	ra,0xfffff
    80003a04:	534080e7          	jalr	1332(ra) # 80002f34 <consoleintr>
    80003a08:	0054c783          	lbu	a5,5(s1)
    80003a0c:	0017f793          	andi	a5,a5,1
    80003a10:	fe0794e3          	bnez	a5,800039f8 <uartintr+0x28>
    80003a14:	00002617          	auipc	a2,0x2
    80003a18:	ed460613          	addi	a2,a2,-300 # 800058e8 <uart_tx_r>
    80003a1c:	00002517          	auipc	a0,0x2
    80003a20:	ed450513          	addi	a0,a0,-300 # 800058f0 <uart_tx_w>
    80003a24:	00063783          	ld	a5,0(a2)
    80003a28:	00053703          	ld	a4,0(a0)
    80003a2c:	04f70263          	beq	a4,a5,80003a70 <uartintr+0xa0>
    80003a30:	100005b7          	lui	a1,0x10000
    80003a34:	00003817          	auipc	a6,0x3
    80003a38:	13c80813          	addi	a6,a6,316 # 80006b70 <uart_tx_buf>
    80003a3c:	01c0006f          	j	80003a58 <uartintr+0x88>
    80003a40:	0006c703          	lbu	a4,0(a3)
    80003a44:	00f63023          	sd	a5,0(a2)
    80003a48:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003a4c:	00063783          	ld	a5,0(a2)
    80003a50:	00053703          	ld	a4,0(a0)
    80003a54:	00f70e63          	beq	a4,a5,80003a70 <uartintr+0xa0>
    80003a58:	01f7f713          	andi	a4,a5,31
    80003a5c:	00e806b3          	add	a3,a6,a4
    80003a60:	0055c703          	lbu	a4,5(a1)
    80003a64:	00178793          	addi	a5,a5,1
    80003a68:	02077713          	andi	a4,a4,32
    80003a6c:	fc071ae3          	bnez	a4,80003a40 <uartintr+0x70>
    80003a70:	01813083          	ld	ra,24(sp)
    80003a74:	01013403          	ld	s0,16(sp)
    80003a78:	00813483          	ld	s1,8(sp)
    80003a7c:	02010113          	addi	sp,sp,32
    80003a80:	00008067          	ret
    80003a84:	00002617          	auipc	a2,0x2
    80003a88:	e6460613          	addi	a2,a2,-412 # 800058e8 <uart_tx_r>
    80003a8c:	00002517          	auipc	a0,0x2
    80003a90:	e6450513          	addi	a0,a0,-412 # 800058f0 <uart_tx_w>
    80003a94:	00063783          	ld	a5,0(a2)
    80003a98:	00053703          	ld	a4,0(a0)
    80003a9c:	04f70263          	beq	a4,a5,80003ae0 <uartintr+0x110>
    80003aa0:	100005b7          	lui	a1,0x10000
    80003aa4:	00003817          	auipc	a6,0x3
    80003aa8:	0cc80813          	addi	a6,a6,204 # 80006b70 <uart_tx_buf>
    80003aac:	01c0006f          	j	80003ac8 <uartintr+0xf8>
    80003ab0:	0006c703          	lbu	a4,0(a3)
    80003ab4:	00f63023          	sd	a5,0(a2)
    80003ab8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003abc:	00063783          	ld	a5,0(a2)
    80003ac0:	00053703          	ld	a4,0(a0)
    80003ac4:	02f70063          	beq	a4,a5,80003ae4 <uartintr+0x114>
    80003ac8:	01f7f713          	andi	a4,a5,31
    80003acc:	00e806b3          	add	a3,a6,a4
    80003ad0:	0055c703          	lbu	a4,5(a1)
    80003ad4:	00178793          	addi	a5,a5,1
    80003ad8:	02077713          	andi	a4,a4,32
    80003adc:	fc071ae3          	bnez	a4,80003ab0 <uartintr+0xe0>
    80003ae0:	00008067          	ret
    80003ae4:	00008067          	ret

0000000080003ae8 <kinit>:
    80003ae8:	fc010113          	addi	sp,sp,-64
    80003aec:	02913423          	sd	s1,40(sp)
    80003af0:	fffff7b7          	lui	a5,0xfffff
    80003af4:	00004497          	auipc	s1,0x4
    80003af8:	0ab48493          	addi	s1,s1,171 # 80007b9f <end+0xfff>
    80003afc:	02813823          	sd	s0,48(sp)
    80003b00:	01313c23          	sd	s3,24(sp)
    80003b04:	00f4f4b3          	and	s1,s1,a5
    80003b08:	02113c23          	sd	ra,56(sp)
    80003b0c:	03213023          	sd	s2,32(sp)
    80003b10:	01413823          	sd	s4,16(sp)
    80003b14:	01513423          	sd	s5,8(sp)
    80003b18:	04010413          	addi	s0,sp,64
    80003b1c:	000017b7          	lui	a5,0x1
    80003b20:	01100993          	li	s3,17
    80003b24:	00f487b3          	add	a5,s1,a5
    80003b28:	01b99993          	slli	s3,s3,0x1b
    80003b2c:	06f9e063          	bltu	s3,a5,80003b8c <kinit+0xa4>
    80003b30:	00003a97          	auipc	s5,0x3
    80003b34:	070a8a93          	addi	s5,s5,112 # 80006ba0 <end>
    80003b38:	0754ec63          	bltu	s1,s5,80003bb0 <kinit+0xc8>
    80003b3c:	0734fa63          	bgeu	s1,s3,80003bb0 <kinit+0xc8>
    80003b40:	00088a37          	lui	s4,0x88
    80003b44:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003b48:	00002917          	auipc	s2,0x2
    80003b4c:	db090913          	addi	s2,s2,-592 # 800058f8 <kmem>
    80003b50:	00ca1a13          	slli	s4,s4,0xc
    80003b54:	0140006f          	j	80003b68 <kinit+0x80>
    80003b58:	000017b7          	lui	a5,0x1
    80003b5c:	00f484b3          	add	s1,s1,a5
    80003b60:	0554e863          	bltu	s1,s5,80003bb0 <kinit+0xc8>
    80003b64:	0534f663          	bgeu	s1,s3,80003bb0 <kinit+0xc8>
    80003b68:	00001637          	lui	a2,0x1
    80003b6c:	00100593          	li	a1,1
    80003b70:	00048513          	mv	a0,s1
    80003b74:	00000097          	auipc	ra,0x0
    80003b78:	5e4080e7          	jalr	1508(ra) # 80004158 <__memset>
    80003b7c:	00093783          	ld	a5,0(s2)
    80003b80:	00f4b023          	sd	a5,0(s1)
    80003b84:	00993023          	sd	s1,0(s2)
    80003b88:	fd4498e3          	bne	s1,s4,80003b58 <kinit+0x70>
    80003b8c:	03813083          	ld	ra,56(sp)
    80003b90:	03013403          	ld	s0,48(sp)
    80003b94:	02813483          	ld	s1,40(sp)
    80003b98:	02013903          	ld	s2,32(sp)
    80003b9c:	01813983          	ld	s3,24(sp)
    80003ba0:	01013a03          	ld	s4,16(sp)
    80003ba4:	00813a83          	ld	s5,8(sp)
    80003ba8:	04010113          	addi	sp,sp,64
    80003bac:	00008067          	ret
    80003bb0:	00001517          	auipc	a0,0x1
    80003bb4:	74050513          	addi	a0,a0,1856 # 800052f0 <digits+0x18>
    80003bb8:	fffff097          	auipc	ra,0xfffff
    80003bbc:	4b4080e7          	jalr	1204(ra) # 8000306c <panic>

0000000080003bc0 <freerange>:
    80003bc0:	fc010113          	addi	sp,sp,-64
    80003bc4:	000017b7          	lui	a5,0x1
    80003bc8:	02913423          	sd	s1,40(sp)
    80003bcc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003bd0:	009504b3          	add	s1,a0,s1
    80003bd4:	fffff537          	lui	a0,0xfffff
    80003bd8:	02813823          	sd	s0,48(sp)
    80003bdc:	02113c23          	sd	ra,56(sp)
    80003be0:	03213023          	sd	s2,32(sp)
    80003be4:	01313c23          	sd	s3,24(sp)
    80003be8:	01413823          	sd	s4,16(sp)
    80003bec:	01513423          	sd	s5,8(sp)
    80003bf0:	01613023          	sd	s6,0(sp)
    80003bf4:	04010413          	addi	s0,sp,64
    80003bf8:	00a4f4b3          	and	s1,s1,a0
    80003bfc:	00f487b3          	add	a5,s1,a5
    80003c00:	06f5e463          	bltu	a1,a5,80003c68 <freerange+0xa8>
    80003c04:	00003a97          	auipc	s5,0x3
    80003c08:	f9ca8a93          	addi	s5,s5,-100 # 80006ba0 <end>
    80003c0c:	0954e263          	bltu	s1,s5,80003c90 <freerange+0xd0>
    80003c10:	01100993          	li	s3,17
    80003c14:	01b99993          	slli	s3,s3,0x1b
    80003c18:	0734fc63          	bgeu	s1,s3,80003c90 <freerange+0xd0>
    80003c1c:	00058a13          	mv	s4,a1
    80003c20:	00002917          	auipc	s2,0x2
    80003c24:	cd890913          	addi	s2,s2,-808 # 800058f8 <kmem>
    80003c28:	00002b37          	lui	s6,0x2
    80003c2c:	0140006f          	j	80003c40 <freerange+0x80>
    80003c30:	000017b7          	lui	a5,0x1
    80003c34:	00f484b3          	add	s1,s1,a5
    80003c38:	0554ec63          	bltu	s1,s5,80003c90 <freerange+0xd0>
    80003c3c:	0534fa63          	bgeu	s1,s3,80003c90 <freerange+0xd0>
    80003c40:	00001637          	lui	a2,0x1
    80003c44:	00100593          	li	a1,1
    80003c48:	00048513          	mv	a0,s1
    80003c4c:	00000097          	auipc	ra,0x0
    80003c50:	50c080e7          	jalr	1292(ra) # 80004158 <__memset>
    80003c54:	00093703          	ld	a4,0(s2)
    80003c58:	016487b3          	add	a5,s1,s6
    80003c5c:	00e4b023          	sd	a4,0(s1)
    80003c60:	00993023          	sd	s1,0(s2)
    80003c64:	fcfa76e3          	bgeu	s4,a5,80003c30 <freerange+0x70>
    80003c68:	03813083          	ld	ra,56(sp)
    80003c6c:	03013403          	ld	s0,48(sp)
    80003c70:	02813483          	ld	s1,40(sp)
    80003c74:	02013903          	ld	s2,32(sp)
    80003c78:	01813983          	ld	s3,24(sp)
    80003c7c:	01013a03          	ld	s4,16(sp)
    80003c80:	00813a83          	ld	s5,8(sp)
    80003c84:	00013b03          	ld	s6,0(sp)
    80003c88:	04010113          	addi	sp,sp,64
    80003c8c:	00008067          	ret
    80003c90:	00001517          	auipc	a0,0x1
    80003c94:	66050513          	addi	a0,a0,1632 # 800052f0 <digits+0x18>
    80003c98:	fffff097          	auipc	ra,0xfffff
    80003c9c:	3d4080e7          	jalr	980(ra) # 8000306c <panic>

0000000080003ca0 <kfree>:
    80003ca0:	fe010113          	addi	sp,sp,-32
    80003ca4:	00813823          	sd	s0,16(sp)
    80003ca8:	00113c23          	sd	ra,24(sp)
    80003cac:	00913423          	sd	s1,8(sp)
    80003cb0:	02010413          	addi	s0,sp,32
    80003cb4:	03451793          	slli	a5,a0,0x34
    80003cb8:	04079c63          	bnez	a5,80003d10 <kfree+0x70>
    80003cbc:	00003797          	auipc	a5,0x3
    80003cc0:	ee478793          	addi	a5,a5,-284 # 80006ba0 <end>
    80003cc4:	00050493          	mv	s1,a0
    80003cc8:	04f56463          	bltu	a0,a5,80003d10 <kfree+0x70>
    80003ccc:	01100793          	li	a5,17
    80003cd0:	01b79793          	slli	a5,a5,0x1b
    80003cd4:	02f57e63          	bgeu	a0,a5,80003d10 <kfree+0x70>
    80003cd8:	00001637          	lui	a2,0x1
    80003cdc:	00100593          	li	a1,1
    80003ce0:	00000097          	auipc	ra,0x0
    80003ce4:	478080e7          	jalr	1144(ra) # 80004158 <__memset>
    80003ce8:	00002797          	auipc	a5,0x2
    80003cec:	c1078793          	addi	a5,a5,-1008 # 800058f8 <kmem>
    80003cf0:	0007b703          	ld	a4,0(a5)
    80003cf4:	01813083          	ld	ra,24(sp)
    80003cf8:	01013403          	ld	s0,16(sp)
    80003cfc:	00e4b023          	sd	a4,0(s1)
    80003d00:	0097b023          	sd	s1,0(a5)
    80003d04:	00813483          	ld	s1,8(sp)
    80003d08:	02010113          	addi	sp,sp,32
    80003d0c:	00008067          	ret
    80003d10:	00001517          	auipc	a0,0x1
    80003d14:	5e050513          	addi	a0,a0,1504 # 800052f0 <digits+0x18>
    80003d18:	fffff097          	auipc	ra,0xfffff
    80003d1c:	354080e7          	jalr	852(ra) # 8000306c <panic>

0000000080003d20 <kalloc>:
    80003d20:	fe010113          	addi	sp,sp,-32
    80003d24:	00813823          	sd	s0,16(sp)
    80003d28:	00913423          	sd	s1,8(sp)
    80003d2c:	00113c23          	sd	ra,24(sp)
    80003d30:	02010413          	addi	s0,sp,32
    80003d34:	00002797          	auipc	a5,0x2
    80003d38:	bc478793          	addi	a5,a5,-1084 # 800058f8 <kmem>
    80003d3c:	0007b483          	ld	s1,0(a5)
    80003d40:	02048063          	beqz	s1,80003d60 <kalloc+0x40>
    80003d44:	0004b703          	ld	a4,0(s1)
    80003d48:	00001637          	lui	a2,0x1
    80003d4c:	00500593          	li	a1,5
    80003d50:	00048513          	mv	a0,s1
    80003d54:	00e7b023          	sd	a4,0(a5)
    80003d58:	00000097          	auipc	ra,0x0
    80003d5c:	400080e7          	jalr	1024(ra) # 80004158 <__memset>
    80003d60:	01813083          	ld	ra,24(sp)
    80003d64:	01013403          	ld	s0,16(sp)
    80003d68:	00048513          	mv	a0,s1
    80003d6c:	00813483          	ld	s1,8(sp)
    80003d70:	02010113          	addi	sp,sp,32
    80003d74:	00008067          	ret

0000000080003d78 <initlock>:
    80003d78:	ff010113          	addi	sp,sp,-16
    80003d7c:	00813423          	sd	s0,8(sp)
    80003d80:	01010413          	addi	s0,sp,16
    80003d84:	00813403          	ld	s0,8(sp)
    80003d88:	00b53423          	sd	a1,8(a0)
    80003d8c:	00052023          	sw	zero,0(a0)
    80003d90:	00053823          	sd	zero,16(a0)
    80003d94:	01010113          	addi	sp,sp,16
    80003d98:	00008067          	ret

0000000080003d9c <acquire>:
    80003d9c:	fe010113          	addi	sp,sp,-32
    80003da0:	00813823          	sd	s0,16(sp)
    80003da4:	00913423          	sd	s1,8(sp)
    80003da8:	00113c23          	sd	ra,24(sp)
    80003dac:	01213023          	sd	s2,0(sp)
    80003db0:	02010413          	addi	s0,sp,32
    80003db4:	00050493          	mv	s1,a0
    80003db8:	10002973          	csrr	s2,sstatus
    80003dbc:	100027f3          	csrr	a5,sstatus
    80003dc0:	ffd7f793          	andi	a5,a5,-3
    80003dc4:	10079073          	csrw	sstatus,a5
    80003dc8:	fffff097          	auipc	ra,0xfffff
    80003dcc:	8e0080e7          	jalr	-1824(ra) # 800026a8 <mycpu>
    80003dd0:	07852783          	lw	a5,120(a0)
    80003dd4:	06078e63          	beqz	a5,80003e50 <acquire+0xb4>
    80003dd8:	fffff097          	auipc	ra,0xfffff
    80003ddc:	8d0080e7          	jalr	-1840(ra) # 800026a8 <mycpu>
    80003de0:	07852783          	lw	a5,120(a0)
    80003de4:	0004a703          	lw	a4,0(s1)
    80003de8:	0017879b          	addiw	a5,a5,1
    80003dec:	06f52c23          	sw	a5,120(a0)
    80003df0:	04071063          	bnez	a4,80003e30 <acquire+0x94>
    80003df4:	00100713          	li	a4,1
    80003df8:	00070793          	mv	a5,a4
    80003dfc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003e00:	0007879b          	sext.w	a5,a5
    80003e04:	fe079ae3          	bnez	a5,80003df8 <acquire+0x5c>
    80003e08:	0ff0000f          	fence
    80003e0c:	fffff097          	auipc	ra,0xfffff
    80003e10:	89c080e7          	jalr	-1892(ra) # 800026a8 <mycpu>
    80003e14:	01813083          	ld	ra,24(sp)
    80003e18:	01013403          	ld	s0,16(sp)
    80003e1c:	00a4b823          	sd	a0,16(s1)
    80003e20:	00013903          	ld	s2,0(sp)
    80003e24:	00813483          	ld	s1,8(sp)
    80003e28:	02010113          	addi	sp,sp,32
    80003e2c:	00008067          	ret
    80003e30:	0104b903          	ld	s2,16(s1)
    80003e34:	fffff097          	auipc	ra,0xfffff
    80003e38:	874080e7          	jalr	-1932(ra) # 800026a8 <mycpu>
    80003e3c:	faa91ce3          	bne	s2,a0,80003df4 <acquire+0x58>
    80003e40:	00001517          	auipc	a0,0x1
    80003e44:	4b850513          	addi	a0,a0,1208 # 800052f8 <digits+0x20>
    80003e48:	fffff097          	auipc	ra,0xfffff
    80003e4c:	224080e7          	jalr	548(ra) # 8000306c <panic>
    80003e50:	00195913          	srli	s2,s2,0x1
    80003e54:	fffff097          	auipc	ra,0xfffff
    80003e58:	854080e7          	jalr	-1964(ra) # 800026a8 <mycpu>
    80003e5c:	00197913          	andi	s2,s2,1
    80003e60:	07252e23          	sw	s2,124(a0)
    80003e64:	f75ff06f          	j	80003dd8 <acquire+0x3c>

0000000080003e68 <release>:
    80003e68:	fe010113          	addi	sp,sp,-32
    80003e6c:	00813823          	sd	s0,16(sp)
    80003e70:	00113c23          	sd	ra,24(sp)
    80003e74:	00913423          	sd	s1,8(sp)
    80003e78:	01213023          	sd	s2,0(sp)
    80003e7c:	02010413          	addi	s0,sp,32
    80003e80:	00052783          	lw	a5,0(a0)
    80003e84:	00079a63          	bnez	a5,80003e98 <release+0x30>
    80003e88:	00001517          	auipc	a0,0x1
    80003e8c:	47850513          	addi	a0,a0,1144 # 80005300 <digits+0x28>
    80003e90:	fffff097          	auipc	ra,0xfffff
    80003e94:	1dc080e7          	jalr	476(ra) # 8000306c <panic>
    80003e98:	01053903          	ld	s2,16(a0)
    80003e9c:	00050493          	mv	s1,a0
    80003ea0:	fffff097          	auipc	ra,0xfffff
    80003ea4:	808080e7          	jalr	-2040(ra) # 800026a8 <mycpu>
    80003ea8:	fea910e3          	bne	s2,a0,80003e88 <release+0x20>
    80003eac:	0004b823          	sd	zero,16(s1)
    80003eb0:	0ff0000f          	fence
    80003eb4:	0f50000f          	fence	iorw,ow
    80003eb8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003ebc:	ffffe097          	auipc	ra,0xffffe
    80003ec0:	7ec080e7          	jalr	2028(ra) # 800026a8 <mycpu>
    80003ec4:	100027f3          	csrr	a5,sstatus
    80003ec8:	0027f793          	andi	a5,a5,2
    80003ecc:	04079a63          	bnez	a5,80003f20 <release+0xb8>
    80003ed0:	07852783          	lw	a5,120(a0)
    80003ed4:	02f05e63          	blez	a5,80003f10 <release+0xa8>
    80003ed8:	fff7871b          	addiw	a4,a5,-1
    80003edc:	06e52c23          	sw	a4,120(a0)
    80003ee0:	00071c63          	bnez	a4,80003ef8 <release+0x90>
    80003ee4:	07c52783          	lw	a5,124(a0)
    80003ee8:	00078863          	beqz	a5,80003ef8 <release+0x90>
    80003eec:	100027f3          	csrr	a5,sstatus
    80003ef0:	0027e793          	ori	a5,a5,2
    80003ef4:	10079073          	csrw	sstatus,a5
    80003ef8:	01813083          	ld	ra,24(sp)
    80003efc:	01013403          	ld	s0,16(sp)
    80003f00:	00813483          	ld	s1,8(sp)
    80003f04:	00013903          	ld	s2,0(sp)
    80003f08:	02010113          	addi	sp,sp,32
    80003f0c:	00008067          	ret
    80003f10:	00001517          	auipc	a0,0x1
    80003f14:	41050513          	addi	a0,a0,1040 # 80005320 <digits+0x48>
    80003f18:	fffff097          	auipc	ra,0xfffff
    80003f1c:	154080e7          	jalr	340(ra) # 8000306c <panic>
    80003f20:	00001517          	auipc	a0,0x1
    80003f24:	3e850513          	addi	a0,a0,1000 # 80005308 <digits+0x30>
    80003f28:	fffff097          	auipc	ra,0xfffff
    80003f2c:	144080e7          	jalr	324(ra) # 8000306c <panic>

0000000080003f30 <holding>:
    80003f30:	00052783          	lw	a5,0(a0)
    80003f34:	00079663          	bnez	a5,80003f40 <holding+0x10>
    80003f38:	00000513          	li	a0,0
    80003f3c:	00008067          	ret
    80003f40:	fe010113          	addi	sp,sp,-32
    80003f44:	00813823          	sd	s0,16(sp)
    80003f48:	00913423          	sd	s1,8(sp)
    80003f4c:	00113c23          	sd	ra,24(sp)
    80003f50:	02010413          	addi	s0,sp,32
    80003f54:	01053483          	ld	s1,16(a0)
    80003f58:	ffffe097          	auipc	ra,0xffffe
    80003f5c:	750080e7          	jalr	1872(ra) # 800026a8 <mycpu>
    80003f60:	01813083          	ld	ra,24(sp)
    80003f64:	01013403          	ld	s0,16(sp)
    80003f68:	40a48533          	sub	a0,s1,a0
    80003f6c:	00153513          	seqz	a0,a0
    80003f70:	00813483          	ld	s1,8(sp)
    80003f74:	02010113          	addi	sp,sp,32
    80003f78:	00008067          	ret

0000000080003f7c <push_off>:
    80003f7c:	fe010113          	addi	sp,sp,-32
    80003f80:	00813823          	sd	s0,16(sp)
    80003f84:	00113c23          	sd	ra,24(sp)
    80003f88:	00913423          	sd	s1,8(sp)
    80003f8c:	02010413          	addi	s0,sp,32
    80003f90:	100024f3          	csrr	s1,sstatus
    80003f94:	100027f3          	csrr	a5,sstatus
    80003f98:	ffd7f793          	andi	a5,a5,-3
    80003f9c:	10079073          	csrw	sstatus,a5
    80003fa0:	ffffe097          	auipc	ra,0xffffe
    80003fa4:	708080e7          	jalr	1800(ra) # 800026a8 <mycpu>
    80003fa8:	07852783          	lw	a5,120(a0)
    80003fac:	02078663          	beqz	a5,80003fd8 <push_off+0x5c>
    80003fb0:	ffffe097          	auipc	ra,0xffffe
    80003fb4:	6f8080e7          	jalr	1784(ra) # 800026a8 <mycpu>
    80003fb8:	07852783          	lw	a5,120(a0)
    80003fbc:	01813083          	ld	ra,24(sp)
    80003fc0:	01013403          	ld	s0,16(sp)
    80003fc4:	0017879b          	addiw	a5,a5,1
    80003fc8:	06f52c23          	sw	a5,120(a0)
    80003fcc:	00813483          	ld	s1,8(sp)
    80003fd0:	02010113          	addi	sp,sp,32
    80003fd4:	00008067          	ret
    80003fd8:	0014d493          	srli	s1,s1,0x1
    80003fdc:	ffffe097          	auipc	ra,0xffffe
    80003fe0:	6cc080e7          	jalr	1740(ra) # 800026a8 <mycpu>
    80003fe4:	0014f493          	andi	s1,s1,1
    80003fe8:	06952e23          	sw	s1,124(a0)
    80003fec:	fc5ff06f          	j	80003fb0 <push_off+0x34>

0000000080003ff0 <pop_off>:
    80003ff0:	ff010113          	addi	sp,sp,-16
    80003ff4:	00813023          	sd	s0,0(sp)
    80003ff8:	00113423          	sd	ra,8(sp)
    80003ffc:	01010413          	addi	s0,sp,16
    80004000:	ffffe097          	auipc	ra,0xffffe
    80004004:	6a8080e7          	jalr	1704(ra) # 800026a8 <mycpu>
    80004008:	100027f3          	csrr	a5,sstatus
    8000400c:	0027f793          	andi	a5,a5,2
    80004010:	04079663          	bnez	a5,8000405c <pop_off+0x6c>
    80004014:	07852783          	lw	a5,120(a0)
    80004018:	02f05a63          	blez	a5,8000404c <pop_off+0x5c>
    8000401c:	fff7871b          	addiw	a4,a5,-1
    80004020:	06e52c23          	sw	a4,120(a0)
    80004024:	00071c63          	bnez	a4,8000403c <pop_off+0x4c>
    80004028:	07c52783          	lw	a5,124(a0)
    8000402c:	00078863          	beqz	a5,8000403c <pop_off+0x4c>
    80004030:	100027f3          	csrr	a5,sstatus
    80004034:	0027e793          	ori	a5,a5,2
    80004038:	10079073          	csrw	sstatus,a5
    8000403c:	00813083          	ld	ra,8(sp)
    80004040:	00013403          	ld	s0,0(sp)
    80004044:	01010113          	addi	sp,sp,16
    80004048:	00008067          	ret
    8000404c:	00001517          	auipc	a0,0x1
    80004050:	2d450513          	addi	a0,a0,724 # 80005320 <digits+0x48>
    80004054:	fffff097          	auipc	ra,0xfffff
    80004058:	018080e7          	jalr	24(ra) # 8000306c <panic>
    8000405c:	00001517          	auipc	a0,0x1
    80004060:	2ac50513          	addi	a0,a0,684 # 80005308 <digits+0x30>
    80004064:	fffff097          	auipc	ra,0xfffff
    80004068:	008080e7          	jalr	8(ra) # 8000306c <panic>

000000008000406c <push_on>:
    8000406c:	fe010113          	addi	sp,sp,-32
    80004070:	00813823          	sd	s0,16(sp)
    80004074:	00113c23          	sd	ra,24(sp)
    80004078:	00913423          	sd	s1,8(sp)
    8000407c:	02010413          	addi	s0,sp,32
    80004080:	100024f3          	csrr	s1,sstatus
    80004084:	100027f3          	csrr	a5,sstatus
    80004088:	0027e793          	ori	a5,a5,2
    8000408c:	10079073          	csrw	sstatus,a5
    80004090:	ffffe097          	auipc	ra,0xffffe
    80004094:	618080e7          	jalr	1560(ra) # 800026a8 <mycpu>
    80004098:	07852783          	lw	a5,120(a0)
    8000409c:	02078663          	beqz	a5,800040c8 <push_on+0x5c>
    800040a0:	ffffe097          	auipc	ra,0xffffe
    800040a4:	608080e7          	jalr	1544(ra) # 800026a8 <mycpu>
    800040a8:	07852783          	lw	a5,120(a0)
    800040ac:	01813083          	ld	ra,24(sp)
    800040b0:	01013403          	ld	s0,16(sp)
    800040b4:	0017879b          	addiw	a5,a5,1
    800040b8:	06f52c23          	sw	a5,120(a0)
    800040bc:	00813483          	ld	s1,8(sp)
    800040c0:	02010113          	addi	sp,sp,32
    800040c4:	00008067          	ret
    800040c8:	0014d493          	srli	s1,s1,0x1
    800040cc:	ffffe097          	auipc	ra,0xffffe
    800040d0:	5dc080e7          	jalr	1500(ra) # 800026a8 <mycpu>
    800040d4:	0014f493          	andi	s1,s1,1
    800040d8:	06952e23          	sw	s1,124(a0)
    800040dc:	fc5ff06f          	j	800040a0 <push_on+0x34>

00000000800040e0 <pop_on>:
    800040e0:	ff010113          	addi	sp,sp,-16
    800040e4:	00813023          	sd	s0,0(sp)
    800040e8:	00113423          	sd	ra,8(sp)
    800040ec:	01010413          	addi	s0,sp,16
    800040f0:	ffffe097          	auipc	ra,0xffffe
    800040f4:	5b8080e7          	jalr	1464(ra) # 800026a8 <mycpu>
    800040f8:	100027f3          	csrr	a5,sstatus
    800040fc:	0027f793          	andi	a5,a5,2
    80004100:	04078463          	beqz	a5,80004148 <pop_on+0x68>
    80004104:	07852783          	lw	a5,120(a0)
    80004108:	02f05863          	blez	a5,80004138 <pop_on+0x58>
    8000410c:	fff7879b          	addiw	a5,a5,-1
    80004110:	06f52c23          	sw	a5,120(a0)
    80004114:	07853783          	ld	a5,120(a0)
    80004118:	00079863          	bnez	a5,80004128 <pop_on+0x48>
    8000411c:	100027f3          	csrr	a5,sstatus
    80004120:	ffd7f793          	andi	a5,a5,-3
    80004124:	10079073          	csrw	sstatus,a5
    80004128:	00813083          	ld	ra,8(sp)
    8000412c:	00013403          	ld	s0,0(sp)
    80004130:	01010113          	addi	sp,sp,16
    80004134:	00008067          	ret
    80004138:	00001517          	auipc	a0,0x1
    8000413c:	21050513          	addi	a0,a0,528 # 80005348 <digits+0x70>
    80004140:	fffff097          	auipc	ra,0xfffff
    80004144:	f2c080e7          	jalr	-212(ra) # 8000306c <panic>
    80004148:	00001517          	auipc	a0,0x1
    8000414c:	1e050513          	addi	a0,a0,480 # 80005328 <digits+0x50>
    80004150:	fffff097          	auipc	ra,0xfffff
    80004154:	f1c080e7          	jalr	-228(ra) # 8000306c <panic>

0000000080004158 <__memset>:
    80004158:	ff010113          	addi	sp,sp,-16
    8000415c:	00813423          	sd	s0,8(sp)
    80004160:	01010413          	addi	s0,sp,16
    80004164:	1a060e63          	beqz	a2,80004320 <__memset+0x1c8>
    80004168:	40a007b3          	neg	a5,a0
    8000416c:	0077f793          	andi	a5,a5,7
    80004170:	00778693          	addi	a3,a5,7
    80004174:	00b00813          	li	a6,11
    80004178:	0ff5f593          	andi	a1,a1,255
    8000417c:	fff6071b          	addiw	a4,a2,-1
    80004180:	1b06e663          	bltu	a3,a6,8000432c <__memset+0x1d4>
    80004184:	1cd76463          	bltu	a4,a3,8000434c <__memset+0x1f4>
    80004188:	1a078e63          	beqz	a5,80004344 <__memset+0x1ec>
    8000418c:	00b50023          	sb	a1,0(a0)
    80004190:	00100713          	li	a4,1
    80004194:	1ae78463          	beq	a5,a4,8000433c <__memset+0x1e4>
    80004198:	00b500a3          	sb	a1,1(a0)
    8000419c:	00200713          	li	a4,2
    800041a0:	1ae78a63          	beq	a5,a4,80004354 <__memset+0x1fc>
    800041a4:	00b50123          	sb	a1,2(a0)
    800041a8:	00300713          	li	a4,3
    800041ac:	18e78463          	beq	a5,a4,80004334 <__memset+0x1dc>
    800041b0:	00b501a3          	sb	a1,3(a0)
    800041b4:	00400713          	li	a4,4
    800041b8:	1ae78263          	beq	a5,a4,8000435c <__memset+0x204>
    800041bc:	00b50223          	sb	a1,4(a0)
    800041c0:	00500713          	li	a4,5
    800041c4:	1ae78063          	beq	a5,a4,80004364 <__memset+0x20c>
    800041c8:	00b502a3          	sb	a1,5(a0)
    800041cc:	00700713          	li	a4,7
    800041d0:	18e79e63          	bne	a5,a4,8000436c <__memset+0x214>
    800041d4:	00b50323          	sb	a1,6(a0)
    800041d8:	00700e93          	li	t4,7
    800041dc:	00859713          	slli	a4,a1,0x8
    800041e0:	00e5e733          	or	a4,a1,a4
    800041e4:	01059e13          	slli	t3,a1,0x10
    800041e8:	01c76e33          	or	t3,a4,t3
    800041ec:	01859313          	slli	t1,a1,0x18
    800041f0:	006e6333          	or	t1,t3,t1
    800041f4:	02059893          	slli	a7,a1,0x20
    800041f8:	40f60e3b          	subw	t3,a2,a5
    800041fc:	011368b3          	or	a7,t1,a7
    80004200:	02859813          	slli	a6,a1,0x28
    80004204:	0108e833          	or	a6,a7,a6
    80004208:	03059693          	slli	a3,a1,0x30
    8000420c:	003e589b          	srliw	a7,t3,0x3
    80004210:	00d866b3          	or	a3,a6,a3
    80004214:	03859713          	slli	a4,a1,0x38
    80004218:	00389813          	slli	a6,a7,0x3
    8000421c:	00f507b3          	add	a5,a0,a5
    80004220:	00e6e733          	or	a4,a3,a4
    80004224:	000e089b          	sext.w	a7,t3
    80004228:	00f806b3          	add	a3,a6,a5
    8000422c:	00e7b023          	sd	a4,0(a5)
    80004230:	00878793          	addi	a5,a5,8
    80004234:	fed79ce3          	bne	a5,a3,8000422c <__memset+0xd4>
    80004238:	ff8e7793          	andi	a5,t3,-8
    8000423c:	0007871b          	sext.w	a4,a5
    80004240:	01d787bb          	addw	a5,a5,t4
    80004244:	0ce88e63          	beq	a7,a4,80004320 <__memset+0x1c8>
    80004248:	00f50733          	add	a4,a0,a5
    8000424c:	00b70023          	sb	a1,0(a4)
    80004250:	0017871b          	addiw	a4,a5,1
    80004254:	0cc77663          	bgeu	a4,a2,80004320 <__memset+0x1c8>
    80004258:	00e50733          	add	a4,a0,a4
    8000425c:	00b70023          	sb	a1,0(a4)
    80004260:	0027871b          	addiw	a4,a5,2
    80004264:	0ac77e63          	bgeu	a4,a2,80004320 <__memset+0x1c8>
    80004268:	00e50733          	add	a4,a0,a4
    8000426c:	00b70023          	sb	a1,0(a4)
    80004270:	0037871b          	addiw	a4,a5,3
    80004274:	0ac77663          	bgeu	a4,a2,80004320 <__memset+0x1c8>
    80004278:	00e50733          	add	a4,a0,a4
    8000427c:	00b70023          	sb	a1,0(a4)
    80004280:	0047871b          	addiw	a4,a5,4
    80004284:	08c77e63          	bgeu	a4,a2,80004320 <__memset+0x1c8>
    80004288:	00e50733          	add	a4,a0,a4
    8000428c:	00b70023          	sb	a1,0(a4)
    80004290:	0057871b          	addiw	a4,a5,5
    80004294:	08c77663          	bgeu	a4,a2,80004320 <__memset+0x1c8>
    80004298:	00e50733          	add	a4,a0,a4
    8000429c:	00b70023          	sb	a1,0(a4)
    800042a0:	0067871b          	addiw	a4,a5,6
    800042a4:	06c77e63          	bgeu	a4,a2,80004320 <__memset+0x1c8>
    800042a8:	00e50733          	add	a4,a0,a4
    800042ac:	00b70023          	sb	a1,0(a4)
    800042b0:	0077871b          	addiw	a4,a5,7
    800042b4:	06c77663          	bgeu	a4,a2,80004320 <__memset+0x1c8>
    800042b8:	00e50733          	add	a4,a0,a4
    800042bc:	00b70023          	sb	a1,0(a4)
    800042c0:	0087871b          	addiw	a4,a5,8
    800042c4:	04c77e63          	bgeu	a4,a2,80004320 <__memset+0x1c8>
    800042c8:	00e50733          	add	a4,a0,a4
    800042cc:	00b70023          	sb	a1,0(a4)
    800042d0:	0097871b          	addiw	a4,a5,9
    800042d4:	04c77663          	bgeu	a4,a2,80004320 <__memset+0x1c8>
    800042d8:	00e50733          	add	a4,a0,a4
    800042dc:	00b70023          	sb	a1,0(a4)
    800042e0:	00a7871b          	addiw	a4,a5,10
    800042e4:	02c77e63          	bgeu	a4,a2,80004320 <__memset+0x1c8>
    800042e8:	00e50733          	add	a4,a0,a4
    800042ec:	00b70023          	sb	a1,0(a4)
    800042f0:	00b7871b          	addiw	a4,a5,11
    800042f4:	02c77663          	bgeu	a4,a2,80004320 <__memset+0x1c8>
    800042f8:	00e50733          	add	a4,a0,a4
    800042fc:	00b70023          	sb	a1,0(a4)
    80004300:	00c7871b          	addiw	a4,a5,12
    80004304:	00c77e63          	bgeu	a4,a2,80004320 <__memset+0x1c8>
    80004308:	00e50733          	add	a4,a0,a4
    8000430c:	00b70023          	sb	a1,0(a4)
    80004310:	00d7879b          	addiw	a5,a5,13
    80004314:	00c7f663          	bgeu	a5,a2,80004320 <__memset+0x1c8>
    80004318:	00f507b3          	add	a5,a0,a5
    8000431c:	00b78023          	sb	a1,0(a5)
    80004320:	00813403          	ld	s0,8(sp)
    80004324:	01010113          	addi	sp,sp,16
    80004328:	00008067          	ret
    8000432c:	00b00693          	li	a3,11
    80004330:	e55ff06f          	j	80004184 <__memset+0x2c>
    80004334:	00300e93          	li	t4,3
    80004338:	ea5ff06f          	j	800041dc <__memset+0x84>
    8000433c:	00100e93          	li	t4,1
    80004340:	e9dff06f          	j	800041dc <__memset+0x84>
    80004344:	00000e93          	li	t4,0
    80004348:	e95ff06f          	j	800041dc <__memset+0x84>
    8000434c:	00000793          	li	a5,0
    80004350:	ef9ff06f          	j	80004248 <__memset+0xf0>
    80004354:	00200e93          	li	t4,2
    80004358:	e85ff06f          	j	800041dc <__memset+0x84>
    8000435c:	00400e93          	li	t4,4
    80004360:	e7dff06f          	j	800041dc <__memset+0x84>
    80004364:	00500e93          	li	t4,5
    80004368:	e75ff06f          	j	800041dc <__memset+0x84>
    8000436c:	00600e93          	li	t4,6
    80004370:	e6dff06f          	j	800041dc <__memset+0x84>

0000000080004374 <__memmove>:
    80004374:	ff010113          	addi	sp,sp,-16
    80004378:	00813423          	sd	s0,8(sp)
    8000437c:	01010413          	addi	s0,sp,16
    80004380:	0e060863          	beqz	a2,80004470 <__memmove+0xfc>
    80004384:	fff6069b          	addiw	a3,a2,-1
    80004388:	0006881b          	sext.w	a6,a3
    8000438c:	0ea5e863          	bltu	a1,a0,8000447c <__memmove+0x108>
    80004390:	00758713          	addi	a4,a1,7
    80004394:	00a5e7b3          	or	a5,a1,a0
    80004398:	40a70733          	sub	a4,a4,a0
    8000439c:	0077f793          	andi	a5,a5,7
    800043a0:	00f73713          	sltiu	a4,a4,15
    800043a4:	00174713          	xori	a4,a4,1
    800043a8:	0017b793          	seqz	a5,a5
    800043ac:	00e7f7b3          	and	a5,a5,a4
    800043b0:	10078863          	beqz	a5,800044c0 <__memmove+0x14c>
    800043b4:	00900793          	li	a5,9
    800043b8:	1107f463          	bgeu	a5,a6,800044c0 <__memmove+0x14c>
    800043bc:	0036581b          	srliw	a6,a2,0x3
    800043c0:	fff8081b          	addiw	a6,a6,-1
    800043c4:	02081813          	slli	a6,a6,0x20
    800043c8:	01d85893          	srli	a7,a6,0x1d
    800043cc:	00858813          	addi	a6,a1,8
    800043d0:	00058793          	mv	a5,a1
    800043d4:	00050713          	mv	a4,a0
    800043d8:	01088833          	add	a6,a7,a6
    800043dc:	0007b883          	ld	a7,0(a5)
    800043e0:	00878793          	addi	a5,a5,8
    800043e4:	00870713          	addi	a4,a4,8
    800043e8:	ff173c23          	sd	a7,-8(a4)
    800043ec:	ff0798e3          	bne	a5,a6,800043dc <__memmove+0x68>
    800043f0:	ff867713          	andi	a4,a2,-8
    800043f4:	02071793          	slli	a5,a4,0x20
    800043f8:	0207d793          	srli	a5,a5,0x20
    800043fc:	00f585b3          	add	a1,a1,a5
    80004400:	40e686bb          	subw	a3,a3,a4
    80004404:	00f507b3          	add	a5,a0,a5
    80004408:	06e60463          	beq	a2,a4,80004470 <__memmove+0xfc>
    8000440c:	0005c703          	lbu	a4,0(a1)
    80004410:	00e78023          	sb	a4,0(a5)
    80004414:	04068e63          	beqz	a3,80004470 <__memmove+0xfc>
    80004418:	0015c603          	lbu	a2,1(a1)
    8000441c:	00100713          	li	a4,1
    80004420:	00c780a3          	sb	a2,1(a5)
    80004424:	04e68663          	beq	a3,a4,80004470 <__memmove+0xfc>
    80004428:	0025c603          	lbu	a2,2(a1)
    8000442c:	00200713          	li	a4,2
    80004430:	00c78123          	sb	a2,2(a5)
    80004434:	02e68e63          	beq	a3,a4,80004470 <__memmove+0xfc>
    80004438:	0035c603          	lbu	a2,3(a1)
    8000443c:	00300713          	li	a4,3
    80004440:	00c781a3          	sb	a2,3(a5)
    80004444:	02e68663          	beq	a3,a4,80004470 <__memmove+0xfc>
    80004448:	0045c603          	lbu	a2,4(a1)
    8000444c:	00400713          	li	a4,4
    80004450:	00c78223          	sb	a2,4(a5)
    80004454:	00e68e63          	beq	a3,a4,80004470 <__memmove+0xfc>
    80004458:	0055c603          	lbu	a2,5(a1)
    8000445c:	00500713          	li	a4,5
    80004460:	00c782a3          	sb	a2,5(a5)
    80004464:	00e68663          	beq	a3,a4,80004470 <__memmove+0xfc>
    80004468:	0065c703          	lbu	a4,6(a1)
    8000446c:	00e78323          	sb	a4,6(a5)
    80004470:	00813403          	ld	s0,8(sp)
    80004474:	01010113          	addi	sp,sp,16
    80004478:	00008067          	ret
    8000447c:	02061713          	slli	a4,a2,0x20
    80004480:	02075713          	srli	a4,a4,0x20
    80004484:	00e587b3          	add	a5,a1,a4
    80004488:	f0f574e3          	bgeu	a0,a5,80004390 <__memmove+0x1c>
    8000448c:	02069613          	slli	a2,a3,0x20
    80004490:	02065613          	srli	a2,a2,0x20
    80004494:	fff64613          	not	a2,a2
    80004498:	00e50733          	add	a4,a0,a4
    8000449c:	00c78633          	add	a2,a5,a2
    800044a0:	fff7c683          	lbu	a3,-1(a5)
    800044a4:	fff78793          	addi	a5,a5,-1
    800044a8:	fff70713          	addi	a4,a4,-1
    800044ac:	00d70023          	sb	a3,0(a4)
    800044b0:	fec798e3          	bne	a5,a2,800044a0 <__memmove+0x12c>
    800044b4:	00813403          	ld	s0,8(sp)
    800044b8:	01010113          	addi	sp,sp,16
    800044bc:	00008067          	ret
    800044c0:	02069713          	slli	a4,a3,0x20
    800044c4:	02075713          	srli	a4,a4,0x20
    800044c8:	00170713          	addi	a4,a4,1
    800044cc:	00e50733          	add	a4,a0,a4
    800044d0:	00050793          	mv	a5,a0
    800044d4:	0005c683          	lbu	a3,0(a1)
    800044d8:	00178793          	addi	a5,a5,1
    800044dc:	00158593          	addi	a1,a1,1
    800044e0:	fed78fa3          	sb	a3,-1(a5)
    800044e4:	fee798e3          	bne	a5,a4,800044d4 <__memmove+0x160>
    800044e8:	f89ff06f          	j	80004470 <__memmove+0xfc>

00000000800044ec <__mem_free>:
    800044ec:	ff010113          	addi	sp,sp,-16
    800044f0:	00813423          	sd	s0,8(sp)
    800044f4:	01010413          	addi	s0,sp,16
    800044f8:	00001597          	auipc	a1,0x1
    800044fc:	40858593          	addi	a1,a1,1032 # 80005900 <freep>
    80004500:	0005b783          	ld	a5,0(a1)
    80004504:	ff050693          	addi	a3,a0,-16
    80004508:	0007b703          	ld	a4,0(a5)
    8000450c:	00d7fc63          	bgeu	a5,a3,80004524 <__mem_free+0x38>
    80004510:	00e6ee63          	bltu	a3,a4,8000452c <__mem_free+0x40>
    80004514:	00e7fc63          	bgeu	a5,a4,8000452c <__mem_free+0x40>
    80004518:	00070793          	mv	a5,a4
    8000451c:	0007b703          	ld	a4,0(a5)
    80004520:	fed7e8e3          	bltu	a5,a3,80004510 <__mem_free+0x24>
    80004524:	fee7eae3          	bltu	a5,a4,80004518 <__mem_free+0x2c>
    80004528:	fee6f8e3          	bgeu	a3,a4,80004518 <__mem_free+0x2c>
    8000452c:	ff852803          	lw	a6,-8(a0)
    80004530:	02081613          	slli	a2,a6,0x20
    80004534:	01c65613          	srli	a2,a2,0x1c
    80004538:	00c68633          	add	a2,a3,a2
    8000453c:	02c70a63          	beq	a4,a2,80004570 <__mem_free+0x84>
    80004540:	fee53823          	sd	a4,-16(a0)
    80004544:	0087a503          	lw	a0,8(a5)
    80004548:	02051613          	slli	a2,a0,0x20
    8000454c:	01c65613          	srli	a2,a2,0x1c
    80004550:	00c78633          	add	a2,a5,a2
    80004554:	04c68263          	beq	a3,a2,80004598 <__mem_free+0xac>
    80004558:	00813403          	ld	s0,8(sp)
    8000455c:	00d7b023          	sd	a3,0(a5)
    80004560:	00f5b023          	sd	a5,0(a1)
    80004564:	00000513          	li	a0,0
    80004568:	01010113          	addi	sp,sp,16
    8000456c:	00008067          	ret
    80004570:	00872603          	lw	a2,8(a4)
    80004574:	00073703          	ld	a4,0(a4)
    80004578:	0106083b          	addw	a6,a2,a6
    8000457c:	ff052c23          	sw	a6,-8(a0)
    80004580:	fee53823          	sd	a4,-16(a0)
    80004584:	0087a503          	lw	a0,8(a5)
    80004588:	02051613          	slli	a2,a0,0x20
    8000458c:	01c65613          	srli	a2,a2,0x1c
    80004590:	00c78633          	add	a2,a5,a2
    80004594:	fcc692e3          	bne	a3,a2,80004558 <__mem_free+0x6c>
    80004598:	00813403          	ld	s0,8(sp)
    8000459c:	0105053b          	addw	a0,a0,a6
    800045a0:	00a7a423          	sw	a0,8(a5)
    800045a4:	00e7b023          	sd	a4,0(a5)
    800045a8:	00f5b023          	sd	a5,0(a1)
    800045ac:	00000513          	li	a0,0
    800045b0:	01010113          	addi	sp,sp,16
    800045b4:	00008067          	ret

00000000800045b8 <__mem_alloc>:
    800045b8:	fc010113          	addi	sp,sp,-64
    800045bc:	02813823          	sd	s0,48(sp)
    800045c0:	02913423          	sd	s1,40(sp)
    800045c4:	03213023          	sd	s2,32(sp)
    800045c8:	01513423          	sd	s5,8(sp)
    800045cc:	02113c23          	sd	ra,56(sp)
    800045d0:	01313c23          	sd	s3,24(sp)
    800045d4:	01413823          	sd	s4,16(sp)
    800045d8:	01613023          	sd	s6,0(sp)
    800045dc:	04010413          	addi	s0,sp,64
    800045e0:	00001a97          	auipc	s5,0x1
    800045e4:	320a8a93          	addi	s5,s5,800 # 80005900 <freep>
    800045e8:	00f50913          	addi	s2,a0,15
    800045ec:	000ab683          	ld	a3,0(s5)
    800045f0:	00495913          	srli	s2,s2,0x4
    800045f4:	0019049b          	addiw	s1,s2,1
    800045f8:	00048913          	mv	s2,s1
    800045fc:	0c068c63          	beqz	a3,800046d4 <__mem_alloc+0x11c>
    80004600:	0006b503          	ld	a0,0(a3)
    80004604:	00852703          	lw	a4,8(a0)
    80004608:	10977063          	bgeu	a4,s1,80004708 <__mem_alloc+0x150>
    8000460c:	000017b7          	lui	a5,0x1
    80004610:	0009099b          	sext.w	s3,s2
    80004614:	0af4e863          	bltu	s1,a5,800046c4 <__mem_alloc+0x10c>
    80004618:	02099a13          	slli	s4,s3,0x20
    8000461c:	01ca5a13          	srli	s4,s4,0x1c
    80004620:	fff00b13          	li	s6,-1
    80004624:	0100006f          	j	80004634 <__mem_alloc+0x7c>
    80004628:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000462c:	00852703          	lw	a4,8(a0)
    80004630:	04977463          	bgeu	a4,s1,80004678 <__mem_alloc+0xc0>
    80004634:	00050793          	mv	a5,a0
    80004638:	fea698e3          	bne	a3,a0,80004628 <__mem_alloc+0x70>
    8000463c:	000a0513          	mv	a0,s4
    80004640:	00000097          	auipc	ra,0x0
    80004644:	1f0080e7          	jalr	496(ra) # 80004830 <kvmincrease>
    80004648:	00050793          	mv	a5,a0
    8000464c:	01050513          	addi	a0,a0,16
    80004650:	07678e63          	beq	a5,s6,800046cc <__mem_alloc+0x114>
    80004654:	0137a423          	sw	s3,8(a5)
    80004658:	00000097          	auipc	ra,0x0
    8000465c:	e94080e7          	jalr	-364(ra) # 800044ec <__mem_free>
    80004660:	000ab783          	ld	a5,0(s5)
    80004664:	06078463          	beqz	a5,800046cc <__mem_alloc+0x114>
    80004668:	0007b503          	ld	a0,0(a5)
    8000466c:	00078693          	mv	a3,a5
    80004670:	00852703          	lw	a4,8(a0)
    80004674:	fc9760e3          	bltu	a4,s1,80004634 <__mem_alloc+0x7c>
    80004678:	08e48263          	beq	s1,a4,800046fc <__mem_alloc+0x144>
    8000467c:	4127073b          	subw	a4,a4,s2
    80004680:	02071693          	slli	a3,a4,0x20
    80004684:	01c6d693          	srli	a3,a3,0x1c
    80004688:	00e52423          	sw	a4,8(a0)
    8000468c:	00d50533          	add	a0,a0,a3
    80004690:	01252423          	sw	s2,8(a0)
    80004694:	00fab023          	sd	a5,0(s5)
    80004698:	01050513          	addi	a0,a0,16
    8000469c:	03813083          	ld	ra,56(sp)
    800046a0:	03013403          	ld	s0,48(sp)
    800046a4:	02813483          	ld	s1,40(sp)
    800046a8:	02013903          	ld	s2,32(sp)
    800046ac:	01813983          	ld	s3,24(sp)
    800046b0:	01013a03          	ld	s4,16(sp)
    800046b4:	00813a83          	ld	s5,8(sp)
    800046b8:	00013b03          	ld	s6,0(sp)
    800046bc:	04010113          	addi	sp,sp,64
    800046c0:	00008067          	ret
    800046c4:	000019b7          	lui	s3,0x1
    800046c8:	f51ff06f          	j	80004618 <__mem_alloc+0x60>
    800046cc:	00000513          	li	a0,0
    800046d0:	fcdff06f          	j	8000469c <__mem_alloc+0xe4>
    800046d4:	00002797          	auipc	a5,0x2
    800046d8:	4bc78793          	addi	a5,a5,1212 # 80006b90 <base>
    800046dc:	00078513          	mv	a0,a5
    800046e0:	00fab023          	sd	a5,0(s5)
    800046e4:	00f7b023          	sd	a5,0(a5)
    800046e8:	00000713          	li	a4,0
    800046ec:	00002797          	auipc	a5,0x2
    800046f0:	4a07a623          	sw	zero,1196(a5) # 80006b98 <base+0x8>
    800046f4:	00050693          	mv	a3,a0
    800046f8:	f11ff06f          	j	80004608 <__mem_alloc+0x50>
    800046fc:	00053703          	ld	a4,0(a0)
    80004700:	00e7b023          	sd	a4,0(a5)
    80004704:	f91ff06f          	j	80004694 <__mem_alloc+0xdc>
    80004708:	00068793          	mv	a5,a3
    8000470c:	f6dff06f          	j	80004678 <__mem_alloc+0xc0>

0000000080004710 <__putc>:
    80004710:	fe010113          	addi	sp,sp,-32
    80004714:	00813823          	sd	s0,16(sp)
    80004718:	00113c23          	sd	ra,24(sp)
    8000471c:	02010413          	addi	s0,sp,32
    80004720:	00050793          	mv	a5,a0
    80004724:	fef40593          	addi	a1,s0,-17
    80004728:	00100613          	li	a2,1
    8000472c:	00000513          	li	a0,0
    80004730:	fef407a3          	sb	a5,-17(s0)
    80004734:	fffff097          	auipc	ra,0xfffff
    80004738:	918080e7          	jalr	-1768(ra) # 8000304c <console_write>
    8000473c:	01813083          	ld	ra,24(sp)
    80004740:	01013403          	ld	s0,16(sp)
    80004744:	02010113          	addi	sp,sp,32
    80004748:	00008067          	ret

000000008000474c <__getc>:
    8000474c:	fe010113          	addi	sp,sp,-32
    80004750:	00813823          	sd	s0,16(sp)
    80004754:	00113c23          	sd	ra,24(sp)
    80004758:	02010413          	addi	s0,sp,32
    8000475c:	fe840593          	addi	a1,s0,-24
    80004760:	00100613          	li	a2,1
    80004764:	00000513          	li	a0,0
    80004768:	fffff097          	auipc	ra,0xfffff
    8000476c:	8c4080e7          	jalr	-1852(ra) # 8000302c <console_read>
    80004770:	fe844503          	lbu	a0,-24(s0)
    80004774:	01813083          	ld	ra,24(sp)
    80004778:	01013403          	ld	s0,16(sp)
    8000477c:	02010113          	addi	sp,sp,32
    80004780:	00008067          	ret

0000000080004784 <console_handler>:
    80004784:	fe010113          	addi	sp,sp,-32
    80004788:	00813823          	sd	s0,16(sp)
    8000478c:	00113c23          	sd	ra,24(sp)
    80004790:	00913423          	sd	s1,8(sp)
    80004794:	02010413          	addi	s0,sp,32
    80004798:	14202773          	csrr	a4,scause
    8000479c:	100027f3          	csrr	a5,sstatus
    800047a0:	0027f793          	andi	a5,a5,2
    800047a4:	06079e63          	bnez	a5,80004820 <console_handler+0x9c>
    800047a8:	00074c63          	bltz	a4,800047c0 <console_handler+0x3c>
    800047ac:	01813083          	ld	ra,24(sp)
    800047b0:	01013403          	ld	s0,16(sp)
    800047b4:	00813483          	ld	s1,8(sp)
    800047b8:	02010113          	addi	sp,sp,32
    800047bc:	00008067          	ret
    800047c0:	0ff77713          	andi	a4,a4,255
    800047c4:	00900793          	li	a5,9
    800047c8:	fef712e3          	bne	a4,a5,800047ac <console_handler+0x28>
    800047cc:	ffffe097          	auipc	ra,0xffffe
    800047d0:	4b8080e7          	jalr	1208(ra) # 80002c84 <plic_claim>
    800047d4:	00a00793          	li	a5,10
    800047d8:	00050493          	mv	s1,a0
    800047dc:	02f50c63          	beq	a0,a5,80004814 <console_handler+0x90>
    800047e0:	fc0506e3          	beqz	a0,800047ac <console_handler+0x28>
    800047e4:	00050593          	mv	a1,a0
    800047e8:	00001517          	auipc	a0,0x1
    800047ec:	a6850513          	addi	a0,a0,-1432 # 80005250 <_ZZ12printIntegermE6digits+0xe0>
    800047f0:	fffff097          	auipc	ra,0xfffff
    800047f4:	8d8080e7          	jalr	-1832(ra) # 800030c8 <__printf>
    800047f8:	01013403          	ld	s0,16(sp)
    800047fc:	01813083          	ld	ra,24(sp)
    80004800:	00048513          	mv	a0,s1
    80004804:	00813483          	ld	s1,8(sp)
    80004808:	02010113          	addi	sp,sp,32
    8000480c:	ffffe317          	auipc	t1,0xffffe
    80004810:	4b030067          	jr	1200(t1) # 80002cbc <plic_complete>
    80004814:	fffff097          	auipc	ra,0xfffff
    80004818:	1bc080e7          	jalr	444(ra) # 800039d0 <uartintr>
    8000481c:	fddff06f          	j	800047f8 <console_handler+0x74>
    80004820:	00001517          	auipc	a0,0x1
    80004824:	b3050513          	addi	a0,a0,-1232 # 80005350 <digits+0x78>
    80004828:	fffff097          	auipc	ra,0xfffff
    8000482c:	844080e7          	jalr	-1980(ra) # 8000306c <panic>

0000000080004830 <kvmincrease>:
    80004830:	fe010113          	addi	sp,sp,-32
    80004834:	01213023          	sd	s2,0(sp)
    80004838:	00001937          	lui	s2,0x1
    8000483c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004840:	00813823          	sd	s0,16(sp)
    80004844:	00113c23          	sd	ra,24(sp)
    80004848:	00913423          	sd	s1,8(sp)
    8000484c:	02010413          	addi	s0,sp,32
    80004850:	01250933          	add	s2,a0,s2
    80004854:	00c95913          	srli	s2,s2,0xc
    80004858:	02090863          	beqz	s2,80004888 <kvmincrease+0x58>
    8000485c:	00000493          	li	s1,0
    80004860:	00148493          	addi	s1,s1,1
    80004864:	fffff097          	auipc	ra,0xfffff
    80004868:	4bc080e7          	jalr	1212(ra) # 80003d20 <kalloc>
    8000486c:	fe991ae3          	bne	s2,s1,80004860 <kvmincrease+0x30>
    80004870:	01813083          	ld	ra,24(sp)
    80004874:	01013403          	ld	s0,16(sp)
    80004878:	00813483          	ld	s1,8(sp)
    8000487c:	00013903          	ld	s2,0(sp)
    80004880:	02010113          	addi	sp,sp,32
    80004884:	00008067          	ret
    80004888:	01813083          	ld	ra,24(sp)
    8000488c:	01013403          	ld	s0,16(sp)
    80004890:	00813483          	ld	s1,8(sp)
    80004894:	00013903          	ld	s2,0(sp)
    80004898:	00000513          	li	a0,0
    8000489c:	02010113          	addi	sp,sp,32
    800048a0:	00008067          	ret
	...
