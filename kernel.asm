
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	85813103          	ld	sp,-1960(sp) # 80005858 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	3e0020ef          	jal	ra,800023fc <start>

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
    80001184:	671000ef          	jal	ra,80001ff4 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001254:	6507b783          	ld	a5,1616(a5) # 800058a0 <free_mem_head>
    80001258:	08078463          	beqz	a5,800012e0 <_mem_alloc+0x9c>

        free_mem_head->next = NULL;
        free_mem_head->prev = NULL;
    }

    size_t allocate = blocks * MEM_BLOCK_SIZE; // Now this is in bytes
    8000125c:	00651793          	slli	a5,a0,0x6

    // I'm not a sure I have to check for this other case in the for loop:  || ((char*) curr + allocate) < HEAP_END_ADDR
    for (struct mem_block* curr = free_mem_head; curr != NULL; curr = curr->next)
    80001260:	00004517          	auipc	a0,0x4
    80001264:	64053503          	ld	a0,1600(a0) # 800058a0 <free_mem_head>
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
    800012b4:	5e87b783          	ld	a5,1512(a5) # 80005898 <used_mem_head>
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
    800012cc:	5ca7b823          	sd	a0,1488(a5) # 80005898 <used_mem_head>
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
    800012e4:	5b07a783          	lw	a5,1456(a5) # 80005890 <beginning>
    800012e8:	f6079ae3          	bnez	a5,8000125c <_mem_alloc+0x18>
        beginning = 1;
    800012ec:	00100793          	li	a5,1
    800012f0:	00004717          	auipc	a4,0x4
    800012f4:	5af72023          	sw	a5,1440(a4) # 80005890 <beginning>
        free_mem_head = (struct mem_block*) HEAP_START_ADDR;
    800012f8:	00004797          	auipc	a5,0x4
    800012fc:	5307b783          	ld	a5,1328(a5) # 80005828 <HEAP_START_ADDR>
    80001300:	00004717          	auipc	a4,0x4
    80001304:	5af73023          	sd	a5,1440(a4) # 800058a0 <free_mem_head>
        free_mem_head->size = ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR) - sizeof(struct mem_block);
    80001308:	00004717          	auipc	a4,0x4
    8000130c:	51873703          	ld	a4,1304(a4) # 80005820 <HEAP_END_ADDR>
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
    8000135c:	5407b783          	ld	a5,1344(a5) # 80005898 <used_mem_head>
    80001360:	02078863          	beqz	a5,80001390 <_mem_alloc+0x14c>
                if ((char*)curr < (char*)used_mem_head) // Should be first in the list
    80001364:	06f57463          	bgeu	a0,a5,800013cc <_mem_alloc+0x188>
                    used_mem_head->prev = curr;
    80001368:	00a7b423          	sd	a0,8(a5)
                    curr->next = used_mem_head;
    8000136c:	00f53823          	sd	a5,16(a0)
                    used_mem_head = curr;
    80001370:	00004797          	auipc	a5,0x4
    80001374:	52a7b423          	sd	a0,1320(a5) # 80005898 <used_mem_head>
                    return (void*)((char*) curr + sizeof(struct mem_block));
    80001378:	01850513          	addi	a0,a0,24
    8000137c:	f59ff06f          	j	800012d4 <_mem_alloc+0x90>
                free_mem_head = curr->next;
    80001380:	01053783          	ld	a5,16(a0)
    80001384:	00004717          	auipc	a4,0x4
    80001388:	50f73e23          	sd	a5,1308(a4) # 800058a0 <free_mem_head>
    8000138c:	fb5ff06f          	j	80001340 <_mem_alloc+0xfc>
                used_mem_head = curr;
    80001390:	00004797          	auipc	a5,0x4
    80001394:	50a7b423          	sd	a0,1288(a5) # 80005898 <used_mem_head>
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
    800013dc:	4cf73423          	sd	a5,1224(a4) # 800058a0 <free_mem_head>
    800013e0:	eb9ff06f          	j	80001298 <_mem_alloc+0x54>
                    used_mem_head = curr;
    800013e4:	00004797          	auipc	a5,0x4
    800013e8:	4aa7ba23          	sd	a0,1204(a5) # 80005898 <used_mem_head>
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
    80001458:	4446b683          	ld	a3,1092(a3) # 80005898 <used_mem_head>
    8000145c:	04068463          	beqz	a3,800014a4 <_mem_alloc+0x260>
                    if ((char*)curr < (char*) used_mem_head)
    80001460:	06d57c63          	bgeu	a0,a3,800014d8 <_mem_alloc+0x294>
                        used_mem_head->prev = curr;
    80001464:	00a6b423          	sd	a0,8(a3)
                        curr->next = used_mem_head;
    80001468:	00d53823          	sd	a3,16(a0)
                        used_mem_head = curr;
    8000146c:	00004697          	auipc	a3,0x4
    80001470:	42a6b623          	sd	a0,1068(a3) # 80005898 <used_mem_head>
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
    8000149c:	40d63423          	sd	a3,1032(a2) # 800058a0 <free_mem_head>
    800014a0:	f91ff06f          	j	80001430 <_mem_alloc+0x1ec>
                    used_mem_head = curr;
    800014a4:	00004697          	auipc	a3,0x4
    800014a8:	3ea6ba23          	sd	a0,1012(a3) # 80005898 <used_mem_head>
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
    800014e4:	3cf73023          	sd	a5,960(a4) # 800058a0 <free_mem_head>
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
    80001504:	39873703          	ld	a4,920(a4) # 80005898 <used_mem_head>
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
    8000153c:	3687b783          	ld	a5,872(a5) # 800058a0 <free_mem_head>
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
    8000156c:	32f73823          	sd	a5,816(a4) # 80005898 <used_mem_head>
        if (used_mem_head)
    80001570:	00078463          	beqz	a5,80001578 <_mem_free+0x88>
            used_mem_head->prev = NULL;
    80001574:	0007b423          	sd	zero,8(a5)
        block_to_free->next = NULL;
    80001578:	fe053c23          	sd	zero,-8(a0)
        if (free_mem_head == NULL)
    8000157c:	00004797          	auipc	a5,0x4
    80001580:	3247b783          	ld	a5,804(a5) # 800058a0 <free_mem_head>
    80001584:	00078663          	beqz	a5,80001590 <_mem_free+0xa0>
            struct mem_block* prev_tmp = NULL;
    80001588:	00000713          	li	a4,0
    8000158c:	01c0006f          	j	800015a8 <_mem_free+0xb8>
            free_mem_head = block_to_free;
    80001590:	00004797          	auipc	a5,0x4
    80001594:	30d7b823          	sd	a3,784(a5) # 800058a0 <free_mem_head>
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
    800015fc:	2ad63423          	sd	a3,680(a2) # 800058a0 <free_mem_head>
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
    8000168c:	20d7bc23          	sd	a3,536(a5) # 800058a0 <free_mem_head>
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
    800017c4:	b10080e7          	jalr	-1264(ra) # 800022d0 <_Z11printStringPKc>
    printInteger(ret);
    800017c8:	00048513          	mv	a0,s1
    800017cc:	00001097          	auipc	ra,0x1
    800017d0:	b74080e7          	jalr	-1164(ra) # 80002340 <_Z12printIntegerm>
    printString("\n");
    800017d4:	00004517          	auipc	a0,0x4
    800017d8:	93c50513          	addi	a0,a0,-1732 # 80005110 <CONSOLE_STATUS+0x100>
    800017dc:	00001097          	auipc	ra,0x1
    800017e0:	af4080e7          	jalr	-1292(ra) # 800022d0 <_Z11printStringPKc>

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
    if (n % 10 == 0) { TCB::yield(); }
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
    if (n % 10 == 0) { TCB::yield(); }
    80001888:	00000097          	auipc	ra,0x0
    8000188c:	5ac080e7          	jalr	1452(ra) # 80001e34 <_ZN3TCB5yieldEv>
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
    800018f0:	9e4080e7          	jalr	-1564(ra) # 800022d0 <_Z11printStringPKc>
        printInteger(i);
    800018f4:	00048513          	mv	a0,s1
    800018f8:	00001097          	auipc	ra,0x1
    800018fc:	a48080e7          	jalr	-1464(ra) # 80002340 <_Z12printIntegerm>
        printString("\n");
    80001900:	00004517          	auipc	a0,0x4
    80001904:	81050513          	addi	a0,a0,-2032 # 80005110 <CONSOLE_STATUS+0x100>
    80001908:	00001097          	auipc	ra,0x1
    8000190c:	9c8080e7          	jalr	-1592(ra) # 800022d0 <_Z11printStringPKc>
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
    80001988:	94c080e7          	jalr	-1716(ra) # 800022d0 <_Z11printStringPKc>
        printInteger(i);
    8000198c:	00048513          	mv	a0,s1
    80001990:	00001097          	auipc	ra,0x1
    80001994:	9b0080e7          	jalr	-1616(ra) # 80002340 <_Z12printIntegerm>
        printString("\n");
    80001998:	00003517          	auipc	a0,0x3
    8000199c:	77850513          	addi	a0,a0,1912 # 80005110 <CONSOLE_STATUS+0x100>
    800019a0:	00001097          	auipc	ra,0x1
    800019a4:	930080e7          	jalr	-1744(ra) # 800022d0 <_Z11printStringPKc>
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
    800019f0:	8e4080e7          	jalr	-1820(ra) # 800022d0 <_Z11printStringPKc>
        printInteger(i);
    800019f4:	00048513          	mv	a0,s1
    800019f8:	00001097          	auipc	ra,0x1
    800019fc:	948080e7          	jalr	-1720(ra) # 80002340 <_Z12printIntegerm>
        printString("\n");
    80001a00:	00003517          	auipc	a0,0x3
    80001a04:	71050513          	addi	a0,a0,1808 # 80005110 <CONSOLE_STATUS+0x100>
    80001a08:	00001097          	auipc	ra,0x1
    80001a0c:	8c8080e7          	jalr	-1848(ra) # 800022d0 <_Z11printStringPKc>
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
    80001a2c:	8a8080e7          	jalr	-1880(ra) # 800022d0 <_Z11printStringPKc>
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
    80001a4c:	888080e7          	jalr	-1912(ra) # 800022d0 <_Z11printStringPKc>
    printInteger(t1);
    80001a50:	00090513          	mv	a0,s2
    80001a54:	00001097          	auipc	ra,0x1
    80001a58:	8ec080e7          	jalr	-1812(ra) # 80002340 <_Z12printIntegerm>
    printString("\n");
    80001a5c:	00003517          	auipc	a0,0x3
    80001a60:	6b450513          	addi	a0,a0,1716 # 80005110 <CONSOLE_STATUS+0x100>
    80001a64:	00001097          	auipc	ra,0x1
    80001a68:	86c080e7          	jalr	-1940(ra) # 800022d0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001a6c:	00c00513          	li	a0,12
    80001a70:	00000097          	auipc	ra,0x0
    80001a74:	db0080e7          	jalr	-592(ra) # 80001820 <_ZL9fibonaccim>
    80001a78:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001a7c:	00003517          	auipc	a0,0x3
    80001a80:	61c50513          	addi	a0,a0,1564 # 80005098 <CONSOLE_STATUS+0x88>
    80001a84:	00001097          	auipc	ra,0x1
    80001a88:	84c080e7          	jalr	-1972(ra) # 800022d0 <_Z11printStringPKc>
    printInteger(result);
    80001a8c:	00090513          	mv	a0,s2
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	8b0080e7          	jalr	-1872(ra) # 80002340 <_Z12printIntegerm>
    printString("\n");
    80001a98:	00003517          	auipc	a0,0x3
    80001a9c:	67850513          	addi	a0,a0,1656 # 80005110 <CONSOLE_STATUS+0x100>
    80001aa0:	00001097          	auipc	ra,0x1
    80001aa4:	830080e7          	jalr	-2000(ra) # 800022d0 <_Z11printStringPKc>
    80001aa8:	0380006f          	j	80001ae0 <_Z11workerBodyCPv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    80001aac:	00003517          	auipc	a0,0x3
    80001ab0:	5cc50513          	addi	a0,a0,1484 # 80005078 <CONSOLE_STATUS+0x68>
    80001ab4:	00001097          	auipc	ra,0x1
    80001ab8:	81c080e7          	jalr	-2020(ra) # 800022d0 <_Z11printStringPKc>
        printInteger(i);
    80001abc:	00048513          	mv	a0,s1
    80001ac0:	00001097          	auipc	ra,0x1
    80001ac4:	880080e7          	jalr	-1920(ra) # 80002340 <_Z12printIntegerm>
        printString("\n");
    80001ac8:	00003517          	auipc	a0,0x3
    80001acc:	64850513          	addi	a0,a0,1608 # 80005110 <CONSOLE_STATUS+0x100>
    80001ad0:	00001097          	auipc	ra,0x1
    80001ad4:	800080e7          	jalr	-2048(ra) # 800022d0 <_Z11printStringPKc>
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
    80001b2c:	7a8080e7          	jalr	1960(ra) # 800022d0 <_Z11printStringPKc>
        printInteger(i);
    80001b30:	00048513          	mv	a0,s1
    80001b34:	00001097          	auipc	ra,0x1
    80001b38:	80c080e7          	jalr	-2036(ra) # 80002340 <_Z12printIntegerm>
        printString("\n");
    80001b3c:	00003517          	auipc	a0,0x3
    80001b40:	5d450513          	addi	a0,a0,1492 # 80005110 <CONSOLE_STATUS+0x100>
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	78c080e7          	jalr	1932(ra) # 800022d0 <_Z11printStringPKc>
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
    80001b68:	76c080e7          	jalr	1900(ra) # 800022d0 <_Z11printStringPKc>
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
    80001b94:	740080e7          	jalr	1856(ra) # 800022d0 <_Z11printStringPKc>
    printInteger(result);
    80001b98:	00090513          	mv	a0,s2
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	7a4080e7          	jalr	1956(ra) # 80002340 <_Z12printIntegerm>
    printString("\n");
    80001ba4:	00003517          	auipc	a0,0x3
    80001ba8:	56c50513          	addi	a0,a0,1388 # 80005110 <CONSOLE_STATUS+0x100>
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	724080e7          	jalr	1828(ra) # 800022d0 <_Z11printStringPKc>
    80001bb4:	0380006f          	j	80001bec <_Z11workerBodyDPv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001bb8:	00003517          	auipc	a0,0x3
    80001bbc:	4f050513          	addi	a0,a0,1264 # 800050a8 <CONSOLE_STATUS+0x98>
    80001bc0:	00000097          	auipc	ra,0x0
    80001bc4:	710080e7          	jalr	1808(ra) # 800022d0 <_Z11printStringPKc>
        printInteger(i);
    80001bc8:	00048513          	mv	a0,s1
    80001bcc:	00000097          	auipc	ra,0x0
    80001bd0:	774080e7          	jalr	1908(ra) # 80002340 <_Z12printIntegerm>
        printString("\n");
    80001bd4:	00003517          	auipc	a0,0x3
    80001bd8:	53c50513          	addi	a0,a0,1340 # 80005110 <CONSOLE_STATUS+0x100>
    80001bdc:	00000097          	auipc	ra,0x0
    80001be0:	6f4080e7          	jalr	1780(ra) # 800022d0 <_Z11printStringPKc>
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
    80001c28:	c247b783          	ld	a5,-988(a5) # 80005848 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80001c4c:	c187b783          	ld	a5,-1000(a5) # 80005860 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c50:	00e7b023          	sd	a4,0(a5)
//
//    threads[2] = TCB::createThread(workerBodyB);
//    printString("ThreadB Created\n");

//    threads[3] = TCB::createThread(workerBodyC);
    thread_create(&threads[3], workerBodyC, nullptr);
    80001c54:	00000613          	li	a2,0
    80001c58:	00004597          	auipc	a1,0x4
    80001c5c:	be85b583          	ld	a1,-1048(a1) # 80005840 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c60:	fd040513          	addi	a0,s0,-48
    80001c64:	00000097          	auipc	ra,0x0
    80001c68:	b24080e7          	jalr	-1244(ra) # 80001788 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC Created\n");
    80001c6c:	00003517          	auipc	a0,0x3
    80001c70:	46450513          	addi	a0,a0,1124 # 800050d0 <CONSOLE_STATUS+0xc0>
    80001c74:	00000097          	auipc	ra,0x0
    80001c78:	65c080e7          	jalr	1628(ra) # 800022d0 <_Z11printStringPKc>
//
//    threads[4] = TCB::createThread(workerBodyD);
    thread_create(&threads[4], workerBodyD, nullptr);
    80001c7c:	00000613          	li	a2,0
    80001c80:	00004597          	auipc	a1,0x4
    80001c84:	be85b583          	ld	a1,-1048(a1) # 80005868 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c88:	fd840513          	addi	a0,s0,-40
    80001c8c:	00000097          	auipc	ra,0x0
    80001c90:	afc080e7          	jalr	-1284(ra) # 80001788 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD Created\n");
    80001c94:	00003517          	auipc	a0,0x3
    80001c98:	45450513          	addi	a0,a0,1108 # 800050e8 <CONSOLE_STATUS+0xd8>
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	634080e7          	jalr	1588(ra) # 800022d0 <_Z11printStringPKc>
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
    80001cbc:	618080e7          	jalr	1560(ra) # 800022d0 <_Z11printStringPKc>
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
    80001cf0:	298080e7          	jalr	664(ra) # 80001f84 <_ZdlPv>
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
    80001d14:	29c080e7          	jalr	668(ra) # 80001fac <_ZdaPv>
    80001d18:	fd1ff06f          	j	80001ce8 <main+0xdc>

    printString("Finished\n");
    80001d1c:	00003517          	auipc	a0,0x3
    80001d20:	3fc50513          	addi	a0,a0,1020 # 80005118 <CONSOLE_STATUS+0x108>
    80001d24:	00000097          	auipc	ra,0x0
    80001d28:	5ac080e7          	jalr	1452(ra) # 800022d0 <_Z11printStringPKc>

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
    80001d84:	1b4080e7          	jalr	436(ra) # 80001f34 <_Znwm>
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
    80001da0:	0b478793          	addi	a5,a5,180 # 80001e50 <_ZN3TCB13threadWrapperEv>
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
    80001e10:	424080e7          	jalr	1060(ra) # 80002230 <_ZN9Scheduler3putEP3TCB>
    80001e14:	fbdff06f          	j	80001dd0 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0x88>
    80001e18:	00050913          	mv	s2,a0
    return new TCB(body, arg, stack_space, start_immediately);
    80001e1c:	00048513          	mv	a0,s1
    80001e20:	00000097          	auipc	ra,0x0
    80001e24:	164080e7          	jalr	356(ra) # 80001f84 <_ZdlPv>
    80001e28:	00090513          	mv	a0,s2
    80001e2c:	00005097          	auipc	ra,0x5
    80001e30:	b9c080e7          	jalr	-1124(ra) # 800069c8 <_Unwind_Resume>

0000000080001e34 <_ZN3TCB5yieldEv>:


void TCB::yield()
{
    80001e34:	ff010113          	addi	sp,sp,-16
    80001e38:	00813423          	sd	s0,8(sp)
    80001e3c:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    80001e40:	00000073          	ecall
}
    80001e44:	00813403          	ld	s0,8(sp)
    80001e48:	01010113          	addi	sp,sp,16
    80001e4c:	00008067          	ret

0000000080001e50 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001e50:	fe010113          	addi	sp,sp,-32
    80001e54:	00113c23          	sd	ra,24(sp)
    80001e58:	00813823          	sd	s0,16(sp)
    80001e5c:	00913423          	sd	s1,8(sp)
    80001e60:	02010413          	addi	s0,sp,32
    printString("\n\tWrapper\n");
    80001e64:	00003517          	auipc	a0,0x3
    80001e68:	2c450513          	addi	a0,a0,708 # 80005128 <CONSOLE_STATUS+0x118>
    80001e6c:	00000097          	auipc	ra,0x0
    80001e70:	464080e7          	jalr	1124(ra) # 800022d0 <_Z11printStringPKc>

    Riscv::popSppSpie();
    80001e74:	00000097          	auipc	ra,0x0
    80001e78:	160080e7          	jalr	352(ra) # 80001fd4 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001e7c:	00004497          	auipc	s1,0x4
    80001e80:	a6448493          	addi	s1,s1,-1436 # 800058e0 <_ZN3TCB7runningE>
    80001e84:	0004b783          	ld	a5,0(s1)
    80001e88:	0007b703          	ld	a4,0(a5)
    80001e8c:	0087b503          	ld	a0,8(a5)
    80001e90:	000700e7          	jalr	a4
    running->setFinished(true);
    80001e94:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001e98:	00100713          	li	a4,1
    80001e9c:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    80001ea0:	00000097          	auipc	ra,0x0
    80001ea4:	f94080e7          	jalr	-108(ra) # 80001e34 <_ZN3TCB5yieldEv>
    80001ea8:	01813083          	ld	ra,24(sp)
    80001eac:	01013403          	ld	s0,16(sp)
    80001eb0:	00813483          	ld	s1,8(sp)
    80001eb4:	02010113          	addi	sp,sp,32
    80001eb8:	00008067          	ret

0000000080001ebc <_ZN3TCB8dispatchEv>:
{
    80001ebc:	fe010113          	addi	sp,sp,-32
    80001ec0:	00113c23          	sd	ra,24(sp)
    80001ec4:	00813823          	sd	s0,16(sp)
    80001ec8:	00913423          	sd	s1,8(sp)
    80001ecc:	02010413          	addi	s0,sp,32
    printString("\n\t--- DISPECTH \n");
    80001ed0:	00003517          	auipc	a0,0x3
    80001ed4:	26850513          	addi	a0,a0,616 # 80005138 <CONSOLE_STATUS+0x128>
    80001ed8:	00000097          	auipc	ra,0x0
    80001edc:	3f8080e7          	jalr	1016(ra) # 800022d0 <_Z11printStringPKc>
    TCB *old = running;
    80001ee0:	00004497          	auipc	s1,0x4
    80001ee4:	a004b483          	ld	s1,-1536(s1) # 800058e0 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001ee8:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished())
    80001eec:	02078c63          	beqz	a5,80001f24 <_ZN3TCB8dispatchEv+0x68>
    running = Scheduler::get();
    80001ef0:	00000097          	auipc	ra,0x0
    80001ef4:	2d8080e7          	jalr	728(ra) # 800021c8 <_ZN9Scheduler3getEv>
    80001ef8:	00004797          	auipc	a5,0x4
    80001efc:	9ea7b423          	sd	a0,-1560(a5) # 800058e0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001f00:	01850593          	addi	a1,a0,24
    80001f04:	01848513          	addi	a0,s1,24
    80001f08:	fffff097          	auipc	ra,0xfffff
    80001f0c:	328080e7          	jalr	808(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001f10:	01813083          	ld	ra,24(sp)
    80001f14:	01013403          	ld	s0,16(sp)
    80001f18:	00813483          	ld	s1,8(sp)
    80001f1c:	02010113          	addi	sp,sp,32
    80001f20:	00008067          	ret
        Scheduler::put(old);
    80001f24:	00048513          	mv	a0,s1
    80001f28:	00000097          	auipc	ra,0x0
    80001f2c:	308080e7          	jalr	776(ra) # 80002230 <_ZN9Scheduler3putEP3TCB>
    80001f30:	fc1ff06f          	j	80001ef0 <_ZN3TCB8dispatchEv+0x34>

0000000080001f34 <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001f34:	ff010113          	addi	sp,sp,-16
    80001f38:	00113423          	sd	ra,8(sp)
    80001f3c:	00813023          	sd	s0,0(sp)
    80001f40:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001f44:	00002097          	auipc	ra,0x2
    80001f48:	644080e7          	jalr	1604(ra) # 80004588 <__mem_alloc>
}
    80001f4c:	00813083          	ld	ra,8(sp)
    80001f50:	00013403          	ld	s0,0(sp)
    80001f54:	01010113          	addi	sp,sp,16
    80001f58:	00008067          	ret

0000000080001f5c <_Znam>:

void *operator new[](size_t n)
{
    80001f5c:	ff010113          	addi	sp,sp,-16
    80001f60:	00113423          	sd	ra,8(sp)
    80001f64:	00813023          	sd	s0,0(sp)
    80001f68:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001f6c:	00002097          	auipc	ra,0x2
    80001f70:	61c080e7          	jalr	1564(ra) # 80004588 <__mem_alloc>
}
    80001f74:	00813083          	ld	ra,8(sp)
    80001f78:	00013403          	ld	s0,0(sp)
    80001f7c:	01010113          	addi	sp,sp,16
    80001f80:	00008067          	ret

0000000080001f84 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001f84:	ff010113          	addi	sp,sp,-16
    80001f88:	00113423          	sd	ra,8(sp)
    80001f8c:	00813023          	sd	s0,0(sp)
    80001f90:	01010413          	addi	s0,sp,16
__mem_free(p);
    80001f94:	00002097          	auipc	ra,0x2
    80001f98:	528080e7          	jalr	1320(ra) # 800044bc <__mem_free>
}
    80001f9c:	00813083          	ld	ra,8(sp)
    80001fa0:	00013403          	ld	s0,0(sp)
    80001fa4:	01010113          	addi	sp,sp,16
    80001fa8:	00008067          	ret

0000000080001fac <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001fac:	ff010113          	addi	sp,sp,-16
    80001fb0:	00113423          	sd	ra,8(sp)
    80001fb4:	00813023          	sd	s0,0(sp)
    80001fb8:	01010413          	addi	s0,sp,16
__mem_free(p);
    80001fbc:	00002097          	auipc	ra,0x2
    80001fc0:	500080e7          	jalr	1280(ra) # 800044bc <__mem_free>
    80001fc4:	00813083          	ld	ra,8(sp)
    80001fc8:	00013403          	ld	s0,0(sp)
    80001fcc:	01010113          	addi	sp,sp,16
    80001fd0:	00008067          	ret

0000000080001fd4 <_ZN5Riscv10popSppSpieEv>:
#include "../h/syscall_c.h"

using Body = void (*)(void*);

void Riscv::popSppSpie()
{
    80001fd4:	ff010113          	addi	sp,sp,-16
    80001fd8:	00813423          	sd	s0,8(sp)
    80001fdc:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001fe0:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001fe4:	10200073          	sret
}
    80001fe8:	00813403          	ld	s0,8(sp)
    80001fec:	01010113          	addi	sp,sp,16
    80001ff0:	00008067          	ret

0000000080001ff4 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001ff4:	f9010113          	addi	sp,sp,-112
    80001ff8:	06113423          	sd	ra,104(sp)
    80001ffc:	06813023          	sd	s0,96(sp)
    80002000:	04913c23          	sd	s1,88(sp)
    80002004:	05213823          	sd	s2,80(sp)
    80002008:	05313423          	sd	s3,72(sp)
    8000200c:	05413023          	sd	s4,64(sp)
    80002010:	03513c23          	sd	s5,56(sp)
    80002014:	07010413          	addi	s0,sp,112
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002018:	142027f3          	csrr	a5,scause
    8000201c:	f8f43c23          	sd	a5,-104(s0)
    return scause;
    80002020:	f9843703          	ld	a4,-104(s0)
    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80002024:	ff870693          	addi	a3,a4,-8
    80002028:	00100793          	li	a5,1
    8000202c:	02d7f863          	bgeu	a5,a3,8000205c <_ZN5Riscv20handleSupervisorTrapEv+0x68>
//        TCB::timeSliceCounter = 0;
//        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80002030:	fff00793          	li	a5,-1
    80002034:	03f79793          	slli	a5,a5,0x3f
    80002038:	00178793          	addi	a5,a5,1
    8000203c:	0ef70063          	beq	a4,a5,8000211c <_ZN5Riscv20handleSupervisorTrapEv+0x128>
            w_sepc(sepc);
        }

        mc_sip(SIP_SSIP);
    }
    else if (scause == 0x8000000000000009UL)
    80002040:	fff00793          	li	a5,-1
    80002044:	03f79793          	slli	a5,a5,0x3f
    80002048:	00978793          	addi	a5,a5,9
    8000204c:	04f71463          	bne	a4,a5,80002094 <_ZN5Riscv20handleSupervisorTrapEv+0xa0>
    {
        // Interrupt: yes, cause code: Software external interrupt (console)
        console_handler();
    80002050:	00002097          	auipc	ra,0x2
    80002054:	704080e7          	jalr	1796(ra) # 80004754 <console_handler>
        // print(scause)
        // print(sepc)
        // print(stvalue)

    }
    80002058:	03c0006f          	j	80002094 <_ZN5Riscv20handleSupervisorTrapEv+0xa0>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000205c:	141027f3          	csrr	a5,sepc
    80002060:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80002064:	fa843483          	ld	s1,-88(s0)
        uint64 sepc = r_sepc() + 4;
    80002068:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000206c:	100027f3          	csrr	a5,sstatus
    80002070:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80002074:	fa043903          	ld	s2,-96(s0)
        __asm__ volatile ("mv %0, a0" : "=r" (number));
    80002078:	00050793          	mv	a5,a0
        switch (number)
    8000207c:	01100713          	li	a4,17
    80002080:	02e78c63          	beq	a5,a4,800020b8 <_ZN5Riscv20handleSupervisorTrapEv+0xc4>
    80002084:	01300713          	li	a4,19
    80002088:	08e78463          	beq	a5,a4,80002110 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000208c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002090:	14149073          	csrw	sepc,s1
    80002094:	06813083          	ld	ra,104(sp)
    80002098:	06013403          	ld	s0,96(sp)
    8000209c:	05813483          	ld	s1,88(sp)
    800020a0:	05013903          	ld	s2,80(sp)
    800020a4:	04813983          	ld	s3,72(sp)
    800020a8:	04013a03          	ld	s4,64(sp)
    800020ac:	03813a83          	ld	s5,56(sp)
    800020b0:	07010113          	addi	sp,sp,112
    800020b4:	00008067          	ret
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    800020b8:	00058a13          	mv	s4,a1
                __asm__ volatile ("mv %0, a2" : "=r" (body));
    800020bc:	00060993          	mv	s3,a2
                __asm__ volatile ("mv %0, a3" : "=r" (arg));
    800020c0:	00068a93          	mv	s5,a3
                if (body != 0)
    800020c4:	02098e63          	beqz	s3,80002100 <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
                    stack = (uint64 *)new uint64[DEFAULT_STACK_SIZE];
    800020c8:	00008537          	lui	a0,0x8
    800020cc:	00000097          	auipc	ra,0x0
    800020d0:	e90080e7          	jalr	-368(ra) # 80001f5c <_Znam>
    800020d4:	00050613          	mv	a2,a0
                *handle = TCB::createThread(body, arg, stack, true);
    800020d8:	00100693          	li	a3,1
    800020dc:	000a8593          	mv	a1,s5
    800020e0:	00098513          	mv	a0,s3
    800020e4:	00000097          	auipc	ra,0x0
    800020e8:	c64080e7          	jalr	-924(ra) # 80001d48 <_ZN3TCB12createThreadEPFvPvES0_S0_b>
    800020ec:	00aa3023          	sd	a0,0(s4)
                ret = (*handle) != nullptr ? 0 : -1;
    800020f0:	00050c63          	beqz	a0,80002108 <_ZN5Riscv20handleSupervisorTrapEv+0x114>
    800020f4:	00000793          	li	a5,0
                __asm__ volatile ("mv a0, %0" : : "r" (ret));
    800020f8:	00078513          	mv	a0,a5
                break;
    800020fc:	f91ff06f          	j	8000208c <_ZN5Riscv20handleSupervisorTrapEv+0x98>
                    stack = 0;
    80002100:	00000613          	li	a2,0
    80002104:	fd5ff06f          	j	800020d8 <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
                ret = (*handle) != nullptr ? 0 : -1;
    80002108:	fff00793          	li	a5,-1
    8000210c:	fedff06f          	j	800020f8 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
                TCB::dispatch();
    80002110:	00000097          	auipc	ra,0x0
    80002114:	dac080e7          	jalr	-596(ra) # 80001ebc <_ZN3TCB8dispatchEv>
                break;
    80002118:	f75ff06f          	j	8000208c <_ZN5Riscv20handleSupervisorTrapEv+0x98>
        TCB::timeSliceCounter++;
    8000211c:	00003717          	auipc	a4,0x3
    80002120:	73473703          	ld	a4,1844(a4) # 80005850 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002124:	00073783          	ld	a5,0(a4)
    80002128:	00178793          	addi	a5,a5,1
    8000212c:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80002130:	00003717          	auipc	a4,0x3
    80002134:	73073703          	ld	a4,1840(a4) # 80005860 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002138:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    8000213c:	02873703          	ld	a4,40(a4)
    80002140:	00e7f863          	bgeu	a5,a4,80002150 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002144:	00200793          	li	a5,2
    80002148:	1447b073          	csrc	sip,a5
}
    8000214c:	f49ff06f          	j	80002094 <_ZN5Riscv20handleSupervisorTrapEv+0xa0>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002150:	141027f3          	csrr	a5,sepc
    80002154:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80002158:	fb843483          	ld	s1,-72(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000215c:	100027f3          	csrr	a5,sstatus
    80002160:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80002164:	fb043903          	ld	s2,-80(s0)
            TCB::timeSliceCounter = 0;
    80002168:	00003797          	auipc	a5,0x3
    8000216c:	6e87b783          	ld	a5,1768(a5) # 80005850 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002170:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002174:	00000097          	auipc	ra,0x0
    80002178:	d48080e7          	jalr	-696(ra) # 80001ebc <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000217c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002180:	14149073          	csrw	sepc,s1
}
    80002184:	fc1ff06f          	j	80002144 <_ZN5Riscv20handleSupervisorTrapEv+0x150>

0000000080002188 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    80002188:	ff010113          	addi	sp,sp,-16
    8000218c:	00813423          	sd	s0,8(sp)
    80002190:	01010413          	addi	s0,sp,16
    80002194:	00100793          	li	a5,1
    80002198:	00f50863          	beq	a0,a5,800021a8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000219c:	00813403          	ld	s0,8(sp)
    800021a0:	01010113          	addi	sp,sp,16
    800021a4:	00008067          	ret
    800021a8:	000107b7          	lui	a5,0x10
    800021ac:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800021b0:	fef596e3          	bne	a1,a5,8000219c <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800021b4:	00003797          	auipc	a5,0x3
    800021b8:	73c78793          	addi	a5,a5,1852 # 800058f0 <_ZN9Scheduler19readyCoroutineQueueE>
    800021bc:	0007b023          	sd	zero,0(a5)
    800021c0:	0007b423          	sd	zero,8(a5)
    800021c4:	fd9ff06f          	j	8000219c <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800021c8 <_ZN9Scheduler3getEv>:
{
    800021c8:	fe010113          	addi	sp,sp,-32
    800021cc:	00113c23          	sd	ra,24(sp)
    800021d0:	00813823          	sd	s0,16(sp)
    800021d4:	00913423          	sd	s1,8(sp)
    800021d8:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800021dc:	00003517          	auipc	a0,0x3
    800021e0:	71453503          	ld	a0,1812(a0) # 800058f0 <_ZN9Scheduler19readyCoroutineQueueE>
    800021e4:	04050263          	beqz	a0,80002228 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    800021e8:	00853783          	ld	a5,8(a0)
    800021ec:	00003717          	auipc	a4,0x3
    800021f0:	70f73223          	sd	a5,1796(a4) # 800058f0 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    800021f4:	02078463          	beqz	a5,8000221c <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    800021f8:	00053483          	ld	s1,0(a0)
        delete elem;
    800021fc:	00000097          	auipc	ra,0x0
    80002200:	d88080e7          	jalr	-632(ra) # 80001f84 <_ZdlPv>
}
    80002204:	00048513          	mv	a0,s1
    80002208:	01813083          	ld	ra,24(sp)
    8000220c:	01013403          	ld	s0,16(sp)
    80002210:	00813483          	ld	s1,8(sp)
    80002214:	02010113          	addi	sp,sp,32
    80002218:	00008067          	ret
        if (!head) { tail = 0; }
    8000221c:	00003797          	auipc	a5,0x3
    80002220:	6c07be23          	sd	zero,1756(a5) # 800058f8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002224:	fd5ff06f          	j	800021f8 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002228:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    8000222c:	fd9ff06f          	j	80002204 <_ZN9Scheduler3getEv+0x3c>

0000000080002230 <_ZN9Scheduler3putEP3TCB>:
{
    80002230:	fe010113          	addi	sp,sp,-32
    80002234:	00113c23          	sd	ra,24(sp)
    80002238:	00813823          	sd	s0,16(sp)
    8000223c:	00913423          	sd	s1,8(sp)
    80002240:	02010413          	addi	s0,sp,32
    80002244:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002248:	01000513          	li	a0,16
    8000224c:	00000097          	auipc	ra,0x0
    80002250:	ce8080e7          	jalr	-792(ra) # 80001f34 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002254:	00953023          	sd	s1,0(a0)
    80002258:	00053423          	sd	zero,8(a0)
        if (tail)
    8000225c:	00003797          	auipc	a5,0x3
    80002260:	69c7b783          	ld	a5,1692(a5) # 800058f8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002264:	02078263          	beqz	a5,80002288 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002268:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000226c:	00003797          	auipc	a5,0x3
    80002270:	68a7b623          	sd	a0,1676(a5) # 800058f8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002274:	01813083          	ld	ra,24(sp)
    80002278:	01013403          	ld	s0,16(sp)
    8000227c:	00813483          	ld	s1,8(sp)
    80002280:	02010113          	addi	sp,sp,32
    80002284:	00008067          	ret
            head = tail = elem;
    80002288:	00003797          	auipc	a5,0x3
    8000228c:	66878793          	addi	a5,a5,1640 # 800058f0 <_ZN9Scheduler19readyCoroutineQueueE>
    80002290:	00a7b423          	sd	a0,8(a5)
    80002294:	00a7b023          	sd	a0,0(a5)
    80002298:	fddff06f          	j	80002274 <_ZN9Scheduler3putEP3TCB+0x44>

000000008000229c <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    8000229c:	ff010113          	addi	sp,sp,-16
    800022a0:	00113423          	sd	ra,8(sp)
    800022a4:	00813023          	sd	s0,0(sp)
    800022a8:	01010413          	addi	s0,sp,16
    800022ac:	000105b7          	lui	a1,0x10
    800022b0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800022b4:	00100513          	li	a0,1
    800022b8:	00000097          	auipc	ra,0x0
    800022bc:	ed0080e7          	jalr	-304(ra) # 80002188 <_Z41__static_initialization_and_destruction_0ii>
    800022c0:	00813083          	ld	ra,8(sp)
    800022c4:	00013403          	ld	s0,0(sp)
    800022c8:	01010113          	addi	sp,sp,16
    800022cc:	00008067          	ret

00000000800022d0 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../lib/console.h"
#include "../h/riscv.hpp"

void printString(char const *string)
{
    800022d0:	fd010113          	addi	sp,sp,-48
    800022d4:	02113423          	sd	ra,40(sp)
    800022d8:	02813023          	sd	s0,32(sp)
    800022dc:	00913c23          	sd	s1,24(sp)
    800022e0:	01213823          	sd	s2,16(sp)
    800022e4:	03010413          	addi	s0,sp,48
    800022e8:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800022ec:	100027f3          	csrr	a5,sstatus
    800022f0:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800022f4:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800022f8:	00200793          	li	a5,2
    800022fc:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80002300:	0004c503          	lbu	a0,0(s1)
    80002304:	00050a63          	beqz	a0,80002318 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80002308:	00002097          	auipc	ra,0x2
    8000230c:	3d8080e7          	jalr	984(ra) # 800046e0 <__putc>
        string++;
    80002310:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002314:	fedff06f          	j	80002300 <_Z11printStringPKc+0x30>
    }

    Riscv::ms_sstatus( sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002318:	0009091b          	sext.w	s2,s2
    8000231c:	00297913          	andi	s2,s2,2
    80002320:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002324:	10092073          	csrs	sstatus,s2
}
    80002328:	02813083          	ld	ra,40(sp)
    8000232c:	02013403          	ld	s0,32(sp)
    80002330:	01813483          	ld	s1,24(sp)
    80002334:	01013903          	ld	s2,16(sp)
    80002338:	03010113          	addi	sp,sp,48
    8000233c:	00008067          	ret

0000000080002340 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80002340:	fc010113          	addi	sp,sp,-64
    80002344:	02113c23          	sd	ra,56(sp)
    80002348:	02813823          	sd	s0,48(sp)
    8000234c:	02913423          	sd	s1,40(sp)
    80002350:	03213023          	sd	s2,32(sp)
    80002354:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002358:	100027f3          	csrr	a5,sstatus
    8000235c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002360:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002364:	00200793          	li	a5,2
    80002368:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    8000236c:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002370:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80002374:	00a00613          	li	a2,10
    80002378:	02c5773b          	remuw	a4,a0,a2
    8000237c:	02071693          	slli	a3,a4,0x20
    80002380:	0206d693          	srli	a3,a3,0x20
    80002384:	00003717          	auipc	a4,0x3
    80002388:	dcc70713          	addi	a4,a4,-564 # 80005150 <_ZZ12printIntegermE6digits>
    8000238c:	00d70733          	add	a4,a4,a3
    80002390:	00074703          	lbu	a4,0(a4)
    80002394:	fe040693          	addi	a3,s0,-32
    80002398:	009687b3          	add	a5,a3,s1
    8000239c:	0014849b          	addiw	s1,s1,1
    800023a0:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    800023a4:	0005071b          	sext.w	a4,a0
    800023a8:	02c5553b          	divuw	a0,a0,a2
    800023ac:	00900793          	li	a5,9
    800023b0:	fce7e2e3          	bltu	a5,a4,80002374 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
    800023b4:	fff4849b          	addiw	s1,s1,-1
    800023b8:	0004ce63          	bltz	s1,800023d4 <_Z12printIntegerm+0x94>
        __putc(buf[i]);
    800023bc:	fe040793          	addi	a5,s0,-32
    800023c0:	009787b3          	add	a5,a5,s1
    800023c4:	ff07c503          	lbu	a0,-16(a5)
    800023c8:	00002097          	auipc	ra,0x2
    800023cc:	318080e7          	jalr	792(ra) # 800046e0 <__putc>
    800023d0:	fe5ff06f          	j	800023b4 <_Z12printIntegerm+0x74>

    Riscv::ms_sstatus( sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800023d4:	0009091b          	sext.w	s2,s2
    800023d8:	00297913          	andi	s2,s2,2
    800023dc:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800023e0:	10092073          	csrs	sstatus,s2
    800023e4:	03813083          	ld	ra,56(sp)
    800023e8:	03013403          	ld	s0,48(sp)
    800023ec:	02813483          	ld	s1,40(sp)
    800023f0:	02013903          	ld	s2,32(sp)
    800023f4:	04010113          	addi	sp,sp,64
    800023f8:	00008067          	ret

00000000800023fc <start>:
    800023fc:	ff010113          	addi	sp,sp,-16
    80002400:	00813423          	sd	s0,8(sp)
    80002404:	01010413          	addi	s0,sp,16
    80002408:	300027f3          	csrr	a5,mstatus
    8000240c:	ffffe737          	lui	a4,0xffffe
    80002410:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c8f>
    80002414:	00e7f7b3          	and	a5,a5,a4
    80002418:	00001737          	lui	a4,0x1
    8000241c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002420:	00e7e7b3          	or	a5,a5,a4
    80002424:	30079073          	csrw	mstatus,a5
    80002428:	00000797          	auipc	a5,0x0
    8000242c:	16078793          	addi	a5,a5,352 # 80002588 <system_main>
    80002430:	34179073          	csrw	mepc,a5
    80002434:	00000793          	li	a5,0
    80002438:	18079073          	csrw	satp,a5
    8000243c:	000107b7          	lui	a5,0x10
    80002440:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002444:	30279073          	csrw	medeleg,a5
    80002448:	30379073          	csrw	mideleg,a5
    8000244c:	104027f3          	csrr	a5,sie
    80002450:	2227e793          	ori	a5,a5,546
    80002454:	10479073          	csrw	sie,a5
    80002458:	fff00793          	li	a5,-1
    8000245c:	00a7d793          	srli	a5,a5,0xa
    80002460:	3b079073          	csrw	pmpaddr0,a5
    80002464:	00f00793          	li	a5,15
    80002468:	3a079073          	csrw	pmpcfg0,a5
    8000246c:	f14027f3          	csrr	a5,mhartid
    80002470:	0200c737          	lui	a4,0x200c
    80002474:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002478:	0007869b          	sext.w	a3,a5
    8000247c:	00269713          	slli	a4,a3,0x2
    80002480:	000f4637          	lui	a2,0xf4
    80002484:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002488:	00d70733          	add	a4,a4,a3
    8000248c:	0037979b          	slliw	a5,a5,0x3
    80002490:	020046b7          	lui	a3,0x2004
    80002494:	00d787b3          	add	a5,a5,a3
    80002498:	00c585b3          	add	a1,a1,a2
    8000249c:	00371693          	slli	a3,a4,0x3
    800024a0:	00003717          	auipc	a4,0x3
    800024a4:	46070713          	addi	a4,a4,1120 # 80005900 <timer_scratch>
    800024a8:	00b7b023          	sd	a1,0(a5)
    800024ac:	00d70733          	add	a4,a4,a3
    800024b0:	00f73c23          	sd	a5,24(a4)
    800024b4:	02c73023          	sd	a2,32(a4)
    800024b8:	34071073          	csrw	mscratch,a4
    800024bc:	00000797          	auipc	a5,0x0
    800024c0:	6e478793          	addi	a5,a5,1764 # 80002ba0 <timervec>
    800024c4:	30579073          	csrw	mtvec,a5
    800024c8:	300027f3          	csrr	a5,mstatus
    800024cc:	0087e793          	ori	a5,a5,8
    800024d0:	30079073          	csrw	mstatus,a5
    800024d4:	304027f3          	csrr	a5,mie
    800024d8:	0807e793          	ori	a5,a5,128
    800024dc:	30479073          	csrw	mie,a5
    800024e0:	f14027f3          	csrr	a5,mhartid
    800024e4:	0007879b          	sext.w	a5,a5
    800024e8:	00078213          	mv	tp,a5
    800024ec:	30200073          	mret
    800024f0:	00813403          	ld	s0,8(sp)
    800024f4:	01010113          	addi	sp,sp,16
    800024f8:	00008067          	ret

00000000800024fc <timerinit>:
    800024fc:	ff010113          	addi	sp,sp,-16
    80002500:	00813423          	sd	s0,8(sp)
    80002504:	01010413          	addi	s0,sp,16
    80002508:	f14027f3          	csrr	a5,mhartid
    8000250c:	0200c737          	lui	a4,0x200c
    80002510:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002514:	0007869b          	sext.w	a3,a5
    80002518:	00269713          	slli	a4,a3,0x2
    8000251c:	000f4637          	lui	a2,0xf4
    80002520:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002524:	00d70733          	add	a4,a4,a3
    80002528:	0037979b          	slliw	a5,a5,0x3
    8000252c:	020046b7          	lui	a3,0x2004
    80002530:	00d787b3          	add	a5,a5,a3
    80002534:	00c585b3          	add	a1,a1,a2
    80002538:	00371693          	slli	a3,a4,0x3
    8000253c:	00003717          	auipc	a4,0x3
    80002540:	3c470713          	addi	a4,a4,964 # 80005900 <timer_scratch>
    80002544:	00b7b023          	sd	a1,0(a5)
    80002548:	00d70733          	add	a4,a4,a3
    8000254c:	00f73c23          	sd	a5,24(a4)
    80002550:	02c73023          	sd	a2,32(a4)
    80002554:	34071073          	csrw	mscratch,a4
    80002558:	00000797          	auipc	a5,0x0
    8000255c:	64878793          	addi	a5,a5,1608 # 80002ba0 <timervec>
    80002560:	30579073          	csrw	mtvec,a5
    80002564:	300027f3          	csrr	a5,mstatus
    80002568:	0087e793          	ori	a5,a5,8
    8000256c:	30079073          	csrw	mstatus,a5
    80002570:	304027f3          	csrr	a5,mie
    80002574:	0807e793          	ori	a5,a5,128
    80002578:	30479073          	csrw	mie,a5
    8000257c:	00813403          	ld	s0,8(sp)
    80002580:	01010113          	addi	sp,sp,16
    80002584:	00008067          	ret

0000000080002588 <system_main>:
    80002588:	fe010113          	addi	sp,sp,-32
    8000258c:	00813823          	sd	s0,16(sp)
    80002590:	00913423          	sd	s1,8(sp)
    80002594:	00113c23          	sd	ra,24(sp)
    80002598:	02010413          	addi	s0,sp,32
    8000259c:	00000097          	auipc	ra,0x0
    800025a0:	0c4080e7          	jalr	196(ra) # 80002660 <cpuid>
    800025a4:	00003497          	auipc	s1,0x3
    800025a8:	30448493          	addi	s1,s1,772 # 800058a8 <started>
    800025ac:	02050263          	beqz	a0,800025d0 <system_main+0x48>
    800025b0:	0004a783          	lw	a5,0(s1)
    800025b4:	0007879b          	sext.w	a5,a5
    800025b8:	fe078ce3          	beqz	a5,800025b0 <system_main+0x28>
    800025bc:	0ff0000f          	fence
    800025c0:	00003517          	auipc	a0,0x3
    800025c4:	bd050513          	addi	a0,a0,-1072 # 80005190 <_ZZ12printIntegermE6digits+0x40>
    800025c8:	00001097          	auipc	ra,0x1
    800025cc:	a74080e7          	jalr	-1420(ra) # 8000303c <panic>
    800025d0:	00001097          	auipc	ra,0x1
    800025d4:	9c8080e7          	jalr	-1592(ra) # 80002f98 <consoleinit>
    800025d8:	00001097          	auipc	ra,0x1
    800025dc:	154080e7          	jalr	340(ra) # 8000372c <printfinit>
    800025e0:	00003517          	auipc	a0,0x3
    800025e4:	b3050513          	addi	a0,a0,-1232 # 80005110 <CONSOLE_STATUS+0x100>
    800025e8:	00001097          	auipc	ra,0x1
    800025ec:	ab0080e7          	jalr	-1360(ra) # 80003098 <__printf>
    800025f0:	00003517          	auipc	a0,0x3
    800025f4:	b7050513          	addi	a0,a0,-1168 # 80005160 <_ZZ12printIntegermE6digits+0x10>
    800025f8:	00001097          	auipc	ra,0x1
    800025fc:	aa0080e7          	jalr	-1376(ra) # 80003098 <__printf>
    80002600:	00003517          	auipc	a0,0x3
    80002604:	b1050513          	addi	a0,a0,-1264 # 80005110 <CONSOLE_STATUS+0x100>
    80002608:	00001097          	auipc	ra,0x1
    8000260c:	a90080e7          	jalr	-1392(ra) # 80003098 <__printf>
    80002610:	00001097          	auipc	ra,0x1
    80002614:	4a8080e7          	jalr	1192(ra) # 80003ab8 <kinit>
    80002618:	00000097          	auipc	ra,0x0
    8000261c:	148080e7          	jalr	328(ra) # 80002760 <trapinit>
    80002620:	00000097          	auipc	ra,0x0
    80002624:	16c080e7          	jalr	364(ra) # 8000278c <trapinithart>
    80002628:	00000097          	auipc	ra,0x0
    8000262c:	5b8080e7          	jalr	1464(ra) # 80002be0 <plicinit>
    80002630:	00000097          	auipc	ra,0x0
    80002634:	5d8080e7          	jalr	1496(ra) # 80002c08 <plicinithart>
    80002638:	00000097          	auipc	ra,0x0
    8000263c:	078080e7          	jalr	120(ra) # 800026b0 <userinit>
    80002640:	0ff0000f          	fence
    80002644:	00100793          	li	a5,1
    80002648:	00003517          	auipc	a0,0x3
    8000264c:	b3050513          	addi	a0,a0,-1232 # 80005178 <_ZZ12printIntegermE6digits+0x28>
    80002650:	00f4a023          	sw	a5,0(s1)
    80002654:	00001097          	auipc	ra,0x1
    80002658:	a44080e7          	jalr	-1468(ra) # 80003098 <__printf>
    8000265c:	0000006f          	j	8000265c <system_main+0xd4>

0000000080002660 <cpuid>:
    80002660:	ff010113          	addi	sp,sp,-16
    80002664:	00813423          	sd	s0,8(sp)
    80002668:	01010413          	addi	s0,sp,16
    8000266c:	00020513          	mv	a0,tp
    80002670:	00813403          	ld	s0,8(sp)
    80002674:	0005051b          	sext.w	a0,a0
    80002678:	01010113          	addi	sp,sp,16
    8000267c:	00008067          	ret

0000000080002680 <mycpu>:
    80002680:	ff010113          	addi	sp,sp,-16
    80002684:	00813423          	sd	s0,8(sp)
    80002688:	01010413          	addi	s0,sp,16
    8000268c:	00020793          	mv	a5,tp
    80002690:	00813403          	ld	s0,8(sp)
    80002694:	0007879b          	sext.w	a5,a5
    80002698:	00779793          	slli	a5,a5,0x7
    8000269c:	00004517          	auipc	a0,0x4
    800026a0:	29450513          	addi	a0,a0,660 # 80006930 <cpus>
    800026a4:	00f50533          	add	a0,a0,a5
    800026a8:	01010113          	addi	sp,sp,16
    800026ac:	00008067          	ret

00000000800026b0 <userinit>:
    800026b0:	ff010113          	addi	sp,sp,-16
    800026b4:	00813423          	sd	s0,8(sp)
    800026b8:	01010413          	addi	s0,sp,16
    800026bc:	00813403          	ld	s0,8(sp)
    800026c0:	01010113          	addi	sp,sp,16
    800026c4:	fffff317          	auipc	t1,0xfffff
    800026c8:	54830067          	jr	1352(t1) # 80001c0c <main>

00000000800026cc <either_copyout>:
    800026cc:	ff010113          	addi	sp,sp,-16
    800026d0:	00813023          	sd	s0,0(sp)
    800026d4:	00113423          	sd	ra,8(sp)
    800026d8:	01010413          	addi	s0,sp,16
    800026dc:	02051663          	bnez	a0,80002708 <either_copyout+0x3c>
    800026e0:	00058513          	mv	a0,a1
    800026e4:	00060593          	mv	a1,a2
    800026e8:	0006861b          	sext.w	a2,a3
    800026ec:	00002097          	auipc	ra,0x2
    800026f0:	c58080e7          	jalr	-936(ra) # 80004344 <__memmove>
    800026f4:	00813083          	ld	ra,8(sp)
    800026f8:	00013403          	ld	s0,0(sp)
    800026fc:	00000513          	li	a0,0
    80002700:	01010113          	addi	sp,sp,16
    80002704:	00008067          	ret
    80002708:	00003517          	auipc	a0,0x3
    8000270c:	ab050513          	addi	a0,a0,-1360 # 800051b8 <_ZZ12printIntegermE6digits+0x68>
    80002710:	00001097          	auipc	ra,0x1
    80002714:	92c080e7          	jalr	-1748(ra) # 8000303c <panic>

0000000080002718 <either_copyin>:
    80002718:	ff010113          	addi	sp,sp,-16
    8000271c:	00813023          	sd	s0,0(sp)
    80002720:	00113423          	sd	ra,8(sp)
    80002724:	01010413          	addi	s0,sp,16
    80002728:	02059463          	bnez	a1,80002750 <either_copyin+0x38>
    8000272c:	00060593          	mv	a1,a2
    80002730:	0006861b          	sext.w	a2,a3
    80002734:	00002097          	auipc	ra,0x2
    80002738:	c10080e7          	jalr	-1008(ra) # 80004344 <__memmove>
    8000273c:	00813083          	ld	ra,8(sp)
    80002740:	00013403          	ld	s0,0(sp)
    80002744:	00000513          	li	a0,0
    80002748:	01010113          	addi	sp,sp,16
    8000274c:	00008067          	ret
    80002750:	00003517          	auipc	a0,0x3
    80002754:	a9050513          	addi	a0,a0,-1392 # 800051e0 <_ZZ12printIntegermE6digits+0x90>
    80002758:	00001097          	auipc	ra,0x1
    8000275c:	8e4080e7          	jalr	-1820(ra) # 8000303c <panic>

0000000080002760 <trapinit>:
    80002760:	ff010113          	addi	sp,sp,-16
    80002764:	00813423          	sd	s0,8(sp)
    80002768:	01010413          	addi	s0,sp,16
    8000276c:	00813403          	ld	s0,8(sp)
    80002770:	00003597          	auipc	a1,0x3
    80002774:	a9858593          	addi	a1,a1,-1384 # 80005208 <_ZZ12printIntegermE6digits+0xb8>
    80002778:	00004517          	auipc	a0,0x4
    8000277c:	23850513          	addi	a0,a0,568 # 800069b0 <tickslock>
    80002780:	01010113          	addi	sp,sp,16
    80002784:	00001317          	auipc	t1,0x1
    80002788:	5c430067          	jr	1476(t1) # 80003d48 <initlock>

000000008000278c <trapinithart>:
    8000278c:	ff010113          	addi	sp,sp,-16
    80002790:	00813423          	sd	s0,8(sp)
    80002794:	01010413          	addi	s0,sp,16
    80002798:	00000797          	auipc	a5,0x0
    8000279c:	2f878793          	addi	a5,a5,760 # 80002a90 <kernelvec>
    800027a0:	10579073          	csrw	stvec,a5
    800027a4:	00813403          	ld	s0,8(sp)
    800027a8:	01010113          	addi	sp,sp,16
    800027ac:	00008067          	ret

00000000800027b0 <usertrap>:
    800027b0:	ff010113          	addi	sp,sp,-16
    800027b4:	00813423          	sd	s0,8(sp)
    800027b8:	01010413          	addi	s0,sp,16
    800027bc:	00813403          	ld	s0,8(sp)
    800027c0:	01010113          	addi	sp,sp,16
    800027c4:	00008067          	ret

00000000800027c8 <usertrapret>:
    800027c8:	ff010113          	addi	sp,sp,-16
    800027cc:	00813423          	sd	s0,8(sp)
    800027d0:	01010413          	addi	s0,sp,16
    800027d4:	00813403          	ld	s0,8(sp)
    800027d8:	01010113          	addi	sp,sp,16
    800027dc:	00008067          	ret

00000000800027e0 <kerneltrap>:
    800027e0:	fe010113          	addi	sp,sp,-32
    800027e4:	00813823          	sd	s0,16(sp)
    800027e8:	00113c23          	sd	ra,24(sp)
    800027ec:	00913423          	sd	s1,8(sp)
    800027f0:	02010413          	addi	s0,sp,32
    800027f4:	142025f3          	csrr	a1,scause
    800027f8:	100027f3          	csrr	a5,sstatus
    800027fc:	0027f793          	andi	a5,a5,2
    80002800:	10079c63          	bnez	a5,80002918 <kerneltrap+0x138>
    80002804:	142027f3          	csrr	a5,scause
    80002808:	0207ce63          	bltz	a5,80002844 <kerneltrap+0x64>
    8000280c:	00003517          	auipc	a0,0x3
    80002810:	a4450513          	addi	a0,a0,-1468 # 80005250 <_ZZ12printIntegermE6digits+0x100>
    80002814:	00001097          	auipc	ra,0x1
    80002818:	884080e7          	jalr	-1916(ra) # 80003098 <__printf>
    8000281c:	141025f3          	csrr	a1,sepc
    80002820:	14302673          	csrr	a2,stval
    80002824:	00003517          	auipc	a0,0x3
    80002828:	a3c50513          	addi	a0,a0,-1476 # 80005260 <_ZZ12printIntegermE6digits+0x110>
    8000282c:	00001097          	auipc	ra,0x1
    80002830:	86c080e7          	jalr	-1940(ra) # 80003098 <__printf>
    80002834:	00003517          	auipc	a0,0x3
    80002838:	a4450513          	addi	a0,a0,-1468 # 80005278 <_ZZ12printIntegermE6digits+0x128>
    8000283c:	00001097          	auipc	ra,0x1
    80002840:	800080e7          	jalr	-2048(ra) # 8000303c <panic>
    80002844:	0ff7f713          	andi	a4,a5,255
    80002848:	00900693          	li	a3,9
    8000284c:	04d70063          	beq	a4,a3,8000288c <kerneltrap+0xac>
    80002850:	fff00713          	li	a4,-1
    80002854:	03f71713          	slli	a4,a4,0x3f
    80002858:	00170713          	addi	a4,a4,1
    8000285c:	fae798e3          	bne	a5,a4,8000280c <kerneltrap+0x2c>
    80002860:	00000097          	auipc	ra,0x0
    80002864:	e00080e7          	jalr	-512(ra) # 80002660 <cpuid>
    80002868:	06050663          	beqz	a0,800028d4 <kerneltrap+0xf4>
    8000286c:	144027f3          	csrr	a5,sip
    80002870:	ffd7f793          	andi	a5,a5,-3
    80002874:	14479073          	csrw	sip,a5
    80002878:	01813083          	ld	ra,24(sp)
    8000287c:	01013403          	ld	s0,16(sp)
    80002880:	00813483          	ld	s1,8(sp)
    80002884:	02010113          	addi	sp,sp,32
    80002888:	00008067          	ret
    8000288c:	00000097          	auipc	ra,0x0
    80002890:	3c8080e7          	jalr	968(ra) # 80002c54 <plic_claim>
    80002894:	00a00793          	li	a5,10
    80002898:	00050493          	mv	s1,a0
    8000289c:	06f50863          	beq	a0,a5,8000290c <kerneltrap+0x12c>
    800028a0:	fc050ce3          	beqz	a0,80002878 <kerneltrap+0x98>
    800028a4:	00050593          	mv	a1,a0
    800028a8:	00003517          	auipc	a0,0x3
    800028ac:	98850513          	addi	a0,a0,-1656 # 80005230 <_ZZ12printIntegermE6digits+0xe0>
    800028b0:	00000097          	auipc	ra,0x0
    800028b4:	7e8080e7          	jalr	2024(ra) # 80003098 <__printf>
    800028b8:	01013403          	ld	s0,16(sp)
    800028bc:	01813083          	ld	ra,24(sp)
    800028c0:	00048513          	mv	a0,s1
    800028c4:	00813483          	ld	s1,8(sp)
    800028c8:	02010113          	addi	sp,sp,32
    800028cc:	00000317          	auipc	t1,0x0
    800028d0:	3c030067          	jr	960(t1) # 80002c8c <plic_complete>
    800028d4:	00004517          	auipc	a0,0x4
    800028d8:	0dc50513          	addi	a0,a0,220 # 800069b0 <tickslock>
    800028dc:	00001097          	auipc	ra,0x1
    800028e0:	490080e7          	jalr	1168(ra) # 80003d6c <acquire>
    800028e4:	00003717          	auipc	a4,0x3
    800028e8:	fc870713          	addi	a4,a4,-56 # 800058ac <ticks>
    800028ec:	00072783          	lw	a5,0(a4)
    800028f0:	00004517          	auipc	a0,0x4
    800028f4:	0c050513          	addi	a0,a0,192 # 800069b0 <tickslock>
    800028f8:	0017879b          	addiw	a5,a5,1
    800028fc:	00f72023          	sw	a5,0(a4)
    80002900:	00001097          	auipc	ra,0x1
    80002904:	538080e7          	jalr	1336(ra) # 80003e38 <release>
    80002908:	f65ff06f          	j	8000286c <kerneltrap+0x8c>
    8000290c:	00001097          	auipc	ra,0x1
    80002910:	094080e7          	jalr	148(ra) # 800039a0 <uartintr>
    80002914:	fa5ff06f          	j	800028b8 <kerneltrap+0xd8>
    80002918:	00003517          	auipc	a0,0x3
    8000291c:	8f850513          	addi	a0,a0,-1800 # 80005210 <_ZZ12printIntegermE6digits+0xc0>
    80002920:	00000097          	auipc	ra,0x0
    80002924:	71c080e7          	jalr	1820(ra) # 8000303c <panic>

0000000080002928 <clockintr>:
    80002928:	fe010113          	addi	sp,sp,-32
    8000292c:	00813823          	sd	s0,16(sp)
    80002930:	00913423          	sd	s1,8(sp)
    80002934:	00113c23          	sd	ra,24(sp)
    80002938:	02010413          	addi	s0,sp,32
    8000293c:	00004497          	auipc	s1,0x4
    80002940:	07448493          	addi	s1,s1,116 # 800069b0 <tickslock>
    80002944:	00048513          	mv	a0,s1
    80002948:	00001097          	auipc	ra,0x1
    8000294c:	424080e7          	jalr	1060(ra) # 80003d6c <acquire>
    80002950:	00003717          	auipc	a4,0x3
    80002954:	f5c70713          	addi	a4,a4,-164 # 800058ac <ticks>
    80002958:	00072783          	lw	a5,0(a4)
    8000295c:	01013403          	ld	s0,16(sp)
    80002960:	01813083          	ld	ra,24(sp)
    80002964:	00048513          	mv	a0,s1
    80002968:	0017879b          	addiw	a5,a5,1
    8000296c:	00813483          	ld	s1,8(sp)
    80002970:	00f72023          	sw	a5,0(a4)
    80002974:	02010113          	addi	sp,sp,32
    80002978:	00001317          	auipc	t1,0x1
    8000297c:	4c030067          	jr	1216(t1) # 80003e38 <release>

0000000080002980 <devintr>:
    80002980:	142027f3          	csrr	a5,scause
    80002984:	00000513          	li	a0,0
    80002988:	0007c463          	bltz	a5,80002990 <devintr+0x10>
    8000298c:	00008067          	ret
    80002990:	fe010113          	addi	sp,sp,-32
    80002994:	00813823          	sd	s0,16(sp)
    80002998:	00113c23          	sd	ra,24(sp)
    8000299c:	00913423          	sd	s1,8(sp)
    800029a0:	02010413          	addi	s0,sp,32
    800029a4:	0ff7f713          	andi	a4,a5,255
    800029a8:	00900693          	li	a3,9
    800029ac:	04d70c63          	beq	a4,a3,80002a04 <devintr+0x84>
    800029b0:	fff00713          	li	a4,-1
    800029b4:	03f71713          	slli	a4,a4,0x3f
    800029b8:	00170713          	addi	a4,a4,1
    800029bc:	00e78c63          	beq	a5,a4,800029d4 <devintr+0x54>
    800029c0:	01813083          	ld	ra,24(sp)
    800029c4:	01013403          	ld	s0,16(sp)
    800029c8:	00813483          	ld	s1,8(sp)
    800029cc:	02010113          	addi	sp,sp,32
    800029d0:	00008067          	ret
    800029d4:	00000097          	auipc	ra,0x0
    800029d8:	c8c080e7          	jalr	-884(ra) # 80002660 <cpuid>
    800029dc:	06050663          	beqz	a0,80002a48 <devintr+0xc8>
    800029e0:	144027f3          	csrr	a5,sip
    800029e4:	ffd7f793          	andi	a5,a5,-3
    800029e8:	14479073          	csrw	sip,a5
    800029ec:	01813083          	ld	ra,24(sp)
    800029f0:	01013403          	ld	s0,16(sp)
    800029f4:	00813483          	ld	s1,8(sp)
    800029f8:	00200513          	li	a0,2
    800029fc:	02010113          	addi	sp,sp,32
    80002a00:	00008067          	ret
    80002a04:	00000097          	auipc	ra,0x0
    80002a08:	250080e7          	jalr	592(ra) # 80002c54 <plic_claim>
    80002a0c:	00a00793          	li	a5,10
    80002a10:	00050493          	mv	s1,a0
    80002a14:	06f50663          	beq	a0,a5,80002a80 <devintr+0x100>
    80002a18:	00100513          	li	a0,1
    80002a1c:	fa0482e3          	beqz	s1,800029c0 <devintr+0x40>
    80002a20:	00048593          	mv	a1,s1
    80002a24:	00003517          	auipc	a0,0x3
    80002a28:	80c50513          	addi	a0,a0,-2036 # 80005230 <_ZZ12printIntegermE6digits+0xe0>
    80002a2c:	00000097          	auipc	ra,0x0
    80002a30:	66c080e7          	jalr	1644(ra) # 80003098 <__printf>
    80002a34:	00048513          	mv	a0,s1
    80002a38:	00000097          	auipc	ra,0x0
    80002a3c:	254080e7          	jalr	596(ra) # 80002c8c <plic_complete>
    80002a40:	00100513          	li	a0,1
    80002a44:	f7dff06f          	j	800029c0 <devintr+0x40>
    80002a48:	00004517          	auipc	a0,0x4
    80002a4c:	f6850513          	addi	a0,a0,-152 # 800069b0 <tickslock>
    80002a50:	00001097          	auipc	ra,0x1
    80002a54:	31c080e7          	jalr	796(ra) # 80003d6c <acquire>
    80002a58:	00003717          	auipc	a4,0x3
    80002a5c:	e5470713          	addi	a4,a4,-428 # 800058ac <ticks>
    80002a60:	00072783          	lw	a5,0(a4)
    80002a64:	00004517          	auipc	a0,0x4
    80002a68:	f4c50513          	addi	a0,a0,-180 # 800069b0 <tickslock>
    80002a6c:	0017879b          	addiw	a5,a5,1
    80002a70:	00f72023          	sw	a5,0(a4)
    80002a74:	00001097          	auipc	ra,0x1
    80002a78:	3c4080e7          	jalr	964(ra) # 80003e38 <release>
    80002a7c:	f65ff06f          	j	800029e0 <devintr+0x60>
    80002a80:	00001097          	auipc	ra,0x1
    80002a84:	f20080e7          	jalr	-224(ra) # 800039a0 <uartintr>
    80002a88:	fadff06f          	j	80002a34 <devintr+0xb4>
    80002a8c:	0000                	unimp
	...

0000000080002a90 <kernelvec>:
    80002a90:	f0010113          	addi	sp,sp,-256
    80002a94:	00113023          	sd	ra,0(sp)
    80002a98:	00213423          	sd	sp,8(sp)
    80002a9c:	00313823          	sd	gp,16(sp)
    80002aa0:	00413c23          	sd	tp,24(sp)
    80002aa4:	02513023          	sd	t0,32(sp)
    80002aa8:	02613423          	sd	t1,40(sp)
    80002aac:	02713823          	sd	t2,48(sp)
    80002ab0:	02813c23          	sd	s0,56(sp)
    80002ab4:	04913023          	sd	s1,64(sp)
    80002ab8:	04a13423          	sd	a0,72(sp)
    80002abc:	04b13823          	sd	a1,80(sp)
    80002ac0:	04c13c23          	sd	a2,88(sp)
    80002ac4:	06d13023          	sd	a3,96(sp)
    80002ac8:	06e13423          	sd	a4,104(sp)
    80002acc:	06f13823          	sd	a5,112(sp)
    80002ad0:	07013c23          	sd	a6,120(sp)
    80002ad4:	09113023          	sd	a7,128(sp)
    80002ad8:	09213423          	sd	s2,136(sp)
    80002adc:	09313823          	sd	s3,144(sp)
    80002ae0:	09413c23          	sd	s4,152(sp)
    80002ae4:	0b513023          	sd	s5,160(sp)
    80002ae8:	0b613423          	sd	s6,168(sp)
    80002aec:	0b713823          	sd	s7,176(sp)
    80002af0:	0b813c23          	sd	s8,184(sp)
    80002af4:	0d913023          	sd	s9,192(sp)
    80002af8:	0da13423          	sd	s10,200(sp)
    80002afc:	0db13823          	sd	s11,208(sp)
    80002b00:	0dc13c23          	sd	t3,216(sp)
    80002b04:	0fd13023          	sd	t4,224(sp)
    80002b08:	0fe13423          	sd	t5,232(sp)
    80002b0c:	0ff13823          	sd	t6,240(sp)
    80002b10:	cd1ff0ef          	jal	ra,800027e0 <kerneltrap>
    80002b14:	00013083          	ld	ra,0(sp)
    80002b18:	00813103          	ld	sp,8(sp)
    80002b1c:	01013183          	ld	gp,16(sp)
    80002b20:	02013283          	ld	t0,32(sp)
    80002b24:	02813303          	ld	t1,40(sp)
    80002b28:	03013383          	ld	t2,48(sp)
    80002b2c:	03813403          	ld	s0,56(sp)
    80002b30:	04013483          	ld	s1,64(sp)
    80002b34:	04813503          	ld	a0,72(sp)
    80002b38:	05013583          	ld	a1,80(sp)
    80002b3c:	05813603          	ld	a2,88(sp)
    80002b40:	06013683          	ld	a3,96(sp)
    80002b44:	06813703          	ld	a4,104(sp)
    80002b48:	07013783          	ld	a5,112(sp)
    80002b4c:	07813803          	ld	a6,120(sp)
    80002b50:	08013883          	ld	a7,128(sp)
    80002b54:	08813903          	ld	s2,136(sp)
    80002b58:	09013983          	ld	s3,144(sp)
    80002b5c:	09813a03          	ld	s4,152(sp)
    80002b60:	0a013a83          	ld	s5,160(sp)
    80002b64:	0a813b03          	ld	s6,168(sp)
    80002b68:	0b013b83          	ld	s7,176(sp)
    80002b6c:	0b813c03          	ld	s8,184(sp)
    80002b70:	0c013c83          	ld	s9,192(sp)
    80002b74:	0c813d03          	ld	s10,200(sp)
    80002b78:	0d013d83          	ld	s11,208(sp)
    80002b7c:	0d813e03          	ld	t3,216(sp)
    80002b80:	0e013e83          	ld	t4,224(sp)
    80002b84:	0e813f03          	ld	t5,232(sp)
    80002b88:	0f013f83          	ld	t6,240(sp)
    80002b8c:	10010113          	addi	sp,sp,256
    80002b90:	10200073          	sret
    80002b94:	00000013          	nop
    80002b98:	00000013          	nop
    80002b9c:	00000013          	nop

0000000080002ba0 <timervec>:
    80002ba0:	34051573          	csrrw	a0,mscratch,a0
    80002ba4:	00b53023          	sd	a1,0(a0)
    80002ba8:	00c53423          	sd	a2,8(a0)
    80002bac:	00d53823          	sd	a3,16(a0)
    80002bb0:	01853583          	ld	a1,24(a0)
    80002bb4:	02053603          	ld	a2,32(a0)
    80002bb8:	0005b683          	ld	a3,0(a1)
    80002bbc:	00c686b3          	add	a3,a3,a2
    80002bc0:	00d5b023          	sd	a3,0(a1)
    80002bc4:	00200593          	li	a1,2
    80002bc8:	14459073          	csrw	sip,a1
    80002bcc:	01053683          	ld	a3,16(a0)
    80002bd0:	00853603          	ld	a2,8(a0)
    80002bd4:	00053583          	ld	a1,0(a0)
    80002bd8:	34051573          	csrrw	a0,mscratch,a0
    80002bdc:	30200073          	mret

0000000080002be0 <plicinit>:
    80002be0:	ff010113          	addi	sp,sp,-16
    80002be4:	00813423          	sd	s0,8(sp)
    80002be8:	01010413          	addi	s0,sp,16
    80002bec:	00813403          	ld	s0,8(sp)
    80002bf0:	0c0007b7          	lui	a5,0xc000
    80002bf4:	00100713          	li	a4,1
    80002bf8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002bfc:	00e7a223          	sw	a4,4(a5)
    80002c00:	01010113          	addi	sp,sp,16
    80002c04:	00008067          	ret

0000000080002c08 <plicinithart>:
    80002c08:	ff010113          	addi	sp,sp,-16
    80002c0c:	00813023          	sd	s0,0(sp)
    80002c10:	00113423          	sd	ra,8(sp)
    80002c14:	01010413          	addi	s0,sp,16
    80002c18:	00000097          	auipc	ra,0x0
    80002c1c:	a48080e7          	jalr	-1464(ra) # 80002660 <cpuid>
    80002c20:	0085171b          	slliw	a4,a0,0x8
    80002c24:	0c0027b7          	lui	a5,0xc002
    80002c28:	00e787b3          	add	a5,a5,a4
    80002c2c:	40200713          	li	a4,1026
    80002c30:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002c34:	00813083          	ld	ra,8(sp)
    80002c38:	00013403          	ld	s0,0(sp)
    80002c3c:	00d5151b          	slliw	a0,a0,0xd
    80002c40:	0c2017b7          	lui	a5,0xc201
    80002c44:	00a78533          	add	a0,a5,a0
    80002c48:	00052023          	sw	zero,0(a0)
    80002c4c:	01010113          	addi	sp,sp,16
    80002c50:	00008067          	ret

0000000080002c54 <plic_claim>:
    80002c54:	ff010113          	addi	sp,sp,-16
    80002c58:	00813023          	sd	s0,0(sp)
    80002c5c:	00113423          	sd	ra,8(sp)
    80002c60:	01010413          	addi	s0,sp,16
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	9fc080e7          	jalr	-1540(ra) # 80002660 <cpuid>
    80002c6c:	00813083          	ld	ra,8(sp)
    80002c70:	00013403          	ld	s0,0(sp)
    80002c74:	00d5151b          	slliw	a0,a0,0xd
    80002c78:	0c2017b7          	lui	a5,0xc201
    80002c7c:	00a78533          	add	a0,a5,a0
    80002c80:	00452503          	lw	a0,4(a0)
    80002c84:	01010113          	addi	sp,sp,16
    80002c88:	00008067          	ret

0000000080002c8c <plic_complete>:
    80002c8c:	fe010113          	addi	sp,sp,-32
    80002c90:	00813823          	sd	s0,16(sp)
    80002c94:	00913423          	sd	s1,8(sp)
    80002c98:	00113c23          	sd	ra,24(sp)
    80002c9c:	02010413          	addi	s0,sp,32
    80002ca0:	00050493          	mv	s1,a0
    80002ca4:	00000097          	auipc	ra,0x0
    80002ca8:	9bc080e7          	jalr	-1604(ra) # 80002660 <cpuid>
    80002cac:	01813083          	ld	ra,24(sp)
    80002cb0:	01013403          	ld	s0,16(sp)
    80002cb4:	00d5179b          	slliw	a5,a0,0xd
    80002cb8:	0c201737          	lui	a4,0xc201
    80002cbc:	00f707b3          	add	a5,a4,a5
    80002cc0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002cc4:	00813483          	ld	s1,8(sp)
    80002cc8:	02010113          	addi	sp,sp,32
    80002ccc:	00008067          	ret

0000000080002cd0 <consolewrite>:
    80002cd0:	fb010113          	addi	sp,sp,-80
    80002cd4:	04813023          	sd	s0,64(sp)
    80002cd8:	04113423          	sd	ra,72(sp)
    80002cdc:	02913c23          	sd	s1,56(sp)
    80002ce0:	03213823          	sd	s2,48(sp)
    80002ce4:	03313423          	sd	s3,40(sp)
    80002ce8:	03413023          	sd	s4,32(sp)
    80002cec:	01513c23          	sd	s5,24(sp)
    80002cf0:	05010413          	addi	s0,sp,80
    80002cf4:	06c05c63          	blez	a2,80002d6c <consolewrite+0x9c>
    80002cf8:	00060993          	mv	s3,a2
    80002cfc:	00050a13          	mv	s4,a0
    80002d00:	00058493          	mv	s1,a1
    80002d04:	00000913          	li	s2,0
    80002d08:	fff00a93          	li	s5,-1
    80002d0c:	01c0006f          	j	80002d28 <consolewrite+0x58>
    80002d10:	fbf44503          	lbu	a0,-65(s0)
    80002d14:	0019091b          	addiw	s2,s2,1
    80002d18:	00148493          	addi	s1,s1,1
    80002d1c:	00001097          	auipc	ra,0x1
    80002d20:	a9c080e7          	jalr	-1380(ra) # 800037b8 <uartputc>
    80002d24:	03298063          	beq	s3,s2,80002d44 <consolewrite+0x74>
    80002d28:	00048613          	mv	a2,s1
    80002d2c:	00100693          	li	a3,1
    80002d30:	000a0593          	mv	a1,s4
    80002d34:	fbf40513          	addi	a0,s0,-65
    80002d38:	00000097          	auipc	ra,0x0
    80002d3c:	9e0080e7          	jalr	-1568(ra) # 80002718 <either_copyin>
    80002d40:	fd5518e3          	bne	a0,s5,80002d10 <consolewrite+0x40>
    80002d44:	04813083          	ld	ra,72(sp)
    80002d48:	04013403          	ld	s0,64(sp)
    80002d4c:	03813483          	ld	s1,56(sp)
    80002d50:	02813983          	ld	s3,40(sp)
    80002d54:	02013a03          	ld	s4,32(sp)
    80002d58:	01813a83          	ld	s5,24(sp)
    80002d5c:	00090513          	mv	a0,s2
    80002d60:	03013903          	ld	s2,48(sp)
    80002d64:	05010113          	addi	sp,sp,80
    80002d68:	00008067          	ret
    80002d6c:	00000913          	li	s2,0
    80002d70:	fd5ff06f          	j	80002d44 <consolewrite+0x74>

0000000080002d74 <consoleread>:
    80002d74:	f9010113          	addi	sp,sp,-112
    80002d78:	06813023          	sd	s0,96(sp)
    80002d7c:	04913c23          	sd	s1,88(sp)
    80002d80:	05213823          	sd	s2,80(sp)
    80002d84:	05313423          	sd	s3,72(sp)
    80002d88:	05413023          	sd	s4,64(sp)
    80002d8c:	03513c23          	sd	s5,56(sp)
    80002d90:	03613823          	sd	s6,48(sp)
    80002d94:	03713423          	sd	s7,40(sp)
    80002d98:	03813023          	sd	s8,32(sp)
    80002d9c:	06113423          	sd	ra,104(sp)
    80002da0:	01913c23          	sd	s9,24(sp)
    80002da4:	07010413          	addi	s0,sp,112
    80002da8:	00060b93          	mv	s7,a2
    80002dac:	00050913          	mv	s2,a0
    80002db0:	00058c13          	mv	s8,a1
    80002db4:	00060b1b          	sext.w	s6,a2
    80002db8:	00004497          	auipc	s1,0x4
    80002dbc:	c2048493          	addi	s1,s1,-992 # 800069d8 <cons>
    80002dc0:	00400993          	li	s3,4
    80002dc4:	fff00a13          	li	s4,-1
    80002dc8:	00a00a93          	li	s5,10
    80002dcc:	05705e63          	blez	s7,80002e28 <consoleread+0xb4>
    80002dd0:	09c4a703          	lw	a4,156(s1)
    80002dd4:	0984a783          	lw	a5,152(s1)
    80002dd8:	0007071b          	sext.w	a4,a4
    80002ddc:	08e78463          	beq	a5,a4,80002e64 <consoleread+0xf0>
    80002de0:	07f7f713          	andi	a4,a5,127
    80002de4:	00e48733          	add	a4,s1,a4
    80002de8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002dec:	0017869b          	addiw	a3,a5,1
    80002df0:	08d4ac23          	sw	a3,152(s1)
    80002df4:	00070c9b          	sext.w	s9,a4
    80002df8:	0b370663          	beq	a4,s3,80002ea4 <consoleread+0x130>
    80002dfc:	00100693          	li	a3,1
    80002e00:	f9f40613          	addi	a2,s0,-97
    80002e04:	000c0593          	mv	a1,s8
    80002e08:	00090513          	mv	a0,s2
    80002e0c:	f8e40fa3          	sb	a4,-97(s0)
    80002e10:	00000097          	auipc	ra,0x0
    80002e14:	8bc080e7          	jalr	-1860(ra) # 800026cc <either_copyout>
    80002e18:	01450863          	beq	a0,s4,80002e28 <consoleread+0xb4>
    80002e1c:	001c0c13          	addi	s8,s8,1
    80002e20:	fffb8b9b          	addiw	s7,s7,-1
    80002e24:	fb5c94e3          	bne	s9,s5,80002dcc <consoleread+0x58>
    80002e28:	000b851b          	sext.w	a0,s7
    80002e2c:	06813083          	ld	ra,104(sp)
    80002e30:	06013403          	ld	s0,96(sp)
    80002e34:	05813483          	ld	s1,88(sp)
    80002e38:	05013903          	ld	s2,80(sp)
    80002e3c:	04813983          	ld	s3,72(sp)
    80002e40:	04013a03          	ld	s4,64(sp)
    80002e44:	03813a83          	ld	s5,56(sp)
    80002e48:	02813b83          	ld	s7,40(sp)
    80002e4c:	02013c03          	ld	s8,32(sp)
    80002e50:	01813c83          	ld	s9,24(sp)
    80002e54:	40ab053b          	subw	a0,s6,a0
    80002e58:	03013b03          	ld	s6,48(sp)
    80002e5c:	07010113          	addi	sp,sp,112
    80002e60:	00008067          	ret
    80002e64:	00001097          	auipc	ra,0x1
    80002e68:	1d8080e7          	jalr	472(ra) # 8000403c <push_on>
    80002e6c:	0984a703          	lw	a4,152(s1)
    80002e70:	09c4a783          	lw	a5,156(s1)
    80002e74:	0007879b          	sext.w	a5,a5
    80002e78:	fef70ce3          	beq	a4,a5,80002e70 <consoleread+0xfc>
    80002e7c:	00001097          	auipc	ra,0x1
    80002e80:	234080e7          	jalr	564(ra) # 800040b0 <pop_on>
    80002e84:	0984a783          	lw	a5,152(s1)
    80002e88:	07f7f713          	andi	a4,a5,127
    80002e8c:	00e48733          	add	a4,s1,a4
    80002e90:	01874703          	lbu	a4,24(a4)
    80002e94:	0017869b          	addiw	a3,a5,1
    80002e98:	08d4ac23          	sw	a3,152(s1)
    80002e9c:	00070c9b          	sext.w	s9,a4
    80002ea0:	f5371ee3          	bne	a4,s3,80002dfc <consoleread+0x88>
    80002ea4:	000b851b          	sext.w	a0,s7
    80002ea8:	f96bf2e3          	bgeu	s7,s6,80002e2c <consoleread+0xb8>
    80002eac:	08f4ac23          	sw	a5,152(s1)
    80002eb0:	f7dff06f          	j	80002e2c <consoleread+0xb8>

0000000080002eb4 <consputc>:
    80002eb4:	10000793          	li	a5,256
    80002eb8:	00f50663          	beq	a0,a5,80002ec4 <consputc+0x10>
    80002ebc:	00001317          	auipc	t1,0x1
    80002ec0:	9f430067          	jr	-1548(t1) # 800038b0 <uartputc_sync>
    80002ec4:	ff010113          	addi	sp,sp,-16
    80002ec8:	00113423          	sd	ra,8(sp)
    80002ecc:	00813023          	sd	s0,0(sp)
    80002ed0:	01010413          	addi	s0,sp,16
    80002ed4:	00800513          	li	a0,8
    80002ed8:	00001097          	auipc	ra,0x1
    80002edc:	9d8080e7          	jalr	-1576(ra) # 800038b0 <uartputc_sync>
    80002ee0:	02000513          	li	a0,32
    80002ee4:	00001097          	auipc	ra,0x1
    80002ee8:	9cc080e7          	jalr	-1588(ra) # 800038b0 <uartputc_sync>
    80002eec:	00013403          	ld	s0,0(sp)
    80002ef0:	00813083          	ld	ra,8(sp)
    80002ef4:	00800513          	li	a0,8
    80002ef8:	01010113          	addi	sp,sp,16
    80002efc:	00001317          	auipc	t1,0x1
    80002f00:	9b430067          	jr	-1612(t1) # 800038b0 <uartputc_sync>

0000000080002f04 <consoleintr>:
    80002f04:	fe010113          	addi	sp,sp,-32
    80002f08:	00813823          	sd	s0,16(sp)
    80002f0c:	00913423          	sd	s1,8(sp)
    80002f10:	01213023          	sd	s2,0(sp)
    80002f14:	00113c23          	sd	ra,24(sp)
    80002f18:	02010413          	addi	s0,sp,32
    80002f1c:	00004917          	auipc	s2,0x4
    80002f20:	abc90913          	addi	s2,s2,-1348 # 800069d8 <cons>
    80002f24:	00050493          	mv	s1,a0
    80002f28:	00090513          	mv	a0,s2
    80002f2c:	00001097          	auipc	ra,0x1
    80002f30:	e40080e7          	jalr	-448(ra) # 80003d6c <acquire>
    80002f34:	02048c63          	beqz	s1,80002f6c <consoleintr+0x68>
    80002f38:	0a092783          	lw	a5,160(s2)
    80002f3c:	09892703          	lw	a4,152(s2)
    80002f40:	07f00693          	li	a3,127
    80002f44:	40e7873b          	subw	a4,a5,a4
    80002f48:	02e6e263          	bltu	a3,a4,80002f6c <consoleintr+0x68>
    80002f4c:	00d00713          	li	a4,13
    80002f50:	04e48063          	beq	s1,a4,80002f90 <consoleintr+0x8c>
    80002f54:	07f7f713          	andi	a4,a5,127
    80002f58:	00e90733          	add	a4,s2,a4
    80002f5c:	0017879b          	addiw	a5,a5,1
    80002f60:	0af92023          	sw	a5,160(s2)
    80002f64:	00970c23          	sb	s1,24(a4)
    80002f68:	08f92e23          	sw	a5,156(s2)
    80002f6c:	01013403          	ld	s0,16(sp)
    80002f70:	01813083          	ld	ra,24(sp)
    80002f74:	00813483          	ld	s1,8(sp)
    80002f78:	00013903          	ld	s2,0(sp)
    80002f7c:	00004517          	auipc	a0,0x4
    80002f80:	a5c50513          	addi	a0,a0,-1444 # 800069d8 <cons>
    80002f84:	02010113          	addi	sp,sp,32
    80002f88:	00001317          	auipc	t1,0x1
    80002f8c:	eb030067          	jr	-336(t1) # 80003e38 <release>
    80002f90:	00a00493          	li	s1,10
    80002f94:	fc1ff06f          	j	80002f54 <consoleintr+0x50>

0000000080002f98 <consoleinit>:
    80002f98:	fe010113          	addi	sp,sp,-32
    80002f9c:	00113c23          	sd	ra,24(sp)
    80002fa0:	00813823          	sd	s0,16(sp)
    80002fa4:	00913423          	sd	s1,8(sp)
    80002fa8:	02010413          	addi	s0,sp,32
    80002fac:	00004497          	auipc	s1,0x4
    80002fb0:	a2c48493          	addi	s1,s1,-1492 # 800069d8 <cons>
    80002fb4:	00048513          	mv	a0,s1
    80002fb8:	00002597          	auipc	a1,0x2
    80002fbc:	2d058593          	addi	a1,a1,720 # 80005288 <_ZZ12printIntegermE6digits+0x138>
    80002fc0:	00001097          	auipc	ra,0x1
    80002fc4:	d88080e7          	jalr	-632(ra) # 80003d48 <initlock>
    80002fc8:	00000097          	auipc	ra,0x0
    80002fcc:	7ac080e7          	jalr	1964(ra) # 80003774 <uartinit>
    80002fd0:	01813083          	ld	ra,24(sp)
    80002fd4:	01013403          	ld	s0,16(sp)
    80002fd8:	00000797          	auipc	a5,0x0
    80002fdc:	d9c78793          	addi	a5,a5,-612 # 80002d74 <consoleread>
    80002fe0:	0af4bc23          	sd	a5,184(s1)
    80002fe4:	00000797          	auipc	a5,0x0
    80002fe8:	cec78793          	addi	a5,a5,-788 # 80002cd0 <consolewrite>
    80002fec:	0cf4b023          	sd	a5,192(s1)
    80002ff0:	00813483          	ld	s1,8(sp)
    80002ff4:	02010113          	addi	sp,sp,32
    80002ff8:	00008067          	ret

0000000080002ffc <console_read>:
    80002ffc:	ff010113          	addi	sp,sp,-16
    80003000:	00813423          	sd	s0,8(sp)
    80003004:	01010413          	addi	s0,sp,16
    80003008:	00813403          	ld	s0,8(sp)
    8000300c:	00004317          	auipc	t1,0x4
    80003010:	a8433303          	ld	t1,-1404(t1) # 80006a90 <devsw+0x10>
    80003014:	01010113          	addi	sp,sp,16
    80003018:	00030067          	jr	t1

000000008000301c <console_write>:
    8000301c:	ff010113          	addi	sp,sp,-16
    80003020:	00813423          	sd	s0,8(sp)
    80003024:	01010413          	addi	s0,sp,16
    80003028:	00813403          	ld	s0,8(sp)
    8000302c:	00004317          	auipc	t1,0x4
    80003030:	a6c33303          	ld	t1,-1428(t1) # 80006a98 <devsw+0x18>
    80003034:	01010113          	addi	sp,sp,16
    80003038:	00030067          	jr	t1

000000008000303c <panic>:
    8000303c:	fe010113          	addi	sp,sp,-32
    80003040:	00113c23          	sd	ra,24(sp)
    80003044:	00813823          	sd	s0,16(sp)
    80003048:	00913423          	sd	s1,8(sp)
    8000304c:	02010413          	addi	s0,sp,32
    80003050:	00050493          	mv	s1,a0
    80003054:	00002517          	auipc	a0,0x2
    80003058:	23c50513          	addi	a0,a0,572 # 80005290 <_ZZ12printIntegermE6digits+0x140>
    8000305c:	00004797          	auipc	a5,0x4
    80003060:	ac07ae23          	sw	zero,-1316(a5) # 80006b38 <pr+0x18>
    80003064:	00000097          	auipc	ra,0x0
    80003068:	034080e7          	jalr	52(ra) # 80003098 <__printf>
    8000306c:	00048513          	mv	a0,s1
    80003070:	00000097          	auipc	ra,0x0
    80003074:	028080e7          	jalr	40(ra) # 80003098 <__printf>
    80003078:	00002517          	auipc	a0,0x2
    8000307c:	09850513          	addi	a0,a0,152 # 80005110 <CONSOLE_STATUS+0x100>
    80003080:	00000097          	auipc	ra,0x0
    80003084:	018080e7          	jalr	24(ra) # 80003098 <__printf>
    80003088:	00100793          	li	a5,1
    8000308c:	00003717          	auipc	a4,0x3
    80003090:	82f72223          	sw	a5,-2012(a4) # 800058b0 <panicked>
    80003094:	0000006f          	j	80003094 <panic+0x58>

0000000080003098 <__printf>:
    80003098:	f3010113          	addi	sp,sp,-208
    8000309c:	08813023          	sd	s0,128(sp)
    800030a0:	07313423          	sd	s3,104(sp)
    800030a4:	09010413          	addi	s0,sp,144
    800030a8:	05813023          	sd	s8,64(sp)
    800030ac:	08113423          	sd	ra,136(sp)
    800030b0:	06913c23          	sd	s1,120(sp)
    800030b4:	07213823          	sd	s2,112(sp)
    800030b8:	07413023          	sd	s4,96(sp)
    800030bc:	05513c23          	sd	s5,88(sp)
    800030c0:	05613823          	sd	s6,80(sp)
    800030c4:	05713423          	sd	s7,72(sp)
    800030c8:	03913c23          	sd	s9,56(sp)
    800030cc:	03a13823          	sd	s10,48(sp)
    800030d0:	03b13423          	sd	s11,40(sp)
    800030d4:	00004317          	auipc	t1,0x4
    800030d8:	a4c30313          	addi	t1,t1,-1460 # 80006b20 <pr>
    800030dc:	01832c03          	lw	s8,24(t1)
    800030e0:	00b43423          	sd	a1,8(s0)
    800030e4:	00c43823          	sd	a2,16(s0)
    800030e8:	00d43c23          	sd	a3,24(s0)
    800030ec:	02e43023          	sd	a4,32(s0)
    800030f0:	02f43423          	sd	a5,40(s0)
    800030f4:	03043823          	sd	a6,48(s0)
    800030f8:	03143c23          	sd	a7,56(s0)
    800030fc:	00050993          	mv	s3,a0
    80003100:	4a0c1663          	bnez	s8,800035ac <__printf+0x514>
    80003104:	60098c63          	beqz	s3,8000371c <__printf+0x684>
    80003108:	0009c503          	lbu	a0,0(s3)
    8000310c:	00840793          	addi	a5,s0,8
    80003110:	f6f43c23          	sd	a5,-136(s0)
    80003114:	00000493          	li	s1,0
    80003118:	22050063          	beqz	a0,80003338 <__printf+0x2a0>
    8000311c:	00002a37          	lui	s4,0x2
    80003120:	00018ab7          	lui	s5,0x18
    80003124:	000f4b37          	lui	s6,0xf4
    80003128:	00989bb7          	lui	s7,0x989
    8000312c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003130:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003134:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003138:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000313c:	00148c9b          	addiw	s9,s1,1
    80003140:	02500793          	li	a5,37
    80003144:	01998933          	add	s2,s3,s9
    80003148:	38f51263          	bne	a0,a5,800034cc <__printf+0x434>
    8000314c:	00094783          	lbu	a5,0(s2)
    80003150:	00078c9b          	sext.w	s9,a5
    80003154:	1e078263          	beqz	a5,80003338 <__printf+0x2a0>
    80003158:	0024849b          	addiw	s1,s1,2
    8000315c:	07000713          	li	a4,112
    80003160:	00998933          	add	s2,s3,s1
    80003164:	38e78a63          	beq	a5,a4,800034f8 <__printf+0x460>
    80003168:	20f76863          	bltu	a4,a5,80003378 <__printf+0x2e0>
    8000316c:	42a78863          	beq	a5,a0,8000359c <__printf+0x504>
    80003170:	06400713          	li	a4,100
    80003174:	40e79663          	bne	a5,a4,80003580 <__printf+0x4e8>
    80003178:	f7843783          	ld	a5,-136(s0)
    8000317c:	0007a603          	lw	a2,0(a5)
    80003180:	00878793          	addi	a5,a5,8
    80003184:	f6f43c23          	sd	a5,-136(s0)
    80003188:	42064a63          	bltz	a2,800035bc <__printf+0x524>
    8000318c:	00a00713          	li	a4,10
    80003190:	02e677bb          	remuw	a5,a2,a4
    80003194:	00002d97          	auipc	s11,0x2
    80003198:	124d8d93          	addi	s11,s11,292 # 800052b8 <digits>
    8000319c:	00900593          	li	a1,9
    800031a0:	0006051b          	sext.w	a0,a2
    800031a4:	00000c93          	li	s9,0
    800031a8:	02079793          	slli	a5,a5,0x20
    800031ac:	0207d793          	srli	a5,a5,0x20
    800031b0:	00fd87b3          	add	a5,s11,a5
    800031b4:	0007c783          	lbu	a5,0(a5)
    800031b8:	02e656bb          	divuw	a3,a2,a4
    800031bc:	f8f40023          	sb	a5,-128(s0)
    800031c0:	14c5d863          	bge	a1,a2,80003310 <__printf+0x278>
    800031c4:	06300593          	li	a1,99
    800031c8:	00100c93          	li	s9,1
    800031cc:	02e6f7bb          	remuw	a5,a3,a4
    800031d0:	02079793          	slli	a5,a5,0x20
    800031d4:	0207d793          	srli	a5,a5,0x20
    800031d8:	00fd87b3          	add	a5,s11,a5
    800031dc:	0007c783          	lbu	a5,0(a5)
    800031e0:	02e6d73b          	divuw	a4,a3,a4
    800031e4:	f8f400a3          	sb	a5,-127(s0)
    800031e8:	12a5f463          	bgeu	a1,a0,80003310 <__printf+0x278>
    800031ec:	00a00693          	li	a3,10
    800031f0:	00900593          	li	a1,9
    800031f4:	02d777bb          	remuw	a5,a4,a3
    800031f8:	02079793          	slli	a5,a5,0x20
    800031fc:	0207d793          	srli	a5,a5,0x20
    80003200:	00fd87b3          	add	a5,s11,a5
    80003204:	0007c503          	lbu	a0,0(a5)
    80003208:	02d757bb          	divuw	a5,a4,a3
    8000320c:	f8a40123          	sb	a0,-126(s0)
    80003210:	48e5f263          	bgeu	a1,a4,80003694 <__printf+0x5fc>
    80003214:	06300513          	li	a0,99
    80003218:	02d7f5bb          	remuw	a1,a5,a3
    8000321c:	02059593          	slli	a1,a1,0x20
    80003220:	0205d593          	srli	a1,a1,0x20
    80003224:	00bd85b3          	add	a1,s11,a1
    80003228:	0005c583          	lbu	a1,0(a1)
    8000322c:	02d7d7bb          	divuw	a5,a5,a3
    80003230:	f8b401a3          	sb	a1,-125(s0)
    80003234:	48e57263          	bgeu	a0,a4,800036b8 <__printf+0x620>
    80003238:	3e700513          	li	a0,999
    8000323c:	02d7f5bb          	remuw	a1,a5,a3
    80003240:	02059593          	slli	a1,a1,0x20
    80003244:	0205d593          	srli	a1,a1,0x20
    80003248:	00bd85b3          	add	a1,s11,a1
    8000324c:	0005c583          	lbu	a1,0(a1)
    80003250:	02d7d7bb          	divuw	a5,a5,a3
    80003254:	f8b40223          	sb	a1,-124(s0)
    80003258:	46e57663          	bgeu	a0,a4,800036c4 <__printf+0x62c>
    8000325c:	02d7f5bb          	remuw	a1,a5,a3
    80003260:	02059593          	slli	a1,a1,0x20
    80003264:	0205d593          	srli	a1,a1,0x20
    80003268:	00bd85b3          	add	a1,s11,a1
    8000326c:	0005c583          	lbu	a1,0(a1)
    80003270:	02d7d7bb          	divuw	a5,a5,a3
    80003274:	f8b402a3          	sb	a1,-123(s0)
    80003278:	46ea7863          	bgeu	s4,a4,800036e8 <__printf+0x650>
    8000327c:	02d7f5bb          	remuw	a1,a5,a3
    80003280:	02059593          	slli	a1,a1,0x20
    80003284:	0205d593          	srli	a1,a1,0x20
    80003288:	00bd85b3          	add	a1,s11,a1
    8000328c:	0005c583          	lbu	a1,0(a1)
    80003290:	02d7d7bb          	divuw	a5,a5,a3
    80003294:	f8b40323          	sb	a1,-122(s0)
    80003298:	3eeaf863          	bgeu	s5,a4,80003688 <__printf+0x5f0>
    8000329c:	02d7f5bb          	remuw	a1,a5,a3
    800032a0:	02059593          	slli	a1,a1,0x20
    800032a4:	0205d593          	srli	a1,a1,0x20
    800032a8:	00bd85b3          	add	a1,s11,a1
    800032ac:	0005c583          	lbu	a1,0(a1)
    800032b0:	02d7d7bb          	divuw	a5,a5,a3
    800032b4:	f8b403a3          	sb	a1,-121(s0)
    800032b8:	42eb7e63          	bgeu	s6,a4,800036f4 <__printf+0x65c>
    800032bc:	02d7f5bb          	remuw	a1,a5,a3
    800032c0:	02059593          	slli	a1,a1,0x20
    800032c4:	0205d593          	srli	a1,a1,0x20
    800032c8:	00bd85b3          	add	a1,s11,a1
    800032cc:	0005c583          	lbu	a1,0(a1)
    800032d0:	02d7d7bb          	divuw	a5,a5,a3
    800032d4:	f8b40423          	sb	a1,-120(s0)
    800032d8:	42ebfc63          	bgeu	s7,a4,80003710 <__printf+0x678>
    800032dc:	02079793          	slli	a5,a5,0x20
    800032e0:	0207d793          	srli	a5,a5,0x20
    800032e4:	00fd8db3          	add	s11,s11,a5
    800032e8:	000dc703          	lbu	a4,0(s11)
    800032ec:	00a00793          	li	a5,10
    800032f0:	00900c93          	li	s9,9
    800032f4:	f8e404a3          	sb	a4,-119(s0)
    800032f8:	00065c63          	bgez	a2,80003310 <__printf+0x278>
    800032fc:	f9040713          	addi	a4,s0,-112
    80003300:	00f70733          	add	a4,a4,a5
    80003304:	02d00693          	li	a3,45
    80003308:	fed70823          	sb	a3,-16(a4)
    8000330c:	00078c93          	mv	s9,a5
    80003310:	f8040793          	addi	a5,s0,-128
    80003314:	01978cb3          	add	s9,a5,s9
    80003318:	f7f40d13          	addi	s10,s0,-129
    8000331c:	000cc503          	lbu	a0,0(s9)
    80003320:	fffc8c93          	addi	s9,s9,-1
    80003324:	00000097          	auipc	ra,0x0
    80003328:	b90080e7          	jalr	-1136(ra) # 80002eb4 <consputc>
    8000332c:	ffac98e3          	bne	s9,s10,8000331c <__printf+0x284>
    80003330:	00094503          	lbu	a0,0(s2)
    80003334:	e00514e3          	bnez	a0,8000313c <__printf+0xa4>
    80003338:	1a0c1663          	bnez	s8,800034e4 <__printf+0x44c>
    8000333c:	08813083          	ld	ra,136(sp)
    80003340:	08013403          	ld	s0,128(sp)
    80003344:	07813483          	ld	s1,120(sp)
    80003348:	07013903          	ld	s2,112(sp)
    8000334c:	06813983          	ld	s3,104(sp)
    80003350:	06013a03          	ld	s4,96(sp)
    80003354:	05813a83          	ld	s5,88(sp)
    80003358:	05013b03          	ld	s6,80(sp)
    8000335c:	04813b83          	ld	s7,72(sp)
    80003360:	04013c03          	ld	s8,64(sp)
    80003364:	03813c83          	ld	s9,56(sp)
    80003368:	03013d03          	ld	s10,48(sp)
    8000336c:	02813d83          	ld	s11,40(sp)
    80003370:	0d010113          	addi	sp,sp,208
    80003374:	00008067          	ret
    80003378:	07300713          	li	a4,115
    8000337c:	1ce78a63          	beq	a5,a4,80003550 <__printf+0x4b8>
    80003380:	07800713          	li	a4,120
    80003384:	1ee79e63          	bne	a5,a4,80003580 <__printf+0x4e8>
    80003388:	f7843783          	ld	a5,-136(s0)
    8000338c:	0007a703          	lw	a4,0(a5)
    80003390:	00878793          	addi	a5,a5,8
    80003394:	f6f43c23          	sd	a5,-136(s0)
    80003398:	28074263          	bltz	a4,8000361c <__printf+0x584>
    8000339c:	00002d97          	auipc	s11,0x2
    800033a0:	f1cd8d93          	addi	s11,s11,-228 # 800052b8 <digits>
    800033a4:	00f77793          	andi	a5,a4,15
    800033a8:	00fd87b3          	add	a5,s11,a5
    800033ac:	0007c683          	lbu	a3,0(a5)
    800033b0:	00f00613          	li	a2,15
    800033b4:	0007079b          	sext.w	a5,a4
    800033b8:	f8d40023          	sb	a3,-128(s0)
    800033bc:	0047559b          	srliw	a1,a4,0x4
    800033c0:	0047569b          	srliw	a3,a4,0x4
    800033c4:	00000c93          	li	s9,0
    800033c8:	0ee65063          	bge	a2,a4,800034a8 <__printf+0x410>
    800033cc:	00f6f693          	andi	a3,a3,15
    800033d0:	00dd86b3          	add	a3,s11,a3
    800033d4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800033d8:	0087d79b          	srliw	a5,a5,0x8
    800033dc:	00100c93          	li	s9,1
    800033e0:	f8d400a3          	sb	a3,-127(s0)
    800033e4:	0cb67263          	bgeu	a2,a1,800034a8 <__printf+0x410>
    800033e8:	00f7f693          	andi	a3,a5,15
    800033ec:	00dd86b3          	add	a3,s11,a3
    800033f0:	0006c583          	lbu	a1,0(a3)
    800033f4:	00f00613          	li	a2,15
    800033f8:	0047d69b          	srliw	a3,a5,0x4
    800033fc:	f8b40123          	sb	a1,-126(s0)
    80003400:	0047d593          	srli	a1,a5,0x4
    80003404:	28f67e63          	bgeu	a2,a5,800036a0 <__printf+0x608>
    80003408:	00f6f693          	andi	a3,a3,15
    8000340c:	00dd86b3          	add	a3,s11,a3
    80003410:	0006c503          	lbu	a0,0(a3)
    80003414:	0087d813          	srli	a6,a5,0x8
    80003418:	0087d69b          	srliw	a3,a5,0x8
    8000341c:	f8a401a3          	sb	a0,-125(s0)
    80003420:	28b67663          	bgeu	a2,a1,800036ac <__printf+0x614>
    80003424:	00f6f693          	andi	a3,a3,15
    80003428:	00dd86b3          	add	a3,s11,a3
    8000342c:	0006c583          	lbu	a1,0(a3)
    80003430:	00c7d513          	srli	a0,a5,0xc
    80003434:	00c7d69b          	srliw	a3,a5,0xc
    80003438:	f8b40223          	sb	a1,-124(s0)
    8000343c:	29067a63          	bgeu	a2,a6,800036d0 <__printf+0x638>
    80003440:	00f6f693          	andi	a3,a3,15
    80003444:	00dd86b3          	add	a3,s11,a3
    80003448:	0006c583          	lbu	a1,0(a3)
    8000344c:	0107d813          	srli	a6,a5,0x10
    80003450:	0107d69b          	srliw	a3,a5,0x10
    80003454:	f8b402a3          	sb	a1,-123(s0)
    80003458:	28a67263          	bgeu	a2,a0,800036dc <__printf+0x644>
    8000345c:	00f6f693          	andi	a3,a3,15
    80003460:	00dd86b3          	add	a3,s11,a3
    80003464:	0006c683          	lbu	a3,0(a3)
    80003468:	0147d79b          	srliw	a5,a5,0x14
    8000346c:	f8d40323          	sb	a3,-122(s0)
    80003470:	21067663          	bgeu	a2,a6,8000367c <__printf+0x5e4>
    80003474:	02079793          	slli	a5,a5,0x20
    80003478:	0207d793          	srli	a5,a5,0x20
    8000347c:	00fd8db3          	add	s11,s11,a5
    80003480:	000dc683          	lbu	a3,0(s11)
    80003484:	00800793          	li	a5,8
    80003488:	00700c93          	li	s9,7
    8000348c:	f8d403a3          	sb	a3,-121(s0)
    80003490:	00075c63          	bgez	a4,800034a8 <__printf+0x410>
    80003494:	f9040713          	addi	a4,s0,-112
    80003498:	00f70733          	add	a4,a4,a5
    8000349c:	02d00693          	li	a3,45
    800034a0:	fed70823          	sb	a3,-16(a4)
    800034a4:	00078c93          	mv	s9,a5
    800034a8:	f8040793          	addi	a5,s0,-128
    800034ac:	01978cb3          	add	s9,a5,s9
    800034b0:	f7f40d13          	addi	s10,s0,-129
    800034b4:	000cc503          	lbu	a0,0(s9)
    800034b8:	fffc8c93          	addi	s9,s9,-1
    800034bc:	00000097          	auipc	ra,0x0
    800034c0:	9f8080e7          	jalr	-1544(ra) # 80002eb4 <consputc>
    800034c4:	ff9d18e3          	bne	s10,s9,800034b4 <__printf+0x41c>
    800034c8:	0100006f          	j	800034d8 <__printf+0x440>
    800034cc:	00000097          	auipc	ra,0x0
    800034d0:	9e8080e7          	jalr	-1560(ra) # 80002eb4 <consputc>
    800034d4:	000c8493          	mv	s1,s9
    800034d8:	00094503          	lbu	a0,0(s2)
    800034dc:	c60510e3          	bnez	a0,8000313c <__printf+0xa4>
    800034e0:	e40c0ee3          	beqz	s8,8000333c <__printf+0x2a4>
    800034e4:	00003517          	auipc	a0,0x3
    800034e8:	63c50513          	addi	a0,a0,1596 # 80006b20 <pr>
    800034ec:	00001097          	auipc	ra,0x1
    800034f0:	94c080e7          	jalr	-1716(ra) # 80003e38 <release>
    800034f4:	e49ff06f          	j	8000333c <__printf+0x2a4>
    800034f8:	f7843783          	ld	a5,-136(s0)
    800034fc:	03000513          	li	a0,48
    80003500:	01000d13          	li	s10,16
    80003504:	00878713          	addi	a4,a5,8
    80003508:	0007bc83          	ld	s9,0(a5)
    8000350c:	f6e43c23          	sd	a4,-136(s0)
    80003510:	00000097          	auipc	ra,0x0
    80003514:	9a4080e7          	jalr	-1628(ra) # 80002eb4 <consputc>
    80003518:	07800513          	li	a0,120
    8000351c:	00000097          	auipc	ra,0x0
    80003520:	998080e7          	jalr	-1640(ra) # 80002eb4 <consputc>
    80003524:	00002d97          	auipc	s11,0x2
    80003528:	d94d8d93          	addi	s11,s11,-620 # 800052b8 <digits>
    8000352c:	03ccd793          	srli	a5,s9,0x3c
    80003530:	00fd87b3          	add	a5,s11,a5
    80003534:	0007c503          	lbu	a0,0(a5)
    80003538:	fffd0d1b          	addiw	s10,s10,-1
    8000353c:	004c9c93          	slli	s9,s9,0x4
    80003540:	00000097          	auipc	ra,0x0
    80003544:	974080e7          	jalr	-1676(ra) # 80002eb4 <consputc>
    80003548:	fe0d12e3          	bnez	s10,8000352c <__printf+0x494>
    8000354c:	f8dff06f          	j	800034d8 <__printf+0x440>
    80003550:	f7843783          	ld	a5,-136(s0)
    80003554:	0007bc83          	ld	s9,0(a5)
    80003558:	00878793          	addi	a5,a5,8
    8000355c:	f6f43c23          	sd	a5,-136(s0)
    80003560:	000c9a63          	bnez	s9,80003574 <__printf+0x4dc>
    80003564:	1080006f          	j	8000366c <__printf+0x5d4>
    80003568:	001c8c93          	addi	s9,s9,1
    8000356c:	00000097          	auipc	ra,0x0
    80003570:	948080e7          	jalr	-1720(ra) # 80002eb4 <consputc>
    80003574:	000cc503          	lbu	a0,0(s9)
    80003578:	fe0518e3          	bnez	a0,80003568 <__printf+0x4d0>
    8000357c:	f5dff06f          	j	800034d8 <__printf+0x440>
    80003580:	02500513          	li	a0,37
    80003584:	00000097          	auipc	ra,0x0
    80003588:	930080e7          	jalr	-1744(ra) # 80002eb4 <consputc>
    8000358c:	000c8513          	mv	a0,s9
    80003590:	00000097          	auipc	ra,0x0
    80003594:	924080e7          	jalr	-1756(ra) # 80002eb4 <consputc>
    80003598:	f41ff06f          	j	800034d8 <__printf+0x440>
    8000359c:	02500513          	li	a0,37
    800035a0:	00000097          	auipc	ra,0x0
    800035a4:	914080e7          	jalr	-1772(ra) # 80002eb4 <consputc>
    800035a8:	f31ff06f          	j	800034d8 <__printf+0x440>
    800035ac:	00030513          	mv	a0,t1
    800035b0:	00000097          	auipc	ra,0x0
    800035b4:	7bc080e7          	jalr	1980(ra) # 80003d6c <acquire>
    800035b8:	b4dff06f          	j	80003104 <__printf+0x6c>
    800035bc:	40c0053b          	negw	a0,a2
    800035c0:	00a00713          	li	a4,10
    800035c4:	02e576bb          	remuw	a3,a0,a4
    800035c8:	00002d97          	auipc	s11,0x2
    800035cc:	cf0d8d93          	addi	s11,s11,-784 # 800052b8 <digits>
    800035d0:	ff700593          	li	a1,-9
    800035d4:	02069693          	slli	a3,a3,0x20
    800035d8:	0206d693          	srli	a3,a3,0x20
    800035dc:	00dd86b3          	add	a3,s11,a3
    800035e0:	0006c683          	lbu	a3,0(a3)
    800035e4:	02e557bb          	divuw	a5,a0,a4
    800035e8:	f8d40023          	sb	a3,-128(s0)
    800035ec:	10b65e63          	bge	a2,a1,80003708 <__printf+0x670>
    800035f0:	06300593          	li	a1,99
    800035f4:	02e7f6bb          	remuw	a3,a5,a4
    800035f8:	02069693          	slli	a3,a3,0x20
    800035fc:	0206d693          	srli	a3,a3,0x20
    80003600:	00dd86b3          	add	a3,s11,a3
    80003604:	0006c683          	lbu	a3,0(a3)
    80003608:	02e7d73b          	divuw	a4,a5,a4
    8000360c:	00200793          	li	a5,2
    80003610:	f8d400a3          	sb	a3,-127(s0)
    80003614:	bca5ece3          	bltu	a1,a0,800031ec <__printf+0x154>
    80003618:	ce5ff06f          	j	800032fc <__printf+0x264>
    8000361c:	40e007bb          	negw	a5,a4
    80003620:	00002d97          	auipc	s11,0x2
    80003624:	c98d8d93          	addi	s11,s11,-872 # 800052b8 <digits>
    80003628:	00f7f693          	andi	a3,a5,15
    8000362c:	00dd86b3          	add	a3,s11,a3
    80003630:	0006c583          	lbu	a1,0(a3)
    80003634:	ff100613          	li	a2,-15
    80003638:	0047d69b          	srliw	a3,a5,0x4
    8000363c:	f8b40023          	sb	a1,-128(s0)
    80003640:	0047d59b          	srliw	a1,a5,0x4
    80003644:	0ac75e63          	bge	a4,a2,80003700 <__printf+0x668>
    80003648:	00f6f693          	andi	a3,a3,15
    8000364c:	00dd86b3          	add	a3,s11,a3
    80003650:	0006c603          	lbu	a2,0(a3)
    80003654:	00f00693          	li	a3,15
    80003658:	0087d79b          	srliw	a5,a5,0x8
    8000365c:	f8c400a3          	sb	a2,-127(s0)
    80003660:	d8b6e4e3          	bltu	a3,a1,800033e8 <__printf+0x350>
    80003664:	00200793          	li	a5,2
    80003668:	e2dff06f          	j	80003494 <__printf+0x3fc>
    8000366c:	00002c97          	auipc	s9,0x2
    80003670:	c2cc8c93          	addi	s9,s9,-980 # 80005298 <_ZZ12printIntegermE6digits+0x148>
    80003674:	02800513          	li	a0,40
    80003678:	ef1ff06f          	j	80003568 <__printf+0x4d0>
    8000367c:	00700793          	li	a5,7
    80003680:	00600c93          	li	s9,6
    80003684:	e0dff06f          	j	80003490 <__printf+0x3f8>
    80003688:	00700793          	li	a5,7
    8000368c:	00600c93          	li	s9,6
    80003690:	c69ff06f          	j	800032f8 <__printf+0x260>
    80003694:	00300793          	li	a5,3
    80003698:	00200c93          	li	s9,2
    8000369c:	c5dff06f          	j	800032f8 <__printf+0x260>
    800036a0:	00300793          	li	a5,3
    800036a4:	00200c93          	li	s9,2
    800036a8:	de9ff06f          	j	80003490 <__printf+0x3f8>
    800036ac:	00400793          	li	a5,4
    800036b0:	00300c93          	li	s9,3
    800036b4:	dddff06f          	j	80003490 <__printf+0x3f8>
    800036b8:	00400793          	li	a5,4
    800036bc:	00300c93          	li	s9,3
    800036c0:	c39ff06f          	j	800032f8 <__printf+0x260>
    800036c4:	00500793          	li	a5,5
    800036c8:	00400c93          	li	s9,4
    800036cc:	c2dff06f          	j	800032f8 <__printf+0x260>
    800036d0:	00500793          	li	a5,5
    800036d4:	00400c93          	li	s9,4
    800036d8:	db9ff06f          	j	80003490 <__printf+0x3f8>
    800036dc:	00600793          	li	a5,6
    800036e0:	00500c93          	li	s9,5
    800036e4:	dadff06f          	j	80003490 <__printf+0x3f8>
    800036e8:	00600793          	li	a5,6
    800036ec:	00500c93          	li	s9,5
    800036f0:	c09ff06f          	j	800032f8 <__printf+0x260>
    800036f4:	00800793          	li	a5,8
    800036f8:	00700c93          	li	s9,7
    800036fc:	bfdff06f          	j	800032f8 <__printf+0x260>
    80003700:	00100793          	li	a5,1
    80003704:	d91ff06f          	j	80003494 <__printf+0x3fc>
    80003708:	00100793          	li	a5,1
    8000370c:	bf1ff06f          	j	800032fc <__printf+0x264>
    80003710:	00900793          	li	a5,9
    80003714:	00800c93          	li	s9,8
    80003718:	be1ff06f          	j	800032f8 <__printf+0x260>
    8000371c:	00002517          	auipc	a0,0x2
    80003720:	b8450513          	addi	a0,a0,-1148 # 800052a0 <_ZZ12printIntegermE6digits+0x150>
    80003724:	00000097          	auipc	ra,0x0
    80003728:	918080e7          	jalr	-1768(ra) # 8000303c <panic>

000000008000372c <printfinit>:
    8000372c:	fe010113          	addi	sp,sp,-32
    80003730:	00813823          	sd	s0,16(sp)
    80003734:	00913423          	sd	s1,8(sp)
    80003738:	00113c23          	sd	ra,24(sp)
    8000373c:	02010413          	addi	s0,sp,32
    80003740:	00003497          	auipc	s1,0x3
    80003744:	3e048493          	addi	s1,s1,992 # 80006b20 <pr>
    80003748:	00048513          	mv	a0,s1
    8000374c:	00002597          	auipc	a1,0x2
    80003750:	b6458593          	addi	a1,a1,-1180 # 800052b0 <_ZZ12printIntegermE6digits+0x160>
    80003754:	00000097          	auipc	ra,0x0
    80003758:	5f4080e7          	jalr	1524(ra) # 80003d48 <initlock>
    8000375c:	01813083          	ld	ra,24(sp)
    80003760:	01013403          	ld	s0,16(sp)
    80003764:	0004ac23          	sw	zero,24(s1)
    80003768:	00813483          	ld	s1,8(sp)
    8000376c:	02010113          	addi	sp,sp,32
    80003770:	00008067          	ret

0000000080003774 <uartinit>:
    80003774:	ff010113          	addi	sp,sp,-16
    80003778:	00813423          	sd	s0,8(sp)
    8000377c:	01010413          	addi	s0,sp,16
    80003780:	100007b7          	lui	a5,0x10000
    80003784:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003788:	f8000713          	li	a4,-128
    8000378c:	00e781a3          	sb	a4,3(a5)
    80003790:	00300713          	li	a4,3
    80003794:	00e78023          	sb	a4,0(a5)
    80003798:	000780a3          	sb	zero,1(a5)
    8000379c:	00e781a3          	sb	a4,3(a5)
    800037a0:	00700693          	li	a3,7
    800037a4:	00d78123          	sb	a3,2(a5)
    800037a8:	00e780a3          	sb	a4,1(a5)
    800037ac:	00813403          	ld	s0,8(sp)
    800037b0:	01010113          	addi	sp,sp,16
    800037b4:	00008067          	ret

00000000800037b8 <uartputc>:
    800037b8:	00002797          	auipc	a5,0x2
    800037bc:	0f87a783          	lw	a5,248(a5) # 800058b0 <panicked>
    800037c0:	00078463          	beqz	a5,800037c8 <uartputc+0x10>
    800037c4:	0000006f          	j	800037c4 <uartputc+0xc>
    800037c8:	fd010113          	addi	sp,sp,-48
    800037cc:	02813023          	sd	s0,32(sp)
    800037d0:	00913c23          	sd	s1,24(sp)
    800037d4:	01213823          	sd	s2,16(sp)
    800037d8:	01313423          	sd	s3,8(sp)
    800037dc:	02113423          	sd	ra,40(sp)
    800037e0:	03010413          	addi	s0,sp,48
    800037e4:	00002917          	auipc	s2,0x2
    800037e8:	0d490913          	addi	s2,s2,212 # 800058b8 <uart_tx_r>
    800037ec:	00093783          	ld	a5,0(s2)
    800037f0:	00002497          	auipc	s1,0x2
    800037f4:	0d048493          	addi	s1,s1,208 # 800058c0 <uart_tx_w>
    800037f8:	0004b703          	ld	a4,0(s1)
    800037fc:	02078693          	addi	a3,a5,32
    80003800:	00050993          	mv	s3,a0
    80003804:	02e69c63          	bne	a3,a4,8000383c <uartputc+0x84>
    80003808:	00001097          	auipc	ra,0x1
    8000380c:	834080e7          	jalr	-1996(ra) # 8000403c <push_on>
    80003810:	00093783          	ld	a5,0(s2)
    80003814:	0004b703          	ld	a4,0(s1)
    80003818:	02078793          	addi	a5,a5,32
    8000381c:	00e79463          	bne	a5,a4,80003824 <uartputc+0x6c>
    80003820:	0000006f          	j	80003820 <uartputc+0x68>
    80003824:	00001097          	auipc	ra,0x1
    80003828:	88c080e7          	jalr	-1908(ra) # 800040b0 <pop_on>
    8000382c:	00093783          	ld	a5,0(s2)
    80003830:	0004b703          	ld	a4,0(s1)
    80003834:	02078693          	addi	a3,a5,32
    80003838:	fce688e3          	beq	a3,a4,80003808 <uartputc+0x50>
    8000383c:	01f77693          	andi	a3,a4,31
    80003840:	00003597          	auipc	a1,0x3
    80003844:	30058593          	addi	a1,a1,768 # 80006b40 <uart_tx_buf>
    80003848:	00d586b3          	add	a3,a1,a3
    8000384c:	00170713          	addi	a4,a4,1
    80003850:	01368023          	sb	s3,0(a3)
    80003854:	00e4b023          	sd	a4,0(s1)
    80003858:	10000637          	lui	a2,0x10000
    8000385c:	02f71063          	bne	a4,a5,8000387c <uartputc+0xc4>
    80003860:	0340006f          	j	80003894 <uartputc+0xdc>
    80003864:	00074703          	lbu	a4,0(a4)
    80003868:	00f93023          	sd	a5,0(s2)
    8000386c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003870:	00093783          	ld	a5,0(s2)
    80003874:	0004b703          	ld	a4,0(s1)
    80003878:	00f70e63          	beq	a4,a5,80003894 <uartputc+0xdc>
    8000387c:	00564683          	lbu	a3,5(a2)
    80003880:	01f7f713          	andi	a4,a5,31
    80003884:	00e58733          	add	a4,a1,a4
    80003888:	0206f693          	andi	a3,a3,32
    8000388c:	00178793          	addi	a5,a5,1
    80003890:	fc069ae3          	bnez	a3,80003864 <uartputc+0xac>
    80003894:	02813083          	ld	ra,40(sp)
    80003898:	02013403          	ld	s0,32(sp)
    8000389c:	01813483          	ld	s1,24(sp)
    800038a0:	01013903          	ld	s2,16(sp)
    800038a4:	00813983          	ld	s3,8(sp)
    800038a8:	03010113          	addi	sp,sp,48
    800038ac:	00008067          	ret

00000000800038b0 <uartputc_sync>:
    800038b0:	ff010113          	addi	sp,sp,-16
    800038b4:	00813423          	sd	s0,8(sp)
    800038b8:	01010413          	addi	s0,sp,16
    800038bc:	00002717          	auipc	a4,0x2
    800038c0:	ff472703          	lw	a4,-12(a4) # 800058b0 <panicked>
    800038c4:	02071663          	bnez	a4,800038f0 <uartputc_sync+0x40>
    800038c8:	00050793          	mv	a5,a0
    800038cc:	100006b7          	lui	a3,0x10000
    800038d0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800038d4:	02077713          	andi	a4,a4,32
    800038d8:	fe070ce3          	beqz	a4,800038d0 <uartputc_sync+0x20>
    800038dc:	0ff7f793          	andi	a5,a5,255
    800038e0:	00f68023          	sb	a5,0(a3)
    800038e4:	00813403          	ld	s0,8(sp)
    800038e8:	01010113          	addi	sp,sp,16
    800038ec:	00008067          	ret
    800038f0:	0000006f          	j	800038f0 <uartputc_sync+0x40>

00000000800038f4 <uartstart>:
    800038f4:	ff010113          	addi	sp,sp,-16
    800038f8:	00813423          	sd	s0,8(sp)
    800038fc:	01010413          	addi	s0,sp,16
    80003900:	00002617          	auipc	a2,0x2
    80003904:	fb860613          	addi	a2,a2,-72 # 800058b8 <uart_tx_r>
    80003908:	00002517          	auipc	a0,0x2
    8000390c:	fb850513          	addi	a0,a0,-72 # 800058c0 <uart_tx_w>
    80003910:	00063783          	ld	a5,0(a2)
    80003914:	00053703          	ld	a4,0(a0)
    80003918:	04f70263          	beq	a4,a5,8000395c <uartstart+0x68>
    8000391c:	100005b7          	lui	a1,0x10000
    80003920:	00003817          	auipc	a6,0x3
    80003924:	22080813          	addi	a6,a6,544 # 80006b40 <uart_tx_buf>
    80003928:	01c0006f          	j	80003944 <uartstart+0x50>
    8000392c:	0006c703          	lbu	a4,0(a3)
    80003930:	00f63023          	sd	a5,0(a2)
    80003934:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003938:	00063783          	ld	a5,0(a2)
    8000393c:	00053703          	ld	a4,0(a0)
    80003940:	00f70e63          	beq	a4,a5,8000395c <uartstart+0x68>
    80003944:	01f7f713          	andi	a4,a5,31
    80003948:	00e806b3          	add	a3,a6,a4
    8000394c:	0055c703          	lbu	a4,5(a1)
    80003950:	00178793          	addi	a5,a5,1
    80003954:	02077713          	andi	a4,a4,32
    80003958:	fc071ae3          	bnez	a4,8000392c <uartstart+0x38>
    8000395c:	00813403          	ld	s0,8(sp)
    80003960:	01010113          	addi	sp,sp,16
    80003964:	00008067          	ret

0000000080003968 <uartgetc>:
    80003968:	ff010113          	addi	sp,sp,-16
    8000396c:	00813423          	sd	s0,8(sp)
    80003970:	01010413          	addi	s0,sp,16
    80003974:	10000737          	lui	a4,0x10000
    80003978:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000397c:	0017f793          	andi	a5,a5,1
    80003980:	00078c63          	beqz	a5,80003998 <uartgetc+0x30>
    80003984:	00074503          	lbu	a0,0(a4)
    80003988:	0ff57513          	andi	a0,a0,255
    8000398c:	00813403          	ld	s0,8(sp)
    80003990:	01010113          	addi	sp,sp,16
    80003994:	00008067          	ret
    80003998:	fff00513          	li	a0,-1
    8000399c:	ff1ff06f          	j	8000398c <uartgetc+0x24>

00000000800039a0 <uartintr>:
    800039a0:	100007b7          	lui	a5,0x10000
    800039a4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800039a8:	0017f793          	andi	a5,a5,1
    800039ac:	0a078463          	beqz	a5,80003a54 <uartintr+0xb4>
    800039b0:	fe010113          	addi	sp,sp,-32
    800039b4:	00813823          	sd	s0,16(sp)
    800039b8:	00913423          	sd	s1,8(sp)
    800039bc:	00113c23          	sd	ra,24(sp)
    800039c0:	02010413          	addi	s0,sp,32
    800039c4:	100004b7          	lui	s1,0x10000
    800039c8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800039cc:	0ff57513          	andi	a0,a0,255
    800039d0:	fffff097          	auipc	ra,0xfffff
    800039d4:	534080e7          	jalr	1332(ra) # 80002f04 <consoleintr>
    800039d8:	0054c783          	lbu	a5,5(s1)
    800039dc:	0017f793          	andi	a5,a5,1
    800039e0:	fe0794e3          	bnez	a5,800039c8 <uartintr+0x28>
    800039e4:	00002617          	auipc	a2,0x2
    800039e8:	ed460613          	addi	a2,a2,-300 # 800058b8 <uart_tx_r>
    800039ec:	00002517          	auipc	a0,0x2
    800039f0:	ed450513          	addi	a0,a0,-300 # 800058c0 <uart_tx_w>
    800039f4:	00063783          	ld	a5,0(a2)
    800039f8:	00053703          	ld	a4,0(a0)
    800039fc:	04f70263          	beq	a4,a5,80003a40 <uartintr+0xa0>
    80003a00:	100005b7          	lui	a1,0x10000
    80003a04:	00003817          	auipc	a6,0x3
    80003a08:	13c80813          	addi	a6,a6,316 # 80006b40 <uart_tx_buf>
    80003a0c:	01c0006f          	j	80003a28 <uartintr+0x88>
    80003a10:	0006c703          	lbu	a4,0(a3)
    80003a14:	00f63023          	sd	a5,0(a2)
    80003a18:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003a1c:	00063783          	ld	a5,0(a2)
    80003a20:	00053703          	ld	a4,0(a0)
    80003a24:	00f70e63          	beq	a4,a5,80003a40 <uartintr+0xa0>
    80003a28:	01f7f713          	andi	a4,a5,31
    80003a2c:	00e806b3          	add	a3,a6,a4
    80003a30:	0055c703          	lbu	a4,5(a1)
    80003a34:	00178793          	addi	a5,a5,1
    80003a38:	02077713          	andi	a4,a4,32
    80003a3c:	fc071ae3          	bnez	a4,80003a10 <uartintr+0x70>
    80003a40:	01813083          	ld	ra,24(sp)
    80003a44:	01013403          	ld	s0,16(sp)
    80003a48:	00813483          	ld	s1,8(sp)
    80003a4c:	02010113          	addi	sp,sp,32
    80003a50:	00008067          	ret
    80003a54:	00002617          	auipc	a2,0x2
    80003a58:	e6460613          	addi	a2,a2,-412 # 800058b8 <uart_tx_r>
    80003a5c:	00002517          	auipc	a0,0x2
    80003a60:	e6450513          	addi	a0,a0,-412 # 800058c0 <uart_tx_w>
    80003a64:	00063783          	ld	a5,0(a2)
    80003a68:	00053703          	ld	a4,0(a0)
    80003a6c:	04f70263          	beq	a4,a5,80003ab0 <uartintr+0x110>
    80003a70:	100005b7          	lui	a1,0x10000
    80003a74:	00003817          	auipc	a6,0x3
    80003a78:	0cc80813          	addi	a6,a6,204 # 80006b40 <uart_tx_buf>
    80003a7c:	01c0006f          	j	80003a98 <uartintr+0xf8>
    80003a80:	0006c703          	lbu	a4,0(a3)
    80003a84:	00f63023          	sd	a5,0(a2)
    80003a88:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003a8c:	00063783          	ld	a5,0(a2)
    80003a90:	00053703          	ld	a4,0(a0)
    80003a94:	02f70063          	beq	a4,a5,80003ab4 <uartintr+0x114>
    80003a98:	01f7f713          	andi	a4,a5,31
    80003a9c:	00e806b3          	add	a3,a6,a4
    80003aa0:	0055c703          	lbu	a4,5(a1)
    80003aa4:	00178793          	addi	a5,a5,1
    80003aa8:	02077713          	andi	a4,a4,32
    80003aac:	fc071ae3          	bnez	a4,80003a80 <uartintr+0xe0>
    80003ab0:	00008067          	ret
    80003ab4:	00008067          	ret

0000000080003ab8 <kinit>:
    80003ab8:	fc010113          	addi	sp,sp,-64
    80003abc:	02913423          	sd	s1,40(sp)
    80003ac0:	fffff7b7          	lui	a5,0xfffff
    80003ac4:	00004497          	auipc	s1,0x4
    80003ac8:	0ab48493          	addi	s1,s1,171 # 80007b6f <end+0xfff>
    80003acc:	02813823          	sd	s0,48(sp)
    80003ad0:	01313c23          	sd	s3,24(sp)
    80003ad4:	00f4f4b3          	and	s1,s1,a5
    80003ad8:	02113c23          	sd	ra,56(sp)
    80003adc:	03213023          	sd	s2,32(sp)
    80003ae0:	01413823          	sd	s4,16(sp)
    80003ae4:	01513423          	sd	s5,8(sp)
    80003ae8:	04010413          	addi	s0,sp,64
    80003aec:	000017b7          	lui	a5,0x1
    80003af0:	01100993          	li	s3,17
    80003af4:	00f487b3          	add	a5,s1,a5
    80003af8:	01b99993          	slli	s3,s3,0x1b
    80003afc:	06f9e063          	bltu	s3,a5,80003b5c <kinit+0xa4>
    80003b00:	00003a97          	auipc	s5,0x3
    80003b04:	070a8a93          	addi	s5,s5,112 # 80006b70 <end>
    80003b08:	0754ec63          	bltu	s1,s5,80003b80 <kinit+0xc8>
    80003b0c:	0734fa63          	bgeu	s1,s3,80003b80 <kinit+0xc8>
    80003b10:	00088a37          	lui	s4,0x88
    80003b14:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003b18:	00002917          	auipc	s2,0x2
    80003b1c:	db090913          	addi	s2,s2,-592 # 800058c8 <kmem>
    80003b20:	00ca1a13          	slli	s4,s4,0xc
    80003b24:	0140006f          	j	80003b38 <kinit+0x80>
    80003b28:	000017b7          	lui	a5,0x1
    80003b2c:	00f484b3          	add	s1,s1,a5
    80003b30:	0554e863          	bltu	s1,s5,80003b80 <kinit+0xc8>
    80003b34:	0534f663          	bgeu	s1,s3,80003b80 <kinit+0xc8>
    80003b38:	00001637          	lui	a2,0x1
    80003b3c:	00100593          	li	a1,1
    80003b40:	00048513          	mv	a0,s1
    80003b44:	00000097          	auipc	ra,0x0
    80003b48:	5e4080e7          	jalr	1508(ra) # 80004128 <__memset>
    80003b4c:	00093783          	ld	a5,0(s2)
    80003b50:	00f4b023          	sd	a5,0(s1)
    80003b54:	00993023          	sd	s1,0(s2)
    80003b58:	fd4498e3          	bne	s1,s4,80003b28 <kinit+0x70>
    80003b5c:	03813083          	ld	ra,56(sp)
    80003b60:	03013403          	ld	s0,48(sp)
    80003b64:	02813483          	ld	s1,40(sp)
    80003b68:	02013903          	ld	s2,32(sp)
    80003b6c:	01813983          	ld	s3,24(sp)
    80003b70:	01013a03          	ld	s4,16(sp)
    80003b74:	00813a83          	ld	s5,8(sp)
    80003b78:	04010113          	addi	sp,sp,64
    80003b7c:	00008067          	ret
    80003b80:	00001517          	auipc	a0,0x1
    80003b84:	75050513          	addi	a0,a0,1872 # 800052d0 <digits+0x18>
    80003b88:	fffff097          	auipc	ra,0xfffff
    80003b8c:	4b4080e7          	jalr	1204(ra) # 8000303c <panic>

0000000080003b90 <freerange>:
    80003b90:	fc010113          	addi	sp,sp,-64
    80003b94:	000017b7          	lui	a5,0x1
    80003b98:	02913423          	sd	s1,40(sp)
    80003b9c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003ba0:	009504b3          	add	s1,a0,s1
    80003ba4:	fffff537          	lui	a0,0xfffff
    80003ba8:	02813823          	sd	s0,48(sp)
    80003bac:	02113c23          	sd	ra,56(sp)
    80003bb0:	03213023          	sd	s2,32(sp)
    80003bb4:	01313c23          	sd	s3,24(sp)
    80003bb8:	01413823          	sd	s4,16(sp)
    80003bbc:	01513423          	sd	s5,8(sp)
    80003bc0:	01613023          	sd	s6,0(sp)
    80003bc4:	04010413          	addi	s0,sp,64
    80003bc8:	00a4f4b3          	and	s1,s1,a0
    80003bcc:	00f487b3          	add	a5,s1,a5
    80003bd0:	06f5e463          	bltu	a1,a5,80003c38 <freerange+0xa8>
    80003bd4:	00003a97          	auipc	s5,0x3
    80003bd8:	f9ca8a93          	addi	s5,s5,-100 # 80006b70 <end>
    80003bdc:	0954e263          	bltu	s1,s5,80003c60 <freerange+0xd0>
    80003be0:	01100993          	li	s3,17
    80003be4:	01b99993          	slli	s3,s3,0x1b
    80003be8:	0734fc63          	bgeu	s1,s3,80003c60 <freerange+0xd0>
    80003bec:	00058a13          	mv	s4,a1
    80003bf0:	00002917          	auipc	s2,0x2
    80003bf4:	cd890913          	addi	s2,s2,-808 # 800058c8 <kmem>
    80003bf8:	00002b37          	lui	s6,0x2
    80003bfc:	0140006f          	j	80003c10 <freerange+0x80>
    80003c00:	000017b7          	lui	a5,0x1
    80003c04:	00f484b3          	add	s1,s1,a5
    80003c08:	0554ec63          	bltu	s1,s5,80003c60 <freerange+0xd0>
    80003c0c:	0534fa63          	bgeu	s1,s3,80003c60 <freerange+0xd0>
    80003c10:	00001637          	lui	a2,0x1
    80003c14:	00100593          	li	a1,1
    80003c18:	00048513          	mv	a0,s1
    80003c1c:	00000097          	auipc	ra,0x0
    80003c20:	50c080e7          	jalr	1292(ra) # 80004128 <__memset>
    80003c24:	00093703          	ld	a4,0(s2)
    80003c28:	016487b3          	add	a5,s1,s6
    80003c2c:	00e4b023          	sd	a4,0(s1)
    80003c30:	00993023          	sd	s1,0(s2)
    80003c34:	fcfa76e3          	bgeu	s4,a5,80003c00 <freerange+0x70>
    80003c38:	03813083          	ld	ra,56(sp)
    80003c3c:	03013403          	ld	s0,48(sp)
    80003c40:	02813483          	ld	s1,40(sp)
    80003c44:	02013903          	ld	s2,32(sp)
    80003c48:	01813983          	ld	s3,24(sp)
    80003c4c:	01013a03          	ld	s4,16(sp)
    80003c50:	00813a83          	ld	s5,8(sp)
    80003c54:	00013b03          	ld	s6,0(sp)
    80003c58:	04010113          	addi	sp,sp,64
    80003c5c:	00008067          	ret
    80003c60:	00001517          	auipc	a0,0x1
    80003c64:	67050513          	addi	a0,a0,1648 # 800052d0 <digits+0x18>
    80003c68:	fffff097          	auipc	ra,0xfffff
    80003c6c:	3d4080e7          	jalr	980(ra) # 8000303c <panic>

0000000080003c70 <kfree>:
    80003c70:	fe010113          	addi	sp,sp,-32
    80003c74:	00813823          	sd	s0,16(sp)
    80003c78:	00113c23          	sd	ra,24(sp)
    80003c7c:	00913423          	sd	s1,8(sp)
    80003c80:	02010413          	addi	s0,sp,32
    80003c84:	03451793          	slli	a5,a0,0x34
    80003c88:	04079c63          	bnez	a5,80003ce0 <kfree+0x70>
    80003c8c:	00003797          	auipc	a5,0x3
    80003c90:	ee478793          	addi	a5,a5,-284 # 80006b70 <end>
    80003c94:	00050493          	mv	s1,a0
    80003c98:	04f56463          	bltu	a0,a5,80003ce0 <kfree+0x70>
    80003c9c:	01100793          	li	a5,17
    80003ca0:	01b79793          	slli	a5,a5,0x1b
    80003ca4:	02f57e63          	bgeu	a0,a5,80003ce0 <kfree+0x70>
    80003ca8:	00001637          	lui	a2,0x1
    80003cac:	00100593          	li	a1,1
    80003cb0:	00000097          	auipc	ra,0x0
    80003cb4:	478080e7          	jalr	1144(ra) # 80004128 <__memset>
    80003cb8:	00002797          	auipc	a5,0x2
    80003cbc:	c1078793          	addi	a5,a5,-1008 # 800058c8 <kmem>
    80003cc0:	0007b703          	ld	a4,0(a5)
    80003cc4:	01813083          	ld	ra,24(sp)
    80003cc8:	01013403          	ld	s0,16(sp)
    80003ccc:	00e4b023          	sd	a4,0(s1)
    80003cd0:	0097b023          	sd	s1,0(a5)
    80003cd4:	00813483          	ld	s1,8(sp)
    80003cd8:	02010113          	addi	sp,sp,32
    80003cdc:	00008067          	ret
    80003ce0:	00001517          	auipc	a0,0x1
    80003ce4:	5f050513          	addi	a0,a0,1520 # 800052d0 <digits+0x18>
    80003ce8:	fffff097          	auipc	ra,0xfffff
    80003cec:	354080e7          	jalr	852(ra) # 8000303c <panic>

0000000080003cf0 <kalloc>:
    80003cf0:	fe010113          	addi	sp,sp,-32
    80003cf4:	00813823          	sd	s0,16(sp)
    80003cf8:	00913423          	sd	s1,8(sp)
    80003cfc:	00113c23          	sd	ra,24(sp)
    80003d00:	02010413          	addi	s0,sp,32
    80003d04:	00002797          	auipc	a5,0x2
    80003d08:	bc478793          	addi	a5,a5,-1084 # 800058c8 <kmem>
    80003d0c:	0007b483          	ld	s1,0(a5)
    80003d10:	02048063          	beqz	s1,80003d30 <kalloc+0x40>
    80003d14:	0004b703          	ld	a4,0(s1)
    80003d18:	00001637          	lui	a2,0x1
    80003d1c:	00500593          	li	a1,5
    80003d20:	00048513          	mv	a0,s1
    80003d24:	00e7b023          	sd	a4,0(a5)
    80003d28:	00000097          	auipc	ra,0x0
    80003d2c:	400080e7          	jalr	1024(ra) # 80004128 <__memset>
    80003d30:	01813083          	ld	ra,24(sp)
    80003d34:	01013403          	ld	s0,16(sp)
    80003d38:	00048513          	mv	a0,s1
    80003d3c:	00813483          	ld	s1,8(sp)
    80003d40:	02010113          	addi	sp,sp,32
    80003d44:	00008067          	ret

0000000080003d48 <initlock>:
    80003d48:	ff010113          	addi	sp,sp,-16
    80003d4c:	00813423          	sd	s0,8(sp)
    80003d50:	01010413          	addi	s0,sp,16
    80003d54:	00813403          	ld	s0,8(sp)
    80003d58:	00b53423          	sd	a1,8(a0)
    80003d5c:	00052023          	sw	zero,0(a0)
    80003d60:	00053823          	sd	zero,16(a0)
    80003d64:	01010113          	addi	sp,sp,16
    80003d68:	00008067          	ret

0000000080003d6c <acquire>:
    80003d6c:	fe010113          	addi	sp,sp,-32
    80003d70:	00813823          	sd	s0,16(sp)
    80003d74:	00913423          	sd	s1,8(sp)
    80003d78:	00113c23          	sd	ra,24(sp)
    80003d7c:	01213023          	sd	s2,0(sp)
    80003d80:	02010413          	addi	s0,sp,32
    80003d84:	00050493          	mv	s1,a0
    80003d88:	10002973          	csrr	s2,sstatus
    80003d8c:	100027f3          	csrr	a5,sstatus
    80003d90:	ffd7f793          	andi	a5,a5,-3
    80003d94:	10079073          	csrw	sstatus,a5
    80003d98:	fffff097          	auipc	ra,0xfffff
    80003d9c:	8e8080e7          	jalr	-1816(ra) # 80002680 <mycpu>
    80003da0:	07852783          	lw	a5,120(a0)
    80003da4:	06078e63          	beqz	a5,80003e20 <acquire+0xb4>
    80003da8:	fffff097          	auipc	ra,0xfffff
    80003dac:	8d8080e7          	jalr	-1832(ra) # 80002680 <mycpu>
    80003db0:	07852783          	lw	a5,120(a0)
    80003db4:	0004a703          	lw	a4,0(s1)
    80003db8:	0017879b          	addiw	a5,a5,1
    80003dbc:	06f52c23          	sw	a5,120(a0)
    80003dc0:	04071063          	bnez	a4,80003e00 <acquire+0x94>
    80003dc4:	00100713          	li	a4,1
    80003dc8:	00070793          	mv	a5,a4
    80003dcc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003dd0:	0007879b          	sext.w	a5,a5
    80003dd4:	fe079ae3          	bnez	a5,80003dc8 <acquire+0x5c>
    80003dd8:	0ff0000f          	fence
    80003ddc:	fffff097          	auipc	ra,0xfffff
    80003de0:	8a4080e7          	jalr	-1884(ra) # 80002680 <mycpu>
    80003de4:	01813083          	ld	ra,24(sp)
    80003de8:	01013403          	ld	s0,16(sp)
    80003dec:	00a4b823          	sd	a0,16(s1)
    80003df0:	00013903          	ld	s2,0(sp)
    80003df4:	00813483          	ld	s1,8(sp)
    80003df8:	02010113          	addi	sp,sp,32
    80003dfc:	00008067          	ret
    80003e00:	0104b903          	ld	s2,16(s1)
    80003e04:	fffff097          	auipc	ra,0xfffff
    80003e08:	87c080e7          	jalr	-1924(ra) # 80002680 <mycpu>
    80003e0c:	faa91ce3          	bne	s2,a0,80003dc4 <acquire+0x58>
    80003e10:	00001517          	auipc	a0,0x1
    80003e14:	4c850513          	addi	a0,a0,1224 # 800052d8 <digits+0x20>
    80003e18:	fffff097          	auipc	ra,0xfffff
    80003e1c:	224080e7          	jalr	548(ra) # 8000303c <panic>
    80003e20:	00195913          	srli	s2,s2,0x1
    80003e24:	fffff097          	auipc	ra,0xfffff
    80003e28:	85c080e7          	jalr	-1956(ra) # 80002680 <mycpu>
    80003e2c:	00197913          	andi	s2,s2,1
    80003e30:	07252e23          	sw	s2,124(a0)
    80003e34:	f75ff06f          	j	80003da8 <acquire+0x3c>

0000000080003e38 <release>:
    80003e38:	fe010113          	addi	sp,sp,-32
    80003e3c:	00813823          	sd	s0,16(sp)
    80003e40:	00113c23          	sd	ra,24(sp)
    80003e44:	00913423          	sd	s1,8(sp)
    80003e48:	01213023          	sd	s2,0(sp)
    80003e4c:	02010413          	addi	s0,sp,32
    80003e50:	00052783          	lw	a5,0(a0)
    80003e54:	00079a63          	bnez	a5,80003e68 <release+0x30>
    80003e58:	00001517          	auipc	a0,0x1
    80003e5c:	48850513          	addi	a0,a0,1160 # 800052e0 <digits+0x28>
    80003e60:	fffff097          	auipc	ra,0xfffff
    80003e64:	1dc080e7          	jalr	476(ra) # 8000303c <panic>
    80003e68:	01053903          	ld	s2,16(a0)
    80003e6c:	00050493          	mv	s1,a0
    80003e70:	fffff097          	auipc	ra,0xfffff
    80003e74:	810080e7          	jalr	-2032(ra) # 80002680 <mycpu>
    80003e78:	fea910e3          	bne	s2,a0,80003e58 <release+0x20>
    80003e7c:	0004b823          	sd	zero,16(s1)
    80003e80:	0ff0000f          	fence
    80003e84:	0f50000f          	fence	iorw,ow
    80003e88:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003e8c:	ffffe097          	auipc	ra,0xffffe
    80003e90:	7f4080e7          	jalr	2036(ra) # 80002680 <mycpu>
    80003e94:	100027f3          	csrr	a5,sstatus
    80003e98:	0027f793          	andi	a5,a5,2
    80003e9c:	04079a63          	bnez	a5,80003ef0 <release+0xb8>
    80003ea0:	07852783          	lw	a5,120(a0)
    80003ea4:	02f05e63          	blez	a5,80003ee0 <release+0xa8>
    80003ea8:	fff7871b          	addiw	a4,a5,-1
    80003eac:	06e52c23          	sw	a4,120(a0)
    80003eb0:	00071c63          	bnez	a4,80003ec8 <release+0x90>
    80003eb4:	07c52783          	lw	a5,124(a0)
    80003eb8:	00078863          	beqz	a5,80003ec8 <release+0x90>
    80003ebc:	100027f3          	csrr	a5,sstatus
    80003ec0:	0027e793          	ori	a5,a5,2
    80003ec4:	10079073          	csrw	sstatus,a5
    80003ec8:	01813083          	ld	ra,24(sp)
    80003ecc:	01013403          	ld	s0,16(sp)
    80003ed0:	00813483          	ld	s1,8(sp)
    80003ed4:	00013903          	ld	s2,0(sp)
    80003ed8:	02010113          	addi	sp,sp,32
    80003edc:	00008067          	ret
    80003ee0:	00001517          	auipc	a0,0x1
    80003ee4:	42050513          	addi	a0,a0,1056 # 80005300 <digits+0x48>
    80003ee8:	fffff097          	auipc	ra,0xfffff
    80003eec:	154080e7          	jalr	340(ra) # 8000303c <panic>
    80003ef0:	00001517          	auipc	a0,0x1
    80003ef4:	3f850513          	addi	a0,a0,1016 # 800052e8 <digits+0x30>
    80003ef8:	fffff097          	auipc	ra,0xfffff
    80003efc:	144080e7          	jalr	324(ra) # 8000303c <panic>

0000000080003f00 <holding>:
    80003f00:	00052783          	lw	a5,0(a0)
    80003f04:	00079663          	bnez	a5,80003f10 <holding+0x10>
    80003f08:	00000513          	li	a0,0
    80003f0c:	00008067          	ret
    80003f10:	fe010113          	addi	sp,sp,-32
    80003f14:	00813823          	sd	s0,16(sp)
    80003f18:	00913423          	sd	s1,8(sp)
    80003f1c:	00113c23          	sd	ra,24(sp)
    80003f20:	02010413          	addi	s0,sp,32
    80003f24:	01053483          	ld	s1,16(a0)
    80003f28:	ffffe097          	auipc	ra,0xffffe
    80003f2c:	758080e7          	jalr	1880(ra) # 80002680 <mycpu>
    80003f30:	01813083          	ld	ra,24(sp)
    80003f34:	01013403          	ld	s0,16(sp)
    80003f38:	40a48533          	sub	a0,s1,a0
    80003f3c:	00153513          	seqz	a0,a0
    80003f40:	00813483          	ld	s1,8(sp)
    80003f44:	02010113          	addi	sp,sp,32
    80003f48:	00008067          	ret

0000000080003f4c <push_off>:
    80003f4c:	fe010113          	addi	sp,sp,-32
    80003f50:	00813823          	sd	s0,16(sp)
    80003f54:	00113c23          	sd	ra,24(sp)
    80003f58:	00913423          	sd	s1,8(sp)
    80003f5c:	02010413          	addi	s0,sp,32
    80003f60:	100024f3          	csrr	s1,sstatus
    80003f64:	100027f3          	csrr	a5,sstatus
    80003f68:	ffd7f793          	andi	a5,a5,-3
    80003f6c:	10079073          	csrw	sstatus,a5
    80003f70:	ffffe097          	auipc	ra,0xffffe
    80003f74:	710080e7          	jalr	1808(ra) # 80002680 <mycpu>
    80003f78:	07852783          	lw	a5,120(a0)
    80003f7c:	02078663          	beqz	a5,80003fa8 <push_off+0x5c>
    80003f80:	ffffe097          	auipc	ra,0xffffe
    80003f84:	700080e7          	jalr	1792(ra) # 80002680 <mycpu>
    80003f88:	07852783          	lw	a5,120(a0)
    80003f8c:	01813083          	ld	ra,24(sp)
    80003f90:	01013403          	ld	s0,16(sp)
    80003f94:	0017879b          	addiw	a5,a5,1
    80003f98:	06f52c23          	sw	a5,120(a0)
    80003f9c:	00813483          	ld	s1,8(sp)
    80003fa0:	02010113          	addi	sp,sp,32
    80003fa4:	00008067          	ret
    80003fa8:	0014d493          	srli	s1,s1,0x1
    80003fac:	ffffe097          	auipc	ra,0xffffe
    80003fb0:	6d4080e7          	jalr	1748(ra) # 80002680 <mycpu>
    80003fb4:	0014f493          	andi	s1,s1,1
    80003fb8:	06952e23          	sw	s1,124(a0)
    80003fbc:	fc5ff06f          	j	80003f80 <push_off+0x34>

0000000080003fc0 <pop_off>:
    80003fc0:	ff010113          	addi	sp,sp,-16
    80003fc4:	00813023          	sd	s0,0(sp)
    80003fc8:	00113423          	sd	ra,8(sp)
    80003fcc:	01010413          	addi	s0,sp,16
    80003fd0:	ffffe097          	auipc	ra,0xffffe
    80003fd4:	6b0080e7          	jalr	1712(ra) # 80002680 <mycpu>
    80003fd8:	100027f3          	csrr	a5,sstatus
    80003fdc:	0027f793          	andi	a5,a5,2
    80003fe0:	04079663          	bnez	a5,8000402c <pop_off+0x6c>
    80003fe4:	07852783          	lw	a5,120(a0)
    80003fe8:	02f05a63          	blez	a5,8000401c <pop_off+0x5c>
    80003fec:	fff7871b          	addiw	a4,a5,-1
    80003ff0:	06e52c23          	sw	a4,120(a0)
    80003ff4:	00071c63          	bnez	a4,8000400c <pop_off+0x4c>
    80003ff8:	07c52783          	lw	a5,124(a0)
    80003ffc:	00078863          	beqz	a5,8000400c <pop_off+0x4c>
    80004000:	100027f3          	csrr	a5,sstatus
    80004004:	0027e793          	ori	a5,a5,2
    80004008:	10079073          	csrw	sstatus,a5
    8000400c:	00813083          	ld	ra,8(sp)
    80004010:	00013403          	ld	s0,0(sp)
    80004014:	01010113          	addi	sp,sp,16
    80004018:	00008067          	ret
    8000401c:	00001517          	auipc	a0,0x1
    80004020:	2e450513          	addi	a0,a0,740 # 80005300 <digits+0x48>
    80004024:	fffff097          	auipc	ra,0xfffff
    80004028:	018080e7          	jalr	24(ra) # 8000303c <panic>
    8000402c:	00001517          	auipc	a0,0x1
    80004030:	2bc50513          	addi	a0,a0,700 # 800052e8 <digits+0x30>
    80004034:	fffff097          	auipc	ra,0xfffff
    80004038:	008080e7          	jalr	8(ra) # 8000303c <panic>

000000008000403c <push_on>:
    8000403c:	fe010113          	addi	sp,sp,-32
    80004040:	00813823          	sd	s0,16(sp)
    80004044:	00113c23          	sd	ra,24(sp)
    80004048:	00913423          	sd	s1,8(sp)
    8000404c:	02010413          	addi	s0,sp,32
    80004050:	100024f3          	csrr	s1,sstatus
    80004054:	100027f3          	csrr	a5,sstatus
    80004058:	0027e793          	ori	a5,a5,2
    8000405c:	10079073          	csrw	sstatus,a5
    80004060:	ffffe097          	auipc	ra,0xffffe
    80004064:	620080e7          	jalr	1568(ra) # 80002680 <mycpu>
    80004068:	07852783          	lw	a5,120(a0)
    8000406c:	02078663          	beqz	a5,80004098 <push_on+0x5c>
    80004070:	ffffe097          	auipc	ra,0xffffe
    80004074:	610080e7          	jalr	1552(ra) # 80002680 <mycpu>
    80004078:	07852783          	lw	a5,120(a0)
    8000407c:	01813083          	ld	ra,24(sp)
    80004080:	01013403          	ld	s0,16(sp)
    80004084:	0017879b          	addiw	a5,a5,1
    80004088:	06f52c23          	sw	a5,120(a0)
    8000408c:	00813483          	ld	s1,8(sp)
    80004090:	02010113          	addi	sp,sp,32
    80004094:	00008067          	ret
    80004098:	0014d493          	srli	s1,s1,0x1
    8000409c:	ffffe097          	auipc	ra,0xffffe
    800040a0:	5e4080e7          	jalr	1508(ra) # 80002680 <mycpu>
    800040a4:	0014f493          	andi	s1,s1,1
    800040a8:	06952e23          	sw	s1,124(a0)
    800040ac:	fc5ff06f          	j	80004070 <push_on+0x34>

00000000800040b0 <pop_on>:
    800040b0:	ff010113          	addi	sp,sp,-16
    800040b4:	00813023          	sd	s0,0(sp)
    800040b8:	00113423          	sd	ra,8(sp)
    800040bc:	01010413          	addi	s0,sp,16
    800040c0:	ffffe097          	auipc	ra,0xffffe
    800040c4:	5c0080e7          	jalr	1472(ra) # 80002680 <mycpu>
    800040c8:	100027f3          	csrr	a5,sstatus
    800040cc:	0027f793          	andi	a5,a5,2
    800040d0:	04078463          	beqz	a5,80004118 <pop_on+0x68>
    800040d4:	07852783          	lw	a5,120(a0)
    800040d8:	02f05863          	blez	a5,80004108 <pop_on+0x58>
    800040dc:	fff7879b          	addiw	a5,a5,-1
    800040e0:	06f52c23          	sw	a5,120(a0)
    800040e4:	07853783          	ld	a5,120(a0)
    800040e8:	00079863          	bnez	a5,800040f8 <pop_on+0x48>
    800040ec:	100027f3          	csrr	a5,sstatus
    800040f0:	ffd7f793          	andi	a5,a5,-3
    800040f4:	10079073          	csrw	sstatus,a5
    800040f8:	00813083          	ld	ra,8(sp)
    800040fc:	00013403          	ld	s0,0(sp)
    80004100:	01010113          	addi	sp,sp,16
    80004104:	00008067          	ret
    80004108:	00001517          	auipc	a0,0x1
    8000410c:	22050513          	addi	a0,a0,544 # 80005328 <digits+0x70>
    80004110:	fffff097          	auipc	ra,0xfffff
    80004114:	f2c080e7          	jalr	-212(ra) # 8000303c <panic>
    80004118:	00001517          	auipc	a0,0x1
    8000411c:	1f050513          	addi	a0,a0,496 # 80005308 <digits+0x50>
    80004120:	fffff097          	auipc	ra,0xfffff
    80004124:	f1c080e7          	jalr	-228(ra) # 8000303c <panic>

0000000080004128 <__memset>:
    80004128:	ff010113          	addi	sp,sp,-16
    8000412c:	00813423          	sd	s0,8(sp)
    80004130:	01010413          	addi	s0,sp,16
    80004134:	1a060e63          	beqz	a2,800042f0 <__memset+0x1c8>
    80004138:	40a007b3          	neg	a5,a0
    8000413c:	0077f793          	andi	a5,a5,7
    80004140:	00778693          	addi	a3,a5,7
    80004144:	00b00813          	li	a6,11
    80004148:	0ff5f593          	andi	a1,a1,255
    8000414c:	fff6071b          	addiw	a4,a2,-1
    80004150:	1b06e663          	bltu	a3,a6,800042fc <__memset+0x1d4>
    80004154:	1cd76463          	bltu	a4,a3,8000431c <__memset+0x1f4>
    80004158:	1a078e63          	beqz	a5,80004314 <__memset+0x1ec>
    8000415c:	00b50023          	sb	a1,0(a0)
    80004160:	00100713          	li	a4,1
    80004164:	1ae78463          	beq	a5,a4,8000430c <__memset+0x1e4>
    80004168:	00b500a3          	sb	a1,1(a0)
    8000416c:	00200713          	li	a4,2
    80004170:	1ae78a63          	beq	a5,a4,80004324 <__memset+0x1fc>
    80004174:	00b50123          	sb	a1,2(a0)
    80004178:	00300713          	li	a4,3
    8000417c:	18e78463          	beq	a5,a4,80004304 <__memset+0x1dc>
    80004180:	00b501a3          	sb	a1,3(a0)
    80004184:	00400713          	li	a4,4
    80004188:	1ae78263          	beq	a5,a4,8000432c <__memset+0x204>
    8000418c:	00b50223          	sb	a1,4(a0)
    80004190:	00500713          	li	a4,5
    80004194:	1ae78063          	beq	a5,a4,80004334 <__memset+0x20c>
    80004198:	00b502a3          	sb	a1,5(a0)
    8000419c:	00700713          	li	a4,7
    800041a0:	18e79e63          	bne	a5,a4,8000433c <__memset+0x214>
    800041a4:	00b50323          	sb	a1,6(a0)
    800041a8:	00700e93          	li	t4,7
    800041ac:	00859713          	slli	a4,a1,0x8
    800041b0:	00e5e733          	or	a4,a1,a4
    800041b4:	01059e13          	slli	t3,a1,0x10
    800041b8:	01c76e33          	or	t3,a4,t3
    800041bc:	01859313          	slli	t1,a1,0x18
    800041c0:	006e6333          	or	t1,t3,t1
    800041c4:	02059893          	slli	a7,a1,0x20
    800041c8:	40f60e3b          	subw	t3,a2,a5
    800041cc:	011368b3          	or	a7,t1,a7
    800041d0:	02859813          	slli	a6,a1,0x28
    800041d4:	0108e833          	or	a6,a7,a6
    800041d8:	03059693          	slli	a3,a1,0x30
    800041dc:	003e589b          	srliw	a7,t3,0x3
    800041e0:	00d866b3          	or	a3,a6,a3
    800041e4:	03859713          	slli	a4,a1,0x38
    800041e8:	00389813          	slli	a6,a7,0x3
    800041ec:	00f507b3          	add	a5,a0,a5
    800041f0:	00e6e733          	or	a4,a3,a4
    800041f4:	000e089b          	sext.w	a7,t3
    800041f8:	00f806b3          	add	a3,a6,a5
    800041fc:	00e7b023          	sd	a4,0(a5)
    80004200:	00878793          	addi	a5,a5,8
    80004204:	fed79ce3          	bne	a5,a3,800041fc <__memset+0xd4>
    80004208:	ff8e7793          	andi	a5,t3,-8
    8000420c:	0007871b          	sext.w	a4,a5
    80004210:	01d787bb          	addw	a5,a5,t4
    80004214:	0ce88e63          	beq	a7,a4,800042f0 <__memset+0x1c8>
    80004218:	00f50733          	add	a4,a0,a5
    8000421c:	00b70023          	sb	a1,0(a4)
    80004220:	0017871b          	addiw	a4,a5,1
    80004224:	0cc77663          	bgeu	a4,a2,800042f0 <__memset+0x1c8>
    80004228:	00e50733          	add	a4,a0,a4
    8000422c:	00b70023          	sb	a1,0(a4)
    80004230:	0027871b          	addiw	a4,a5,2
    80004234:	0ac77e63          	bgeu	a4,a2,800042f0 <__memset+0x1c8>
    80004238:	00e50733          	add	a4,a0,a4
    8000423c:	00b70023          	sb	a1,0(a4)
    80004240:	0037871b          	addiw	a4,a5,3
    80004244:	0ac77663          	bgeu	a4,a2,800042f0 <__memset+0x1c8>
    80004248:	00e50733          	add	a4,a0,a4
    8000424c:	00b70023          	sb	a1,0(a4)
    80004250:	0047871b          	addiw	a4,a5,4
    80004254:	08c77e63          	bgeu	a4,a2,800042f0 <__memset+0x1c8>
    80004258:	00e50733          	add	a4,a0,a4
    8000425c:	00b70023          	sb	a1,0(a4)
    80004260:	0057871b          	addiw	a4,a5,5
    80004264:	08c77663          	bgeu	a4,a2,800042f0 <__memset+0x1c8>
    80004268:	00e50733          	add	a4,a0,a4
    8000426c:	00b70023          	sb	a1,0(a4)
    80004270:	0067871b          	addiw	a4,a5,6
    80004274:	06c77e63          	bgeu	a4,a2,800042f0 <__memset+0x1c8>
    80004278:	00e50733          	add	a4,a0,a4
    8000427c:	00b70023          	sb	a1,0(a4)
    80004280:	0077871b          	addiw	a4,a5,7
    80004284:	06c77663          	bgeu	a4,a2,800042f0 <__memset+0x1c8>
    80004288:	00e50733          	add	a4,a0,a4
    8000428c:	00b70023          	sb	a1,0(a4)
    80004290:	0087871b          	addiw	a4,a5,8
    80004294:	04c77e63          	bgeu	a4,a2,800042f0 <__memset+0x1c8>
    80004298:	00e50733          	add	a4,a0,a4
    8000429c:	00b70023          	sb	a1,0(a4)
    800042a0:	0097871b          	addiw	a4,a5,9
    800042a4:	04c77663          	bgeu	a4,a2,800042f0 <__memset+0x1c8>
    800042a8:	00e50733          	add	a4,a0,a4
    800042ac:	00b70023          	sb	a1,0(a4)
    800042b0:	00a7871b          	addiw	a4,a5,10
    800042b4:	02c77e63          	bgeu	a4,a2,800042f0 <__memset+0x1c8>
    800042b8:	00e50733          	add	a4,a0,a4
    800042bc:	00b70023          	sb	a1,0(a4)
    800042c0:	00b7871b          	addiw	a4,a5,11
    800042c4:	02c77663          	bgeu	a4,a2,800042f0 <__memset+0x1c8>
    800042c8:	00e50733          	add	a4,a0,a4
    800042cc:	00b70023          	sb	a1,0(a4)
    800042d0:	00c7871b          	addiw	a4,a5,12
    800042d4:	00c77e63          	bgeu	a4,a2,800042f0 <__memset+0x1c8>
    800042d8:	00e50733          	add	a4,a0,a4
    800042dc:	00b70023          	sb	a1,0(a4)
    800042e0:	00d7879b          	addiw	a5,a5,13
    800042e4:	00c7f663          	bgeu	a5,a2,800042f0 <__memset+0x1c8>
    800042e8:	00f507b3          	add	a5,a0,a5
    800042ec:	00b78023          	sb	a1,0(a5)
    800042f0:	00813403          	ld	s0,8(sp)
    800042f4:	01010113          	addi	sp,sp,16
    800042f8:	00008067          	ret
    800042fc:	00b00693          	li	a3,11
    80004300:	e55ff06f          	j	80004154 <__memset+0x2c>
    80004304:	00300e93          	li	t4,3
    80004308:	ea5ff06f          	j	800041ac <__memset+0x84>
    8000430c:	00100e93          	li	t4,1
    80004310:	e9dff06f          	j	800041ac <__memset+0x84>
    80004314:	00000e93          	li	t4,0
    80004318:	e95ff06f          	j	800041ac <__memset+0x84>
    8000431c:	00000793          	li	a5,0
    80004320:	ef9ff06f          	j	80004218 <__memset+0xf0>
    80004324:	00200e93          	li	t4,2
    80004328:	e85ff06f          	j	800041ac <__memset+0x84>
    8000432c:	00400e93          	li	t4,4
    80004330:	e7dff06f          	j	800041ac <__memset+0x84>
    80004334:	00500e93          	li	t4,5
    80004338:	e75ff06f          	j	800041ac <__memset+0x84>
    8000433c:	00600e93          	li	t4,6
    80004340:	e6dff06f          	j	800041ac <__memset+0x84>

0000000080004344 <__memmove>:
    80004344:	ff010113          	addi	sp,sp,-16
    80004348:	00813423          	sd	s0,8(sp)
    8000434c:	01010413          	addi	s0,sp,16
    80004350:	0e060863          	beqz	a2,80004440 <__memmove+0xfc>
    80004354:	fff6069b          	addiw	a3,a2,-1
    80004358:	0006881b          	sext.w	a6,a3
    8000435c:	0ea5e863          	bltu	a1,a0,8000444c <__memmove+0x108>
    80004360:	00758713          	addi	a4,a1,7
    80004364:	00a5e7b3          	or	a5,a1,a0
    80004368:	40a70733          	sub	a4,a4,a0
    8000436c:	0077f793          	andi	a5,a5,7
    80004370:	00f73713          	sltiu	a4,a4,15
    80004374:	00174713          	xori	a4,a4,1
    80004378:	0017b793          	seqz	a5,a5
    8000437c:	00e7f7b3          	and	a5,a5,a4
    80004380:	10078863          	beqz	a5,80004490 <__memmove+0x14c>
    80004384:	00900793          	li	a5,9
    80004388:	1107f463          	bgeu	a5,a6,80004490 <__memmove+0x14c>
    8000438c:	0036581b          	srliw	a6,a2,0x3
    80004390:	fff8081b          	addiw	a6,a6,-1
    80004394:	02081813          	slli	a6,a6,0x20
    80004398:	01d85893          	srli	a7,a6,0x1d
    8000439c:	00858813          	addi	a6,a1,8
    800043a0:	00058793          	mv	a5,a1
    800043a4:	00050713          	mv	a4,a0
    800043a8:	01088833          	add	a6,a7,a6
    800043ac:	0007b883          	ld	a7,0(a5)
    800043b0:	00878793          	addi	a5,a5,8
    800043b4:	00870713          	addi	a4,a4,8
    800043b8:	ff173c23          	sd	a7,-8(a4)
    800043bc:	ff0798e3          	bne	a5,a6,800043ac <__memmove+0x68>
    800043c0:	ff867713          	andi	a4,a2,-8
    800043c4:	02071793          	slli	a5,a4,0x20
    800043c8:	0207d793          	srli	a5,a5,0x20
    800043cc:	00f585b3          	add	a1,a1,a5
    800043d0:	40e686bb          	subw	a3,a3,a4
    800043d4:	00f507b3          	add	a5,a0,a5
    800043d8:	06e60463          	beq	a2,a4,80004440 <__memmove+0xfc>
    800043dc:	0005c703          	lbu	a4,0(a1)
    800043e0:	00e78023          	sb	a4,0(a5)
    800043e4:	04068e63          	beqz	a3,80004440 <__memmove+0xfc>
    800043e8:	0015c603          	lbu	a2,1(a1)
    800043ec:	00100713          	li	a4,1
    800043f0:	00c780a3          	sb	a2,1(a5)
    800043f4:	04e68663          	beq	a3,a4,80004440 <__memmove+0xfc>
    800043f8:	0025c603          	lbu	a2,2(a1)
    800043fc:	00200713          	li	a4,2
    80004400:	00c78123          	sb	a2,2(a5)
    80004404:	02e68e63          	beq	a3,a4,80004440 <__memmove+0xfc>
    80004408:	0035c603          	lbu	a2,3(a1)
    8000440c:	00300713          	li	a4,3
    80004410:	00c781a3          	sb	a2,3(a5)
    80004414:	02e68663          	beq	a3,a4,80004440 <__memmove+0xfc>
    80004418:	0045c603          	lbu	a2,4(a1)
    8000441c:	00400713          	li	a4,4
    80004420:	00c78223          	sb	a2,4(a5)
    80004424:	00e68e63          	beq	a3,a4,80004440 <__memmove+0xfc>
    80004428:	0055c603          	lbu	a2,5(a1)
    8000442c:	00500713          	li	a4,5
    80004430:	00c782a3          	sb	a2,5(a5)
    80004434:	00e68663          	beq	a3,a4,80004440 <__memmove+0xfc>
    80004438:	0065c703          	lbu	a4,6(a1)
    8000443c:	00e78323          	sb	a4,6(a5)
    80004440:	00813403          	ld	s0,8(sp)
    80004444:	01010113          	addi	sp,sp,16
    80004448:	00008067          	ret
    8000444c:	02061713          	slli	a4,a2,0x20
    80004450:	02075713          	srli	a4,a4,0x20
    80004454:	00e587b3          	add	a5,a1,a4
    80004458:	f0f574e3          	bgeu	a0,a5,80004360 <__memmove+0x1c>
    8000445c:	02069613          	slli	a2,a3,0x20
    80004460:	02065613          	srli	a2,a2,0x20
    80004464:	fff64613          	not	a2,a2
    80004468:	00e50733          	add	a4,a0,a4
    8000446c:	00c78633          	add	a2,a5,a2
    80004470:	fff7c683          	lbu	a3,-1(a5)
    80004474:	fff78793          	addi	a5,a5,-1
    80004478:	fff70713          	addi	a4,a4,-1
    8000447c:	00d70023          	sb	a3,0(a4)
    80004480:	fec798e3          	bne	a5,a2,80004470 <__memmove+0x12c>
    80004484:	00813403          	ld	s0,8(sp)
    80004488:	01010113          	addi	sp,sp,16
    8000448c:	00008067          	ret
    80004490:	02069713          	slli	a4,a3,0x20
    80004494:	02075713          	srli	a4,a4,0x20
    80004498:	00170713          	addi	a4,a4,1
    8000449c:	00e50733          	add	a4,a0,a4
    800044a0:	00050793          	mv	a5,a0
    800044a4:	0005c683          	lbu	a3,0(a1)
    800044a8:	00178793          	addi	a5,a5,1
    800044ac:	00158593          	addi	a1,a1,1
    800044b0:	fed78fa3          	sb	a3,-1(a5)
    800044b4:	fee798e3          	bne	a5,a4,800044a4 <__memmove+0x160>
    800044b8:	f89ff06f          	j	80004440 <__memmove+0xfc>

00000000800044bc <__mem_free>:
    800044bc:	ff010113          	addi	sp,sp,-16
    800044c0:	00813423          	sd	s0,8(sp)
    800044c4:	01010413          	addi	s0,sp,16
    800044c8:	00001597          	auipc	a1,0x1
    800044cc:	40858593          	addi	a1,a1,1032 # 800058d0 <freep>
    800044d0:	0005b783          	ld	a5,0(a1)
    800044d4:	ff050693          	addi	a3,a0,-16
    800044d8:	0007b703          	ld	a4,0(a5)
    800044dc:	00d7fc63          	bgeu	a5,a3,800044f4 <__mem_free+0x38>
    800044e0:	00e6ee63          	bltu	a3,a4,800044fc <__mem_free+0x40>
    800044e4:	00e7fc63          	bgeu	a5,a4,800044fc <__mem_free+0x40>
    800044e8:	00070793          	mv	a5,a4
    800044ec:	0007b703          	ld	a4,0(a5)
    800044f0:	fed7e8e3          	bltu	a5,a3,800044e0 <__mem_free+0x24>
    800044f4:	fee7eae3          	bltu	a5,a4,800044e8 <__mem_free+0x2c>
    800044f8:	fee6f8e3          	bgeu	a3,a4,800044e8 <__mem_free+0x2c>
    800044fc:	ff852803          	lw	a6,-8(a0)
    80004500:	02081613          	slli	a2,a6,0x20
    80004504:	01c65613          	srli	a2,a2,0x1c
    80004508:	00c68633          	add	a2,a3,a2
    8000450c:	02c70a63          	beq	a4,a2,80004540 <__mem_free+0x84>
    80004510:	fee53823          	sd	a4,-16(a0)
    80004514:	0087a503          	lw	a0,8(a5)
    80004518:	02051613          	slli	a2,a0,0x20
    8000451c:	01c65613          	srli	a2,a2,0x1c
    80004520:	00c78633          	add	a2,a5,a2
    80004524:	04c68263          	beq	a3,a2,80004568 <__mem_free+0xac>
    80004528:	00813403          	ld	s0,8(sp)
    8000452c:	00d7b023          	sd	a3,0(a5)
    80004530:	00f5b023          	sd	a5,0(a1)
    80004534:	00000513          	li	a0,0
    80004538:	01010113          	addi	sp,sp,16
    8000453c:	00008067          	ret
    80004540:	00872603          	lw	a2,8(a4)
    80004544:	00073703          	ld	a4,0(a4)
    80004548:	0106083b          	addw	a6,a2,a6
    8000454c:	ff052c23          	sw	a6,-8(a0)
    80004550:	fee53823          	sd	a4,-16(a0)
    80004554:	0087a503          	lw	a0,8(a5)
    80004558:	02051613          	slli	a2,a0,0x20
    8000455c:	01c65613          	srli	a2,a2,0x1c
    80004560:	00c78633          	add	a2,a5,a2
    80004564:	fcc692e3          	bne	a3,a2,80004528 <__mem_free+0x6c>
    80004568:	00813403          	ld	s0,8(sp)
    8000456c:	0105053b          	addw	a0,a0,a6
    80004570:	00a7a423          	sw	a0,8(a5)
    80004574:	00e7b023          	sd	a4,0(a5)
    80004578:	00f5b023          	sd	a5,0(a1)
    8000457c:	00000513          	li	a0,0
    80004580:	01010113          	addi	sp,sp,16
    80004584:	00008067          	ret

0000000080004588 <__mem_alloc>:
    80004588:	fc010113          	addi	sp,sp,-64
    8000458c:	02813823          	sd	s0,48(sp)
    80004590:	02913423          	sd	s1,40(sp)
    80004594:	03213023          	sd	s2,32(sp)
    80004598:	01513423          	sd	s5,8(sp)
    8000459c:	02113c23          	sd	ra,56(sp)
    800045a0:	01313c23          	sd	s3,24(sp)
    800045a4:	01413823          	sd	s4,16(sp)
    800045a8:	01613023          	sd	s6,0(sp)
    800045ac:	04010413          	addi	s0,sp,64
    800045b0:	00001a97          	auipc	s5,0x1
    800045b4:	320a8a93          	addi	s5,s5,800 # 800058d0 <freep>
    800045b8:	00f50913          	addi	s2,a0,15
    800045bc:	000ab683          	ld	a3,0(s5)
    800045c0:	00495913          	srli	s2,s2,0x4
    800045c4:	0019049b          	addiw	s1,s2,1
    800045c8:	00048913          	mv	s2,s1
    800045cc:	0c068c63          	beqz	a3,800046a4 <__mem_alloc+0x11c>
    800045d0:	0006b503          	ld	a0,0(a3)
    800045d4:	00852703          	lw	a4,8(a0)
    800045d8:	10977063          	bgeu	a4,s1,800046d8 <__mem_alloc+0x150>
    800045dc:	000017b7          	lui	a5,0x1
    800045e0:	0009099b          	sext.w	s3,s2
    800045e4:	0af4e863          	bltu	s1,a5,80004694 <__mem_alloc+0x10c>
    800045e8:	02099a13          	slli	s4,s3,0x20
    800045ec:	01ca5a13          	srli	s4,s4,0x1c
    800045f0:	fff00b13          	li	s6,-1
    800045f4:	0100006f          	j	80004604 <__mem_alloc+0x7c>
    800045f8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    800045fc:	00852703          	lw	a4,8(a0)
    80004600:	04977463          	bgeu	a4,s1,80004648 <__mem_alloc+0xc0>
    80004604:	00050793          	mv	a5,a0
    80004608:	fea698e3          	bne	a3,a0,800045f8 <__mem_alloc+0x70>
    8000460c:	000a0513          	mv	a0,s4
    80004610:	00000097          	auipc	ra,0x0
    80004614:	1f0080e7          	jalr	496(ra) # 80004800 <kvmincrease>
    80004618:	00050793          	mv	a5,a0
    8000461c:	01050513          	addi	a0,a0,16
    80004620:	07678e63          	beq	a5,s6,8000469c <__mem_alloc+0x114>
    80004624:	0137a423          	sw	s3,8(a5)
    80004628:	00000097          	auipc	ra,0x0
    8000462c:	e94080e7          	jalr	-364(ra) # 800044bc <__mem_free>
    80004630:	000ab783          	ld	a5,0(s5)
    80004634:	06078463          	beqz	a5,8000469c <__mem_alloc+0x114>
    80004638:	0007b503          	ld	a0,0(a5)
    8000463c:	00078693          	mv	a3,a5
    80004640:	00852703          	lw	a4,8(a0)
    80004644:	fc9760e3          	bltu	a4,s1,80004604 <__mem_alloc+0x7c>
    80004648:	08e48263          	beq	s1,a4,800046cc <__mem_alloc+0x144>
    8000464c:	4127073b          	subw	a4,a4,s2
    80004650:	02071693          	slli	a3,a4,0x20
    80004654:	01c6d693          	srli	a3,a3,0x1c
    80004658:	00e52423          	sw	a4,8(a0)
    8000465c:	00d50533          	add	a0,a0,a3
    80004660:	01252423          	sw	s2,8(a0)
    80004664:	00fab023          	sd	a5,0(s5)
    80004668:	01050513          	addi	a0,a0,16
    8000466c:	03813083          	ld	ra,56(sp)
    80004670:	03013403          	ld	s0,48(sp)
    80004674:	02813483          	ld	s1,40(sp)
    80004678:	02013903          	ld	s2,32(sp)
    8000467c:	01813983          	ld	s3,24(sp)
    80004680:	01013a03          	ld	s4,16(sp)
    80004684:	00813a83          	ld	s5,8(sp)
    80004688:	00013b03          	ld	s6,0(sp)
    8000468c:	04010113          	addi	sp,sp,64
    80004690:	00008067          	ret
    80004694:	000019b7          	lui	s3,0x1
    80004698:	f51ff06f          	j	800045e8 <__mem_alloc+0x60>
    8000469c:	00000513          	li	a0,0
    800046a0:	fcdff06f          	j	8000466c <__mem_alloc+0xe4>
    800046a4:	00002797          	auipc	a5,0x2
    800046a8:	4bc78793          	addi	a5,a5,1212 # 80006b60 <base>
    800046ac:	00078513          	mv	a0,a5
    800046b0:	00fab023          	sd	a5,0(s5)
    800046b4:	00f7b023          	sd	a5,0(a5)
    800046b8:	00000713          	li	a4,0
    800046bc:	00002797          	auipc	a5,0x2
    800046c0:	4a07a623          	sw	zero,1196(a5) # 80006b68 <base+0x8>
    800046c4:	00050693          	mv	a3,a0
    800046c8:	f11ff06f          	j	800045d8 <__mem_alloc+0x50>
    800046cc:	00053703          	ld	a4,0(a0)
    800046d0:	00e7b023          	sd	a4,0(a5)
    800046d4:	f91ff06f          	j	80004664 <__mem_alloc+0xdc>
    800046d8:	00068793          	mv	a5,a3
    800046dc:	f6dff06f          	j	80004648 <__mem_alloc+0xc0>

00000000800046e0 <__putc>:
    800046e0:	fe010113          	addi	sp,sp,-32
    800046e4:	00813823          	sd	s0,16(sp)
    800046e8:	00113c23          	sd	ra,24(sp)
    800046ec:	02010413          	addi	s0,sp,32
    800046f0:	00050793          	mv	a5,a0
    800046f4:	fef40593          	addi	a1,s0,-17
    800046f8:	00100613          	li	a2,1
    800046fc:	00000513          	li	a0,0
    80004700:	fef407a3          	sb	a5,-17(s0)
    80004704:	fffff097          	auipc	ra,0xfffff
    80004708:	918080e7          	jalr	-1768(ra) # 8000301c <console_write>
    8000470c:	01813083          	ld	ra,24(sp)
    80004710:	01013403          	ld	s0,16(sp)
    80004714:	02010113          	addi	sp,sp,32
    80004718:	00008067          	ret

000000008000471c <__getc>:
    8000471c:	fe010113          	addi	sp,sp,-32
    80004720:	00813823          	sd	s0,16(sp)
    80004724:	00113c23          	sd	ra,24(sp)
    80004728:	02010413          	addi	s0,sp,32
    8000472c:	fe840593          	addi	a1,s0,-24
    80004730:	00100613          	li	a2,1
    80004734:	00000513          	li	a0,0
    80004738:	fffff097          	auipc	ra,0xfffff
    8000473c:	8c4080e7          	jalr	-1852(ra) # 80002ffc <console_read>
    80004740:	fe844503          	lbu	a0,-24(s0)
    80004744:	01813083          	ld	ra,24(sp)
    80004748:	01013403          	ld	s0,16(sp)
    8000474c:	02010113          	addi	sp,sp,32
    80004750:	00008067          	ret

0000000080004754 <console_handler>:
    80004754:	fe010113          	addi	sp,sp,-32
    80004758:	00813823          	sd	s0,16(sp)
    8000475c:	00113c23          	sd	ra,24(sp)
    80004760:	00913423          	sd	s1,8(sp)
    80004764:	02010413          	addi	s0,sp,32
    80004768:	14202773          	csrr	a4,scause
    8000476c:	100027f3          	csrr	a5,sstatus
    80004770:	0027f793          	andi	a5,a5,2
    80004774:	06079e63          	bnez	a5,800047f0 <console_handler+0x9c>
    80004778:	00074c63          	bltz	a4,80004790 <console_handler+0x3c>
    8000477c:	01813083          	ld	ra,24(sp)
    80004780:	01013403          	ld	s0,16(sp)
    80004784:	00813483          	ld	s1,8(sp)
    80004788:	02010113          	addi	sp,sp,32
    8000478c:	00008067          	ret
    80004790:	0ff77713          	andi	a4,a4,255
    80004794:	00900793          	li	a5,9
    80004798:	fef712e3          	bne	a4,a5,8000477c <console_handler+0x28>
    8000479c:	ffffe097          	auipc	ra,0xffffe
    800047a0:	4b8080e7          	jalr	1208(ra) # 80002c54 <plic_claim>
    800047a4:	00a00793          	li	a5,10
    800047a8:	00050493          	mv	s1,a0
    800047ac:	02f50c63          	beq	a0,a5,800047e4 <console_handler+0x90>
    800047b0:	fc0506e3          	beqz	a0,8000477c <console_handler+0x28>
    800047b4:	00050593          	mv	a1,a0
    800047b8:	00001517          	auipc	a0,0x1
    800047bc:	a7850513          	addi	a0,a0,-1416 # 80005230 <_ZZ12printIntegermE6digits+0xe0>
    800047c0:	fffff097          	auipc	ra,0xfffff
    800047c4:	8d8080e7          	jalr	-1832(ra) # 80003098 <__printf>
    800047c8:	01013403          	ld	s0,16(sp)
    800047cc:	01813083          	ld	ra,24(sp)
    800047d0:	00048513          	mv	a0,s1
    800047d4:	00813483          	ld	s1,8(sp)
    800047d8:	02010113          	addi	sp,sp,32
    800047dc:	ffffe317          	auipc	t1,0xffffe
    800047e0:	4b030067          	jr	1200(t1) # 80002c8c <plic_complete>
    800047e4:	fffff097          	auipc	ra,0xfffff
    800047e8:	1bc080e7          	jalr	444(ra) # 800039a0 <uartintr>
    800047ec:	fddff06f          	j	800047c8 <console_handler+0x74>
    800047f0:	00001517          	auipc	a0,0x1
    800047f4:	b4050513          	addi	a0,a0,-1216 # 80005330 <digits+0x78>
    800047f8:	fffff097          	auipc	ra,0xfffff
    800047fc:	844080e7          	jalr	-1980(ra) # 8000303c <panic>

0000000080004800 <kvmincrease>:
    80004800:	fe010113          	addi	sp,sp,-32
    80004804:	01213023          	sd	s2,0(sp)
    80004808:	00001937          	lui	s2,0x1
    8000480c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004810:	00813823          	sd	s0,16(sp)
    80004814:	00113c23          	sd	ra,24(sp)
    80004818:	00913423          	sd	s1,8(sp)
    8000481c:	02010413          	addi	s0,sp,32
    80004820:	01250933          	add	s2,a0,s2
    80004824:	00c95913          	srli	s2,s2,0xc
    80004828:	02090863          	beqz	s2,80004858 <kvmincrease+0x58>
    8000482c:	00000493          	li	s1,0
    80004830:	00148493          	addi	s1,s1,1
    80004834:	fffff097          	auipc	ra,0xfffff
    80004838:	4bc080e7          	jalr	1212(ra) # 80003cf0 <kalloc>
    8000483c:	fe991ae3          	bne	s2,s1,80004830 <kvmincrease+0x30>
    80004840:	01813083          	ld	ra,24(sp)
    80004844:	01013403          	ld	s0,16(sp)
    80004848:	00813483          	ld	s1,8(sp)
    8000484c:	00013903          	ld	s2,0(sp)
    80004850:	02010113          	addi	sp,sp,32
    80004854:	00008067          	ret
    80004858:	01813083          	ld	ra,24(sp)
    8000485c:	01013403          	ld	s0,16(sp)
    80004860:	00813483          	ld	s1,8(sp)
    80004864:	00013903          	ld	s2,0(sp)
    80004868:	00000513          	li	a0,0
    8000486c:	02010113          	addi	sp,sp,32
    80004870:	00008067          	ret
	...
