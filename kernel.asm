
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	98013103          	ld	sp,-1664(sp) # 80005980 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	634020ef          	jal	ra,80002650 <start>

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
    80001184:	084010ef          	jal	ra,80002208 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001254:	7707b783          	ld	a5,1904(a5) # 800059c0 <free_mem_head>
    80001258:	08078463          	beqz	a5,800012e0 <_mem_alloc+0x9c>

        free_mem_head->next = NULL;
        free_mem_head->prev = NULL;
    }

    size_t allocate = blocks * MEM_BLOCK_SIZE; // Now this is in bytes
    8000125c:	00651793          	slli	a5,a0,0x6

    // I'm not a sure I have to check for this other case in the for loop:  || ((char*) curr + allocate) < HEAP_END_ADDR
    for (struct mem_block* curr = free_mem_head; curr != NULL; curr = curr->next)
    80001260:	00004517          	auipc	a0,0x4
    80001264:	76053503          	ld	a0,1888(a0) # 800059c0 <free_mem_head>
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
    800012b4:	7087b783          	ld	a5,1800(a5) # 800059b8 <used_mem_head>
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
    800012cc:	6ea7b823          	sd	a0,1776(a5) # 800059b8 <used_mem_head>
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
    800012e4:	6d07a783          	lw	a5,1744(a5) # 800059b0 <beginning>
    800012e8:	f6079ae3          	bnez	a5,8000125c <_mem_alloc+0x18>
        beginning = 1;
    800012ec:	00100793          	li	a5,1
    800012f0:	00004717          	auipc	a4,0x4
    800012f4:	6cf72023          	sw	a5,1728(a4) # 800059b0 <beginning>
        free_mem_head = (struct mem_block*) HEAP_START_ADDR;
    800012f8:	00004797          	auipc	a5,0x4
    800012fc:	6607b783          	ld	a5,1632(a5) # 80005958 <HEAP_START_ADDR>
    80001300:	00004717          	auipc	a4,0x4
    80001304:	6cf73023          	sd	a5,1728(a4) # 800059c0 <free_mem_head>
        free_mem_head->size = ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR) - sizeof(struct mem_block);
    80001308:	00004717          	auipc	a4,0x4
    8000130c:	64873703          	ld	a4,1608(a4) # 80005950 <HEAP_END_ADDR>
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
    8000135c:	6607b783          	ld	a5,1632(a5) # 800059b8 <used_mem_head>
    80001360:	02078863          	beqz	a5,80001390 <_mem_alloc+0x14c>
                if ((char*)curr < (char*)used_mem_head) // Should be first in the list
    80001364:	06f57463          	bgeu	a0,a5,800013cc <_mem_alloc+0x188>
                    used_mem_head->prev = curr;
    80001368:	00a7b423          	sd	a0,8(a5)
                    curr->next = used_mem_head;
    8000136c:	00f53823          	sd	a5,16(a0)
                    used_mem_head = curr;
    80001370:	00004797          	auipc	a5,0x4
    80001374:	64a7b423          	sd	a0,1608(a5) # 800059b8 <used_mem_head>
                    return (void*)((char*) curr + sizeof(struct mem_block));
    80001378:	01850513          	addi	a0,a0,24
    8000137c:	f59ff06f          	j	800012d4 <_mem_alloc+0x90>
                free_mem_head = curr->next;
    80001380:	01053783          	ld	a5,16(a0)
    80001384:	00004717          	auipc	a4,0x4
    80001388:	62f73e23          	sd	a5,1596(a4) # 800059c0 <free_mem_head>
    8000138c:	fb5ff06f          	j	80001340 <_mem_alloc+0xfc>
                used_mem_head = curr;
    80001390:	00004797          	auipc	a5,0x4
    80001394:	62a7b423          	sd	a0,1576(a5) # 800059b8 <used_mem_head>
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
    800013dc:	5ef73423          	sd	a5,1512(a4) # 800059c0 <free_mem_head>
    800013e0:	eb9ff06f          	j	80001298 <_mem_alloc+0x54>
                    used_mem_head = curr;
    800013e4:	00004797          	auipc	a5,0x4
    800013e8:	5ca7ba23          	sd	a0,1492(a5) # 800059b8 <used_mem_head>
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
    80001458:	5646b683          	ld	a3,1380(a3) # 800059b8 <used_mem_head>
    8000145c:	04068463          	beqz	a3,800014a4 <_mem_alloc+0x260>
                    if ((char*)curr < (char*) used_mem_head)
    80001460:	06d57c63          	bgeu	a0,a3,800014d8 <_mem_alloc+0x294>
                        used_mem_head->prev = curr;
    80001464:	00a6b423          	sd	a0,8(a3)
                        curr->next = used_mem_head;
    80001468:	00d53823          	sd	a3,16(a0)
                        used_mem_head = curr;
    8000146c:	00004697          	auipc	a3,0x4
    80001470:	54a6b623          	sd	a0,1356(a3) # 800059b8 <used_mem_head>
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
    8000149c:	52d63423          	sd	a3,1320(a2) # 800059c0 <free_mem_head>
    800014a0:	f91ff06f          	j	80001430 <_mem_alloc+0x1ec>
                    used_mem_head = curr;
    800014a4:	00004697          	auipc	a3,0x4
    800014a8:	50a6ba23          	sd	a0,1300(a3) # 800059b8 <used_mem_head>
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
    800014e4:	4ef73023          	sd	a5,1248(a4) # 800059c0 <free_mem_head>
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
    80001504:	4b873703          	ld	a4,1208(a4) # 800059b8 <used_mem_head>
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
    8000153c:	4887b783          	ld	a5,1160(a5) # 800059c0 <free_mem_head>
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
    8000156c:	44f73823          	sd	a5,1104(a4) # 800059b8 <used_mem_head>
        if (used_mem_head)
    80001570:	00078463          	beqz	a5,80001578 <_mem_free+0x88>
            used_mem_head->prev = NULL;
    80001574:	0007b423          	sd	zero,8(a5)
        block_to_free->next = NULL;
    80001578:	fe053c23          	sd	zero,-8(a0)
        if (free_mem_head == NULL)
    8000157c:	00004797          	auipc	a5,0x4
    80001580:	4447b783          	ld	a5,1092(a5) # 800059c0 <free_mem_head>
    80001584:	00078663          	beqz	a5,80001590 <_mem_free+0xa0>
            struct mem_block* prev_tmp = NULL;
    80001588:	00000713          	li	a4,0
    8000158c:	01c0006f          	j	800015a8 <_mem_free+0xb8>
            free_mem_head = block_to_free;
    80001590:	00004797          	auipc	a5,0x4
    80001594:	42d7b823          	sd	a3,1072(a5) # 800059c0 <free_mem_head>
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
    800015fc:	3cd63423          	sd	a3,968(a2) # 800059c0 <free_mem_head>
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
    8000168c:	32d7bc23          	sd	a3,824(a5) # 800059c0 <free_mem_head>
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
    80001788:	ff010113          	addi	sp,sp,-16
    8000178c:	00813423          	sd	s0,8(sp)
    80001790:	01010413          	addi	s0,sp,16
    uint64 number = 0x11;

    __asm__ volatile("mv a3, %0" : : "r" (arg));
    80001794:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    80001798:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    8000179c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (number));
    800017a0:	01100793          	li	a5,17
    800017a4:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800017a8:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800017ac:	00050513          	mv	a0,a0

    return (int)ret;

}
    800017b0:	0005051b          	sext.w	a0,a0
    800017b4:	00813403          	ld	s0,8(sp)
    800017b8:	01010113          	addi	sp,sp,16
    800017bc:	00008067          	ret

00000000800017c0 <_Z11thread_exitv>:

int thread_exit()
{
    800017c0:	ff010113          	addi	sp,sp,-16
    800017c4:	00813423          	sd	s0,8(sp)
    800017c8:	01010413          	addi	s0,sp,16
    int number = 0x12;
    __asm__ volatile("mv a0, %0" : : "r" (number));
    800017cc:	01200793          	li	a5,18
    800017d0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800017d4:	00000073          	ecall

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800017d8:	00050513          	mv	a0,a0

    return ret;
}
    800017dc:	0005051b          	sext.w	a0,a0
    800017e0:	00813403          	ld	s0,8(sp)
    800017e4:	01010113          	addi	sp,sp,16
    800017e8:	00008067          	ret

00000000800017ec <_Z15thread_dispatchv>:

void thread_dispatch()
{
    800017ec:	ff010113          	addi	sp,sp,-16
    800017f0:	00813423          	sd	s0,8(sp)
    800017f4:	01010413          	addi	s0,sp,16
    int number = 0x13;
    __asm__ volatile("mv a0, %0" : : "r" (number));
    800017f8:	01300793          	li	a5,19
    800017fc:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001800:	00000073          	ecall
}
    80001804:	00813403          	ld	s0,8(sp)
    80001808:	01010113          	addi	sp,sp,16
    8000180c:	00008067          	ret

0000000080001810 <_Z12thread_startP3TCB>:

int thread_start(thread_t handle)
{
    80001810:	ff010113          	addi	sp,sp,-16
    80001814:	00813423          	sd	s0,8(sp)
    80001818:	01010413          	addi	s0,sp,16
    int number = 0x15;
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    8000181c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (number));
    80001820:	01500793          	li	a5,21
    80001824:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001828:	00000073          	ecall

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    8000182c:	00050513          	mv	a0,a0

    return ret;
}
    80001830:	0005051b          	sext.w	a0,a0
    80001834:	00813403          	ld	s0,8(sp)
    80001838:	01010113          	addi	sp,sp,16
    8000183c:	00008067          	ret

0000000080001840 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80001840:	fe010113          	addi	sp,sp,-32
    80001844:	00113c23          	sd	ra,24(sp)
    80001848:	00813823          	sd	s0,16(sp)
    8000184c:	00913423          	sd	s1,8(sp)
    80001850:	01213023          	sd	s2,0(sp)
    80001854:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80001858:	00000913          	li	s2,0
    8000185c:	0380006f          	j	80001894 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001860:	00000097          	auipc	ra,0x0
    80001864:	f8c080e7          	jalr	-116(ra) # 800017ec <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001868:	00148493          	addi	s1,s1,1
    8000186c:	000027b7          	lui	a5,0x2
    80001870:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001874:	0097ee63          	bltu	a5,s1,80001890 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001878:	00000713          	li	a4,0
    8000187c:	000077b7          	lui	a5,0x7
    80001880:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001884:	fce7eee3          	bltu	a5,a4,80001860 <_Z11workerBodyAPv+0x20>
    80001888:	00170713          	addi	a4,a4,1
    8000188c:	ff1ff06f          	j	8000187c <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80001890:	00190913          	addi	s2,s2,1
    80001894:	00900793          	li	a5,9
    80001898:	0327ec63          	bltu	a5,s2,800018d0 <_Z11workerBodyAPv+0x90>
        printString("A: i="); printInteger(i); printString("\n");
    8000189c:	00003517          	auipc	a0,0x3
    800018a0:	78450513          	addi	a0,a0,1924 # 80005020 <CONSOLE_STATUS+0x10>
    800018a4:	00001097          	auipc	ra,0x1
    800018a8:	c80080e7          	jalr	-896(ra) # 80002524 <_Z11printStringPKc>
    800018ac:	00090513          	mv	a0,s2
    800018b0:	00001097          	auipc	ra,0x1
    800018b4:	ce4080e7          	jalr	-796(ra) # 80002594 <_Z12printIntegerm>
    800018b8:	00004517          	auipc	a0,0x4
    800018bc:	8a850513          	addi	a0,a0,-1880 # 80005160 <CONSOLE_STATUS+0x150>
    800018c0:	00001097          	auipc	ra,0x1
    800018c4:	c64080e7          	jalr	-924(ra) # 80002524 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800018c8:	00000493          	li	s1,0
    800018cc:	fa1ff06f          	j	8000186c <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    800018d0:	00003517          	auipc	a0,0x3
    800018d4:	75850513          	addi	a0,a0,1880 # 80005028 <CONSOLE_STATUS+0x18>
    800018d8:	00001097          	auipc	ra,0x1
    800018dc:	c4c080e7          	jalr	-948(ra) # 80002524 <_Z11printStringPKc>
    finishedA = true;
    800018e0:	00100793          	li	a5,1
    800018e4:	00004717          	auipc	a4,0x4
    800018e8:	10f70e23          	sb	a5,284(a4) # 80005a00 <finishedA>
}
    800018ec:	01813083          	ld	ra,24(sp)
    800018f0:	01013403          	ld	s0,16(sp)
    800018f4:	00813483          	ld	s1,8(sp)
    800018f8:	00013903          	ld	s2,0(sp)
    800018fc:	02010113          	addi	sp,sp,32
    80001900:	00008067          	ret

0000000080001904 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80001904:	fe010113          	addi	sp,sp,-32
    80001908:	00113c23          	sd	ra,24(sp)
    8000190c:	00813823          	sd	s0,16(sp)
    80001910:	00913423          	sd	s1,8(sp)
    80001914:	01213023          	sd	s2,0(sp)
    80001918:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000191c:	00000913          	li	s2,0
    80001920:	0380006f          	j	80001958 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001924:	00000097          	auipc	ra,0x0
    80001928:	ec8080e7          	jalr	-312(ra) # 800017ec <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000192c:	00148493          	addi	s1,s1,1
    80001930:	000027b7          	lui	a5,0x2
    80001934:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001938:	0097ee63          	bltu	a5,s1,80001954 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000193c:	00000713          	li	a4,0
    80001940:	000077b7          	lui	a5,0x7
    80001944:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001948:	fce7eee3          	bltu	a5,a4,80001924 <_Z11workerBodyBPv+0x20>
    8000194c:	00170713          	addi	a4,a4,1
    80001950:	ff1ff06f          	j	80001940 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80001954:	00190913          	addi	s2,s2,1
    80001958:	00f00793          	li	a5,15
    8000195c:	0327ec63          	bltu	a5,s2,80001994 <_Z11workerBodyBPv+0x90>
        printString("B: i="); printInteger(i); printString("\n");
    80001960:	00003517          	auipc	a0,0x3
    80001964:	6d850513          	addi	a0,a0,1752 # 80005038 <CONSOLE_STATUS+0x28>
    80001968:	00001097          	auipc	ra,0x1
    8000196c:	bbc080e7          	jalr	-1092(ra) # 80002524 <_Z11printStringPKc>
    80001970:	00090513          	mv	a0,s2
    80001974:	00001097          	auipc	ra,0x1
    80001978:	c20080e7          	jalr	-992(ra) # 80002594 <_Z12printIntegerm>
    8000197c:	00003517          	auipc	a0,0x3
    80001980:	7e450513          	addi	a0,a0,2020 # 80005160 <CONSOLE_STATUS+0x150>
    80001984:	00001097          	auipc	ra,0x1
    80001988:	ba0080e7          	jalr	-1120(ra) # 80002524 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000198c:	00000493          	li	s1,0
    80001990:	fa1ff06f          	j	80001930 <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    80001994:	00003517          	auipc	a0,0x3
    80001998:	6ac50513          	addi	a0,a0,1708 # 80005040 <CONSOLE_STATUS+0x30>
    8000199c:	00001097          	auipc	ra,0x1
    800019a0:	b88080e7          	jalr	-1144(ra) # 80002524 <_Z11printStringPKc>
    finishedB = true;
    800019a4:	00100793          	li	a5,1
    800019a8:	00004717          	auipc	a4,0x4
    800019ac:	04f70ca3          	sb	a5,89(a4) # 80005a01 <finishedB>
    thread_dispatch();
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	e3c080e7          	jalr	-452(ra) # 800017ec <_Z15thread_dispatchv>
}
    800019b8:	01813083          	ld	ra,24(sp)
    800019bc:	01013403          	ld	s0,16(sp)
    800019c0:	00813483          	ld	s1,8(sp)
    800019c4:	00013903          	ld	s2,0(sp)
    800019c8:	02010113          	addi	sp,sp,32
    800019cc:	00008067          	ret

00000000800019d0 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    800019d0:	fe010113          	addi	sp,sp,-32
    800019d4:	00113c23          	sd	ra,24(sp)
    800019d8:	00813823          	sd	s0,16(sp)
    800019dc:	00913423          	sd	s1,8(sp)
    800019e0:	01213023          	sd	s2,0(sp)
    800019e4:	02010413          	addi	s0,sp,32
    800019e8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800019ec:	00100793          	li	a5,1
    800019f0:	02a7f863          	bgeu	a5,a0,80001a20 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800019f4:	00a00793          	li	a5,10
    800019f8:	02f577b3          	remu	a5,a0,a5
    800019fc:	02078e63          	beqz	a5,80001a38 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001a00:	fff48513          	addi	a0,s1,-1
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	fcc080e7          	jalr	-52(ra) # 800019d0 <_Z9fibonaccim>
    80001a0c:	00050913          	mv	s2,a0
    80001a10:	ffe48513          	addi	a0,s1,-2
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	fbc080e7          	jalr	-68(ra) # 800019d0 <_Z9fibonaccim>
    80001a1c:	00a90533          	add	a0,s2,a0
}
    80001a20:	01813083          	ld	ra,24(sp)
    80001a24:	01013403          	ld	s0,16(sp)
    80001a28:	00813483          	ld	s1,8(sp)
    80001a2c:	00013903          	ld	s2,0(sp)
    80001a30:	02010113          	addi	sp,sp,32
    80001a34:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	db4080e7          	jalr	-588(ra) # 800017ec <_Z15thread_dispatchv>
    80001a40:	fc1ff06f          	j	80001a00 <_Z9fibonaccim+0x30>

0000000080001a44 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80001a44:	fe010113          	addi	sp,sp,-32
    80001a48:	00113c23          	sd	ra,24(sp)
    80001a4c:	00813823          	sd	s0,16(sp)
    80001a50:	00913423          	sd	s1,8(sp)
    80001a54:	01213023          	sd	s2,0(sp)
    80001a58:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001a5c:	00000493          	li	s1,0
    80001a60:	0380006f          	j	80001a98 <_Z11workerBodyCPv+0x54>
    for (; i < 3; i++) {
        printString("C: i="); printInteger(i); printString("\n");
    80001a64:	00003517          	auipc	a0,0x3
    80001a68:	5ec50513          	addi	a0,a0,1516 # 80005050 <CONSOLE_STATUS+0x40>
    80001a6c:	00001097          	auipc	ra,0x1
    80001a70:	ab8080e7          	jalr	-1352(ra) # 80002524 <_Z11printStringPKc>
    80001a74:	00048513          	mv	a0,s1
    80001a78:	00001097          	auipc	ra,0x1
    80001a7c:	b1c080e7          	jalr	-1252(ra) # 80002594 <_Z12printIntegerm>
    80001a80:	00003517          	auipc	a0,0x3
    80001a84:	6e050513          	addi	a0,a0,1760 # 80005160 <CONSOLE_STATUS+0x150>
    80001a88:	00001097          	auipc	ra,0x1
    80001a8c:	a9c080e7          	jalr	-1380(ra) # 80002524 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80001a90:	0014849b          	addiw	s1,s1,1
    80001a94:	0ff4f493          	andi	s1,s1,255
    80001a98:	00200793          	li	a5,2
    80001a9c:	fc97f4e3          	bgeu	a5,s1,80001a64 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80001aa0:	00003517          	auipc	a0,0x3
    80001aa4:	5b850513          	addi	a0,a0,1464 # 80005058 <CONSOLE_STATUS+0x48>
    80001aa8:	00001097          	auipc	ra,0x1
    80001aac:	a7c080e7          	jalr	-1412(ra) # 80002524 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001ab0:	00700313          	li	t1,7
    thread_dispatch();
    80001ab4:	00000097          	auipc	ra,0x0
    80001ab8:	d38080e7          	jalr	-712(ra) # 800017ec <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001abc:	00030913          	mv	s2,t1

    printString("C: t1="); printInteger(t1); printString("\n");
    80001ac0:	00003517          	auipc	a0,0x3
    80001ac4:	5a850513          	addi	a0,a0,1448 # 80005068 <CONSOLE_STATUS+0x58>
    80001ac8:	00001097          	auipc	ra,0x1
    80001acc:	a5c080e7          	jalr	-1444(ra) # 80002524 <_Z11printStringPKc>
    80001ad0:	00090513          	mv	a0,s2
    80001ad4:	00001097          	auipc	ra,0x1
    80001ad8:	ac0080e7          	jalr	-1344(ra) # 80002594 <_Z12printIntegerm>
    80001adc:	00003517          	auipc	a0,0x3
    80001ae0:	68450513          	addi	a0,a0,1668 # 80005160 <CONSOLE_STATUS+0x150>
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	a40080e7          	jalr	-1472(ra) # 80002524 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001aec:	00c00513          	li	a0,12
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	ee0080e7          	jalr	-288(ra) # 800019d0 <_Z9fibonaccim>
    80001af8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInteger(result); printString("\n");
    80001afc:	00003517          	auipc	a0,0x3
    80001b00:	57450513          	addi	a0,a0,1396 # 80005070 <CONSOLE_STATUS+0x60>
    80001b04:	00001097          	auipc	ra,0x1
    80001b08:	a20080e7          	jalr	-1504(ra) # 80002524 <_Z11printStringPKc>
    80001b0c:	00090513          	mv	a0,s2
    80001b10:	00001097          	auipc	ra,0x1
    80001b14:	a84080e7          	jalr	-1404(ra) # 80002594 <_Z12printIntegerm>
    80001b18:	00003517          	auipc	a0,0x3
    80001b1c:	64850513          	addi	a0,a0,1608 # 80005160 <CONSOLE_STATUS+0x150>
    80001b20:	00001097          	auipc	ra,0x1
    80001b24:	a04080e7          	jalr	-1532(ra) # 80002524 <_Z11printStringPKc>
    80001b28:	0380006f          	j	80001b60 <_Z11workerBodyCPv+0x11c>

    for (; i < 6; i++) {
        printString("C: i="); printInteger(i); printString("\n");
    80001b2c:	00003517          	auipc	a0,0x3
    80001b30:	52450513          	addi	a0,a0,1316 # 80005050 <CONSOLE_STATUS+0x40>
    80001b34:	00001097          	auipc	ra,0x1
    80001b38:	9f0080e7          	jalr	-1552(ra) # 80002524 <_Z11printStringPKc>
    80001b3c:	00048513          	mv	a0,s1
    80001b40:	00001097          	auipc	ra,0x1
    80001b44:	a54080e7          	jalr	-1452(ra) # 80002594 <_Z12printIntegerm>
    80001b48:	00003517          	auipc	a0,0x3
    80001b4c:	61850513          	addi	a0,a0,1560 # 80005160 <CONSOLE_STATUS+0x150>
    80001b50:	00001097          	auipc	ra,0x1
    80001b54:	9d4080e7          	jalr	-1580(ra) # 80002524 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80001b58:	0014849b          	addiw	s1,s1,1
    80001b5c:	0ff4f493          	andi	s1,s1,255
    80001b60:	00500793          	li	a5,5
    80001b64:	fc97f4e3          	bgeu	a5,s1,80001b2c <_Z11workerBodyCPv+0xe8>
    }

    printString("A finished!\n");
    80001b68:	00003517          	auipc	a0,0x3
    80001b6c:	4c050513          	addi	a0,a0,1216 # 80005028 <CONSOLE_STATUS+0x18>
    80001b70:	00001097          	auipc	ra,0x1
    80001b74:	9b4080e7          	jalr	-1612(ra) # 80002524 <_Z11printStringPKc>
    finishedC = true;
    80001b78:	00100793          	li	a5,1
    80001b7c:	00004717          	auipc	a4,0x4
    80001b80:	e8f70323          	sb	a5,-378(a4) # 80005a02 <finishedC>
    thread_dispatch();
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	c68080e7          	jalr	-920(ra) # 800017ec <_Z15thread_dispatchv>
}
    80001b8c:	01813083          	ld	ra,24(sp)
    80001b90:	01013403          	ld	s0,16(sp)
    80001b94:	00813483          	ld	s1,8(sp)
    80001b98:	00013903          	ld	s2,0(sp)
    80001b9c:	02010113          	addi	sp,sp,32
    80001ba0:	00008067          	ret

0000000080001ba4 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80001ba4:	fe010113          	addi	sp,sp,-32
    80001ba8:	00113c23          	sd	ra,24(sp)
    80001bac:	00813823          	sd	s0,16(sp)
    80001bb0:	00913423          	sd	s1,8(sp)
    80001bb4:	01213023          	sd	s2,0(sp)
    80001bb8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001bbc:	00a00493          	li	s1,10
    80001bc0:	0380006f          	j	80001bf8 <_Z11workerBodyDPv+0x54>
    for (; i < 13; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80001bc4:	00003517          	auipc	a0,0x3
    80001bc8:	4bc50513          	addi	a0,a0,1212 # 80005080 <CONSOLE_STATUS+0x70>
    80001bcc:	00001097          	auipc	ra,0x1
    80001bd0:	958080e7          	jalr	-1704(ra) # 80002524 <_Z11printStringPKc>
    80001bd4:	00048513          	mv	a0,s1
    80001bd8:	00001097          	auipc	ra,0x1
    80001bdc:	9bc080e7          	jalr	-1604(ra) # 80002594 <_Z12printIntegerm>
    80001be0:	00003517          	auipc	a0,0x3
    80001be4:	58050513          	addi	a0,a0,1408 # 80005160 <CONSOLE_STATUS+0x150>
    80001be8:	00001097          	auipc	ra,0x1
    80001bec:	93c080e7          	jalr	-1732(ra) # 80002524 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80001bf0:	0014849b          	addiw	s1,s1,1
    80001bf4:	0ff4f493          	andi	s1,s1,255
    80001bf8:	00c00793          	li	a5,12
    80001bfc:	fc97f4e3          	bgeu	a5,s1,80001bc4 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80001c00:	00003517          	auipc	a0,0x3
    80001c04:	48850513          	addi	a0,a0,1160 # 80005088 <CONSOLE_STATUS+0x78>
    80001c08:	00001097          	auipc	ra,0x1
    80001c0c:	91c080e7          	jalr	-1764(ra) # 80002524 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001c10:	00500313          	li	t1,5
    thread_dispatch();
    80001c14:	00000097          	auipc	ra,0x0
    80001c18:	bd8080e7          	jalr	-1064(ra) # 800017ec <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80001c1c:	01000513          	li	a0,16
    80001c20:	00000097          	auipc	ra,0x0
    80001c24:	db0080e7          	jalr	-592(ra) # 800019d0 <_Z9fibonaccim>
    80001c28:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInteger(result); printString("\n");
    80001c2c:	00003517          	auipc	a0,0x3
    80001c30:	46c50513          	addi	a0,a0,1132 # 80005098 <CONSOLE_STATUS+0x88>
    80001c34:	00001097          	auipc	ra,0x1
    80001c38:	8f0080e7          	jalr	-1808(ra) # 80002524 <_Z11printStringPKc>
    80001c3c:	00090513          	mv	a0,s2
    80001c40:	00001097          	auipc	ra,0x1
    80001c44:	954080e7          	jalr	-1708(ra) # 80002594 <_Z12printIntegerm>
    80001c48:	00003517          	auipc	a0,0x3
    80001c4c:	51850513          	addi	a0,a0,1304 # 80005160 <CONSOLE_STATUS+0x150>
    80001c50:	00001097          	auipc	ra,0x1
    80001c54:	8d4080e7          	jalr	-1836(ra) # 80002524 <_Z11printStringPKc>
    80001c58:	0380006f          	j	80001c90 <_Z11workerBodyDPv+0xec>

    for (; i < 16; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80001c5c:	00003517          	auipc	a0,0x3
    80001c60:	42450513          	addi	a0,a0,1060 # 80005080 <CONSOLE_STATUS+0x70>
    80001c64:	00001097          	auipc	ra,0x1
    80001c68:	8c0080e7          	jalr	-1856(ra) # 80002524 <_Z11printStringPKc>
    80001c6c:	00048513          	mv	a0,s1
    80001c70:	00001097          	auipc	ra,0x1
    80001c74:	924080e7          	jalr	-1756(ra) # 80002594 <_Z12printIntegerm>
    80001c78:	00003517          	auipc	a0,0x3
    80001c7c:	4e850513          	addi	a0,a0,1256 # 80005160 <CONSOLE_STATUS+0x150>
    80001c80:	00001097          	auipc	ra,0x1
    80001c84:	8a4080e7          	jalr	-1884(ra) # 80002524 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80001c88:	0014849b          	addiw	s1,s1,1
    80001c8c:	0ff4f493          	andi	s1,s1,255
    80001c90:	00f00793          	li	a5,15
    80001c94:	fc97f4e3          	bgeu	a5,s1,80001c5c <_Z11workerBodyDPv+0xb8>
    }

    printString("D finished!\n");
    80001c98:	00003517          	auipc	a0,0x3
    80001c9c:	41050513          	addi	a0,a0,1040 # 800050a8 <CONSOLE_STATUS+0x98>
    80001ca0:	00001097          	auipc	ra,0x1
    80001ca4:	884080e7          	jalr	-1916(ra) # 80002524 <_Z11printStringPKc>
    finishedD = true;
    80001ca8:	00100793          	li	a5,1
    80001cac:	00004717          	auipc	a4,0x4
    80001cb0:	d4f70ba3          	sb	a5,-681(a4) # 80005a03 <finishedD>
    thread_dispatch();
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	b38080e7          	jalr	-1224(ra) # 800017ec <_Z15thread_dispatchv>
}
    80001cbc:	01813083          	ld	ra,24(sp)
    80001cc0:	01013403          	ld	s0,16(sp)
    80001cc4:	00813483          	ld	s1,8(sp)
    80001cc8:	00013903          	ld	s2,0(sp)
    80001ccc:	02010113          	addi	sp,sp,32
    80001cd0:	00008067          	ret

0000000080001cd4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80001cd4:	fd010113          	addi	sp,sp,-48
    80001cd8:	02113423          	sd	ra,40(sp)
    80001cdc:	02813023          	sd	s0,32(sp)
    80001ce0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80001ce4:	00000613          	li	a2,0
    80001ce8:	00000597          	auipc	a1,0x0
    80001cec:	b5858593          	addi	a1,a1,-1192 # 80001840 <_Z11workerBodyAPv>
    80001cf0:	fd040513          	addi	a0,s0,-48
    80001cf4:	00000097          	auipc	ra,0x0
    80001cf8:	a94080e7          	jalr	-1388(ra) # 80001788 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80001cfc:	00003517          	auipc	a0,0x3
    80001d00:	3bc50513          	addi	a0,a0,956 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001d04:	00001097          	auipc	ra,0x1
    80001d08:	820080e7          	jalr	-2016(ra) # 80002524 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80001d0c:	00000613          	li	a2,0
    80001d10:	00000597          	auipc	a1,0x0
    80001d14:	bf458593          	addi	a1,a1,-1036 # 80001904 <_Z11workerBodyBPv>
    80001d18:	fd840513          	addi	a0,s0,-40
    80001d1c:	00000097          	auipc	ra,0x0
    80001d20:	a6c080e7          	jalr	-1428(ra) # 80001788 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80001d24:	00003517          	auipc	a0,0x3
    80001d28:	3ac50513          	addi	a0,a0,940 # 800050d0 <CONSOLE_STATUS+0xc0>
    80001d2c:	00000097          	auipc	ra,0x0
    80001d30:	7f8080e7          	jalr	2040(ra) # 80002524 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80001d34:	00000613          	li	a2,0
    80001d38:	00000597          	auipc	a1,0x0
    80001d3c:	d0c58593          	addi	a1,a1,-756 # 80001a44 <_Z11workerBodyCPv>
    80001d40:	fe040513          	addi	a0,s0,-32
    80001d44:	00000097          	auipc	ra,0x0
    80001d48:	a44080e7          	jalr	-1468(ra) # 80001788 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80001d4c:	00003517          	auipc	a0,0x3
    80001d50:	39c50513          	addi	a0,a0,924 # 800050e8 <CONSOLE_STATUS+0xd8>
    80001d54:	00000097          	auipc	ra,0x0
    80001d58:	7d0080e7          	jalr	2000(ra) # 80002524 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80001d5c:	00000613          	li	a2,0
    80001d60:	00000597          	auipc	a1,0x0
    80001d64:	e4458593          	addi	a1,a1,-444 # 80001ba4 <_Z11workerBodyDPv>
    80001d68:	fe840513          	addi	a0,s0,-24
    80001d6c:	00000097          	auipc	ra,0x0
    80001d70:	a1c080e7          	jalr	-1508(ra) # 80001788 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80001d74:	00003517          	auipc	a0,0x3
    80001d78:	38c50513          	addi	a0,a0,908 # 80005100 <CONSOLE_STATUS+0xf0>
    80001d7c:	00000097          	auipc	ra,0x0
    80001d80:	7a8080e7          	jalr	1960(ra) # 80002524 <_Z11printStringPKc>
    80001d84:	00c0006f          	j	80001d90 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80001d88:	00000097          	auipc	ra,0x0
    80001d8c:	a64080e7          	jalr	-1436(ra) # 800017ec <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80001d90:	00004797          	auipc	a5,0x4
    80001d94:	c707c783          	lbu	a5,-912(a5) # 80005a00 <finishedA>
    80001d98:	fe0788e3          	beqz	a5,80001d88 <_Z18Threads_C_API_testv+0xb4>
    80001d9c:	00004797          	auipc	a5,0x4
    80001da0:	c657c783          	lbu	a5,-923(a5) # 80005a01 <finishedB>
    80001da4:	fe0782e3          	beqz	a5,80001d88 <_Z18Threads_C_API_testv+0xb4>
    80001da8:	00004797          	auipc	a5,0x4
    80001dac:	c5a7c783          	lbu	a5,-934(a5) # 80005a02 <finishedC>
    80001db0:	fc078ce3          	beqz	a5,80001d88 <_Z18Threads_C_API_testv+0xb4>
    80001db4:	00004797          	auipc	a5,0x4
    80001db8:	c4f7c783          	lbu	a5,-945(a5) # 80005a03 <finishedD>
    80001dbc:	fc0786e3          	beqz	a5,80001d88 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80001dc0:	02813083          	ld	ra,40(sp)
    80001dc4:	02013403          	ld	s0,32(sp)
    80001dc8:	03010113          	addi	sp,sp,48
    80001dcc:	00008067          	ret

0000000080001dd0 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80001dd0:	ff010113          	addi	sp,sp,-16
    80001dd4:	00113423          	sd	ra,8(sp)
    80001dd8:	00813023          	sd	s0,0(sp)
    80001ddc:	01010413          	addi	s0,sp,16
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80001de0:	00000097          	auipc	ra,0x0
    80001de4:	ef4080e7          	jalr	-268(ra) # 80001cd4 <_Z18Threads_C_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80001de8:	00813083          	ld	ra,8(sp)
    80001dec:	00013403          	ld	s0,0(sp)
    80001df0:	01010113          	addi	sp,sp,16
    80001df4:	00008067          	ret

0000000080001df8 <_Z3wrpPv>:


bool done = false;
extern void userMain();

void wrp(void *t){
    80001df8:	ff010113          	addi	sp,sp,-16
    80001dfc:	00113423          	sd	ra,8(sp)
    80001e00:	00813023          	sd	s0,0(sp)
    80001e04:	01010413          	addi	s0,sp,16
    printString("userMain()\n");
    80001e08:	00003517          	auipc	a0,0x3
    80001e0c:	31050513          	addi	a0,a0,784 # 80005118 <CONSOLE_STATUS+0x108>
    80001e10:	00000097          	auipc	ra,0x0
    80001e14:	714080e7          	jalr	1812(ra) # 80002524 <_Z11printStringPKc>
    userMain();
    80001e18:	00000097          	auipc	ra,0x0
    80001e1c:	fb8080e7          	jalr	-72(ra) # 80001dd0 <_Z8userMainv>
    printString("Done\n");
    80001e20:	00003517          	auipc	a0,0x3
    80001e24:	30850513          	addi	a0,a0,776 # 80005128 <CONSOLE_STATUS+0x118>
    80001e28:	00000097          	auipc	ra,0x0
    80001e2c:	6fc080e7          	jalr	1788(ra) # 80002524 <_Z11printStringPKc>
    done = true;
    80001e30:	00100793          	li	a5,1
    80001e34:	00004717          	auipc	a4,0x4
    80001e38:	bcf70823          	sb	a5,-1072(a4) # 80005a04 <done>
}
    80001e3c:	00813083          	ld	ra,8(sp)
    80001e40:	00013403          	ld	s0,0(sp)
    80001e44:	01010113          	addi	sp,sp,16
    80001e48:	00008067          	ret

0000000080001e4c <main>:

int main()
{
    80001e4c:	fe010113          	addi	sp,sp,-32
    80001e50:	00113c23          	sd	ra,24(sp)
    80001e54:	00813823          	sd	s0,16(sp)
    80001e58:	02010413          	addi	s0,sp,32
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001e5c:	00004797          	auipc	a5,0x4
    80001e60:	b147b783          	ld	a5,-1260(a5) # 80005970 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001e64:	10579073          	csrw	stvec,a5

    thread_t main, user_main;

    thread_create(&main, nullptr, nullptr);
    80001e68:	00000613          	li	a2,0
    80001e6c:	00000593          	li	a1,0
    80001e70:	fe840513          	addi	a0,s0,-24
    80001e74:	00000097          	auipc	ra,0x0
    80001e78:	914080e7          	jalr	-1772(ra) # 80001788 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("Main Created\n");
    80001e7c:	00003517          	auipc	a0,0x3
    80001e80:	2b450513          	addi	a0,a0,692 # 80005130 <CONSOLE_STATUS+0x120>
    80001e84:	00000097          	auipc	ra,0x0
    80001e88:	6a0080e7          	jalr	1696(ra) # 80002524 <_Z11printStringPKc>
    TCB::running = main;
    80001e8c:	00004797          	auipc	a5,0x4
    80001e90:	afc7b783          	ld	a5,-1284(a5) # 80005988 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001e94:	fe843703          	ld	a4,-24(s0)
    80001e98:	00e7b023          	sd	a4,0(a5)

    thread_create(&user_main, wrp, nullptr);
    80001e9c:	00000613          	li	a2,0
    80001ea0:	00000597          	auipc	a1,0x0
    80001ea4:	f5858593          	addi	a1,a1,-168 # 80001df8 <_Z3wrpPv>
    80001ea8:	fe040513          	addi	a0,s0,-32
    80001eac:	00000097          	auipc	ra,0x0
    80001eb0:	8dc080e7          	jalr	-1828(ra) # 80001788 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("UserMain Created\n");
    80001eb4:	00003517          	auipc	a0,0x3
    80001eb8:	28c50513          	addi	a0,a0,652 # 80005140 <CONSOLE_STATUS+0x130>
    80001ebc:	00000097          	auipc	ra,0x0
    80001ec0:	668080e7          	jalr	1640(ra) # 80002524 <_Z11printStringPKc>

    // Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!done)
    80001ec4:	00004797          	auipc	a5,0x4
    80001ec8:	b407c783          	lbu	a5,-1216(a5) # 80005a04 <done>
    80001ecc:	00079863          	bnez	a5,80001edc <main+0x90>
    {
        thread_dispatch();
    80001ed0:	00000097          	auipc	ra,0x0
    80001ed4:	91c080e7          	jalr	-1764(ra) # 800017ec <_Z15thread_dispatchv>
    80001ed8:	fedff06f          	j	80001ec4 <main+0x78>
    }

    printString("Finished\n");
    80001edc:	00003517          	auipc	a0,0x3
    80001ee0:	27c50513          	addi	a0,a0,636 # 80005158 <CONSOLE_STATUS+0x148>
    80001ee4:	00000097          	auipc	ra,0x0
    80001ee8:	640080e7          	jalr	1600(ra) # 80002524 <_Z11printStringPKc>

    return 0;
}
    80001eec:	00000513          	li	a0,0
    80001ef0:	01813083          	ld	ra,24(sp)
    80001ef4:	01013403          	ld	s0,16(sp)
    80001ef8:	02010113          	addi	sp,sp,32
    80001efc:	00008067          	ret

0000000080001f00 <_ZN3TCB12createThreadEPFvPvES0_S0_b>:
//
//    return new TCB(body, TIME_SLICE);
//}

TCB* TCB::createThread(Body body, void* arg, void* stack_space, bool start_immediately)
{
    80001f00:	fc010113          	addi	sp,sp,-64
    80001f04:	02113c23          	sd	ra,56(sp)
    80001f08:	02813823          	sd	s0,48(sp)
    80001f0c:	02913423          	sd	s1,40(sp)
    80001f10:	03213023          	sd	s2,32(sp)
    80001f14:	01313c23          	sd	s3,24(sp)
    80001f18:	01413823          	sd	s4,16(sp)
    80001f1c:	01513423          	sd	s5,8(sp)
    80001f20:	04010413          	addi	s0,sp,64
    80001f24:	00050993          	mv	s3,a0
    80001f28:	00058a93          	mv	s5,a1
    80001f2c:	00060913          	mv	s2,a2
    80001f30:	00068a13          	mv	s4,a3
    return new TCB(body, arg, stack_space, start_immediately);
    80001f34:	03800513          	li	a0,56
    80001f38:	00000097          	auipc	ra,0x0
    80001f3c:	210080e7          	jalr	528(ra) # 80002148 <_Znwm>
    80001f40:	00050493          	mv	s1,a0
            context({(uint64)&threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            timeSlice(DEFAULT_TIME_SLICE),
            finished(false),
            start_immediately(start_immediately){
    80001f44:	01353023          	sd	s3,0(a0)
    80001f48:	01553423          	sd	s5,8(a0)
            stack(body != nullptr ? (uint64*)stack_space : nullptr),
    80001f4c:	06098263          	beqz	s3,80001fb0 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0xb0>
            start_immediately(start_immediately){
    80001f50:	0124b823          	sd	s2,16(s1)
    80001f54:	00000797          	auipc	a5,0x0
    80001f58:	15c78793          	addi	a5,a5,348 # 800020b0 <_ZN3TCB13threadWrapperEv>
    80001f5c:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001f60:	04090c63          	beqz	s2,80001fb8 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0xb8>
    80001f64:	00008637          	lui	a2,0x8
    80001f68:	00c90933          	add	s2,s2,a2
            start_immediately(start_immediately){
    80001f6c:	0324b023          	sd	s2,32(s1)
    80001f70:	00200793          	li	a5,2
    80001f74:	02f4b423          	sd	a5,40(s1)
    80001f78:	02048823          	sb	zero,48(s1)
    80001f7c:	034488a3          	sb	s4,49(s1)
        if (body != nullptr && start_immediately == true)
    80001f80:	00098463          	beqz	s3,80001f88 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0x88>
    80001f84:	020a1e63          	bnez	s4,80001fc0 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0xc0>
}
    80001f88:	00048513          	mv	a0,s1
    80001f8c:	03813083          	ld	ra,56(sp)
    80001f90:	03013403          	ld	s0,48(sp)
    80001f94:	02813483          	ld	s1,40(sp)
    80001f98:	02013903          	ld	s2,32(sp)
    80001f9c:	01813983          	ld	s3,24(sp)
    80001fa0:	01013a03          	ld	s4,16(sp)
    80001fa4:	00813a83          	ld	s5,8(sp)
    80001fa8:	04010113          	addi	sp,sp,64
    80001fac:	00008067          	ret
            stack(body != nullptr ? (uint64*)stack_space : nullptr),
    80001fb0:	00000913          	li	s2,0
    80001fb4:	f9dff06f          	j	80001f50 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0x50>
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001fb8:	00000913          	li	s2,0
    80001fbc:	fb1ff06f          	j	80001f6c <_ZN3TCB12createThreadEPFvPvES0_S0_b+0x6c>
            Scheduler::put(this);
    80001fc0:	00048513          	mv	a0,s1
    80001fc4:	00000097          	auipc	ra,0x0
    80001fc8:	4c0080e7          	jalr	1216(ra) # 80002484 <_ZN9Scheduler3putEP3TCB>
    80001fcc:	fbdff06f          	j	80001f88 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0x88>
    80001fd0:	00050913          	mv	s2,a0
    return new TCB(body, arg, stack_space, start_immediately);
    80001fd4:	00048513          	mv	a0,s1
    80001fd8:	00000097          	auipc	ra,0x0
    80001fdc:	1c0080e7          	jalr	448(ra) # 80002198 <_ZdlPv>
    80001fe0:	00090513          	mv	a0,s2
    80001fe4:	00005097          	auipc	ra,0x5
    80001fe8:	b14080e7          	jalr	-1260(ra) # 80006af8 <_Unwind_Resume>

0000000080001fec <_ZN3TCB8dispatchEv>:

    return 0;
}

void TCB::dispatch()
{
    80001fec:	fe010113          	addi	sp,sp,-32
    80001ff0:	00113c23          	sd	ra,24(sp)
    80001ff4:	00813823          	sd	s0,16(sp)
    80001ff8:	00913423          	sd	s1,8(sp)
    80001ffc:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002000:	00004497          	auipc	s1,0x4
    80002004:	a084b483          	ld	s1,-1528(s1) # 80005a08 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80002008:	0304c783          	lbu	a5,48(s1)

    if (!old->isFinished())
    8000200c:	02078c63          	beqz	a5,80002044 <_ZN3TCB8dispatchEv+0x58>
        Scheduler::put(old);

    running = Scheduler::get();
    80002010:	00000097          	auipc	ra,0x0
    80002014:	40c080e7          	jalr	1036(ra) # 8000241c <_ZN9Scheduler3getEv>
    80002018:	00004797          	auipc	a5,0x4
    8000201c:	9ea7b823          	sd	a0,-1552(a5) # 80005a08 <_ZN3TCB7runningE>

    TCB::contextSwitch(&old->context, &running->context);
    80002020:	01850593          	addi	a1,a0,24
    80002024:	01848513          	addi	a0,s1,24
    80002028:	fffff097          	auipc	ra,0xfffff
    8000202c:	208080e7          	jalr	520(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002030:	01813083          	ld	ra,24(sp)
    80002034:	01013403          	ld	s0,16(sp)
    80002038:	00813483          	ld	s1,8(sp)
    8000203c:	02010113          	addi	sp,sp,32
    80002040:	00008067          	ret
        Scheduler::put(old);
    80002044:	00048513          	mv	a0,s1
    80002048:	00000097          	auipc	ra,0x0
    8000204c:	43c080e7          	jalr	1084(ra) # 80002484 <_ZN9Scheduler3putEP3TCB>
    80002050:	fc1ff06f          	j	80002010 <_ZN3TCB8dispatchEv+0x24>

0000000080002054 <_ZN3TCB10threadExitEv>:
{
    80002054:	ff010113          	addi	sp,sp,-16
    80002058:	00113423          	sd	ra,8(sp)
    8000205c:	00813023          	sd	s0,0(sp)
    80002060:	01010413          	addi	s0,sp,16
    printString("Unutar tcb Exita!\n");
    80002064:	00003517          	auipc	a0,0x3
    80002068:	10450513          	addi	a0,a0,260 # 80005168 <CONSOLE_STATUS+0x158>
    8000206c:	00000097          	auipc	ra,0x0
    80002070:	4b8080e7          	jalr	1208(ra) # 80002524 <_Z11printStringPKc>
    if (running->isFinished())
    80002074:	00004797          	auipc	a5,0x4
    80002078:	9947b783          	ld	a5,-1644(a5) # 80005a08 <_ZN3TCB7runningE>
    8000207c:	0307c703          	lbu	a4,48(a5)
    80002080:	02071463          	bnez	a4,800020a8 <_ZN3TCB10threadExitEv+0x54>
    void setFinished(bool value) { finished = value; }
    80002084:	00100713          	li	a4,1
    80002088:	02e78823          	sb	a4,48(a5)
    TCB::dispatch();
    8000208c:	00000097          	auipc	ra,0x0
    80002090:	f60080e7          	jalr	-160(ra) # 80001fec <_ZN3TCB8dispatchEv>
    return 0;
    80002094:	00000513          	li	a0,0
}
    80002098:	00813083          	ld	ra,8(sp)
    8000209c:	00013403          	ld	s0,0(sp)
    800020a0:	01010113          	addi	sp,sp,16
    800020a4:	00008067          	ret
        return -1;
    800020a8:	fff00513          	li	a0,-1
    800020ac:	fedff06f          	j	80002098 <_ZN3TCB10threadExitEv+0x44>

00000000800020b0 <_ZN3TCB13threadWrapperEv>:

void TCB::threadWrapper()
{
    800020b0:	fe010113          	addi	sp,sp,-32
    800020b4:	00113c23          	sd	ra,24(sp)
    800020b8:	00813823          	sd	s0,16(sp)
    800020bc:	00913423          	sd	s1,8(sp)
    800020c0:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800020c4:	00000097          	auipc	ra,0x0
    800020c8:	124080e7          	jalr	292(ra) # 800021e8 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800020cc:	00004497          	auipc	s1,0x4
    800020d0:	93c48493          	addi	s1,s1,-1732 # 80005a08 <_ZN3TCB7runningE>
    800020d4:	0004b783          	ld	a5,0(s1)
    800020d8:	0007b703          	ld	a4,0(a5)
    800020dc:	0087b503          	ld	a0,8(a5)
    800020e0:	000700e7          	jalr	a4
    running->setFinished(true);
    800020e4:	0004b783          	ld	a5,0(s1)
    800020e8:	00100713          	li	a4,1
    800020ec:	02e78823          	sb	a4,48(a5)

    TCB::dispatch();
    800020f0:	00000097          	auipc	ra,0x0
    800020f4:	efc080e7          	jalr	-260(ra) # 80001fec <_ZN3TCB8dispatchEv>
}
    800020f8:	01813083          	ld	ra,24(sp)
    800020fc:	01013403          	ld	s0,16(sp)
    80002100:	00813483          	ld	s1,8(sp)
    80002104:	02010113          	addi	sp,sp,32
    80002108:	00008067          	ret

000000008000210c <_ZN3TCB11threadStartEPS_>:

int TCB::threadStart(TCB *handle)
{
    if (handle)
    8000210c:	02050a63          	beqz	a0,80002140 <_ZN3TCB11threadStartEPS_+0x34>
{
    80002110:	ff010113          	addi	sp,sp,-16
    80002114:	00113423          	sd	ra,8(sp)
    80002118:	00813023          	sd	s0,0(sp)
    8000211c:	01010413          	addi	s0,sp,16
    80002120:	02050823          	sb	zero,48(a0)
    {
        handle->setFinished(false);
        Scheduler::put(handle);
    80002124:	00000097          	auipc	ra,0x0
    80002128:	360080e7          	jalr	864(ra) # 80002484 <_ZN9Scheduler3putEP3TCB>
        return 0;
    8000212c:	00000513          	li	a0,0
    }
    return -1;
}
    80002130:	00813083          	ld	ra,8(sp)
    80002134:	00013403          	ld	s0,0(sp)
    80002138:	01010113          	addi	sp,sp,16
    8000213c:	00008067          	ret
    return -1;
    80002140:	fff00513          	li	a0,-1
}
    80002144:	00008067          	ret

0000000080002148 <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80002148:	ff010113          	addi	sp,sp,-16
    8000214c:	00113423          	sd	ra,8(sp)
    80002150:	00813023          	sd	s0,0(sp)
    80002154:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80002158:	00002097          	auipc	ra,0x2
    8000215c:	680080e7          	jalr	1664(ra) # 800047d8 <__mem_alloc>
}
    80002160:	00813083          	ld	ra,8(sp)
    80002164:	00013403          	ld	s0,0(sp)
    80002168:	01010113          	addi	sp,sp,16
    8000216c:	00008067          	ret

0000000080002170 <_Znam>:

void *operator new[](size_t n)
{
    80002170:	ff010113          	addi	sp,sp,-16
    80002174:	00113423          	sd	ra,8(sp)
    80002178:	00813023          	sd	s0,0(sp)
    8000217c:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80002180:	00002097          	auipc	ra,0x2
    80002184:	658080e7          	jalr	1624(ra) # 800047d8 <__mem_alloc>
}
    80002188:	00813083          	ld	ra,8(sp)
    8000218c:	00013403          	ld	s0,0(sp)
    80002190:	01010113          	addi	sp,sp,16
    80002194:	00008067          	ret

0000000080002198 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80002198:	ff010113          	addi	sp,sp,-16
    8000219c:	00113423          	sd	ra,8(sp)
    800021a0:	00813023          	sd	s0,0(sp)
    800021a4:	01010413          	addi	s0,sp,16
__mem_free(p);
    800021a8:	00002097          	auipc	ra,0x2
    800021ac:	564080e7          	jalr	1380(ra) # 8000470c <__mem_free>
}
    800021b0:	00813083          	ld	ra,8(sp)
    800021b4:	00013403          	ld	s0,0(sp)
    800021b8:	01010113          	addi	sp,sp,16
    800021bc:	00008067          	ret

00000000800021c0 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    800021c0:	ff010113          	addi	sp,sp,-16
    800021c4:	00113423          	sd	ra,8(sp)
    800021c8:	00813023          	sd	s0,0(sp)
    800021cc:	01010413          	addi	s0,sp,16
__mem_free(p);
    800021d0:	00002097          	auipc	ra,0x2
    800021d4:	53c080e7          	jalr	1340(ra) # 8000470c <__mem_free>
    800021d8:	00813083          	ld	ra,8(sp)
    800021dc:	00013403          	ld	s0,0(sp)
    800021e0:	01010113          	addi	sp,sp,16
    800021e4:	00008067          	ret

00000000800021e8 <_ZN5Riscv10popSppSpieEv>:
#include "../h/syscall_c.h"

using Body = void (*)(void*);

void Riscv::popSppSpie()
{
    800021e8:	ff010113          	addi	sp,sp,-16
    800021ec:	00813423          	sd	s0,8(sp)
    800021f0:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800021f4:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800021f8:	10200073          	sret
}
    800021fc:	00813403          	ld	s0,8(sp)
    80002200:	01010113          	addi	sp,sp,16
    80002204:	00008067          	ret

0000000080002208 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80002208:	f9010113          	addi	sp,sp,-112
    8000220c:	06113423          	sd	ra,104(sp)
    80002210:	06813023          	sd	s0,96(sp)
    80002214:	04913c23          	sd	s1,88(sp)
    80002218:	05213823          	sd	s2,80(sp)
    8000221c:	05313423          	sd	s3,72(sp)
    80002220:	05413023          	sd	s4,64(sp)
    80002224:	03513c23          	sd	s5,56(sp)
    80002228:	07010413          	addi	s0,sp,112
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000222c:	142027f3          	csrr	a5,scause
    80002230:	f8f43c23          	sd	a5,-104(s0)
    return scause;
    80002234:	f9843703          	ld	a4,-104(s0)
    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80002238:	ff870693          	addi	a3,a4,-8
    8000223c:	00100793          	li	a5,1
    80002240:	02d7f863          	bgeu	a5,a3,80002270 <_ZN5Riscv20handleSupervisorTrapEv+0x68>
//        TCB::timeSliceCounter = 0;
//        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80002244:	fff00793          	li	a5,-1
    80002248:	03f79793          	slli	a5,a5,0x3f
    8000224c:	00178793          	addi	a5,a5,1
    80002250:	12f70063          	beq	a4,a5,80002370 <_ZN5Riscv20handleSupervisorTrapEv+0x168>
            w_sepc(sepc);
        }

        mc_sip(SIP_SSIP);
    }
    else if (scause == 0x8000000000000009UL)
    80002254:	fff00793          	li	a5,-1
    80002258:	03f79793          	slli	a5,a5,0x3f
    8000225c:	00978793          	addi	a5,a5,9
    80002260:	06f71863          	bne	a4,a5,800022d0 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
    {
        // Interrupt: yes, cause code: Software external interrupt (console)
        console_handler();
    80002264:	00002097          	auipc	ra,0x2
    80002268:	740080e7          	jalr	1856(ra) # 800049a4 <console_handler>
        // print(scause)
        // print(sepc)
        // print(stvalue)

    }
    8000226c:	0640006f          	j	800022d0 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002270:	141027f3          	csrr	a5,sepc
    80002274:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80002278:	fa843483          	ld	s1,-88(s0)
        uint64 sepc = r_sepc() + 4;
    8000227c:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002280:	100027f3          	csrr	a5,sstatus
    80002284:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80002288:	fa043903          	ld	s2,-96(s0)
        __asm__ volatile ("mv %0, a0" : "=r" (number));
    8000228c:	00050793          	mv	a5,a0
        switch (number)
    80002290:	01300713          	li	a4,19
    80002294:	0ce78863          	beq	a5,a4,80002364 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
    80002298:	04f76e63          	bltu	a4,a5,800022f4 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
    8000229c:	01100713          	li	a4,17
    800022a0:	06e78663          	beq	a5,a4,8000230c <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    800022a4:	01200713          	li	a4,18
    800022a8:	02e79063          	bne	a5,a4,800022c8 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                printString("Exiting...\n");
    800022ac:	00003517          	auipc	a0,0x3
    800022b0:	ed450513          	addi	a0,a0,-300 # 80005180 <CONSOLE_STATUS+0x170>
    800022b4:	00000097          	auipc	ra,0x0
    800022b8:	270080e7          	jalr	624(ra) # 80002524 <_Z11printStringPKc>
                ret = TCB::threadExit();
    800022bc:	00000097          	auipc	ra,0x0
    800022c0:	d98080e7          	jalr	-616(ra) # 80002054 <_ZN3TCB10threadExitEv>
                __asm__ volatile ("mv a0, %0" : : "r" (ret));
    800022c4:	00050513          	mv	a0,a0
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800022c8:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800022cc:	14149073          	csrw	sepc,s1
    800022d0:	06813083          	ld	ra,104(sp)
    800022d4:	06013403          	ld	s0,96(sp)
    800022d8:	05813483          	ld	s1,88(sp)
    800022dc:	05013903          	ld	s2,80(sp)
    800022e0:	04813983          	ld	s3,72(sp)
    800022e4:	04013a03          	ld	s4,64(sp)
    800022e8:	03813a83          	ld	s5,56(sp)
    800022ec:	07010113          	addi	sp,sp,112
    800022f0:	00008067          	ret
        switch (number)
    800022f4:	01500713          	li	a4,21
    800022f8:	fce798e3          	bne	a5,a4,800022c8 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    800022fc:	00058513          	mv	a0,a1
                TCB::threadStart((TCB*)handle);
    80002300:	00000097          	auipc	ra,0x0
    80002304:	e0c080e7          	jalr	-500(ra) # 8000210c <_ZN3TCB11threadStartEPS_>
                break;
    80002308:	fc1ff06f          	j	800022c8 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    8000230c:	00058a13          	mv	s4,a1
                __asm__ volatile ("mv %0, a2" : "=r" (body));
    80002310:	00060993          	mv	s3,a2
                __asm__ volatile ("mv %0, a3" : "=r" (arg));
    80002314:	00068a93          	mv	s5,a3
                if (body != 0)
    80002318:	02098e63          	beqz	s3,80002354 <_ZN5Riscv20handleSupervisorTrapEv+0x14c>
                    stack = (uint64 *)new uint64[DEFAULT_STACK_SIZE];
    8000231c:	00008537          	lui	a0,0x8
    80002320:	00000097          	auipc	ra,0x0
    80002324:	e50080e7          	jalr	-432(ra) # 80002170 <_Znam>
    80002328:	00050613          	mv	a2,a0
                *handle = TCB::createThread(body, arg, stack, true);
    8000232c:	00100693          	li	a3,1
    80002330:	000a8593          	mv	a1,s5
    80002334:	00098513          	mv	a0,s3
    80002338:	00000097          	auipc	ra,0x0
    8000233c:	bc8080e7          	jalr	-1080(ra) # 80001f00 <_ZN3TCB12createThreadEPFvPvES0_S0_b>
    80002340:	00aa3023          	sd	a0,0(s4)
                ret = (*handle) != nullptr ? 0 : -1;
    80002344:	00050c63          	beqz	a0,8000235c <_ZN5Riscv20handleSupervisorTrapEv+0x154>
    80002348:	00000793          	li	a5,0
                __asm__ volatile ("mv a0, %0" : : "r" (ret));
    8000234c:	00078513          	mv	a0,a5
                break;
    80002350:	f79ff06f          	j	800022c8 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                    stack = 0;
    80002354:	00000613          	li	a2,0
    80002358:	fd5ff06f          	j	8000232c <_ZN5Riscv20handleSupervisorTrapEv+0x124>
                ret = (*handle) != nullptr ? 0 : -1;
    8000235c:	fff00793          	li	a5,-1
    80002360:	fedff06f          	j	8000234c <_ZN5Riscv20handleSupervisorTrapEv+0x144>
                TCB::dispatch();
    80002364:	00000097          	auipc	ra,0x0
    80002368:	c88080e7          	jalr	-888(ra) # 80001fec <_ZN3TCB8dispatchEv>
                break;
    8000236c:	f5dff06f          	j	800022c8 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
        TCB::timeSliceCounter++;
    80002370:	00003717          	auipc	a4,0x3
    80002374:	60873703          	ld	a4,1544(a4) # 80005978 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002378:	00073783          	ld	a5,0(a4)
    8000237c:	00178793          	addi	a5,a5,1
    80002380:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80002384:	00003717          	auipc	a4,0x3
    80002388:	60473703          	ld	a4,1540(a4) # 80005988 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000238c:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80002390:	02873703          	ld	a4,40(a4)
    80002394:	00e7f863          	bgeu	a5,a4,800023a4 <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002398:	00200793          	li	a5,2
    8000239c:	1447b073          	csrc	sip,a5
}
    800023a0:	f31ff06f          	j	800022d0 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800023a4:	141027f3          	csrr	a5,sepc
    800023a8:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    800023ac:	fb843483          	ld	s1,-72(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800023b0:	100027f3          	csrr	a5,sstatus
    800023b4:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    800023b8:	fb043903          	ld	s2,-80(s0)
            TCB::timeSliceCounter = 0;
    800023bc:	00003797          	auipc	a5,0x3
    800023c0:	5bc7b783          	ld	a5,1468(a5) # 80005978 <_GLOBAL_OFFSET_TABLE_+0x10>
    800023c4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800023c8:	00000097          	auipc	ra,0x0
    800023cc:	c24080e7          	jalr	-988(ra) # 80001fec <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800023d0:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800023d4:	14149073          	csrw	sepc,s1
}
    800023d8:	fc1ff06f          	j	80002398 <_ZN5Riscv20handleSupervisorTrapEv+0x190>

00000000800023dc <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    800023dc:	ff010113          	addi	sp,sp,-16
    800023e0:	00813423          	sd	s0,8(sp)
    800023e4:	01010413          	addi	s0,sp,16
    800023e8:	00100793          	li	a5,1
    800023ec:	00f50863          	beq	a0,a5,800023fc <_Z41__static_initialization_and_destruction_0ii+0x20>
    800023f0:	00813403          	ld	s0,8(sp)
    800023f4:	01010113          	addi	sp,sp,16
    800023f8:	00008067          	ret
    800023fc:	000107b7          	lui	a5,0x10
    80002400:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002404:	fef596e3          	bne	a1,a5,800023f0 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80002408:	00003797          	auipc	a5,0x3
    8000240c:	61078793          	addi	a5,a5,1552 # 80005a18 <_ZN9Scheduler19readyCoroutineQueueE>
    80002410:	0007b023          	sd	zero,0(a5)
    80002414:	0007b423          	sd	zero,8(a5)
    80002418:	fd9ff06f          	j	800023f0 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000241c <_ZN9Scheduler3getEv>:
{
    8000241c:	fe010113          	addi	sp,sp,-32
    80002420:	00113c23          	sd	ra,24(sp)
    80002424:	00813823          	sd	s0,16(sp)
    80002428:	00913423          	sd	s1,8(sp)
    8000242c:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80002430:	00003517          	auipc	a0,0x3
    80002434:	5e853503          	ld	a0,1512(a0) # 80005a18 <_ZN9Scheduler19readyCoroutineQueueE>
    80002438:	04050263          	beqz	a0,8000247c <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    8000243c:	00853783          	ld	a5,8(a0)
    80002440:	00003717          	auipc	a4,0x3
    80002444:	5cf73c23          	sd	a5,1496(a4) # 80005a18 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    80002448:	02078463          	beqz	a5,80002470 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    8000244c:	00053483          	ld	s1,0(a0)
        delete elem;
    80002450:	00000097          	auipc	ra,0x0
    80002454:	d48080e7          	jalr	-696(ra) # 80002198 <_ZdlPv>
}
    80002458:	00048513          	mv	a0,s1
    8000245c:	01813083          	ld	ra,24(sp)
    80002460:	01013403          	ld	s0,16(sp)
    80002464:	00813483          	ld	s1,8(sp)
    80002468:	02010113          	addi	sp,sp,32
    8000246c:	00008067          	ret
        if (!head) { tail = 0; }
    80002470:	00003797          	auipc	a5,0x3
    80002474:	5a07b823          	sd	zero,1456(a5) # 80005a20 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002478:	fd5ff06f          	j	8000244c <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    8000247c:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80002480:	fd9ff06f          	j	80002458 <_ZN9Scheduler3getEv+0x3c>

0000000080002484 <_ZN9Scheduler3putEP3TCB>:
{
    80002484:	fe010113          	addi	sp,sp,-32
    80002488:	00113c23          	sd	ra,24(sp)
    8000248c:	00813823          	sd	s0,16(sp)
    80002490:	00913423          	sd	s1,8(sp)
    80002494:	02010413          	addi	s0,sp,32
    80002498:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    8000249c:	01000513          	li	a0,16
    800024a0:	00000097          	auipc	ra,0x0
    800024a4:	ca8080e7          	jalr	-856(ra) # 80002148 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800024a8:	00953023          	sd	s1,0(a0)
    800024ac:	00053423          	sd	zero,8(a0)
        if (tail)
    800024b0:	00003797          	auipc	a5,0x3
    800024b4:	5707b783          	ld	a5,1392(a5) # 80005a20 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800024b8:	02078263          	beqz	a5,800024dc <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    800024bc:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800024c0:	00003797          	auipc	a5,0x3
    800024c4:	56a7b023          	sd	a0,1376(a5) # 80005a20 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800024c8:	01813083          	ld	ra,24(sp)
    800024cc:	01013403          	ld	s0,16(sp)
    800024d0:	00813483          	ld	s1,8(sp)
    800024d4:	02010113          	addi	sp,sp,32
    800024d8:	00008067          	ret
            head = tail = elem;
    800024dc:	00003797          	auipc	a5,0x3
    800024e0:	53c78793          	addi	a5,a5,1340 # 80005a18 <_ZN9Scheduler19readyCoroutineQueueE>
    800024e4:	00a7b423          	sd	a0,8(a5)
    800024e8:	00a7b023          	sd	a0,0(a5)
    800024ec:	fddff06f          	j	800024c8 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800024f0 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    800024f0:	ff010113          	addi	sp,sp,-16
    800024f4:	00113423          	sd	ra,8(sp)
    800024f8:	00813023          	sd	s0,0(sp)
    800024fc:	01010413          	addi	s0,sp,16
    80002500:	000105b7          	lui	a1,0x10
    80002504:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002508:	00100513          	li	a0,1
    8000250c:	00000097          	auipc	ra,0x0
    80002510:	ed0080e7          	jalr	-304(ra) # 800023dc <_Z41__static_initialization_and_destruction_0ii>
    80002514:	00813083          	ld	ra,8(sp)
    80002518:	00013403          	ld	s0,0(sp)
    8000251c:	01010113          	addi	sp,sp,16
    80002520:	00008067          	ret

0000000080002524 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../lib/console.h"
#include "../h/riscv.hpp"

void printString(char const *string)
{
    80002524:	fd010113          	addi	sp,sp,-48
    80002528:	02113423          	sd	ra,40(sp)
    8000252c:	02813023          	sd	s0,32(sp)
    80002530:	00913c23          	sd	s1,24(sp)
    80002534:	01213823          	sd	s2,16(sp)
    80002538:	03010413          	addi	s0,sp,48
    8000253c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002540:	100027f3          	csrr	a5,sstatus
    80002544:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002548:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000254c:	00200793          	li	a5,2
    80002550:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80002554:	0004c503          	lbu	a0,0(s1)
    80002558:	00050a63          	beqz	a0,8000256c <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    8000255c:	00002097          	auipc	ra,0x2
    80002560:	3d4080e7          	jalr	980(ra) # 80004930 <__putc>
        string++;
    80002564:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002568:	fedff06f          	j	80002554 <_Z11printStringPKc+0x30>
    }

    Riscv::ms_sstatus( sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    8000256c:	0009091b          	sext.w	s2,s2
    80002570:	00297913          	andi	s2,s2,2
    80002574:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002578:	10092073          	csrs	sstatus,s2
}
    8000257c:	02813083          	ld	ra,40(sp)
    80002580:	02013403          	ld	s0,32(sp)
    80002584:	01813483          	ld	s1,24(sp)
    80002588:	01013903          	ld	s2,16(sp)
    8000258c:	03010113          	addi	sp,sp,48
    80002590:	00008067          	ret

0000000080002594 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80002594:	fc010113          	addi	sp,sp,-64
    80002598:	02113c23          	sd	ra,56(sp)
    8000259c:	02813823          	sd	s0,48(sp)
    800025a0:	02913423          	sd	s1,40(sp)
    800025a4:	03213023          	sd	s2,32(sp)
    800025a8:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800025ac:	100027f3          	csrr	a5,sstatus
    800025b0:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800025b4:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800025b8:	00200793          	li	a5,2
    800025bc:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    800025c0:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    800025c4:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    800025c8:	00a00613          	li	a2,10
    800025cc:	02c5773b          	remuw	a4,a0,a2
    800025d0:	02071693          	slli	a3,a4,0x20
    800025d4:	0206d693          	srli	a3,a3,0x20
    800025d8:	00003717          	auipc	a4,0x3
    800025dc:	bb870713          	addi	a4,a4,-1096 # 80005190 <_ZZ12printIntegermE6digits>
    800025e0:	00d70733          	add	a4,a4,a3
    800025e4:	00074703          	lbu	a4,0(a4)
    800025e8:	fe040693          	addi	a3,s0,-32
    800025ec:	009687b3          	add	a5,a3,s1
    800025f0:	0014849b          	addiw	s1,s1,1
    800025f4:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    800025f8:	0005071b          	sext.w	a4,a0
    800025fc:	02c5553b          	divuw	a0,a0,a2
    80002600:	00900793          	li	a5,9
    80002604:	fce7e2e3          	bltu	a5,a4,800025c8 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
    80002608:	fff4849b          	addiw	s1,s1,-1
    8000260c:	0004ce63          	bltz	s1,80002628 <_Z12printIntegerm+0x94>
        __putc(buf[i]);
    80002610:	fe040793          	addi	a5,s0,-32
    80002614:	009787b3          	add	a5,a5,s1
    80002618:	ff07c503          	lbu	a0,-16(a5)
    8000261c:	00002097          	auipc	ra,0x2
    80002620:	314080e7          	jalr	788(ra) # 80004930 <__putc>
    80002624:	fe5ff06f          	j	80002608 <_Z12printIntegerm+0x74>

    Riscv::ms_sstatus( sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002628:	0009091b          	sext.w	s2,s2
    8000262c:	00297913          	andi	s2,s2,2
    80002630:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002634:	10092073          	csrs	sstatus,s2
    80002638:	03813083          	ld	ra,56(sp)
    8000263c:	03013403          	ld	s0,48(sp)
    80002640:	02813483          	ld	s1,40(sp)
    80002644:	02013903          	ld	s2,32(sp)
    80002648:	04010113          	addi	sp,sp,64
    8000264c:	00008067          	ret

0000000080002650 <start>:
    80002650:	ff010113          	addi	sp,sp,-16
    80002654:	00813423          	sd	s0,8(sp)
    80002658:	01010413          	addi	s0,sp,16
    8000265c:	300027f3          	csrr	a5,mstatus
    80002660:	ffffe737          	lui	a4,0xffffe
    80002664:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7b5f>
    80002668:	00e7f7b3          	and	a5,a5,a4
    8000266c:	00001737          	lui	a4,0x1
    80002670:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002674:	00e7e7b3          	or	a5,a5,a4
    80002678:	30079073          	csrw	mstatus,a5
    8000267c:	00000797          	auipc	a5,0x0
    80002680:	16078793          	addi	a5,a5,352 # 800027dc <system_main>
    80002684:	34179073          	csrw	mepc,a5
    80002688:	00000793          	li	a5,0
    8000268c:	18079073          	csrw	satp,a5
    80002690:	000107b7          	lui	a5,0x10
    80002694:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002698:	30279073          	csrw	medeleg,a5
    8000269c:	30379073          	csrw	mideleg,a5
    800026a0:	104027f3          	csrr	a5,sie
    800026a4:	2227e793          	ori	a5,a5,546
    800026a8:	10479073          	csrw	sie,a5
    800026ac:	fff00793          	li	a5,-1
    800026b0:	00a7d793          	srli	a5,a5,0xa
    800026b4:	3b079073          	csrw	pmpaddr0,a5
    800026b8:	00f00793          	li	a5,15
    800026bc:	3a079073          	csrw	pmpcfg0,a5
    800026c0:	f14027f3          	csrr	a5,mhartid
    800026c4:	0200c737          	lui	a4,0x200c
    800026c8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800026cc:	0007869b          	sext.w	a3,a5
    800026d0:	00269713          	slli	a4,a3,0x2
    800026d4:	000f4637          	lui	a2,0xf4
    800026d8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800026dc:	00d70733          	add	a4,a4,a3
    800026e0:	0037979b          	slliw	a5,a5,0x3
    800026e4:	020046b7          	lui	a3,0x2004
    800026e8:	00d787b3          	add	a5,a5,a3
    800026ec:	00c585b3          	add	a1,a1,a2
    800026f0:	00371693          	slli	a3,a4,0x3
    800026f4:	00003717          	auipc	a4,0x3
    800026f8:	33c70713          	addi	a4,a4,828 # 80005a30 <timer_scratch>
    800026fc:	00b7b023          	sd	a1,0(a5)
    80002700:	00d70733          	add	a4,a4,a3
    80002704:	00f73c23          	sd	a5,24(a4)
    80002708:	02c73023          	sd	a2,32(a4)
    8000270c:	34071073          	csrw	mscratch,a4
    80002710:	00000797          	auipc	a5,0x0
    80002714:	6e078793          	addi	a5,a5,1760 # 80002df0 <timervec>
    80002718:	30579073          	csrw	mtvec,a5
    8000271c:	300027f3          	csrr	a5,mstatus
    80002720:	0087e793          	ori	a5,a5,8
    80002724:	30079073          	csrw	mstatus,a5
    80002728:	304027f3          	csrr	a5,mie
    8000272c:	0807e793          	ori	a5,a5,128
    80002730:	30479073          	csrw	mie,a5
    80002734:	f14027f3          	csrr	a5,mhartid
    80002738:	0007879b          	sext.w	a5,a5
    8000273c:	00078213          	mv	tp,a5
    80002740:	30200073          	mret
    80002744:	00813403          	ld	s0,8(sp)
    80002748:	01010113          	addi	sp,sp,16
    8000274c:	00008067          	ret

0000000080002750 <timerinit>:
    80002750:	ff010113          	addi	sp,sp,-16
    80002754:	00813423          	sd	s0,8(sp)
    80002758:	01010413          	addi	s0,sp,16
    8000275c:	f14027f3          	csrr	a5,mhartid
    80002760:	0200c737          	lui	a4,0x200c
    80002764:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002768:	0007869b          	sext.w	a3,a5
    8000276c:	00269713          	slli	a4,a3,0x2
    80002770:	000f4637          	lui	a2,0xf4
    80002774:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002778:	00d70733          	add	a4,a4,a3
    8000277c:	0037979b          	slliw	a5,a5,0x3
    80002780:	020046b7          	lui	a3,0x2004
    80002784:	00d787b3          	add	a5,a5,a3
    80002788:	00c585b3          	add	a1,a1,a2
    8000278c:	00371693          	slli	a3,a4,0x3
    80002790:	00003717          	auipc	a4,0x3
    80002794:	2a070713          	addi	a4,a4,672 # 80005a30 <timer_scratch>
    80002798:	00b7b023          	sd	a1,0(a5)
    8000279c:	00d70733          	add	a4,a4,a3
    800027a0:	00f73c23          	sd	a5,24(a4)
    800027a4:	02c73023          	sd	a2,32(a4)
    800027a8:	34071073          	csrw	mscratch,a4
    800027ac:	00000797          	auipc	a5,0x0
    800027b0:	64478793          	addi	a5,a5,1604 # 80002df0 <timervec>
    800027b4:	30579073          	csrw	mtvec,a5
    800027b8:	300027f3          	csrr	a5,mstatus
    800027bc:	0087e793          	ori	a5,a5,8
    800027c0:	30079073          	csrw	mstatus,a5
    800027c4:	304027f3          	csrr	a5,mie
    800027c8:	0807e793          	ori	a5,a5,128
    800027cc:	30479073          	csrw	mie,a5
    800027d0:	00813403          	ld	s0,8(sp)
    800027d4:	01010113          	addi	sp,sp,16
    800027d8:	00008067          	ret

00000000800027dc <system_main>:
    800027dc:	fe010113          	addi	sp,sp,-32
    800027e0:	00813823          	sd	s0,16(sp)
    800027e4:	00913423          	sd	s1,8(sp)
    800027e8:	00113c23          	sd	ra,24(sp)
    800027ec:	02010413          	addi	s0,sp,32
    800027f0:	00000097          	auipc	ra,0x0
    800027f4:	0c4080e7          	jalr	196(ra) # 800028b4 <cpuid>
    800027f8:	00003497          	auipc	s1,0x3
    800027fc:	1d048493          	addi	s1,s1,464 # 800059c8 <started>
    80002800:	02050263          	beqz	a0,80002824 <system_main+0x48>
    80002804:	0004a783          	lw	a5,0(s1)
    80002808:	0007879b          	sext.w	a5,a5
    8000280c:	fe078ce3          	beqz	a5,80002804 <system_main+0x28>
    80002810:	0ff0000f          	fence
    80002814:	00003517          	auipc	a0,0x3
    80002818:	9bc50513          	addi	a0,a0,-1604 # 800051d0 <_ZZ12printIntegermE6digits+0x40>
    8000281c:	00001097          	auipc	ra,0x1
    80002820:	a70080e7          	jalr	-1424(ra) # 8000328c <panic>
    80002824:	00001097          	auipc	ra,0x1
    80002828:	9c4080e7          	jalr	-1596(ra) # 800031e8 <consoleinit>
    8000282c:	00001097          	auipc	ra,0x1
    80002830:	150080e7          	jalr	336(ra) # 8000397c <printfinit>
    80002834:	00003517          	auipc	a0,0x3
    80002838:	92c50513          	addi	a0,a0,-1748 # 80005160 <CONSOLE_STATUS+0x150>
    8000283c:	00001097          	auipc	ra,0x1
    80002840:	aac080e7          	jalr	-1364(ra) # 800032e8 <__printf>
    80002844:	00003517          	auipc	a0,0x3
    80002848:	95c50513          	addi	a0,a0,-1700 # 800051a0 <_ZZ12printIntegermE6digits+0x10>
    8000284c:	00001097          	auipc	ra,0x1
    80002850:	a9c080e7          	jalr	-1380(ra) # 800032e8 <__printf>
    80002854:	00003517          	auipc	a0,0x3
    80002858:	90c50513          	addi	a0,a0,-1780 # 80005160 <CONSOLE_STATUS+0x150>
    8000285c:	00001097          	auipc	ra,0x1
    80002860:	a8c080e7          	jalr	-1396(ra) # 800032e8 <__printf>
    80002864:	00001097          	auipc	ra,0x1
    80002868:	4a4080e7          	jalr	1188(ra) # 80003d08 <kinit>
    8000286c:	00000097          	auipc	ra,0x0
    80002870:	148080e7          	jalr	328(ra) # 800029b4 <trapinit>
    80002874:	00000097          	auipc	ra,0x0
    80002878:	16c080e7          	jalr	364(ra) # 800029e0 <trapinithart>
    8000287c:	00000097          	auipc	ra,0x0
    80002880:	5b4080e7          	jalr	1460(ra) # 80002e30 <plicinit>
    80002884:	00000097          	auipc	ra,0x0
    80002888:	5d4080e7          	jalr	1492(ra) # 80002e58 <plicinithart>
    8000288c:	00000097          	auipc	ra,0x0
    80002890:	078080e7          	jalr	120(ra) # 80002904 <userinit>
    80002894:	0ff0000f          	fence
    80002898:	00100793          	li	a5,1
    8000289c:	00003517          	auipc	a0,0x3
    800028a0:	91c50513          	addi	a0,a0,-1764 # 800051b8 <_ZZ12printIntegermE6digits+0x28>
    800028a4:	00f4a023          	sw	a5,0(s1)
    800028a8:	00001097          	auipc	ra,0x1
    800028ac:	a40080e7          	jalr	-1472(ra) # 800032e8 <__printf>
    800028b0:	0000006f          	j	800028b0 <system_main+0xd4>

00000000800028b4 <cpuid>:
    800028b4:	ff010113          	addi	sp,sp,-16
    800028b8:	00813423          	sd	s0,8(sp)
    800028bc:	01010413          	addi	s0,sp,16
    800028c0:	00020513          	mv	a0,tp
    800028c4:	00813403          	ld	s0,8(sp)
    800028c8:	0005051b          	sext.w	a0,a0
    800028cc:	01010113          	addi	sp,sp,16
    800028d0:	00008067          	ret

00000000800028d4 <mycpu>:
    800028d4:	ff010113          	addi	sp,sp,-16
    800028d8:	00813423          	sd	s0,8(sp)
    800028dc:	01010413          	addi	s0,sp,16
    800028e0:	00020793          	mv	a5,tp
    800028e4:	00813403          	ld	s0,8(sp)
    800028e8:	0007879b          	sext.w	a5,a5
    800028ec:	00779793          	slli	a5,a5,0x7
    800028f0:	00004517          	auipc	a0,0x4
    800028f4:	17050513          	addi	a0,a0,368 # 80006a60 <cpus>
    800028f8:	00f50533          	add	a0,a0,a5
    800028fc:	01010113          	addi	sp,sp,16
    80002900:	00008067          	ret

0000000080002904 <userinit>:
    80002904:	ff010113          	addi	sp,sp,-16
    80002908:	00813423          	sd	s0,8(sp)
    8000290c:	01010413          	addi	s0,sp,16
    80002910:	00813403          	ld	s0,8(sp)
    80002914:	01010113          	addi	sp,sp,16
    80002918:	fffff317          	auipc	t1,0xfffff
    8000291c:	53430067          	jr	1332(t1) # 80001e4c <main>

0000000080002920 <either_copyout>:
    80002920:	ff010113          	addi	sp,sp,-16
    80002924:	00813023          	sd	s0,0(sp)
    80002928:	00113423          	sd	ra,8(sp)
    8000292c:	01010413          	addi	s0,sp,16
    80002930:	02051663          	bnez	a0,8000295c <either_copyout+0x3c>
    80002934:	00058513          	mv	a0,a1
    80002938:	00060593          	mv	a1,a2
    8000293c:	0006861b          	sext.w	a2,a3
    80002940:	00002097          	auipc	ra,0x2
    80002944:	c54080e7          	jalr	-940(ra) # 80004594 <__memmove>
    80002948:	00813083          	ld	ra,8(sp)
    8000294c:	00013403          	ld	s0,0(sp)
    80002950:	00000513          	li	a0,0
    80002954:	01010113          	addi	sp,sp,16
    80002958:	00008067          	ret
    8000295c:	00003517          	auipc	a0,0x3
    80002960:	89c50513          	addi	a0,a0,-1892 # 800051f8 <_ZZ12printIntegermE6digits+0x68>
    80002964:	00001097          	auipc	ra,0x1
    80002968:	928080e7          	jalr	-1752(ra) # 8000328c <panic>

000000008000296c <either_copyin>:
    8000296c:	ff010113          	addi	sp,sp,-16
    80002970:	00813023          	sd	s0,0(sp)
    80002974:	00113423          	sd	ra,8(sp)
    80002978:	01010413          	addi	s0,sp,16
    8000297c:	02059463          	bnez	a1,800029a4 <either_copyin+0x38>
    80002980:	00060593          	mv	a1,a2
    80002984:	0006861b          	sext.w	a2,a3
    80002988:	00002097          	auipc	ra,0x2
    8000298c:	c0c080e7          	jalr	-1012(ra) # 80004594 <__memmove>
    80002990:	00813083          	ld	ra,8(sp)
    80002994:	00013403          	ld	s0,0(sp)
    80002998:	00000513          	li	a0,0
    8000299c:	01010113          	addi	sp,sp,16
    800029a0:	00008067          	ret
    800029a4:	00003517          	auipc	a0,0x3
    800029a8:	87c50513          	addi	a0,a0,-1924 # 80005220 <_ZZ12printIntegermE6digits+0x90>
    800029ac:	00001097          	auipc	ra,0x1
    800029b0:	8e0080e7          	jalr	-1824(ra) # 8000328c <panic>

00000000800029b4 <trapinit>:
    800029b4:	ff010113          	addi	sp,sp,-16
    800029b8:	00813423          	sd	s0,8(sp)
    800029bc:	01010413          	addi	s0,sp,16
    800029c0:	00813403          	ld	s0,8(sp)
    800029c4:	00003597          	auipc	a1,0x3
    800029c8:	88458593          	addi	a1,a1,-1916 # 80005248 <_ZZ12printIntegermE6digits+0xb8>
    800029cc:	00004517          	auipc	a0,0x4
    800029d0:	11450513          	addi	a0,a0,276 # 80006ae0 <tickslock>
    800029d4:	01010113          	addi	sp,sp,16
    800029d8:	00001317          	auipc	t1,0x1
    800029dc:	5c030067          	jr	1472(t1) # 80003f98 <initlock>

00000000800029e0 <trapinithart>:
    800029e0:	ff010113          	addi	sp,sp,-16
    800029e4:	00813423          	sd	s0,8(sp)
    800029e8:	01010413          	addi	s0,sp,16
    800029ec:	00000797          	auipc	a5,0x0
    800029f0:	2f478793          	addi	a5,a5,756 # 80002ce0 <kernelvec>
    800029f4:	10579073          	csrw	stvec,a5
    800029f8:	00813403          	ld	s0,8(sp)
    800029fc:	01010113          	addi	sp,sp,16
    80002a00:	00008067          	ret

0000000080002a04 <usertrap>:
    80002a04:	ff010113          	addi	sp,sp,-16
    80002a08:	00813423          	sd	s0,8(sp)
    80002a0c:	01010413          	addi	s0,sp,16
    80002a10:	00813403          	ld	s0,8(sp)
    80002a14:	01010113          	addi	sp,sp,16
    80002a18:	00008067          	ret

0000000080002a1c <usertrapret>:
    80002a1c:	ff010113          	addi	sp,sp,-16
    80002a20:	00813423          	sd	s0,8(sp)
    80002a24:	01010413          	addi	s0,sp,16
    80002a28:	00813403          	ld	s0,8(sp)
    80002a2c:	01010113          	addi	sp,sp,16
    80002a30:	00008067          	ret

0000000080002a34 <kerneltrap>:
    80002a34:	fe010113          	addi	sp,sp,-32
    80002a38:	00813823          	sd	s0,16(sp)
    80002a3c:	00113c23          	sd	ra,24(sp)
    80002a40:	00913423          	sd	s1,8(sp)
    80002a44:	02010413          	addi	s0,sp,32
    80002a48:	142025f3          	csrr	a1,scause
    80002a4c:	100027f3          	csrr	a5,sstatus
    80002a50:	0027f793          	andi	a5,a5,2
    80002a54:	10079c63          	bnez	a5,80002b6c <kerneltrap+0x138>
    80002a58:	142027f3          	csrr	a5,scause
    80002a5c:	0207ce63          	bltz	a5,80002a98 <kerneltrap+0x64>
    80002a60:	00003517          	auipc	a0,0x3
    80002a64:	83050513          	addi	a0,a0,-2000 # 80005290 <_ZZ12printIntegermE6digits+0x100>
    80002a68:	00001097          	auipc	ra,0x1
    80002a6c:	880080e7          	jalr	-1920(ra) # 800032e8 <__printf>
    80002a70:	141025f3          	csrr	a1,sepc
    80002a74:	14302673          	csrr	a2,stval
    80002a78:	00003517          	auipc	a0,0x3
    80002a7c:	82850513          	addi	a0,a0,-2008 # 800052a0 <_ZZ12printIntegermE6digits+0x110>
    80002a80:	00001097          	auipc	ra,0x1
    80002a84:	868080e7          	jalr	-1944(ra) # 800032e8 <__printf>
    80002a88:	00003517          	auipc	a0,0x3
    80002a8c:	83050513          	addi	a0,a0,-2000 # 800052b8 <_ZZ12printIntegermE6digits+0x128>
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	7fc080e7          	jalr	2044(ra) # 8000328c <panic>
    80002a98:	0ff7f713          	andi	a4,a5,255
    80002a9c:	00900693          	li	a3,9
    80002aa0:	04d70063          	beq	a4,a3,80002ae0 <kerneltrap+0xac>
    80002aa4:	fff00713          	li	a4,-1
    80002aa8:	03f71713          	slli	a4,a4,0x3f
    80002aac:	00170713          	addi	a4,a4,1
    80002ab0:	fae798e3          	bne	a5,a4,80002a60 <kerneltrap+0x2c>
    80002ab4:	00000097          	auipc	ra,0x0
    80002ab8:	e00080e7          	jalr	-512(ra) # 800028b4 <cpuid>
    80002abc:	06050663          	beqz	a0,80002b28 <kerneltrap+0xf4>
    80002ac0:	144027f3          	csrr	a5,sip
    80002ac4:	ffd7f793          	andi	a5,a5,-3
    80002ac8:	14479073          	csrw	sip,a5
    80002acc:	01813083          	ld	ra,24(sp)
    80002ad0:	01013403          	ld	s0,16(sp)
    80002ad4:	00813483          	ld	s1,8(sp)
    80002ad8:	02010113          	addi	sp,sp,32
    80002adc:	00008067          	ret
    80002ae0:	00000097          	auipc	ra,0x0
    80002ae4:	3c4080e7          	jalr	964(ra) # 80002ea4 <plic_claim>
    80002ae8:	00a00793          	li	a5,10
    80002aec:	00050493          	mv	s1,a0
    80002af0:	06f50863          	beq	a0,a5,80002b60 <kerneltrap+0x12c>
    80002af4:	fc050ce3          	beqz	a0,80002acc <kerneltrap+0x98>
    80002af8:	00050593          	mv	a1,a0
    80002afc:	00002517          	auipc	a0,0x2
    80002b00:	77450513          	addi	a0,a0,1908 # 80005270 <_ZZ12printIntegermE6digits+0xe0>
    80002b04:	00000097          	auipc	ra,0x0
    80002b08:	7e4080e7          	jalr	2020(ra) # 800032e8 <__printf>
    80002b0c:	01013403          	ld	s0,16(sp)
    80002b10:	01813083          	ld	ra,24(sp)
    80002b14:	00048513          	mv	a0,s1
    80002b18:	00813483          	ld	s1,8(sp)
    80002b1c:	02010113          	addi	sp,sp,32
    80002b20:	00000317          	auipc	t1,0x0
    80002b24:	3bc30067          	jr	956(t1) # 80002edc <plic_complete>
    80002b28:	00004517          	auipc	a0,0x4
    80002b2c:	fb850513          	addi	a0,a0,-72 # 80006ae0 <tickslock>
    80002b30:	00001097          	auipc	ra,0x1
    80002b34:	48c080e7          	jalr	1164(ra) # 80003fbc <acquire>
    80002b38:	00003717          	auipc	a4,0x3
    80002b3c:	e9470713          	addi	a4,a4,-364 # 800059cc <ticks>
    80002b40:	00072783          	lw	a5,0(a4)
    80002b44:	00004517          	auipc	a0,0x4
    80002b48:	f9c50513          	addi	a0,a0,-100 # 80006ae0 <tickslock>
    80002b4c:	0017879b          	addiw	a5,a5,1
    80002b50:	00f72023          	sw	a5,0(a4)
    80002b54:	00001097          	auipc	ra,0x1
    80002b58:	534080e7          	jalr	1332(ra) # 80004088 <release>
    80002b5c:	f65ff06f          	j	80002ac0 <kerneltrap+0x8c>
    80002b60:	00001097          	auipc	ra,0x1
    80002b64:	090080e7          	jalr	144(ra) # 80003bf0 <uartintr>
    80002b68:	fa5ff06f          	j	80002b0c <kerneltrap+0xd8>
    80002b6c:	00002517          	auipc	a0,0x2
    80002b70:	6e450513          	addi	a0,a0,1764 # 80005250 <_ZZ12printIntegermE6digits+0xc0>
    80002b74:	00000097          	auipc	ra,0x0
    80002b78:	718080e7          	jalr	1816(ra) # 8000328c <panic>

0000000080002b7c <clockintr>:
    80002b7c:	fe010113          	addi	sp,sp,-32
    80002b80:	00813823          	sd	s0,16(sp)
    80002b84:	00913423          	sd	s1,8(sp)
    80002b88:	00113c23          	sd	ra,24(sp)
    80002b8c:	02010413          	addi	s0,sp,32
    80002b90:	00004497          	auipc	s1,0x4
    80002b94:	f5048493          	addi	s1,s1,-176 # 80006ae0 <tickslock>
    80002b98:	00048513          	mv	a0,s1
    80002b9c:	00001097          	auipc	ra,0x1
    80002ba0:	420080e7          	jalr	1056(ra) # 80003fbc <acquire>
    80002ba4:	00003717          	auipc	a4,0x3
    80002ba8:	e2870713          	addi	a4,a4,-472 # 800059cc <ticks>
    80002bac:	00072783          	lw	a5,0(a4)
    80002bb0:	01013403          	ld	s0,16(sp)
    80002bb4:	01813083          	ld	ra,24(sp)
    80002bb8:	00048513          	mv	a0,s1
    80002bbc:	0017879b          	addiw	a5,a5,1
    80002bc0:	00813483          	ld	s1,8(sp)
    80002bc4:	00f72023          	sw	a5,0(a4)
    80002bc8:	02010113          	addi	sp,sp,32
    80002bcc:	00001317          	auipc	t1,0x1
    80002bd0:	4bc30067          	jr	1212(t1) # 80004088 <release>

0000000080002bd4 <devintr>:
    80002bd4:	142027f3          	csrr	a5,scause
    80002bd8:	00000513          	li	a0,0
    80002bdc:	0007c463          	bltz	a5,80002be4 <devintr+0x10>
    80002be0:	00008067          	ret
    80002be4:	fe010113          	addi	sp,sp,-32
    80002be8:	00813823          	sd	s0,16(sp)
    80002bec:	00113c23          	sd	ra,24(sp)
    80002bf0:	00913423          	sd	s1,8(sp)
    80002bf4:	02010413          	addi	s0,sp,32
    80002bf8:	0ff7f713          	andi	a4,a5,255
    80002bfc:	00900693          	li	a3,9
    80002c00:	04d70c63          	beq	a4,a3,80002c58 <devintr+0x84>
    80002c04:	fff00713          	li	a4,-1
    80002c08:	03f71713          	slli	a4,a4,0x3f
    80002c0c:	00170713          	addi	a4,a4,1
    80002c10:	00e78c63          	beq	a5,a4,80002c28 <devintr+0x54>
    80002c14:	01813083          	ld	ra,24(sp)
    80002c18:	01013403          	ld	s0,16(sp)
    80002c1c:	00813483          	ld	s1,8(sp)
    80002c20:	02010113          	addi	sp,sp,32
    80002c24:	00008067          	ret
    80002c28:	00000097          	auipc	ra,0x0
    80002c2c:	c8c080e7          	jalr	-884(ra) # 800028b4 <cpuid>
    80002c30:	06050663          	beqz	a0,80002c9c <devintr+0xc8>
    80002c34:	144027f3          	csrr	a5,sip
    80002c38:	ffd7f793          	andi	a5,a5,-3
    80002c3c:	14479073          	csrw	sip,a5
    80002c40:	01813083          	ld	ra,24(sp)
    80002c44:	01013403          	ld	s0,16(sp)
    80002c48:	00813483          	ld	s1,8(sp)
    80002c4c:	00200513          	li	a0,2
    80002c50:	02010113          	addi	sp,sp,32
    80002c54:	00008067          	ret
    80002c58:	00000097          	auipc	ra,0x0
    80002c5c:	24c080e7          	jalr	588(ra) # 80002ea4 <plic_claim>
    80002c60:	00a00793          	li	a5,10
    80002c64:	00050493          	mv	s1,a0
    80002c68:	06f50663          	beq	a0,a5,80002cd4 <devintr+0x100>
    80002c6c:	00100513          	li	a0,1
    80002c70:	fa0482e3          	beqz	s1,80002c14 <devintr+0x40>
    80002c74:	00048593          	mv	a1,s1
    80002c78:	00002517          	auipc	a0,0x2
    80002c7c:	5f850513          	addi	a0,a0,1528 # 80005270 <_ZZ12printIntegermE6digits+0xe0>
    80002c80:	00000097          	auipc	ra,0x0
    80002c84:	668080e7          	jalr	1640(ra) # 800032e8 <__printf>
    80002c88:	00048513          	mv	a0,s1
    80002c8c:	00000097          	auipc	ra,0x0
    80002c90:	250080e7          	jalr	592(ra) # 80002edc <plic_complete>
    80002c94:	00100513          	li	a0,1
    80002c98:	f7dff06f          	j	80002c14 <devintr+0x40>
    80002c9c:	00004517          	auipc	a0,0x4
    80002ca0:	e4450513          	addi	a0,a0,-444 # 80006ae0 <tickslock>
    80002ca4:	00001097          	auipc	ra,0x1
    80002ca8:	318080e7          	jalr	792(ra) # 80003fbc <acquire>
    80002cac:	00003717          	auipc	a4,0x3
    80002cb0:	d2070713          	addi	a4,a4,-736 # 800059cc <ticks>
    80002cb4:	00072783          	lw	a5,0(a4)
    80002cb8:	00004517          	auipc	a0,0x4
    80002cbc:	e2850513          	addi	a0,a0,-472 # 80006ae0 <tickslock>
    80002cc0:	0017879b          	addiw	a5,a5,1
    80002cc4:	00f72023          	sw	a5,0(a4)
    80002cc8:	00001097          	auipc	ra,0x1
    80002ccc:	3c0080e7          	jalr	960(ra) # 80004088 <release>
    80002cd0:	f65ff06f          	j	80002c34 <devintr+0x60>
    80002cd4:	00001097          	auipc	ra,0x1
    80002cd8:	f1c080e7          	jalr	-228(ra) # 80003bf0 <uartintr>
    80002cdc:	fadff06f          	j	80002c88 <devintr+0xb4>

0000000080002ce0 <kernelvec>:
    80002ce0:	f0010113          	addi	sp,sp,-256
    80002ce4:	00113023          	sd	ra,0(sp)
    80002ce8:	00213423          	sd	sp,8(sp)
    80002cec:	00313823          	sd	gp,16(sp)
    80002cf0:	00413c23          	sd	tp,24(sp)
    80002cf4:	02513023          	sd	t0,32(sp)
    80002cf8:	02613423          	sd	t1,40(sp)
    80002cfc:	02713823          	sd	t2,48(sp)
    80002d00:	02813c23          	sd	s0,56(sp)
    80002d04:	04913023          	sd	s1,64(sp)
    80002d08:	04a13423          	sd	a0,72(sp)
    80002d0c:	04b13823          	sd	a1,80(sp)
    80002d10:	04c13c23          	sd	a2,88(sp)
    80002d14:	06d13023          	sd	a3,96(sp)
    80002d18:	06e13423          	sd	a4,104(sp)
    80002d1c:	06f13823          	sd	a5,112(sp)
    80002d20:	07013c23          	sd	a6,120(sp)
    80002d24:	09113023          	sd	a7,128(sp)
    80002d28:	09213423          	sd	s2,136(sp)
    80002d2c:	09313823          	sd	s3,144(sp)
    80002d30:	09413c23          	sd	s4,152(sp)
    80002d34:	0b513023          	sd	s5,160(sp)
    80002d38:	0b613423          	sd	s6,168(sp)
    80002d3c:	0b713823          	sd	s7,176(sp)
    80002d40:	0b813c23          	sd	s8,184(sp)
    80002d44:	0d913023          	sd	s9,192(sp)
    80002d48:	0da13423          	sd	s10,200(sp)
    80002d4c:	0db13823          	sd	s11,208(sp)
    80002d50:	0dc13c23          	sd	t3,216(sp)
    80002d54:	0fd13023          	sd	t4,224(sp)
    80002d58:	0fe13423          	sd	t5,232(sp)
    80002d5c:	0ff13823          	sd	t6,240(sp)
    80002d60:	cd5ff0ef          	jal	ra,80002a34 <kerneltrap>
    80002d64:	00013083          	ld	ra,0(sp)
    80002d68:	00813103          	ld	sp,8(sp)
    80002d6c:	01013183          	ld	gp,16(sp)
    80002d70:	02013283          	ld	t0,32(sp)
    80002d74:	02813303          	ld	t1,40(sp)
    80002d78:	03013383          	ld	t2,48(sp)
    80002d7c:	03813403          	ld	s0,56(sp)
    80002d80:	04013483          	ld	s1,64(sp)
    80002d84:	04813503          	ld	a0,72(sp)
    80002d88:	05013583          	ld	a1,80(sp)
    80002d8c:	05813603          	ld	a2,88(sp)
    80002d90:	06013683          	ld	a3,96(sp)
    80002d94:	06813703          	ld	a4,104(sp)
    80002d98:	07013783          	ld	a5,112(sp)
    80002d9c:	07813803          	ld	a6,120(sp)
    80002da0:	08013883          	ld	a7,128(sp)
    80002da4:	08813903          	ld	s2,136(sp)
    80002da8:	09013983          	ld	s3,144(sp)
    80002dac:	09813a03          	ld	s4,152(sp)
    80002db0:	0a013a83          	ld	s5,160(sp)
    80002db4:	0a813b03          	ld	s6,168(sp)
    80002db8:	0b013b83          	ld	s7,176(sp)
    80002dbc:	0b813c03          	ld	s8,184(sp)
    80002dc0:	0c013c83          	ld	s9,192(sp)
    80002dc4:	0c813d03          	ld	s10,200(sp)
    80002dc8:	0d013d83          	ld	s11,208(sp)
    80002dcc:	0d813e03          	ld	t3,216(sp)
    80002dd0:	0e013e83          	ld	t4,224(sp)
    80002dd4:	0e813f03          	ld	t5,232(sp)
    80002dd8:	0f013f83          	ld	t6,240(sp)
    80002ddc:	10010113          	addi	sp,sp,256
    80002de0:	10200073          	sret
    80002de4:	00000013          	nop
    80002de8:	00000013          	nop
    80002dec:	00000013          	nop

0000000080002df0 <timervec>:
    80002df0:	34051573          	csrrw	a0,mscratch,a0
    80002df4:	00b53023          	sd	a1,0(a0)
    80002df8:	00c53423          	sd	a2,8(a0)
    80002dfc:	00d53823          	sd	a3,16(a0)
    80002e00:	01853583          	ld	a1,24(a0)
    80002e04:	02053603          	ld	a2,32(a0)
    80002e08:	0005b683          	ld	a3,0(a1)
    80002e0c:	00c686b3          	add	a3,a3,a2
    80002e10:	00d5b023          	sd	a3,0(a1)
    80002e14:	00200593          	li	a1,2
    80002e18:	14459073          	csrw	sip,a1
    80002e1c:	01053683          	ld	a3,16(a0)
    80002e20:	00853603          	ld	a2,8(a0)
    80002e24:	00053583          	ld	a1,0(a0)
    80002e28:	34051573          	csrrw	a0,mscratch,a0
    80002e2c:	30200073          	mret

0000000080002e30 <plicinit>:
    80002e30:	ff010113          	addi	sp,sp,-16
    80002e34:	00813423          	sd	s0,8(sp)
    80002e38:	01010413          	addi	s0,sp,16
    80002e3c:	00813403          	ld	s0,8(sp)
    80002e40:	0c0007b7          	lui	a5,0xc000
    80002e44:	00100713          	li	a4,1
    80002e48:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002e4c:	00e7a223          	sw	a4,4(a5)
    80002e50:	01010113          	addi	sp,sp,16
    80002e54:	00008067          	ret

0000000080002e58 <plicinithart>:
    80002e58:	ff010113          	addi	sp,sp,-16
    80002e5c:	00813023          	sd	s0,0(sp)
    80002e60:	00113423          	sd	ra,8(sp)
    80002e64:	01010413          	addi	s0,sp,16
    80002e68:	00000097          	auipc	ra,0x0
    80002e6c:	a4c080e7          	jalr	-1460(ra) # 800028b4 <cpuid>
    80002e70:	0085171b          	slliw	a4,a0,0x8
    80002e74:	0c0027b7          	lui	a5,0xc002
    80002e78:	00e787b3          	add	a5,a5,a4
    80002e7c:	40200713          	li	a4,1026
    80002e80:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002e84:	00813083          	ld	ra,8(sp)
    80002e88:	00013403          	ld	s0,0(sp)
    80002e8c:	00d5151b          	slliw	a0,a0,0xd
    80002e90:	0c2017b7          	lui	a5,0xc201
    80002e94:	00a78533          	add	a0,a5,a0
    80002e98:	00052023          	sw	zero,0(a0)
    80002e9c:	01010113          	addi	sp,sp,16
    80002ea0:	00008067          	ret

0000000080002ea4 <plic_claim>:
    80002ea4:	ff010113          	addi	sp,sp,-16
    80002ea8:	00813023          	sd	s0,0(sp)
    80002eac:	00113423          	sd	ra,8(sp)
    80002eb0:	01010413          	addi	s0,sp,16
    80002eb4:	00000097          	auipc	ra,0x0
    80002eb8:	a00080e7          	jalr	-1536(ra) # 800028b4 <cpuid>
    80002ebc:	00813083          	ld	ra,8(sp)
    80002ec0:	00013403          	ld	s0,0(sp)
    80002ec4:	00d5151b          	slliw	a0,a0,0xd
    80002ec8:	0c2017b7          	lui	a5,0xc201
    80002ecc:	00a78533          	add	a0,a5,a0
    80002ed0:	00452503          	lw	a0,4(a0)
    80002ed4:	01010113          	addi	sp,sp,16
    80002ed8:	00008067          	ret

0000000080002edc <plic_complete>:
    80002edc:	fe010113          	addi	sp,sp,-32
    80002ee0:	00813823          	sd	s0,16(sp)
    80002ee4:	00913423          	sd	s1,8(sp)
    80002ee8:	00113c23          	sd	ra,24(sp)
    80002eec:	02010413          	addi	s0,sp,32
    80002ef0:	00050493          	mv	s1,a0
    80002ef4:	00000097          	auipc	ra,0x0
    80002ef8:	9c0080e7          	jalr	-1600(ra) # 800028b4 <cpuid>
    80002efc:	01813083          	ld	ra,24(sp)
    80002f00:	01013403          	ld	s0,16(sp)
    80002f04:	00d5179b          	slliw	a5,a0,0xd
    80002f08:	0c201737          	lui	a4,0xc201
    80002f0c:	00f707b3          	add	a5,a4,a5
    80002f10:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002f14:	00813483          	ld	s1,8(sp)
    80002f18:	02010113          	addi	sp,sp,32
    80002f1c:	00008067          	ret

0000000080002f20 <consolewrite>:
    80002f20:	fb010113          	addi	sp,sp,-80
    80002f24:	04813023          	sd	s0,64(sp)
    80002f28:	04113423          	sd	ra,72(sp)
    80002f2c:	02913c23          	sd	s1,56(sp)
    80002f30:	03213823          	sd	s2,48(sp)
    80002f34:	03313423          	sd	s3,40(sp)
    80002f38:	03413023          	sd	s4,32(sp)
    80002f3c:	01513c23          	sd	s5,24(sp)
    80002f40:	05010413          	addi	s0,sp,80
    80002f44:	06c05c63          	blez	a2,80002fbc <consolewrite+0x9c>
    80002f48:	00060993          	mv	s3,a2
    80002f4c:	00050a13          	mv	s4,a0
    80002f50:	00058493          	mv	s1,a1
    80002f54:	00000913          	li	s2,0
    80002f58:	fff00a93          	li	s5,-1
    80002f5c:	01c0006f          	j	80002f78 <consolewrite+0x58>
    80002f60:	fbf44503          	lbu	a0,-65(s0)
    80002f64:	0019091b          	addiw	s2,s2,1
    80002f68:	00148493          	addi	s1,s1,1
    80002f6c:	00001097          	auipc	ra,0x1
    80002f70:	a9c080e7          	jalr	-1380(ra) # 80003a08 <uartputc>
    80002f74:	03298063          	beq	s3,s2,80002f94 <consolewrite+0x74>
    80002f78:	00048613          	mv	a2,s1
    80002f7c:	00100693          	li	a3,1
    80002f80:	000a0593          	mv	a1,s4
    80002f84:	fbf40513          	addi	a0,s0,-65
    80002f88:	00000097          	auipc	ra,0x0
    80002f8c:	9e4080e7          	jalr	-1564(ra) # 8000296c <either_copyin>
    80002f90:	fd5518e3          	bne	a0,s5,80002f60 <consolewrite+0x40>
    80002f94:	04813083          	ld	ra,72(sp)
    80002f98:	04013403          	ld	s0,64(sp)
    80002f9c:	03813483          	ld	s1,56(sp)
    80002fa0:	02813983          	ld	s3,40(sp)
    80002fa4:	02013a03          	ld	s4,32(sp)
    80002fa8:	01813a83          	ld	s5,24(sp)
    80002fac:	00090513          	mv	a0,s2
    80002fb0:	03013903          	ld	s2,48(sp)
    80002fb4:	05010113          	addi	sp,sp,80
    80002fb8:	00008067          	ret
    80002fbc:	00000913          	li	s2,0
    80002fc0:	fd5ff06f          	j	80002f94 <consolewrite+0x74>

0000000080002fc4 <consoleread>:
    80002fc4:	f9010113          	addi	sp,sp,-112
    80002fc8:	06813023          	sd	s0,96(sp)
    80002fcc:	04913c23          	sd	s1,88(sp)
    80002fd0:	05213823          	sd	s2,80(sp)
    80002fd4:	05313423          	sd	s3,72(sp)
    80002fd8:	05413023          	sd	s4,64(sp)
    80002fdc:	03513c23          	sd	s5,56(sp)
    80002fe0:	03613823          	sd	s6,48(sp)
    80002fe4:	03713423          	sd	s7,40(sp)
    80002fe8:	03813023          	sd	s8,32(sp)
    80002fec:	06113423          	sd	ra,104(sp)
    80002ff0:	01913c23          	sd	s9,24(sp)
    80002ff4:	07010413          	addi	s0,sp,112
    80002ff8:	00060b93          	mv	s7,a2
    80002ffc:	00050913          	mv	s2,a0
    80003000:	00058c13          	mv	s8,a1
    80003004:	00060b1b          	sext.w	s6,a2
    80003008:	00004497          	auipc	s1,0x4
    8000300c:	b0048493          	addi	s1,s1,-1280 # 80006b08 <cons>
    80003010:	00400993          	li	s3,4
    80003014:	fff00a13          	li	s4,-1
    80003018:	00a00a93          	li	s5,10
    8000301c:	05705e63          	blez	s7,80003078 <consoleread+0xb4>
    80003020:	09c4a703          	lw	a4,156(s1)
    80003024:	0984a783          	lw	a5,152(s1)
    80003028:	0007071b          	sext.w	a4,a4
    8000302c:	08e78463          	beq	a5,a4,800030b4 <consoleread+0xf0>
    80003030:	07f7f713          	andi	a4,a5,127
    80003034:	00e48733          	add	a4,s1,a4
    80003038:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000303c:	0017869b          	addiw	a3,a5,1
    80003040:	08d4ac23          	sw	a3,152(s1)
    80003044:	00070c9b          	sext.w	s9,a4
    80003048:	0b370663          	beq	a4,s3,800030f4 <consoleread+0x130>
    8000304c:	00100693          	li	a3,1
    80003050:	f9f40613          	addi	a2,s0,-97
    80003054:	000c0593          	mv	a1,s8
    80003058:	00090513          	mv	a0,s2
    8000305c:	f8e40fa3          	sb	a4,-97(s0)
    80003060:	00000097          	auipc	ra,0x0
    80003064:	8c0080e7          	jalr	-1856(ra) # 80002920 <either_copyout>
    80003068:	01450863          	beq	a0,s4,80003078 <consoleread+0xb4>
    8000306c:	001c0c13          	addi	s8,s8,1
    80003070:	fffb8b9b          	addiw	s7,s7,-1
    80003074:	fb5c94e3          	bne	s9,s5,8000301c <consoleread+0x58>
    80003078:	000b851b          	sext.w	a0,s7
    8000307c:	06813083          	ld	ra,104(sp)
    80003080:	06013403          	ld	s0,96(sp)
    80003084:	05813483          	ld	s1,88(sp)
    80003088:	05013903          	ld	s2,80(sp)
    8000308c:	04813983          	ld	s3,72(sp)
    80003090:	04013a03          	ld	s4,64(sp)
    80003094:	03813a83          	ld	s5,56(sp)
    80003098:	02813b83          	ld	s7,40(sp)
    8000309c:	02013c03          	ld	s8,32(sp)
    800030a0:	01813c83          	ld	s9,24(sp)
    800030a4:	40ab053b          	subw	a0,s6,a0
    800030a8:	03013b03          	ld	s6,48(sp)
    800030ac:	07010113          	addi	sp,sp,112
    800030b0:	00008067          	ret
    800030b4:	00001097          	auipc	ra,0x1
    800030b8:	1d8080e7          	jalr	472(ra) # 8000428c <push_on>
    800030bc:	0984a703          	lw	a4,152(s1)
    800030c0:	09c4a783          	lw	a5,156(s1)
    800030c4:	0007879b          	sext.w	a5,a5
    800030c8:	fef70ce3          	beq	a4,a5,800030c0 <consoleread+0xfc>
    800030cc:	00001097          	auipc	ra,0x1
    800030d0:	234080e7          	jalr	564(ra) # 80004300 <pop_on>
    800030d4:	0984a783          	lw	a5,152(s1)
    800030d8:	07f7f713          	andi	a4,a5,127
    800030dc:	00e48733          	add	a4,s1,a4
    800030e0:	01874703          	lbu	a4,24(a4)
    800030e4:	0017869b          	addiw	a3,a5,1
    800030e8:	08d4ac23          	sw	a3,152(s1)
    800030ec:	00070c9b          	sext.w	s9,a4
    800030f0:	f5371ee3          	bne	a4,s3,8000304c <consoleread+0x88>
    800030f4:	000b851b          	sext.w	a0,s7
    800030f8:	f96bf2e3          	bgeu	s7,s6,8000307c <consoleread+0xb8>
    800030fc:	08f4ac23          	sw	a5,152(s1)
    80003100:	f7dff06f          	j	8000307c <consoleread+0xb8>

0000000080003104 <consputc>:
    80003104:	10000793          	li	a5,256
    80003108:	00f50663          	beq	a0,a5,80003114 <consputc+0x10>
    8000310c:	00001317          	auipc	t1,0x1
    80003110:	9f430067          	jr	-1548(t1) # 80003b00 <uartputc_sync>
    80003114:	ff010113          	addi	sp,sp,-16
    80003118:	00113423          	sd	ra,8(sp)
    8000311c:	00813023          	sd	s0,0(sp)
    80003120:	01010413          	addi	s0,sp,16
    80003124:	00800513          	li	a0,8
    80003128:	00001097          	auipc	ra,0x1
    8000312c:	9d8080e7          	jalr	-1576(ra) # 80003b00 <uartputc_sync>
    80003130:	02000513          	li	a0,32
    80003134:	00001097          	auipc	ra,0x1
    80003138:	9cc080e7          	jalr	-1588(ra) # 80003b00 <uartputc_sync>
    8000313c:	00013403          	ld	s0,0(sp)
    80003140:	00813083          	ld	ra,8(sp)
    80003144:	00800513          	li	a0,8
    80003148:	01010113          	addi	sp,sp,16
    8000314c:	00001317          	auipc	t1,0x1
    80003150:	9b430067          	jr	-1612(t1) # 80003b00 <uartputc_sync>

0000000080003154 <consoleintr>:
    80003154:	fe010113          	addi	sp,sp,-32
    80003158:	00813823          	sd	s0,16(sp)
    8000315c:	00913423          	sd	s1,8(sp)
    80003160:	01213023          	sd	s2,0(sp)
    80003164:	00113c23          	sd	ra,24(sp)
    80003168:	02010413          	addi	s0,sp,32
    8000316c:	00004917          	auipc	s2,0x4
    80003170:	99c90913          	addi	s2,s2,-1636 # 80006b08 <cons>
    80003174:	00050493          	mv	s1,a0
    80003178:	00090513          	mv	a0,s2
    8000317c:	00001097          	auipc	ra,0x1
    80003180:	e40080e7          	jalr	-448(ra) # 80003fbc <acquire>
    80003184:	02048c63          	beqz	s1,800031bc <consoleintr+0x68>
    80003188:	0a092783          	lw	a5,160(s2)
    8000318c:	09892703          	lw	a4,152(s2)
    80003190:	07f00693          	li	a3,127
    80003194:	40e7873b          	subw	a4,a5,a4
    80003198:	02e6e263          	bltu	a3,a4,800031bc <consoleintr+0x68>
    8000319c:	00d00713          	li	a4,13
    800031a0:	04e48063          	beq	s1,a4,800031e0 <consoleintr+0x8c>
    800031a4:	07f7f713          	andi	a4,a5,127
    800031a8:	00e90733          	add	a4,s2,a4
    800031ac:	0017879b          	addiw	a5,a5,1
    800031b0:	0af92023          	sw	a5,160(s2)
    800031b4:	00970c23          	sb	s1,24(a4)
    800031b8:	08f92e23          	sw	a5,156(s2)
    800031bc:	01013403          	ld	s0,16(sp)
    800031c0:	01813083          	ld	ra,24(sp)
    800031c4:	00813483          	ld	s1,8(sp)
    800031c8:	00013903          	ld	s2,0(sp)
    800031cc:	00004517          	auipc	a0,0x4
    800031d0:	93c50513          	addi	a0,a0,-1732 # 80006b08 <cons>
    800031d4:	02010113          	addi	sp,sp,32
    800031d8:	00001317          	auipc	t1,0x1
    800031dc:	eb030067          	jr	-336(t1) # 80004088 <release>
    800031e0:	00a00493          	li	s1,10
    800031e4:	fc1ff06f          	j	800031a4 <consoleintr+0x50>

00000000800031e8 <consoleinit>:
    800031e8:	fe010113          	addi	sp,sp,-32
    800031ec:	00113c23          	sd	ra,24(sp)
    800031f0:	00813823          	sd	s0,16(sp)
    800031f4:	00913423          	sd	s1,8(sp)
    800031f8:	02010413          	addi	s0,sp,32
    800031fc:	00004497          	auipc	s1,0x4
    80003200:	90c48493          	addi	s1,s1,-1780 # 80006b08 <cons>
    80003204:	00048513          	mv	a0,s1
    80003208:	00002597          	auipc	a1,0x2
    8000320c:	0c058593          	addi	a1,a1,192 # 800052c8 <_ZZ12printIntegermE6digits+0x138>
    80003210:	00001097          	auipc	ra,0x1
    80003214:	d88080e7          	jalr	-632(ra) # 80003f98 <initlock>
    80003218:	00000097          	auipc	ra,0x0
    8000321c:	7ac080e7          	jalr	1964(ra) # 800039c4 <uartinit>
    80003220:	01813083          	ld	ra,24(sp)
    80003224:	01013403          	ld	s0,16(sp)
    80003228:	00000797          	auipc	a5,0x0
    8000322c:	d9c78793          	addi	a5,a5,-612 # 80002fc4 <consoleread>
    80003230:	0af4bc23          	sd	a5,184(s1)
    80003234:	00000797          	auipc	a5,0x0
    80003238:	cec78793          	addi	a5,a5,-788 # 80002f20 <consolewrite>
    8000323c:	0cf4b023          	sd	a5,192(s1)
    80003240:	00813483          	ld	s1,8(sp)
    80003244:	02010113          	addi	sp,sp,32
    80003248:	00008067          	ret

000000008000324c <console_read>:
    8000324c:	ff010113          	addi	sp,sp,-16
    80003250:	00813423          	sd	s0,8(sp)
    80003254:	01010413          	addi	s0,sp,16
    80003258:	00813403          	ld	s0,8(sp)
    8000325c:	00004317          	auipc	t1,0x4
    80003260:	96433303          	ld	t1,-1692(t1) # 80006bc0 <devsw+0x10>
    80003264:	01010113          	addi	sp,sp,16
    80003268:	00030067          	jr	t1

000000008000326c <console_write>:
    8000326c:	ff010113          	addi	sp,sp,-16
    80003270:	00813423          	sd	s0,8(sp)
    80003274:	01010413          	addi	s0,sp,16
    80003278:	00813403          	ld	s0,8(sp)
    8000327c:	00004317          	auipc	t1,0x4
    80003280:	94c33303          	ld	t1,-1716(t1) # 80006bc8 <devsw+0x18>
    80003284:	01010113          	addi	sp,sp,16
    80003288:	00030067          	jr	t1

000000008000328c <panic>:
    8000328c:	fe010113          	addi	sp,sp,-32
    80003290:	00113c23          	sd	ra,24(sp)
    80003294:	00813823          	sd	s0,16(sp)
    80003298:	00913423          	sd	s1,8(sp)
    8000329c:	02010413          	addi	s0,sp,32
    800032a0:	00050493          	mv	s1,a0
    800032a4:	00002517          	auipc	a0,0x2
    800032a8:	02c50513          	addi	a0,a0,44 # 800052d0 <_ZZ12printIntegermE6digits+0x140>
    800032ac:	00004797          	auipc	a5,0x4
    800032b0:	9a07ae23          	sw	zero,-1604(a5) # 80006c68 <pr+0x18>
    800032b4:	00000097          	auipc	ra,0x0
    800032b8:	034080e7          	jalr	52(ra) # 800032e8 <__printf>
    800032bc:	00048513          	mv	a0,s1
    800032c0:	00000097          	auipc	ra,0x0
    800032c4:	028080e7          	jalr	40(ra) # 800032e8 <__printf>
    800032c8:	00002517          	auipc	a0,0x2
    800032cc:	e9850513          	addi	a0,a0,-360 # 80005160 <CONSOLE_STATUS+0x150>
    800032d0:	00000097          	auipc	ra,0x0
    800032d4:	018080e7          	jalr	24(ra) # 800032e8 <__printf>
    800032d8:	00100793          	li	a5,1
    800032dc:	00002717          	auipc	a4,0x2
    800032e0:	6ef72a23          	sw	a5,1780(a4) # 800059d0 <panicked>
    800032e4:	0000006f          	j	800032e4 <panic+0x58>

00000000800032e8 <__printf>:
    800032e8:	f3010113          	addi	sp,sp,-208
    800032ec:	08813023          	sd	s0,128(sp)
    800032f0:	07313423          	sd	s3,104(sp)
    800032f4:	09010413          	addi	s0,sp,144
    800032f8:	05813023          	sd	s8,64(sp)
    800032fc:	08113423          	sd	ra,136(sp)
    80003300:	06913c23          	sd	s1,120(sp)
    80003304:	07213823          	sd	s2,112(sp)
    80003308:	07413023          	sd	s4,96(sp)
    8000330c:	05513c23          	sd	s5,88(sp)
    80003310:	05613823          	sd	s6,80(sp)
    80003314:	05713423          	sd	s7,72(sp)
    80003318:	03913c23          	sd	s9,56(sp)
    8000331c:	03a13823          	sd	s10,48(sp)
    80003320:	03b13423          	sd	s11,40(sp)
    80003324:	00004317          	auipc	t1,0x4
    80003328:	92c30313          	addi	t1,t1,-1748 # 80006c50 <pr>
    8000332c:	01832c03          	lw	s8,24(t1)
    80003330:	00b43423          	sd	a1,8(s0)
    80003334:	00c43823          	sd	a2,16(s0)
    80003338:	00d43c23          	sd	a3,24(s0)
    8000333c:	02e43023          	sd	a4,32(s0)
    80003340:	02f43423          	sd	a5,40(s0)
    80003344:	03043823          	sd	a6,48(s0)
    80003348:	03143c23          	sd	a7,56(s0)
    8000334c:	00050993          	mv	s3,a0
    80003350:	4a0c1663          	bnez	s8,800037fc <__printf+0x514>
    80003354:	60098c63          	beqz	s3,8000396c <__printf+0x684>
    80003358:	0009c503          	lbu	a0,0(s3)
    8000335c:	00840793          	addi	a5,s0,8
    80003360:	f6f43c23          	sd	a5,-136(s0)
    80003364:	00000493          	li	s1,0
    80003368:	22050063          	beqz	a0,80003588 <__printf+0x2a0>
    8000336c:	00002a37          	lui	s4,0x2
    80003370:	00018ab7          	lui	s5,0x18
    80003374:	000f4b37          	lui	s6,0xf4
    80003378:	00989bb7          	lui	s7,0x989
    8000337c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003380:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003384:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003388:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000338c:	00148c9b          	addiw	s9,s1,1
    80003390:	02500793          	li	a5,37
    80003394:	01998933          	add	s2,s3,s9
    80003398:	38f51263          	bne	a0,a5,8000371c <__printf+0x434>
    8000339c:	00094783          	lbu	a5,0(s2)
    800033a0:	00078c9b          	sext.w	s9,a5
    800033a4:	1e078263          	beqz	a5,80003588 <__printf+0x2a0>
    800033a8:	0024849b          	addiw	s1,s1,2
    800033ac:	07000713          	li	a4,112
    800033b0:	00998933          	add	s2,s3,s1
    800033b4:	38e78a63          	beq	a5,a4,80003748 <__printf+0x460>
    800033b8:	20f76863          	bltu	a4,a5,800035c8 <__printf+0x2e0>
    800033bc:	42a78863          	beq	a5,a0,800037ec <__printf+0x504>
    800033c0:	06400713          	li	a4,100
    800033c4:	40e79663          	bne	a5,a4,800037d0 <__printf+0x4e8>
    800033c8:	f7843783          	ld	a5,-136(s0)
    800033cc:	0007a603          	lw	a2,0(a5)
    800033d0:	00878793          	addi	a5,a5,8
    800033d4:	f6f43c23          	sd	a5,-136(s0)
    800033d8:	42064a63          	bltz	a2,8000380c <__printf+0x524>
    800033dc:	00a00713          	li	a4,10
    800033e0:	02e677bb          	remuw	a5,a2,a4
    800033e4:	00002d97          	auipc	s11,0x2
    800033e8:	f14d8d93          	addi	s11,s11,-236 # 800052f8 <digits>
    800033ec:	00900593          	li	a1,9
    800033f0:	0006051b          	sext.w	a0,a2
    800033f4:	00000c93          	li	s9,0
    800033f8:	02079793          	slli	a5,a5,0x20
    800033fc:	0207d793          	srli	a5,a5,0x20
    80003400:	00fd87b3          	add	a5,s11,a5
    80003404:	0007c783          	lbu	a5,0(a5)
    80003408:	02e656bb          	divuw	a3,a2,a4
    8000340c:	f8f40023          	sb	a5,-128(s0)
    80003410:	14c5d863          	bge	a1,a2,80003560 <__printf+0x278>
    80003414:	06300593          	li	a1,99
    80003418:	00100c93          	li	s9,1
    8000341c:	02e6f7bb          	remuw	a5,a3,a4
    80003420:	02079793          	slli	a5,a5,0x20
    80003424:	0207d793          	srli	a5,a5,0x20
    80003428:	00fd87b3          	add	a5,s11,a5
    8000342c:	0007c783          	lbu	a5,0(a5)
    80003430:	02e6d73b          	divuw	a4,a3,a4
    80003434:	f8f400a3          	sb	a5,-127(s0)
    80003438:	12a5f463          	bgeu	a1,a0,80003560 <__printf+0x278>
    8000343c:	00a00693          	li	a3,10
    80003440:	00900593          	li	a1,9
    80003444:	02d777bb          	remuw	a5,a4,a3
    80003448:	02079793          	slli	a5,a5,0x20
    8000344c:	0207d793          	srli	a5,a5,0x20
    80003450:	00fd87b3          	add	a5,s11,a5
    80003454:	0007c503          	lbu	a0,0(a5)
    80003458:	02d757bb          	divuw	a5,a4,a3
    8000345c:	f8a40123          	sb	a0,-126(s0)
    80003460:	48e5f263          	bgeu	a1,a4,800038e4 <__printf+0x5fc>
    80003464:	06300513          	li	a0,99
    80003468:	02d7f5bb          	remuw	a1,a5,a3
    8000346c:	02059593          	slli	a1,a1,0x20
    80003470:	0205d593          	srli	a1,a1,0x20
    80003474:	00bd85b3          	add	a1,s11,a1
    80003478:	0005c583          	lbu	a1,0(a1)
    8000347c:	02d7d7bb          	divuw	a5,a5,a3
    80003480:	f8b401a3          	sb	a1,-125(s0)
    80003484:	48e57263          	bgeu	a0,a4,80003908 <__printf+0x620>
    80003488:	3e700513          	li	a0,999
    8000348c:	02d7f5bb          	remuw	a1,a5,a3
    80003490:	02059593          	slli	a1,a1,0x20
    80003494:	0205d593          	srli	a1,a1,0x20
    80003498:	00bd85b3          	add	a1,s11,a1
    8000349c:	0005c583          	lbu	a1,0(a1)
    800034a0:	02d7d7bb          	divuw	a5,a5,a3
    800034a4:	f8b40223          	sb	a1,-124(s0)
    800034a8:	46e57663          	bgeu	a0,a4,80003914 <__printf+0x62c>
    800034ac:	02d7f5bb          	remuw	a1,a5,a3
    800034b0:	02059593          	slli	a1,a1,0x20
    800034b4:	0205d593          	srli	a1,a1,0x20
    800034b8:	00bd85b3          	add	a1,s11,a1
    800034bc:	0005c583          	lbu	a1,0(a1)
    800034c0:	02d7d7bb          	divuw	a5,a5,a3
    800034c4:	f8b402a3          	sb	a1,-123(s0)
    800034c8:	46ea7863          	bgeu	s4,a4,80003938 <__printf+0x650>
    800034cc:	02d7f5bb          	remuw	a1,a5,a3
    800034d0:	02059593          	slli	a1,a1,0x20
    800034d4:	0205d593          	srli	a1,a1,0x20
    800034d8:	00bd85b3          	add	a1,s11,a1
    800034dc:	0005c583          	lbu	a1,0(a1)
    800034e0:	02d7d7bb          	divuw	a5,a5,a3
    800034e4:	f8b40323          	sb	a1,-122(s0)
    800034e8:	3eeaf863          	bgeu	s5,a4,800038d8 <__printf+0x5f0>
    800034ec:	02d7f5bb          	remuw	a1,a5,a3
    800034f0:	02059593          	slli	a1,a1,0x20
    800034f4:	0205d593          	srli	a1,a1,0x20
    800034f8:	00bd85b3          	add	a1,s11,a1
    800034fc:	0005c583          	lbu	a1,0(a1)
    80003500:	02d7d7bb          	divuw	a5,a5,a3
    80003504:	f8b403a3          	sb	a1,-121(s0)
    80003508:	42eb7e63          	bgeu	s6,a4,80003944 <__printf+0x65c>
    8000350c:	02d7f5bb          	remuw	a1,a5,a3
    80003510:	02059593          	slli	a1,a1,0x20
    80003514:	0205d593          	srli	a1,a1,0x20
    80003518:	00bd85b3          	add	a1,s11,a1
    8000351c:	0005c583          	lbu	a1,0(a1)
    80003520:	02d7d7bb          	divuw	a5,a5,a3
    80003524:	f8b40423          	sb	a1,-120(s0)
    80003528:	42ebfc63          	bgeu	s7,a4,80003960 <__printf+0x678>
    8000352c:	02079793          	slli	a5,a5,0x20
    80003530:	0207d793          	srli	a5,a5,0x20
    80003534:	00fd8db3          	add	s11,s11,a5
    80003538:	000dc703          	lbu	a4,0(s11)
    8000353c:	00a00793          	li	a5,10
    80003540:	00900c93          	li	s9,9
    80003544:	f8e404a3          	sb	a4,-119(s0)
    80003548:	00065c63          	bgez	a2,80003560 <__printf+0x278>
    8000354c:	f9040713          	addi	a4,s0,-112
    80003550:	00f70733          	add	a4,a4,a5
    80003554:	02d00693          	li	a3,45
    80003558:	fed70823          	sb	a3,-16(a4)
    8000355c:	00078c93          	mv	s9,a5
    80003560:	f8040793          	addi	a5,s0,-128
    80003564:	01978cb3          	add	s9,a5,s9
    80003568:	f7f40d13          	addi	s10,s0,-129
    8000356c:	000cc503          	lbu	a0,0(s9)
    80003570:	fffc8c93          	addi	s9,s9,-1
    80003574:	00000097          	auipc	ra,0x0
    80003578:	b90080e7          	jalr	-1136(ra) # 80003104 <consputc>
    8000357c:	ffac98e3          	bne	s9,s10,8000356c <__printf+0x284>
    80003580:	00094503          	lbu	a0,0(s2)
    80003584:	e00514e3          	bnez	a0,8000338c <__printf+0xa4>
    80003588:	1a0c1663          	bnez	s8,80003734 <__printf+0x44c>
    8000358c:	08813083          	ld	ra,136(sp)
    80003590:	08013403          	ld	s0,128(sp)
    80003594:	07813483          	ld	s1,120(sp)
    80003598:	07013903          	ld	s2,112(sp)
    8000359c:	06813983          	ld	s3,104(sp)
    800035a0:	06013a03          	ld	s4,96(sp)
    800035a4:	05813a83          	ld	s5,88(sp)
    800035a8:	05013b03          	ld	s6,80(sp)
    800035ac:	04813b83          	ld	s7,72(sp)
    800035b0:	04013c03          	ld	s8,64(sp)
    800035b4:	03813c83          	ld	s9,56(sp)
    800035b8:	03013d03          	ld	s10,48(sp)
    800035bc:	02813d83          	ld	s11,40(sp)
    800035c0:	0d010113          	addi	sp,sp,208
    800035c4:	00008067          	ret
    800035c8:	07300713          	li	a4,115
    800035cc:	1ce78a63          	beq	a5,a4,800037a0 <__printf+0x4b8>
    800035d0:	07800713          	li	a4,120
    800035d4:	1ee79e63          	bne	a5,a4,800037d0 <__printf+0x4e8>
    800035d8:	f7843783          	ld	a5,-136(s0)
    800035dc:	0007a703          	lw	a4,0(a5)
    800035e0:	00878793          	addi	a5,a5,8
    800035e4:	f6f43c23          	sd	a5,-136(s0)
    800035e8:	28074263          	bltz	a4,8000386c <__printf+0x584>
    800035ec:	00002d97          	auipc	s11,0x2
    800035f0:	d0cd8d93          	addi	s11,s11,-756 # 800052f8 <digits>
    800035f4:	00f77793          	andi	a5,a4,15
    800035f8:	00fd87b3          	add	a5,s11,a5
    800035fc:	0007c683          	lbu	a3,0(a5)
    80003600:	00f00613          	li	a2,15
    80003604:	0007079b          	sext.w	a5,a4
    80003608:	f8d40023          	sb	a3,-128(s0)
    8000360c:	0047559b          	srliw	a1,a4,0x4
    80003610:	0047569b          	srliw	a3,a4,0x4
    80003614:	00000c93          	li	s9,0
    80003618:	0ee65063          	bge	a2,a4,800036f8 <__printf+0x410>
    8000361c:	00f6f693          	andi	a3,a3,15
    80003620:	00dd86b3          	add	a3,s11,a3
    80003624:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003628:	0087d79b          	srliw	a5,a5,0x8
    8000362c:	00100c93          	li	s9,1
    80003630:	f8d400a3          	sb	a3,-127(s0)
    80003634:	0cb67263          	bgeu	a2,a1,800036f8 <__printf+0x410>
    80003638:	00f7f693          	andi	a3,a5,15
    8000363c:	00dd86b3          	add	a3,s11,a3
    80003640:	0006c583          	lbu	a1,0(a3)
    80003644:	00f00613          	li	a2,15
    80003648:	0047d69b          	srliw	a3,a5,0x4
    8000364c:	f8b40123          	sb	a1,-126(s0)
    80003650:	0047d593          	srli	a1,a5,0x4
    80003654:	28f67e63          	bgeu	a2,a5,800038f0 <__printf+0x608>
    80003658:	00f6f693          	andi	a3,a3,15
    8000365c:	00dd86b3          	add	a3,s11,a3
    80003660:	0006c503          	lbu	a0,0(a3)
    80003664:	0087d813          	srli	a6,a5,0x8
    80003668:	0087d69b          	srliw	a3,a5,0x8
    8000366c:	f8a401a3          	sb	a0,-125(s0)
    80003670:	28b67663          	bgeu	a2,a1,800038fc <__printf+0x614>
    80003674:	00f6f693          	andi	a3,a3,15
    80003678:	00dd86b3          	add	a3,s11,a3
    8000367c:	0006c583          	lbu	a1,0(a3)
    80003680:	00c7d513          	srli	a0,a5,0xc
    80003684:	00c7d69b          	srliw	a3,a5,0xc
    80003688:	f8b40223          	sb	a1,-124(s0)
    8000368c:	29067a63          	bgeu	a2,a6,80003920 <__printf+0x638>
    80003690:	00f6f693          	andi	a3,a3,15
    80003694:	00dd86b3          	add	a3,s11,a3
    80003698:	0006c583          	lbu	a1,0(a3)
    8000369c:	0107d813          	srli	a6,a5,0x10
    800036a0:	0107d69b          	srliw	a3,a5,0x10
    800036a4:	f8b402a3          	sb	a1,-123(s0)
    800036a8:	28a67263          	bgeu	a2,a0,8000392c <__printf+0x644>
    800036ac:	00f6f693          	andi	a3,a3,15
    800036b0:	00dd86b3          	add	a3,s11,a3
    800036b4:	0006c683          	lbu	a3,0(a3)
    800036b8:	0147d79b          	srliw	a5,a5,0x14
    800036bc:	f8d40323          	sb	a3,-122(s0)
    800036c0:	21067663          	bgeu	a2,a6,800038cc <__printf+0x5e4>
    800036c4:	02079793          	slli	a5,a5,0x20
    800036c8:	0207d793          	srli	a5,a5,0x20
    800036cc:	00fd8db3          	add	s11,s11,a5
    800036d0:	000dc683          	lbu	a3,0(s11)
    800036d4:	00800793          	li	a5,8
    800036d8:	00700c93          	li	s9,7
    800036dc:	f8d403a3          	sb	a3,-121(s0)
    800036e0:	00075c63          	bgez	a4,800036f8 <__printf+0x410>
    800036e4:	f9040713          	addi	a4,s0,-112
    800036e8:	00f70733          	add	a4,a4,a5
    800036ec:	02d00693          	li	a3,45
    800036f0:	fed70823          	sb	a3,-16(a4)
    800036f4:	00078c93          	mv	s9,a5
    800036f8:	f8040793          	addi	a5,s0,-128
    800036fc:	01978cb3          	add	s9,a5,s9
    80003700:	f7f40d13          	addi	s10,s0,-129
    80003704:	000cc503          	lbu	a0,0(s9)
    80003708:	fffc8c93          	addi	s9,s9,-1
    8000370c:	00000097          	auipc	ra,0x0
    80003710:	9f8080e7          	jalr	-1544(ra) # 80003104 <consputc>
    80003714:	ff9d18e3          	bne	s10,s9,80003704 <__printf+0x41c>
    80003718:	0100006f          	j	80003728 <__printf+0x440>
    8000371c:	00000097          	auipc	ra,0x0
    80003720:	9e8080e7          	jalr	-1560(ra) # 80003104 <consputc>
    80003724:	000c8493          	mv	s1,s9
    80003728:	00094503          	lbu	a0,0(s2)
    8000372c:	c60510e3          	bnez	a0,8000338c <__printf+0xa4>
    80003730:	e40c0ee3          	beqz	s8,8000358c <__printf+0x2a4>
    80003734:	00003517          	auipc	a0,0x3
    80003738:	51c50513          	addi	a0,a0,1308 # 80006c50 <pr>
    8000373c:	00001097          	auipc	ra,0x1
    80003740:	94c080e7          	jalr	-1716(ra) # 80004088 <release>
    80003744:	e49ff06f          	j	8000358c <__printf+0x2a4>
    80003748:	f7843783          	ld	a5,-136(s0)
    8000374c:	03000513          	li	a0,48
    80003750:	01000d13          	li	s10,16
    80003754:	00878713          	addi	a4,a5,8
    80003758:	0007bc83          	ld	s9,0(a5)
    8000375c:	f6e43c23          	sd	a4,-136(s0)
    80003760:	00000097          	auipc	ra,0x0
    80003764:	9a4080e7          	jalr	-1628(ra) # 80003104 <consputc>
    80003768:	07800513          	li	a0,120
    8000376c:	00000097          	auipc	ra,0x0
    80003770:	998080e7          	jalr	-1640(ra) # 80003104 <consputc>
    80003774:	00002d97          	auipc	s11,0x2
    80003778:	b84d8d93          	addi	s11,s11,-1148 # 800052f8 <digits>
    8000377c:	03ccd793          	srli	a5,s9,0x3c
    80003780:	00fd87b3          	add	a5,s11,a5
    80003784:	0007c503          	lbu	a0,0(a5)
    80003788:	fffd0d1b          	addiw	s10,s10,-1
    8000378c:	004c9c93          	slli	s9,s9,0x4
    80003790:	00000097          	auipc	ra,0x0
    80003794:	974080e7          	jalr	-1676(ra) # 80003104 <consputc>
    80003798:	fe0d12e3          	bnez	s10,8000377c <__printf+0x494>
    8000379c:	f8dff06f          	j	80003728 <__printf+0x440>
    800037a0:	f7843783          	ld	a5,-136(s0)
    800037a4:	0007bc83          	ld	s9,0(a5)
    800037a8:	00878793          	addi	a5,a5,8
    800037ac:	f6f43c23          	sd	a5,-136(s0)
    800037b0:	000c9a63          	bnez	s9,800037c4 <__printf+0x4dc>
    800037b4:	1080006f          	j	800038bc <__printf+0x5d4>
    800037b8:	001c8c93          	addi	s9,s9,1
    800037bc:	00000097          	auipc	ra,0x0
    800037c0:	948080e7          	jalr	-1720(ra) # 80003104 <consputc>
    800037c4:	000cc503          	lbu	a0,0(s9)
    800037c8:	fe0518e3          	bnez	a0,800037b8 <__printf+0x4d0>
    800037cc:	f5dff06f          	j	80003728 <__printf+0x440>
    800037d0:	02500513          	li	a0,37
    800037d4:	00000097          	auipc	ra,0x0
    800037d8:	930080e7          	jalr	-1744(ra) # 80003104 <consputc>
    800037dc:	000c8513          	mv	a0,s9
    800037e0:	00000097          	auipc	ra,0x0
    800037e4:	924080e7          	jalr	-1756(ra) # 80003104 <consputc>
    800037e8:	f41ff06f          	j	80003728 <__printf+0x440>
    800037ec:	02500513          	li	a0,37
    800037f0:	00000097          	auipc	ra,0x0
    800037f4:	914080e7          	jalr	-1772(ra) # 80003104 <consputc>
    800037f8:	f31ff06f          	j	80003728 <__printf+0x440>
    800037fc:	00030513          	mv	a0,t1
    80003800:	00000097          	auipc	ra,0x0
    80003804:	7bc080e7          	jalr	1980(ra) # 80003fbc <acquire>
    80003808:	b4dff06f          	j	80003354 <__printf+0x6c>
    8000380c:	40c0053b          	negw	a0,a2
    80003810:	00a00713          	li	a4,10
    80003814:	02e576bb          	remuw	a3,a0,a4
    80003818:	00002d97          	auipc	s11,0x2
    8000381c:	ae0d8d93          	addi	s11,s11,-1312 # 800052f8 <digits>
    80003820:	ff700593          	li	a1,-9
    80003824:	02069693          	slli	a3,a3,0x20
    80003828:	0206d693          	srli	a3,a3,0x20
    8000382c:	00dd86b3          	add	a3,s11,a3
    80003830:	0006c683          	lbu	a3,0(a3)
    80003834:	02e557bb          	divuw	a5,a0,a4
    80003838:	f8d40023          	sb	a3,-128(s0)
    8000383c:	10b65e63          	bge	a2,a1,80003958 <__printf+0x670>
    80003840:	06300593          	li	a1,99
    80003844:	02e7f6bb          	remuw	a3,a5,a4
    80003848:	02069693          	slli	a3,a3,0x20
    8000384c:	0206d693          	srli	a3,a3,0x20
    80003850:	00dd86b3          	add	a3,s11,a3
    80003854:	0006c683          	lbu	a3,0(a3)
    80003858:	02e7d73b          	divuw	a4,a5,a4
    8000385c:	00200793          	li	a5,2
    80003860:	f8d400a3          	sb	a3,-127(s0)
    80003864:	bca5ece3          	bltu	a1,a0,8000343c <__printf+0x154>
    80003868:	ce5ff06f          	j	8000354c <__printf+0x264>
    8000386c:	40e007bb          	negw	a5,a4
    80003870:	00002d97          	auipc	s11,0x2
    80003874:	a88d8d93          	addi	s11,s11,-1400 # 800052f8 <digits>
    80003878:	00f7f693          	andi	a3,a5,15
    8000387c:	00dd86b3          	add	a3,s11,a3
    80003880:	0006c583          	lbu	a1,0(a3)
    80003884:	ff100613          	li	a2,-15
    80003888:	0047d69b          	srliw	a3,a5,0x4
    8000388c:	f8b40023          	sb	a1,-128(s0)
    80003890:	0047d59b          	srliw	a1,a5,0x4
    80003894:	0ac75e63          	bge	a4,a2,80003950 <__printf+0x668>
    80003898:	00f6f693          	andi	a3,a3,15
    8000389c:	00dd86b3          	add	a3,s11,a3
    800038a0:	0006c603          	lbu	a2,0(a3)
    800038a4:	00f00693          	li	a3,15
    800038a8:	0087d79b          	srliw	a5,a5,0x8
    800038ac:	f8c400a3          	sb	a2,-127(s0)
    800038b0:	d8b6e4e3          	bltu	a3,a1,80003638 <__printf+0x350>
    800038b4:	00200793          	li	a5,2
    800038b8:	e2dff06f          	j	800036e4 <__printf+0x3fc>
    800038bc:	00002c97          	auipc	s9,0x2
    800038c0:	a1cc8c93          	addi	s9,s9,-1508 # 800052d8 <_ZZ12printIntegermE6digits+0x148>
    800038c4:	02800513          	li	a0,40
    800038c8:	ef1ff06f          	j	800037b8 <__printf+0x4d0>
    800038cc:	00700793          	li	a5,7
    800038d0:	00600c93          	li	s9,6
    800038d4:	e0dff06f          	j	800036e0 <__printf+0x3f8>
    800038d8:	00700793          	li	a5,7
    800038dc:	00600c93          	li	s9,6
    800038e0:	c69ff06f          	j	80003548 <__printf+0x260>
    800038e4:	00300793          	li	a5,3
    800038e8:	00200c93          	li	s9,2
    800038ec:	c5dff06f          	j	80003548 <__printf+0x260>
    800038f0:	00300793          	li	a5,3
    800038f4:	00200c93          	li	s9,2
    800038f8:	de9ff06f          	j	800036e0 <__printf+0x3f8>
    800038fc:	00400793          	li	a5,4
    80003900:	00300c93          	li	s9,3
    80003904:	dddff06f          	j	800036e0 <__printf+0x3f8>
    80003908:	00400793          	li	a5,4
    8000390c:	00300c93          	li	s9,3
    80003910:	c39ff06f          	j	80003548 <__printf+0x260>
    80003914:	00500793          	li	a5,5
    80003918:	00400c93          	li	s9,4
    8000391c:	c2dff06f          	j	80003548 <__printf+0x260>
    80003920:	00500793          	li	a5,5
    80003924:	00400c93          	li	s9,4
    80003928:	db9ff06f          	j	800036e0 <__printf+0x3f8>
    8000392c:	00600793          	li	a5,6
    80003930:	00500c93          	li	s9,5
    80003934:	dadff06f          	j	800036e0 <__printf+0x3f8>
    80003938:	00600793          	li	a5,6
    8000393c:	00500c93          	li	s9,5
    80003940:	c09ff06f          	j	80003548 <__printf+0x260>
    80003944:	00800793          	li	a5,8
    80003948:	00700c93          	li	s9,7
    8000394c:	bfdff06f          	j	80003548 <__printf+0x260>
    80003950:	00100793          	li	a5,1
    80003954:	d91ff06f          	j	800036e4 <__printf+0x3fc>
    80003958:	00100793          	li	a5,1
    8000395c:	bf1ff06f          	j	8000354c <__printf+0x264>
    80003960:	00900793          	li	a5,9
    80003964:	00800c93          	li	s9,8
    80003968:	be1ff06f          	j	80003548 <__printf+0x260>
    8000396c:	00002517          	auipc	a0,0x2
    80003970:	97450513          	addi	a0,a0,-1676 # 800052e0 <_ZZ12printIntegermE6digits+0x150>
    80003974:	00000097          	auipc	ra,0x0
    80003978:	918080e7          	jalr	-1768(ra) # 8000328c <panic>

000000008000397c <printfinit>:
    8000397c:	fe010113          	addi	sp,sp,-32
    80003980:	00813823          	sd	s0,16(sp)
    80003984:	00913423          	sd	s1,8(sp)
    80003988:	00113c23          	sd	ra,24(sp)
    8000398c:	02010413          	addi	s0,sp,32
    80003990:	00003497          	auipc	s1,0x3
    80003994:	2c048493          	addi	s1,s1,704 # 80006c50 <pr>
    80003998:	00048513          	mv	a0,s1
    8000399c:	00002597          	auipc	a1,0x2
    800039a0:	95458593          	addi	a1,a1,-1708 # 800052f0 <_ZZ12printIntegermE6digits+0x160>
    800039a4:	00000097          	auipc	ra,0x0
    800039a8:	5f4080e7          	jalr	1524(ra) # 80003f98 <initlock>
    800039ac:	01813083          	ld	ra,24(sp)
    800039b0:	01013403          	ld	s0,16(sp)
    800039b4:	0004ac23          	sw	zero,24(s1)
    800039b8:	00813483          	ld	s1,8(sp)
    800039bc:	02010113          	addi	sp,sp,32
    800039c0:	00008067          	ret

00000000800039c4 <uartinit>:
    800039c4:	ff010113          	addi	sp,sp,-16
    800039c8:	00813423          	sd	s0,8(sp)
    800039cc:	01010413          	addi	s0,sp,16
    800039d0:	100007b7          	lui	a5,0x10000
    800039d4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800039d8:	f8000713          	li	a4,-128
    800039dc:	00e781a3          	sb	a4,3(a5)
    800039e0:	00300713          	li	a4,3
    800039e4:	00e78023          	sb	a4,0(a5)
    800039e8:	000780a3          	sb	zero,1(a5)
    800039ec:	00e781a3          	sb	a4,3(a5)
    800039f0:	00700693          	li	a3,7
    800039f4:	00d78123          	sb	a3,2(a5)
    800039f8:	00e780a3          	sb	a4,1(a5)
    800039fc:	00813403          	ld	s0,8(sp)
    80003a00:	01010113          	addi	sp,sp,16
    80003a04:	00008067          	ret

0000000080003a08 <uartputc>:
    80003a08:	00002797          	auipc	a5,0x2
    80003a0c:	fc87a783          	lw	a5,-56(a5) # 800059d0 <panicked>
    80003a10:	00078463          	beqz	a5,80003a18 <uartputc+0x10>
    80003a14:	0000006f          	j	80003a14 <uartputc+0xc>
    80003a18:	fd010113          	addi	sp,sp,-48
    80003a1c:	02813023          	sd	s0,32(sp)
    80003a20:	00913c23          	sd	s1,24(sp)
    80003a24:	01213823          	sd	s2,16(sp)
    80003a28:	01313423          	sd	s3,8(sp)
    80003a2c:	02113423          	sd	ra,40(sp)
    80003a30:	03010413          	addi	s0,sp,48
    80003a34:	00002917          	auipc	s2,0x2
    80003a38:	fa490913          	addi	s2,s2,-92 # 800059d8 <uart_tx_r>
    80003a3c:	00093783          	ld	a5,0(s2)
    80003a40:	00002497          	auipc	s1,0x2
    80003a44:	fa048493          	addi	s1,s1,-96 # 800059e0 <uart_tx_w>
    80003a48:	0004b703          	ld	a4,0(s1)
    80003a4c:	02078693          	addi	a3,a5,32
    80003a50:	00050993          	mv	s3,a0
    80003a54:	02e69c63          	bne	a3,a4,80003a8c <uartputc+0x84>
    80003a58:	00001097          	auipc	ra,0x1
    80003a5c:	834080e7          	jalr	-1996(ra) # 8000428c <push_on>
    80003a60:	00093783          	ld	a5,0(s2)
    80003a64:	0004b703          	ld	a4,0(s1)
    80003a68:	02078793          	addi	a5,a5,32
    80003a6c:	00e79463          	bne	a5,a4,80003a74 <uartputc+0x6c>
    80003a70:	0000006f          	j	80003a70 <uartputc+0x68>
    80003a74:	00001097          	auipc	ra,0x1
    80003a78:	88c080e7          	jalr	-1908(ra) # 80004300 <pop_on>
    80003a7c:	00093783          	ld	a5,0(s2)
    80003a80:	0004b703          	ld	a4,0(s1)
    80003a84:	02078693          	addi	a3,a5,32
    80003a88:	fce688e3          	beq	a3,a4,80003a58 <uartputc+0x50>
    80003a8c:	01f77693          	andi	a3,a4,31
    80003a90:	00003597          	auipc	a1,0x3
    80003a94:	1e058593          	addi	a1,a1,480 # 80006c70 <uart_tx_buf>
    80003a98:	00d586b3          	add	a3,a1,a3
    80003a9c:	00170713          	addi	a4,a4,1
    80003aa0:	01368023          	sb	s3,0(a3)
    80003aa4:	00e4b023          	sd	a4,0(s1)
    80003aa8:	10000637          	lui	a2,0x10000
    80003aac:	02f71063          	bne	a4,a5,80003acc <uartputc+0xc4>
    80003ab0:	0340006f          	j	80003ae4 <uartputc+0xdc>
    80003ab4:	00074703          	lbu	a4,0(a4)
    80003ab8:	00f93023          	sd	a5,0(s2)
    80003abc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003ac0:	00093783          	ld	a5,0(s2)
    80003ac4:	0004b703          	ld	a4,0(s1)
    80003ac8:	00f70e63          	beq	a4,a5,80003ae4 <uartputc+0xdc>
    80003acc:	00564683          	lbu	a3,5(a2)
    80003ad0:	01f7f713          	andi	a4,a5,31
    80003ad4:	00e58733          	add	a4,a1,a4
    80003ad8:	0206f693          	andi	a3,a3,32
    80003adc:	00178793          	addi	a5,a5,1
    80003ae0:	fc069ae3          	bnez	a3,80003ab4 <uartputc+0xac>
    80003ae4:	02813083          	ld	ra,40(sp)
    80003ae8:	02013403          	ld	s0,32(sp)
    80003aec:	01813483          	ld	s1,24(sp)
    80003af0:	01013903          	ld	s2,16(sp)
    80003af4:	00813983          	ld	s3,8(sp)
    80003af8:	03010113          	addi	sp,sp,48
    80003afc:	00008067          	ret

0000000080003b00 <uartputc_sync>:
    80003b00:	ff010113          	addi	sp,sp,-16
    80003b04:	00813423          	sd	s0,8(sp)
    80003b08:	01010413          	addi	s0,sp,16
    80003b0c:	00002717          	auipc	a4,0x2
    80003b10:	ec472703          	lw	a4,-316(a4) # 800059d0 <panicked>
    80003b14:	02071663          	bnez	a4,80003b40 <uartputc_sync+0x40>
    80003b18:	00050793          	mv	a5,a0
    80003b1c:	100006b7          	lui	a3,0x10000
    80003b20:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003b24:	02077713          	andi	a4,a4,32
    80003b28:	fe070ce3          	beqz	a4,80003b20 <uartputc_sync+0x20>
    80003b2c:	0ff7f793          	andi	a5,a5,255
    80003b30:	00f68023          	sb	a5,0(a3)
    80003b34:	00813403          	ld	s0,8(sp)
    80003b38:	01010113          	addi	sp,sp,16
    80003b3c:	00008067          	ret
    80003b40:	0000006f          	j	80003b40 <uartputc_sync+0x40>

0000000080003b44 <uartstart>:
    80003b44:	ff010113          	addi	sp,sp,-16
    80003b48:	00813423          	sd	s0,8(sp)
    80003b4c:	01010413          	addi	s0,sp,16
    80003b50:	00002617          	auipc	a2,0x2
    80003b54:	e8860613          	addi	a2,a2,-376 # 800059d8 <uart_tx_r>
    80003b58:	00002517          	auipc	a0,0x2
    80003b5c:	e8850513          	addi	a0,a0,-376 # 800059e0 <uart_tx_w>
    80003b60:	00063783          	ld	a5,0(a2)
    80003b64:	00053703          	ld	a4,0(a0)
    80003b68:	04f70263          	beq	a4,a5,80003bac <uartstart+0x68>
    80003b6c:	100005b7          	lui	a1,0x10000
    80003b70:	00003817          	auipc	a6,0x3
    80003b74:	10080813          	addi	a6,a6,256 # 80006c70 <uart_tx_buf>
    80003b78:	01c0006f          	j	80003b94 <uartstart+0x50>
    80003b7c:	0006c703          	lbu	a4,0(a3)
    80003b80:	00f63023          	sd	a5,0(a2)
    80003b84:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003b88:	00063783          	ld	a5,0(a2)
    80003b8c:	00053703          	ld	a4,0(a0)
    80003b90:	00f70e63          	beq	a4,a5,80003bac <uartstart+0x68>
    80003b94:	01f7f713          	andi	a4,a5,31
    80003b98:	00e806b3          	add	a3,a6,a4
    80003b9c:	0055c703          	lbu	a4,5(a1)
    80003ba0:	00178793          	addi	a5,a5,1
    80003ba4:	02077713          	andi	a4,a4,32
    80003ba8:	fc071ae3          	bnez	a4,80003b7c <uartstart+0x38>
    80003bac:	00813403          	ld	s0,8(sp)
    80003bb0:	01010113          	addi	sp,sp,16
    80003bb4:	00008067          	ret

0000000080003bb8 <uartgetc>:
    80003bb8:	ff010113          	addi	sp,sp,-16
    80003bbc:	00813423          	sd	s0,8(sp)
    80003bc0:	01010413          	addi	s0,sp,16
    80003bc4:	10000737          	lui	a4,0x10000
    80003bc8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003bcc:	0017f793          	andi	a5,a5,1
    80003bd0:	00078c63          	beqz	a5,80003be8 <uartgetc+0x30>
    80003bd4:	00074503          	lbu	a0,0(a4)
    80003bd8:	0ff57513          	andi	a0,a0,255
    80003bdc:	00813403          	ld	s0,8(sp)
    80003be0:	01010113          	addi	sp,sp,16
    80003be4:	00008067          	ret
    80003be8:	fff00513          	li	a0,-1
    80003bec:	ff1ff06f          	j	80003bdc <uartgetc+0x24>

0000000080003bf0 <uartintr>:
    80003bf0:	100007b7          	lui	a5,0x10000
    80003bf4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003bf8:	0017f793          	andi	a5,a5,1
    80003bfc:	0a078463          	beqz	a5,80003ca4 <uartintr+0xb4>
    80003c00:	fe010113          	addi	sp,sp,-32
    80003c04:	00813823          	sd	s0,16(sp)
    80003c08:	00913423          	sd	s1,8(sp)
    80003c0c:	00113c23          	sd	ra,24(sp)
    80003c10:	02010413          	addi	s0,sp,32
    80003c14:	100004b7          	lui	s1,0x10000
    80003c18:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003c1c:	0ff57513          	andi	a0,a0,255
    80003c20:	fffff097          	auipc	ra,0xfffff
    80003c24:	534080e7          	jalr	1332(ra) # 80003154 <consoleintr>
    80003c28:	0054c783          	lbu	a5,5(s1)
    80003c2c:	0017f793          	andi	a5,a5,1
    80003c30:	fe0794e3          	bnez	a5,80003c18 <uartintr+0x28>
    80003c34:	00002617          	auipc	a2,0x2
    80003c38:	da460613          	addi	a2,a2,-604 # 800059d8 <uart_tx_r>
    80003c3c:	00002517          	auipc	a0,0x2
    80003c40:	da450513          	addi	a0,a0,-604 # 800059e0 <uart_tx_w>
    80003c44:	00063783          	ld	a5,0(a2)
    80003c48:	00053703          	ld	a4,0(a0)
    80003c4c:	04f70263          	beq	a4,a5,80003c90 <uartintr+0xa0>
    80003c50:	100005b7          	lui	a1,0x10000
    80003c54:	00003817          	auipc	a6,0x3
    80003c58:	01c80813          	addi	a6,a6,28 # 80006c70 <uart_tx_buf>
    80003c5c:	01c0006f          	j	80003c78 <uartintr+0x88>
    80003c60:	0006c703          	lbu	a4,0(a3)
    80003c64:	00f63023          	sd	a5,0(a2)
    80003c68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003c6c:	00063783          	ld	a5,0(a2)
    80003c70:	00053703          	ld	a4,0(a0)
    80003c74:	00f70e63          	beq	a4,a5,80003c90 <uartintr+0xa0>
    80003c78:	01f7f713          	andi	a4,a5,31
    80003c7c:	00e806b3          	add	a3,a6,a4
    80003c80:	0055c703          	lbu	a4,5(a1)
    80003c84:	00178793          	addi	a5,a5,1
    80003c88:	02077713          	andi	a4,a4,32
    80003c8c:	fc071ae3          	bnez	a4,80003c60 <uartintr+0x70>
    80003c90:	01813083          	ld	ra,24(sp)
    80003c94:	01013403          	ld	s0,16(sp)
    80003c98:	00813483          	ld	s1,8(sp)
    80003c9c:	02010113          	addi	sp,sp,32
    80003ca0:	00008067          	ret
    80003ca4:	00002617          	auipc	a2,0x2
    80003ca8:	d3460613          	addi	a2,a2,-716 # 800059d8 <uart_tx_r>
    80003cac:	00002517          	auipc	a0,0x2
    80003cb0:	d3450513          	addi	a0,a0,-716 # 800059e0 <uart_tx_w>
    80003cb4:	00063783          	ld	a5,0(a2)
    80003cb8:	00053703          	ld	a4,0(a0)
    80003cbc:	04f70263          	beq	a4,a5,80003d00 <uartintr+0x110>
    80003cc0:	100005b7          	lui	a1,0x10000
    80003cc4:	00003817          	auipc	a6,0x3
    80003cc8:	fac80813          	addi	a6,a6,-84 # 80006c70 <uart_tx_buf>
    80003ccc:	01c0006f          	j	80003ce8 <uartintr+0xf8>
    80003cd0:	0006c703          	lbu	a4,0(a3)
    80003cd4:	00f63023          	sd	a5,0(a2)
    80003cd8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003cdc:	00063783          	ld	a5,0(a2)
    80003ce0:	00053703          	ld	a4,0(a0)
    80003ce4:	02f70063          	beq	a4,a5,80003d04 <uartintr+0x114>
    80003ce8:	01f7f713          	andi	a4,a5,31
    80003cec:	00e806b3          	add	a3,a6,a4
    80003cf0:	0055c703          	lbu	a4,5(a1)
    80003cf4:	00178793          	addi	a5,a5,1
    80003cf8:	02077713          	andi	a4,a4,32
    80003cfc:	fc071ae3          	bnez	a4,80003cd0 <uartintr+0xe0>
    80003d00:	00008067          	ret
    80003d04:	00008067          	ret

0000000080003d08 <kinit>:
    80003d08:	fc010113          	addi	sp,sp,-64
    80003d0c:	02913423          	sd	s1,40(sp)
    80003d10:	fffff7b7          	lui	a5,0xfffff
    80003d14:	00004497          	auipc	s1,0x4
    80003d18:	f8b48493          	addi	s1,s1,-117 # 80007c9f <end+0xfff>
    80003d1c:	02813823          	sd	s0,48(sp)
    80003d20:	01313c23          	sd	s3,24(sp)
    80003d24:	00f4f4b3          	and	s1,s1,a5
    80003d28:	02113c23          	sd	ra,56(sp)
    80003d2c:	03213023          	sd	s2,32(sp)
    80003d30:	01413823          	sd	s4,16(sp)
    80003d34:	01513423          	sd	s5,8(sp)
    80003d38:	04010413          	addi	s0,sp,64
    80003d3c:	000017b7          	lui	a5,0x1
    80003d40:	01100993          	li	s3,17
    80003d44:	00f487b3          	add	a5,s1,a5
    80003d48:	01b99993          	slli	s3,s3,0x1b
    80003d4c:	06f9e063          	bltu	s3,a5,80003dac <kinit+0xa4>
    80003d50:	00003a97          	auipc	s5,0x3
    80003d54:	f50a8a93          	addi	s5,s5,-176 # 80006ca0 <end>
    80003d58:	0754ec63          	bltu	s1,s5,80003dd0 <kinit+0xc8>
    80003d5c:	0734fa63          	bgeu	s1,s3,80003dd0 <kinit+0xc8>
    80003d60:	00088a37          	lui	s4,0x88
    80003d64:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003d68:	00002917          	auipc	s2,0x2
    80003d6c:	c8090913          	addi	s2,s2,-896 # 800059e8 <kmem>
    80003d70:	00ca1a13          	slli	s4,s4,0xc
    80003d74:	0140006f          	j	80003d88 <kinit+0x80>
    80003d78:	000017b7          	lui	a5,0x1
    80003d7c:	00f484b3          	add	s1,s1,a5
    80003d80:	0554e863          	bltu	s1,s5,80003dd0 <kinit+0xc8>
    80003d84:	0534f663          	bgeu	s1,s3,80003dd0 <kinit+0xc8>
    80003d88:	00001637          	lui	a2,0x1
    80003d8c:	00100593          	li	a1,1
    80003d90:	00048513          	mv	a0,s1
    80003d94:	00000097          	auipc	ra,0x0
    80003d98:	5e4080e7          	jalr	1508(ra) # 80004378 <__memset>
    80003d9c:	00093783          	ld	a5,0(s2)
    80003da0:	00f4b023          	sd	a5,0(s1)
    80003da4:	00993023          	sd	s1,0(s2)
    80003da8:	fd4498e3          	bne	s1,s4,80003d78 <kinit+0x70>
    80003dac:	03813083          	ld	ra,56(sp)
    80003db0:	03013403          	ld	s0,48(sp)
    80003db4:	02813483          	ld	s1,40(sp)
    80003db8:	02013903          	ld	s2,32(sp)
    80003dbc:	01813983          	ld	s3,24(sp)
    80003dc0:	01013a03          	ld	s4,16(sp)
    80003dc4:	00813a83          	ld	s5,8(sp)
    80003dc8:	04010113          	addi	sp,sp,64
    80003dcc:	00008067          	ret
    80003dd0:	00001517          	auipc	a0,0x1
    80003dd4:	54050513          	addi	a0,a0,1344 # 80005310 <digits+0x18>
    80003dd8:	fffff097          	auipc	ra,0xfffff
    80003ddc:	4b4080e7          	jalr	1204(ra) # 8000328c <panic>

0000000080003de0 <freerange>:
    80003de0:	fc010113          	addi	sp,sp,-64
    80003de4:	000017b7          	lui	a5,0x1
    80003de8:	02913423          	sd	s1,40(sp)
    80003dec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003df0:	009504b3          	add	s1,a0,s1
    80003df4:	fffff537          	lui	a0,0xfffff
    80003df8:	02813823          	sd	s0,48(sp)
    80003dfc:	02113c23          	sd	ra,56(sp)
    80003e00:	03213023          	sd	s2,32(sp)
    80003e04:	01313c23          	sd	s3,24(sp)
    80003e08:	01413823          	sd	s4,16(sp)
    80003e0c:	01513423          	sd	s5,8(sp)
    80003e10:	01613023          	sd	s6,0(sp)
    80003e14:	04010413          	addi	s0,sp,64
    80003e18:	00a4f4b3          	and	s1,s1,a0
    80003e1c:	00f487b3          	add	a5,s1,a5
    80003e20:	06f5e463          	bltu	a1,a5,80003e88 <freerange+0xa8>
    80003e24:	00003a97          	auipc	s5,0x3
    80003e28:	e7ca8a93          	addi	s5,s5,-388 # 80006ca0 <end>
    80003e2c:	0954e263          	bltu	s1,s5,80003eb0 <freerange+0xd0>
    80003e30:	01100993          	li	s3,17
    80003e34:	01b99993          	slli	s3,s3,0x1b
    80003e38:	0734fc63          	bgeu	s1,s3,80003eb0 <freerange+0xd0>
    80003e3c:	00058a13          	mv	s4,a1
    80003e40:	00002917          	auipc	s2,0x2
    80003e44:	ba890913          	addi	s2,s2,-1112 # 800059e8 <kmem>
    80003e48:	00002b37          	lui	s6,0x2
    80003e4c:	0140006f          	j	80003e60 <freerange+0x80>
    80003e50:	000017b7          	lui	a5,0x1
    80003e54:	00f484b3          	add	s1,s1,a5
    80003e58:	0554ec63          	bltu	s1,s5,80003eb0 <freerange+0xd0>
    80003e5c:	0534fa63          	bgeu	s1,s3,80003eb0 <freerange+0xd0>
    80003e60:	00001637          	lui	a2,0x1
    80003e64:	00100593          	li	a1,1
    80003e68:	00048513          	mv	a0,s1
    80003e6c:	00000097          	auipc	ra,0x0
    80003e70:	50c080e7          	jalr	1292(ra) # 80004378 <__memset>
    80003e74:	00093703          	ld	a4,0(s2)
    80003e78:	016487b3          	add	a5,s1,s6
    80003e7c:	00e4b023          	sd	a4,0(s1)
    80003e80:	00993023          	sd	s1,0(s2)
    80003e84:	fcfa76e3          	bgeu	s4,a5,80003e50 <freerange+0x70>
    80003e88:	03813083          	ld	ra,56(sp)
    80003e8c:	03013403          	ld	s0,48(sp)
    80003e90:	02813483          	ld	s1,40(sp)
    80003e94:	02013903          	ld	s2,32(sp)
    80003e98:	01813983          	ld	s3,24(sp)
    80003e9c:	01013a03          	ld	s4,16(sp)
    80003ea0:	00813a83          	ld	s5,8(sp)
    80003ea4:	00013b03          	ld	s6,0(sp)
    80003ea8:	04010113          	addi	sp,sp,64
    80003eac:	00008067          	ret
    80003eb0:	00001517          	auipc	a0,0x1
    80003eb4:	46050513          	addi	a0,a0,1120 # 80005310 <digits+0x18>
    80003eb8:	fffff097          	auipc	ra,0xfffff
    80003ebc:	3d4080e7          	jalr	980(ra) # 8000328c <panic>

0000000080003ec0 <kfree>:
    80003ec0:	fe010113          	addi	sp,sp,-32
    80003ec4:	00813823          	sd	s0,16(sp)
    80003ec8:	00113c23          	sd	ra,24(sp)
    80003ecc:	00913423          	sd	s1,8(sp)
    80003ed0:	02010413          	addi	s0,sp,32
    80003ed4:	03451793          	slli	a5,a0,0x34
    80003ed8:	04079c63          	bnez	a5,80003f30 <kfree+0x70>
    80003edc:	00003797          	auipc	a5,0x3
    80003ee0:	dc478793          	addi	a5,a5,-572 # 80006ca0 <end>
    80003ee4:	00050493          	mv	s1,a0
    80003ee8:	04f56463          	bltu	a0,a5,80003f30 <kfree+0x70>
    80003eec:	01100793          	li	a5,17
    80003ef0:	01b79793          	slli	a5,a5,0x1b
    80003ef4:	02f57e63          	bgeu	a0,a5,80003f30 <kfree+0x70>
    80003ef8:	00001637          	lui	a2,0x1
    80003efc:	00100593          	li	a1,1
    80003f00:	00000097          	auipc	ra,0x0
    80003f04:	478080e7          	jalr	1144(ra) # 80004378 <__memset>
    80003f08:	00002797          	auipc	a5,0x2
    80003f0c:	ae078793          	addi	a5,a5,-1312 # 800059e8 <kmem>
    80003f10:	0007b703          	ld	a4,0(a5)
    80003f14:	01813083          	ld	ra,24(sp)
    80003f18:	01013403          	ld	s0,16(sp)
    80003f1c:	00e4b023          	sd	a4,0(s1)
    80003f20:	0097b023          	sd	s1,0(a5)
    80003f24:	00813483          	ld	s1,8(sp)
    80003f28:	02010113          	addi	sp,sp,32
    80003f2c:	00008067          	ret
    80003f30:	00001517          	auipc	a0,0x1
    80003f34:	3e050513          	addi	a0,a0,992 # 80005310 <digits+0x18>
    80003f38:	fffff097          	auipc	ra,0xfffff
    80003f3c:	354080e7          	jalr	852(ra) # 8000328c <panic>

0000000080003f40 <kalloc>:
    80003f40:	fe010113          	addi	sp,sp,-32
    80003f44:	00813823          	sd	s0,16(sp)
    80003f48:	00913423          	sd	s1,8(sp)
    80003f4c:	00113c23          	sd	ra,24(sp)
    80003f50:	02010413          	addi	s0,sp,32
    80003f54:	00002797          	auipc	a5,0x2
    80003f58:	a9478793          	addi	a5,a5,-1388 # 800059e8 <kmem>
    80003f5c:	0007b483          	ld	s1,0(a5)
    80003f60:	02048063          	beqz	s1,80003f80 <kalloc+0x40>
    80003f64:	0004b703          	ld	a4,0(s1)
    80003f68:	00001637          	lui	a2,0x1
    80003f6c:	00500593          	li	a1,5
    80003f70:	00048513          	mv	a0,s1
    80003f74:	00e7b023          	sd	a4,0(a5)
    80003f78:	00000097          	auipc	ra,0x0
    80003f7c:	400080e7          	jalr	1024(ra) # 80004378 <__memset>
    80003f80:	01813083          	ld	ra,24(sp)
    80003f84:	01013403          	ld	s0,16(sp)
    80003f88:	00048513          	mv	a0,s1
    80003f8c:	00813483          	ld	s1,8(sp)
    80003f90:	02010113          	addi	sp,sp,32
    80003f94:	00008067          	ret

0000000080003f98 <initlock>:
    80003f98:	ff010113          	addi	sp,sp,-16
    80003f9c:	00813423          	sd	s0,8(sp)
    80003fa0:	01010413          	addi	s0,sp,16
    80003fa4:	00813403          	ld	s0,8(sp)
    80003fa8:	00b53423          	sd	a1,8(a0)
    80003fac:	00052023          	sw	zero,0(a0)
    80003fb0:	00053823          	sd	zero,16(a0)
    80003fb4:	01010113          	addi	sp,sp,16
    80003fb8:	00008067          	ret

0000000080003fbc <acquire>:
    80003fbc:	fe010113          	addi	sp,sp,-32
    80003fc0:	00813823          	sd	s0,16(sp)
    80003fc4:	00913423          	sd	s1,8(sp)
    80003fc8:	00113c23          	sd	ra,24(sp)
    80003fcc:	01213023          	sd	s2,0(sp)
    80003fd0:	02010413          	addi	s0,sp,32
    80003fd4:	00050493          	mv	s1,a0
    80003fd8:	10002973          	csrr	s2,sstatus
    80003fdc:	100027f3          	csrr	a5,sstatus
    80003fe0:	ffd7f793          	andi	a5,a5,-3
    80003fe4:	10079073          	csrw	sstatus,a5
    80003fe8:	fffff097          	auipc	ra,0xfffff
    80003fec:	8ec080e7          	jalr	-1812(ra) # 800028d4 <mycpu>
    80003ff0:	07852783          	lw	a5,120(a0)
    80003ff4:	06078e63          	beqz	a5,80004070 <acquire+0xb4>
    80003ff8:	fffff097          	auipc	ra,0xfffff
    80003ffc:	8dc080e7          	jalr	-1828(ra) # 800028d4 <mycpu>
    80004000:	07852783          	lw	a5,120(a0)
    80004004:	0004a703          	lw	a4,0(s1)
    80004008:	0017879b          	addiw	a5,a5,1
    8000400c:	06f52c23          	sw	a5,120(a0)
    80004010:	04071063          	bnez	a4,80004050 <acquire+0x94>
    80004014:	00100713          	li	a4,1
    80004018:	00070793          	mv	a5,a4
    8000401c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004020:	0007879b          	sext.w	a5,a5
    80004024:	fe079ae3          	bnez	a5,80004018 <acquire+0x5c>
    80004028:	0ff0000f          	fence
    8000402c:	fffff097          	auipc	ra,0xfffff
    80004030:	8a8080e7          	jalr	-1880(ra) # 800028d4 <mycpu>
    80004034:	01813083          	ld	ra,24(sp)
    80004038:	01013403          	ld	s0,16(sp)
    8000403c:	00a4b823          	sd	a0,16(s1)
    80004040:	00013903          	ld	s2,0(sp)
    80004044:	00813483          	ld	s1,8(sp)
    80004048:	02010113          	addi	sp,sp,32
    8000404c:	00008067          	ret
    80004050:	0104b903          	ld	s2,16(s1)
    80004054:	fffff097          	auipc	ra,0xfffff
    80004058:	880080e7          	jalr	-1920(ra) # 800028d4 <mycpu>
    8000405c:	faa91ce3          	bne	s2,a0,80004014 <acquire+0x58>
    80004060:	00001517          	auipc	a0,0x1
    80004064:	2b850513          	addi	a0,a0,696 # 80005318 <digits+0x20>
    80004068:	fffff097          	auipc	ra,0xfffff
    8000406c:	224080e7          	jalr	548(ra) # 8000328c <panic>
    80004070:	00195913          	srli	s2,s2,0x1
    80004074:	fffff097          	auipc	ra,0xfffff
    80004078:	860080e7          	jalr	-1952(ra) # 800028d4 <mycpu>
    8000407c:	00197913          	andi	s2,s2,1
    80004080:	07252e23          	sw	s2,124(a0)
    80004084:	f75ff06f          	j	80003ff8 <acquire+0x3c>

0000000080004088 <release>:
    80004088:	fe010113          	addi	sp,sp,-32
    8000408c:	00813823          	sd	s0,16(sp)
    80004090:	00113c23          	sd	ra,24(sp)
    80004094:	00913423          	sd	s1,8(sp)
    80004098:	01213023          	sd	s2,0(sp)
    8000409c:	02010413          	addi	s0,sp,32
    800040a0:	00052783          	lw	a5,0(a0)
    800040a4:	00079a63          	bnez	a5,800040b8 <release+0x30>
    800040a8:	00001517          	auipc	a0,0x1
    800040ac:	27850513          	addi	a0,a0,632 # 80005320 <digits+0x28>
    800040b0:	fffff097          	auipc	ra,0xfffff
    800040b4:	1dc080e7          	jalr	476(ra) # 8000328c <panic>
    800040b8:	01053903          	ld	s2,16(a0)
    800040bc:	00050493          	mv	s1,a0
    800040c0:	fffff097          	auipc	ra,0xfffff
    800040c4:	814080e7          	jalr	-2028(ra) # 800028d4 <mycpu>
    800040c8:	fea910e3          	bne	s2,a0,800040a8 <release+0x20>
    800040cc:	0004b823          	sd	zero,16(s1)
    800040d0:	0ff0000f          	fence
    800040d4:	0f50000f          	fence	iorw,ow
    800040d8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800040dc:	ffffe097          	auipc	ra,0xffffe
    800040e0:	7f8080e7          	jalr	2040(ra) # 800028d4 <mycpu>
    800040e4:	100027f3          	csrr	a5,sstatus
    800040e8:	0027f793          	andi	a5,a5,2
    800040ec:	04079a63          	bnez	a5,80004140 <release+0xb8>
    800040f0:	07852783          	lw	a5,120(a0)
    800040f4:	02f05e63          	blez	a5,80004130 <release+0xa8>
    800040f8:	fff7871b          	addiw	a4,a5,-1
    800040fc:	06e52c23          	sw	a4,120(a0)
    80004100:	00071c63          	bnez	a4,80004118 <release+0x90>
    80004104:	07c52783          	lw	a5,124(a0)
    80004108:	00078863          	beqz	a5,80004118 <release+0x90>
    8000410c:	100027f3          	csrr	a5,sstatus
    80004110:	0027e793          	ori	a5,a5,2
    80004114:	10079073          	csrw	sstatus,a5
    80004118:	01813083          	ld	ra,24(sp)
    8000411c:	01013403          	ld	s0,16(sp)
    80004120:	00813483          	ld	s1,8(sp)
    80004124:	00013903          	ld	s2,0(sp)
    80004128:	02010113          	addi	sp,sp,32
    8000412c:	00008067          	ret
    80004130:	00001517          	auipc	a0,0x1
    80004134:	21050513          	addi	a0,a0,528 # 80005340 <digits+0x48>
    80004138:	fffff097          	auipc	ra,0xfffff
    8000413c:	154080e7          	jalr	340(ra) # 8000328c <panic>
    80004140:	00001517          	auipc	a0,0x1
    80004144:	1e850513          	addi	a0,a0,488 # 80005328 <digits+0x30>
    80004148:	fffff097          	auipc	ra,0xfffff
    8000414c:	144080e7          	jalr	324(ra) # 8000328c <panic>

0000000080004150 <holding>:
    80004150:	00052783          	lw	a5,0(a0)
    80004154:	00079663          	bnez	a5,80004160 <holding+0x10>
    80004158:	00000513          	li	a0,0
    8000415c:	00008067          	ret
    80004160:	fe010113          	addi	sp,sp,-32
    80004164:	00813823          	sd	s0,16(sp)
    80004168:	00913423          	sd	s1,8(sp)
    8000416c:	00113c23          	sd	ra,24(sp)
    80004170:	02010413          	addi	s0,sp,32
    80004174:	01053483          	ld	s1,16(a0)
    80004178:	ffffe097          	auipc	ra,0xffffe
    8000417c:	75c080e7          	jalr	1884(ra) # 800028d4 <mycpu>
    80004180:	01813083          	ld	ra,24(sp)
    80004184:	01013403          	ld	s0,16(sp)
    80004188:	40a48533          	sub	a0,s1,a0
    8000418c:	00153513          	seqz	a0,a0
    80004190:	00813483          	ld	s1,8(sp)
    80004194:	02010113          	addi	sp,sp,32
    80004198:	00008067          	ret

000000008000419c <push_off>:
    8000419c:	fe010113          	addi	sp,sp,-32
    800041a0:	00813823          	sd	s0,16(sp)
    800041a4:	00113c23          	sd	ra,24(sp)
    800041a8:	00913423          	sd	s1,8(sp)
    800041ac:	02010413          	addi	s0,sp,32
    800041b0:	100024f3          	csrr	s1,sstatus
    800041b4:	100027f3          	csrr	a5,sstatus
    800041b8:	ffd7f793          	andi	a5,a5,-3
    800041bc:	10079073          	csrw	sstatus,a5
    800041c0:	ffffe097          	auipc	ra,0xffffe
    800041c4:	714080e7          	jalr	1812(ra) # 800028d4 <mycpu>
    800041c8:	07852783          	lw	a5,120(a0)
    800041cc:	02078663          	beqz	a5,800041f8 <push_off+0x5c>
    800041d0:	ffffe097          	auipc	ra,0xffffe
    800041d4:	704080e7          	jalr	1796(ra) # 800028d4 <mycpu>
    800041d8:	07852783          	lw	a5,120(a0)
    800041dc:	01813083          	ld	ra,24(sp)
    800041e0:	01013403          	ld	s0,16(sp)
    800041e4:	0017879b          	addiw	a5,a5,1
    800041e8:	06f52c23          	sw	a5,120(a0)
    800041ec:	00813483          	ld	s1,8(sp)
    800041f0:	02010113          	addi	sp,sp,32
    800041f4:	00008067          	ret
    800041f8:	0014d493          	srli	s1,s1,0x1
    800041fc:	ffffe097          	auipc	ra,0xffffe
    80004200:	6d8080e7          	jalr	1752(ra) # 800028d4 <mycpu>
    80004204:	0014f493          	andi	s1,s1,1
    80004208:	06952e23          	sw	s1,124(a0)
    8000420c:	fc5ff06f          	j	800041d0 <push_off+0x34>

0000000080004210 <pop_off>:
    80004210:	ff010113          	addi	sp,sp,-16
    80004214:	00813023          	sd	s0,0(sp)
    80004218:	00113423          	sd	ra,8(sp)
    8000421c:	01010413          	addi	s0,sp,16
    80004220:	ffffe097          	auipc	ra,0xffffe
    80004224:	6b4080e7          	jalr	1716(ra) # 800028d4 <mycpu>
    80004228:	100027f3          	csrr	a5,sstatus
    8000422c:	0027f793          	andi	a5,a5,2
    80004230:	04079663          	bnez	a5,8000427c <pop_off+0x6c>
    80004234:	07852783          	lw	a5,120(a0)
    80004238:	02f05a63          	blez	a5,8000426c <pop_off+0x5c>
    8000423c:	fff7871b          	addiw	a4,a5,-1
    80004240:	06e52c23          	sw	a4,120(a0)
    80004244:	00071c63          	bnez	a4,8000425c <pop_off+0x4c>
    80004248:	07c52783          	lw	a5,124(a0)
    8000424c:	00078863          	beqz	a5,8000425c <pop_off+0x4c>
    80004250:	100027f3          	csrr	a5,sstatus
    80004254:	0027e793          	ori	a5,a5,2
    80004258:	10079073          	csrw	sstatus,a5
    8000425c:	00813083          	ld	ra,8(sp)
    80004260:	00013403          	ld	s0,0(sp)
    80004264:	01010113          	addi	sp,sp,16
    80004268:	00008067          	ret
    8000426c:	00001517          	auipc	a0,0x1
    80004270:	0d450513          	addi	a0,a0,212 # 80005340 <digits+0x48>
    80004274:	fffff097          	auipc	ra,0xfffff
    80004278:	018080e7          	jalr	24(ra) # 8000328c <panic>
    8000427c:	00001517          	auipc	a0,0x1
    80004280:	0ac50513          	addi	a0,a0,172 # 80005328 <digits+0x30>
    80004284:	fffff097          	auipc	ra,0xfffff
    80004288:	008080e7          	jalr	8(ra) # 8000328c <panic>

000000008000428c <push_on>:
    8000428c:	fe010113          	addi	sp,sp,-32
    80004290:	00813823          	sd	s0,16(sp)
    80004294:	00113c23          	sd	ra,24(sp)
    80004298:	00913423          	sd	s1,8(sp)
    8000429c:	02010413          	addi	s0,sp,32
    800042a0:	100024f3          	csrr	s1,sstatus
    800042a4:	100027f3          	csrr	a5,sstatus
    800042a8:	0027e793          	ori	a5,a5,2
    800042ac:	10079073          	csrw	sstatus,a5
    800042b0:	ffffe097          	auipc	ra,0xffffe
    800042b4:	624080e7          	jalr	1572(ra) # 800028d4 <mycpu>
    800042b8:	07852783          	lw	a5,120(a0)
    800042bc:	02078663          	beqz	a5,800042e8 <push_on+0x5c>
    800042c0:	ffffe097          	auipc	ra,0xffffe
    800042c4:	614080e7          	jalr	1556(ra) # 800028d4 <mycpu>
    800042c8:	07852783          	lw	a5,120(a0)
    800042cc:	01813083          	ld	ra,24(sp)
    800042d0:	01013403          	ld	s0,16(sp)
    800042d4:	0017879b          	addiw	a5,a5,1
    800042d8:	06f52c23          	sw	a5,120(a0)
    800042dc:	00813483          	ld	s1,8(sp)
    800042e0:	02010113          	addi	sp,sp,32
    800042e4:	00008067          	ret
    800042e8:	0014d493          	srli	s1,s1,0x1
    800042ec:	ffffe097          	auipc	ra,0xffffe
    800042f0:	5e8080e7          	jalr	1512(ra) # 800028d4 <mycpu>
    800042f4:	0014f493          	andi	s1,s1,1
    800042f8:	06952e23          	sw	s1,124(a0)
    800042fc:	fc5ff06f          	j	800042c0 <push_on+0x34>

0000000080004300 <pop_on>:
    80004300:	ff010113          	addi	sp,sp,-16
    80004304:	00813023          	sd	s0,0(sp)
    80004308:	00113423          	sd	ra,8(sp)
    8000430c:	01010413          	addi	s0,sp,16
    80004310:	ffffe097          	auipc	ra,0xffffe
    80004314:	5c4080e7          	jalr	1476(ra) # 800028d4 <mycpu>
    80004318:	100027f3          	csrr	a5,sstatus
    8000431c:	0027f793          	andi	a5,a5,2
    80004320:	04078463          	beqz	a5,80004368 <pop_on+0x68>
    80004324:	07852783          	lw	a5,120(a0)
    80004328:	02f05863          	blez	a5,80004358 <pop_on+0x58>
    8000432c:	fff7879b          	addiw	a5,a5,-1
    80004330:	06f52c23          	sw	a5,120(a0)
    80004334:	07853783          	ld	a5,120(a0)
    80004338:	00079863          	bnez	a5,80004348 <pop_on+0x48>
    8000433c:	100027f3          	csrr	a5,sstatus
    80004340:	ffd7f793          	andi	a5,a5,-3
    80004344:	10079073          	csrw	sstatus,a5
    80004348:	00813083          	ld	ra,8(sp)
    8000434c:	00013403          	ld	s0,0(sp)
    80004350:	01010113          	addi	sp,sp,16
    80004354:	00008067          	ret
    80004358:	00001517          	auipc	a0,0x1
    8000435c:	01050513          	addi	a0,a0,16 # 80005368 <digits+0x70>
    80004360:	fffff097          	auipc	ra,0xfffff
    80004364:	f2c080e7          	jalr	-212(ra) # 8000328c <panic>
    80004368:	00001517          	auipc	a0,0x1
    8000436c:	fe050513          	addi	a0,a0,-32 # 80005348 <digits+0x50>
    80004370:	fffff097          	auipc	ra,0xfffff
    80004374:	f1c080e7          	jalr	-228(ra) # 8000328c <panic>

0000000080004378 <__memset>:
    80004378:	ff010113          	addi	sp,sp,-16
    8000437c:	00813423          	sd	s0,8(sp)
    80004380:	01010413          	addi	s0,sp,16
    80004384:	1a060e63          	beqz	a2,80004540 <__memset+0x1c8>
    80004388:	40a007b3          	neg	a5,a0
    8000438c:	0077f793          	andi	a5,a5,7
    80004390:	00778693          	addi	a3,a5,7
    80004394:	00b00813          	li	a6,11
    80004398:	0ff5f593          	andi	a1,a1,255
    8000439c:	fff6071b          	addiw	a4,a2,-1
    800043a0:	1b06e663          	bltu	a3,a6,8000454c <__memset+0x1d4>
    800043a4:	1cd76463          	bltu	a4,a3,8000456c <__memset+0x1f4>
    800043a8:	1a078e63          	beqz	a5,80004564 <__memset+0x1ec>
    800043ac:	00b50023          	sb	a1,0(a0)
    800043b0:	00100713          	li	a4,1
    800043b4:	1ae78463          	beq	a5,a4,8000455c <__memset+0x1e4>
    800043b8:	00b500a3          	sb	a1,1(a0)
    800043bc:	00200713          	li	a4,2
    800043c0:	1ae78a63          	beq	a5,a4,80004574 <__memset+0x1fc>
    800043c4:	00b50123          	sb	a1,2(a0)
    800043c8:	00300713          	li	a4,3
    800043cc:	18e78463          	beq	a5,a4,80004554 <__memset+0x1dc>
    800043d0:	00b501a3          	sb	a1,3(a0)
    800043d4:	00400713          	li	a4,4
    800043d8:	1ae78263          	beq	a5,a4,8000457c <__memset+0x204>
    800043dc:	00b50223          	sb	a1,4(a0)
    800043e0:	00500713          	li	a4,5
    800043e4:	1ae78063          	beq	a5,a4,80004584 <__memset+0x20c>
    800043e8:	00b502a3          	sb	a1,5(a0)
    800043ec:	00700713          	li	a4,7
    800043f0:	18e79e63          	bne	a5,a4,8000458c <__memset+0x214>
    800043f4:	00b50323          	sb	a1,6(a0)
    800043f8:	00700e93          	li	t4,7
    800043fc:	00859713          	slli	a4,a1,0x8
    80004400:	00e5e733          	or	a4,a1,a4
    80004404:	01059e13          	slli	t3,a1,0x10
    80004408:	01c76e33          	or	t3,a4,t3
    8000440c:	01859313          	slli	t1,a1,0x18
    80004410:	006e6333          	or	t1,t3,t1
    80004414:	02059893          	slli	a7,a1,0x20
    80004418:	40f60e3b          	subw	t3,a2,a5
    8000441c:	011368b3          	or	a7,t1,a7
    80004420:	02859813          	slli	a6,a1,0x28
    80004424:	0108e833          	or	a6,a7,a6
    80004428:	03059693          	slli	a3,a1,0x30
    8000442c:	003e589b          	srliw	a7,t3,0x3
    80004430:	00d866b3          	or	a3,a6,a3
    80004434:	03859713          	slli	a4,a1,0x38
    80004438:	00389813          	slli	a6,a7,0x3
    8000443c:	00f507b3          	add	a5,a0,a5
    80004440:	00e6e733          	or	a4,a3,a4
    80004444:	000e089b          	sext.w	a7,t3
    80004448:	00f806b3          	add	a3,a6,a5
    8000444c:	00e7b023          	sd	a4,0(a5)
    80004450:	00878793          	addi	a5,a5,8
    80004454:	fed79ce3          	bne	a5,a3,8000444c <__memset+0xd4>
    80004458:	ff8e7793          	andi	a5,t3,-8
    8000445c:	0007871b          	sext.w	a4,a5
    80004460:	01d787bb          	addw	a5,a5,t4
    80004464:	0ce88e63          	beq	a7,a4,80004540 <__memset+0x1c8>
    80004468:	00f50733          	add	a4,a0,a5
    8000446c:	00b70023          	sb	a1,0(a4)
    80004470:	0017871b          	addiw	a4,a5,1
    80004474:	0cc77663          	bgeu	a4,a2,80004540 <__memset+0x1c8>
    80004478:	00e50733          	add	a4,a0,a4
    8000447c:	00b70023          	sb	a1,0(a4)
    80004480:	0027871b          	addiw	a4,a5,2
    80004484:	0ac77e63          	bgeu	a4,a2,80004540 <__memset+0x1c8>
    80004488:	00e50733          	add	a4,a0,a4
    8000448c:	00b70023          	sb	a1,0(a4)
    80004490:	0037871b          	addiw	a4,a5,3
    80004494:	0ac77663          	bgeu	a4,a2,80004540 <__memset+0x1c8>
    80004498:	00e50733          	add	a4,a0,a4
    8000449c:	00b70023          	sb	a1,0(a4)
    800044a0:	0047871b          	addiw	a4,a5,4
    800044a4:	08c77e63          	bgeu	a4,a2,80004540 <__memset+0x1c8>
    800044a8:	00e50733          	add	a4,a0,a4
    800044ac:	00b70023          	sb	a1,0(a4)
    800044b0:	0057871b          	addiw	a4,a5,5
    800044b4:	08c77663          	bgeu	a4,a2,80004540 <__memset+0x1c8>
    800044b8:	00e50733          	add	a4,a0,a4
    800044bc:	00b70023          	sb	a1,0(a4)
    800044c0:	0067871b          	addiw	a4,a5,6
    800044c4:	06c77e63          	bgeu	a4,a2,80004540 <__memset+0x1c8>
    800044c8:	00e50733          	add	a4,a0,a4
    800044cc:	00b70023          	sb	a1,0(a4)
    800044d0:	0077871b          	addiw	a4,a5,7
    800044d4:	06c77663          	bgeu	a4,a2,80004540 <__memset+0x1c8>
    800044d8:	00e50733          	add	a4,a0,a4
    800044dc:	00b70023          	sb	a1,0(a4)
    800044e0:	0087871b          	addiw	a4,a5,8
    800044e4:	04c77e63          	bgeu	a4,a2,80004540 <__memset+0x1c8>
    800044e8:	00e50733          	add	a4,a0,a4
    800044ec:	00b70023          	sb	a1,0(a4)
    800044f0:	0097871b          	addiw	a4,a5,9
    800044f4:	04c77663          	bgeu	a4,a2,80004540 <__memset+0x1c8>
    800044f8:	00e50733          	add	a4,a0,a4
    800044fc:	00b70023          	sb	a1,0(a4)
    80004500:	00a7871b          	addiw	a4,a5,10
    80004504:	02c77e63          	bgeu	a4,a2,80004540 <__memset+0x1c8>
    80004508:	00e50733          	add	a4,a0,a4
    8000450c:	00b70023          	sb	a1,0(a4)
    80004510:	00b7871b          	addiw	a4,a5,11
    80004514:	02c77663          	bgeu	a4,a2,80004540 <__memset+0x1c8>
    80004518:	00e50733          	add	a4,a0,a4
    8000451c:	00b70023          	sb	a1,0(a4)
    80004520:	00c7871b          	addiw	a4,a5,12
    80004524:	00c77e63          	bgeu	a4,a2,80004540 <__memset+0x1c8>
    80004528:	00e50733          	add	a4,a0,a4
    8000452c:	00b70023          	sb	a1,0(a4)
    80004530:	00d7879b          	addiw	a5,a5,13
    80004534:	00c7f663          	bgeu	a5,a2,80004540 <__memset+0x1c8>
    80004538:	00f507b3          	add	a5,a0,a5
    8000453c:	00b78023          	sb	a1,0(a5)
    80004540:	00813403          	ld	s0,8(sp)
    80004544:	01010113          	addi	sp,sp,16
    80004548:	00008067          	ret
    8000454c:	00b00693          	li	a3,11
    80004550:	e55ff06f          	j	800043a4 <__memset+0x2c>
    80004554:	00300e93          	li	t4,3
    80004558:	ea5ff06f          	j	800043fc <__memset+0x84>
    8000455c:	00100e93          	li	t4,1
    80004560:	e9dff06f          	j	800043fc <__memset+0x84>
    80004564:	00000e93          	li	t4,0
    80004568:	e95ff06f          	j	800043fc <__memset+0x84>
    8000456c:	00000793          	li	a5,0
    80004570:	ef9ff06f          	j	80004468 <__memset+0xf0>
    80004574:	00200e93          	li	t4,2
    80004578:	e85ff06f          	j	800043fc <__memset+0x84>
    8000457c:	00400e93          	li	t4,4
    80004580:	e7dff06f          	j	800043fc <__memset+0x84>
    80004584:	00500e93          	li	t4,5
    80004588:	e75ff06f          	j	800043fc <__memset+0x84>
    8000458c:	00600e93          	li	t4,6
    80004590:	e6dff06f          	j	800043fc <__memset+0x84>

0000000080004594 <__memmove>:
    80004594:	ff010113          	addi	sp,sp,-16
    80004598:	00813423          	sd	s0,8(sp)
    8000459c:	01010413          	addi	s0,sp,16
    800045a0:	0e060863          	beqz	a2,80004690 <__memmove+0xfc>
    800045a4:	fff6069b          	addiw	a3,a2,-1
    800045a8:	0006881b          	sext.w	a6,a3
    800045ac:	0ea5e863          	bltu	a1,a0,8000469c <__memmove+0x108>
    800045b0:	00758713          	addi	a4,a1,7
    800045b4:	00a5e7b3          	or	a5,a1,a0
    800045b8:	40a70733          	sub	a4,a4,a0
    800045bc:	0077f793          	andi	a5,a5,7
    800045c0:	00f73713          	sltiu	a4,a4,15
    800045c4:	00174713          	xori	a4,a4,1
    800045c8:	0017b793          	seqz	a5,a5
    800045cc:	00e7f7b3          	and	a5,a5,a4
    800045d0:	10078863          	beqz	a5,800046e0 <__memmove+0x14c>
    800045d4:	00900793          	li	a5,9
    800045d8:	1107f463          	bgeu	a5,a6,800046e0 <__memmove+0x14c>
    800045dc:	0036581b          	srliw	a6,a2,0x3
    800045e0:	fff8081b          	addiw	a6,a6,-1
    800045e4:	02081813          	slli	a6,a6,0x20
    800045e8:	01d85893          	srli	a7,a6,0x1d
    800045ec:	00858813          	addi	a6,a1,8
    800045f0:	00058793          	mv	a5,a1
    800045f4:	00050713          	mv	a4,a0
    800045f8:	01088833          	add	a6,a7,a6
    800045fc:	0007b883          	ld	a7,0(a5)
    80004600:	00878793          	addi	a5,a5,8
    80004604:	00870713          	addi	a4,a4,8
    80004608:	ff173c23          	sd	a7,-8(a4)
    8000460c:	ff0798e3          	bne	a5,a6,800045fc <__memmove+0x68>
    80004610:	ff867713          	andi	a4,a2,-8
    80004614:	02071793          	slli	a5,a4,0x20
    80004618:	0207d793          	srli	a5,a5,0x20
    8000461c:	00f585b3          	add	a1,a1,a5
    80004620:	40e686bb          	subw	a3,a3,a4
    80004624:	00f507b3          	add	a5,a0,a5
    80004628:	06e60463          	beq	a2,a4,80004690 <__memmove+0xfc>
    8000462c:	0005c703          	lbu	a4,0(a1)
    80004630:	00e78023          	sb	a4,0(a5)
    80004634:	04068e63          	beqz	a3,80004690 <__memmove+0xfc>
    80004638:	0015c603          	lbu	a2,1(a1)
    8000463c:	00100713          	li	a4,1
    80004640:	00c780a3          	sb	a2,1(a5)
    80004644:	04e68663          	beq	a3,a4,80004690 <__memmove+0xfc>
    80004648:	0025c603          	lbu	a2,2(a1)
    8000464c:	00200713          	li	a4,2
    80004650:	00c78123          	sb	a2,2(a5)
    80004654:	02e68e63          	beq	a3,a4,80004690 <__memmove+0xfc>
    80004658:	0035c603          	lbu	a2,3(a1)
    8000465c:	00300713          	li	a4,3
    80004660:	00c781a3          	sb	a2,3(a5)
    80004664:	02e68663          	beq	a3,a4,80004690 <__memmove+0xfc>
    80004668:	0045c603          	lbu	a2,4(a1)
    8000466c:	00400713          	li	a4,4
    80004670:	00c78223          	sb	a2,4(a5)
    80004674:	00e68e63          	beq	a3,a4,80004690 <__memmove+0xfc>
    80004678:	0055c603          	lbu	a2,5(a1)
    8000467c:	00500713          	li	a4,5
    80004680:	00c782a3          	sb	a2,5(a5)
    80004684:	00e68663          	beq	a3,a4,80004690 <__memmove+0xfc>
    80004688:	0065c703          	lbu	a4,6(a1)
    8000468c:	00e78323          	sb	a4,6(a5)
    80004690:	00813403          	ld	s0,8(sp)
    80004694:	01010113          	addi	sp,sp,16
    80004698:	00008067          	ret
    8000469c:	02061713          	slli	a4,a2,0x20
    800046a0:	02075713          	srli	a4,a4,0x20
    800046a4:	00e587b3          	add	a5,a1,a4
    800046a8:	f0f574e3          	bgeu	a0,a5,800045b0 <__memmove+0x1c>
    800046ac:	02069613          	slli	a2,a3,0x20
    800046b0:	02065613          	srli	a2,a2,0x20
    800046b4:	fff64613          	not	a2,a2
    800046b8:	00e50733          	add	a4,a0,a4
    800046bc:	00c78633          	add	a2,a5,a2
    800046c0:	fff7c683          	lbu	a3,-1(a5)
    800046c4:	fff78793          	addi	a5,a5,-1
    800046c8:	fff70713          	addi	a4,a4,-1
    800046cc:	00d70023          	sb	a3,0(a4)
    800046d0:	fec798e3          	bne	a5,a2,800046c0 <__memmove+0x12c>
    800046d4:	00813403          	ld	s0,8(sp)
    800046d8:	01010113          	addi	sp,sp,16
    800046dc:	00008067          	ret
    800046e0:	02069713          	slli	a4,a3,0x20
    800046e4:	02075713          	srli	a4,a4,0x20
    800046e8:	00170713          	addi	a4,a4,1
    800046ec:	00e50733          	add	a4,a0,a4
    800046f0:	00050793          	mv	a5,a0
    800046f4:	0005c683          	lbu	a3,0(a1)
    800046f8:	00178793          	addi	a5,a5,1
    800046fc:	00158593          	addi	a1,a1,1
    80004700:	fed78fa3          	sb	a3,-1(a5)
    80004704:	fee798e3          	bne	a5,a4,800046f4 <__memmove+0x160>
    80004708:	f89ff06f          	j	80004690 <__memmove+0xfc>

000000008000470c <__mem_free>:
    8000470c:	ff010113          	addi	sp,sp,-16
    80004710:	00813423          	sd	s0,8(sp)
    80004714:	01010413          	addi	s0,sp,16
    80004718:	00001597          	auipc	a1,0x1
    8000471c:	2d858593          	addi	a1,a1,728 # 800059f0 <freep>
    80004720:	0005b783          	ld	a5,0(a1)
    80004724:	ff050693          	addi	a3,a0,-16
    80004728:	0007b703          	ld	a4,0(a5)
    8000472c:	00d7fc63          	bgeu	a5,a3,80004744 <__mem_free+0x38>
    80004730:	00e6ee63          	bltu	a3,a4,8000474c <__mem_free+0x40>
    80004734:	00e7fc63          	bgeu	a5,a4,8000474c <__mem_free+0x40>
    80004738:	00070793          	mv	a5,a4
    8000473c:	0007b703          	ld	a4,0(a5)
    80004740:	fed7e8e3          	bltu	a5,a3,80004730 <__mem_free+0x24>
    80004744:	fee7eae3          	bltu	a5,a4,80004738 <__mem_free+0x2c>
    80004748:	fee6f8e3          	bgeu	a3,a4,80004738 <__mem_free+0x2c>
    8000474c:	ff852803          	lw	a6,-8(a0)
    80004750:	02081613          	slli	a2,a6,0x20
    80004754:	01c65613          	srli	a2,a2,0x1c
    80004758:	00c68633          	add	a2,a3,a2
    8000475c:	02c70a63          	beq	a4,a2,80004790 <__mem_free+0x84>
    80004760:	fee53823          	sd	a4,-16(a0)
    80004764:	0087a503          	lw	a0,8(a5)
    80004768:	02051613          	slli	a2,a0,0x20
    8000476c:	01c65613          	srli	a2,a2,0x1c
    80004770:	00c78633          	add	a2,a5,a2
    80004774:	04c68263          	beq	a3,a2,800047b8 <__mem_free+0xac>
    80004778:	00813403          	ld	s0,8(sp)
    8000477c:	00d7b023          	sd	a3,0(a5)
    80004780:	00f5b023          	sd	a5,0(a1)
    80004784:	00000513          	li	a0,0
    80004788:	01010113          	addi	sp,sp,16
    8000478c:	00008067          	ret
    80004790:	00872603          	lw	a2,8(a4)
    80004794:	00073703          	ld	a4,0(a4)
    80004798:	0106083b          	addw	a6,a2,a6
    8000479c:	ff052c23          	sw	a6,-8(a0)
    800047a0:	fee53823          	sd	a4,-16(a0)
    800047a4:	0087a503          	lw	a0,8(a5)
    800047a8:	02051613          	slli	a2,a0,0x20
    800047ac:	01c65613          	srli	a2,a2,0x1c
    800047b0:	00c78633          	add	a2,a5,a2
    800047b4:	fcc692e3          	bne	a3,a2,80004778 <__mem_free+0x6c>
    800047b8:	00813403          	ld	s0,8(sp)
    800047bc:	0105053b          	addw	a0,a0,a6
    800047c0:	00a7a423          	sw	a0,8(a5)
    800047c4:	00e7b023          	sd	a4,0(a5)
    800047c8:	00f5b023          	sd	a5,0(a1)
    800047cc:	00000513          	li	a0,0
    800047d0:	01010113          	addi	sp,sp,16
    800047d4:	00008067          	ret

00000000800047d8 <__mem_alloc>:
    800047d8:	fc010113          	addi	sp,sp,-64
    800047dc:	02813823          	sd	s0,48(sp)
    800047e0:	02913423          	sd	s1,40(sp)
    800047e4:	03213023          	sd	s2,32(sp)
    800047e8:	01513423          	sd	s5,8(sp)
    800047ec:	02113c23          	sd	ra,56(sp)
    800047f0:	01313c23          	sd	s3,24(sp)
    800047f4:	01413823          	sd	s4,16(sp)
    800047f8:	01613023          	sd	s6,0(sp)
    800047fc:	04010413          	addi	s0,sp,64
    80004800:	00001a97          	auipc	s5,0x1
    80004804:	1f0a8a93          	addi	s5,s5,496 # 800059f0 <freep>
    80004808:	00f50913          	addi	s2,a0,15
    8000480c:	000ab683          	ld	a3,0(s5)
    80004810:	00495913          	srli	s2,s2,0x4
    80004814:	0019049b          	addiw	s1,s2,1
    80004818:	00048913          	mv	s2,s1
    8000481c:	0c068c63          	beqz	a3,800048f4 <__mem_alloc+0x11c>
    80004820:	0006b503          	ld	a0,0(a3)
    80004824:	00852703          	lw	a4,8(a0)
    80004828:	10977063          	bgeu	a4,s1,80004928 <__mem_alloc+0x150>
    8000482c:	000017b7          	lui	a5,0x1
    80004830:	0009099b          	sext.w	s3,s2
    80004834:	0af4e863          	bltu	s1,a5,800048e4 <__mem_alloc+0x10c>
    80004838:	02099a13          	slli	s4,s3,0x20
    8000483c:	01ca5a13          	srli	s4,s4,0x1c
    80004840:	fff00b13          	li	s6,-1
    80004844:	0100006f          	j	80004854 <__mem_alloc+0x7c>
    80004848:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000484c:	00852703          	lw	a4,8(a0)
    80004850:	04977463          	bgeu	a4,s1,80004898 <__mem_alloc+0xc0>
    80004854:	00050793          	mv	a5,a0
    80004858:	fea698e3          	bne	a3,a0,80004848 <__mem_alloc+0x70>
    8000485c:	000a0513          	mv	a0,s4
    80004860:	00000097          	auipc	ra,0x0
    80004864:	1f0080e7          	jalr	496(ra) # 80004a50 <kvmincrease>
    80004868:	00050793          	mv	a5,a0
    8000486c:	01050513          	addi	a0,a0,16
    80004870:	07678e63          	beq	a5,s6,800048ec <__mem_alloc+0x114>
    80004874:	0137a423          	sw	s3,8(a5)
    80004878:	00000097          	auipc	ra,0x0
    8000487c:	e94080e7          	jalr	-364(ra) # 8000470c <__mem_free>
    80004880:	000ab783          	ld	a5,0(s5)
    80004884:	06078463          	beqz	a5,800048ec <__mem_alloc+0x114>
    80004888:	0007b503          	ld	a0,0(a5)
    8000488c:	00078693          	mv	a3,a5
    80004890:	00852703          	lw	a4,8(a0)
    80004894:	fc9760e3          	bltu	a4,s1,80004854 <__mem_alloc+0x7c>
    80004898:	08e48263          	beq	s1,a4,8000491c <__mem_alloc+0x144>
    8000489c:	4127073b          	subw	a4,a4,s2
    800048a0:	02071693          	slli	a3,a4,0x20
    800048a4:	01c6d693          	srli	a3,a3,0x1c
    800048a8:	00e52423          	sw	a4,8(a0)
    800048ac:	00d50533          	add	a0,a0,a3
    800048b0:	01252423          	sw	s2,8(a0)
    800048b4:	00fab023          	sd	a5,0(s5)
    800048b8:	01050513          	addi	a0,a0,16
    800048bc:	03813083          	ld	ra,56(sp)
    800048c0:	03013403          	ld	s0,48(sp)
    800048c4:	02813483          	ld	s1,40(sp)
    800048c8:	02013903          	ld	s2,32(sp)
    800048cc:	01813983          	ld	s3,24(sp)
    800048d0:	01013a03          	ld	s4,16(sp)
    800048d4:	00813a83          	ld	s5,8(sp)
    800048d8:	00013b03          	ld	s6,0(sp)
    800048dc:	04010113          	addi	sp,sp,64
    800048e0:	00008067          	ret
    800048e4:	000019b7          	lui	s3,0x1
    800048e8:	f51ff06f          	j	80004838 <__mem_alloc+0x60>
    800048ec:	00000513          	li	a0,0
    800048f0:	fcdff06f          	j	800048bc <__mem_alloc+0xe4>
    800048f4:	00002797          	auipc	a5,0x2
    800048f8:	39c78793          	addi	a5,a5,924 # 80006c90 <base>
    800048fc:	00078513          	mv	a0,a5
    80004900:	00fab023          	sd	a5,0(s5)
    80004904:	00f7b023          	sd	a5,0(a5)
    80004908:	00000713          	li	a4,0
    8000490c:	00002797          	auipc	a5,0x2
    80004910:	3807a623          	sw	zero,908(a5) # 80006c98 <base+0x8>
    80004914:	00050693          	mv	a3,a0
    80004918:	f11ff06f          	j	80004828 <__mem_alloc+0x50>
    8000491c:	00053703          	ld	a4,0(a0)
    80004920:	00e7b023          	sd	a4,0(a5)
    80004924:	f91ff06f          	j	800048b4 <__mem_alloc+0xdc>
    80004928:	00068793          	mv	a5,a3
    8000492c:	f6dff06f          	j	80004898 <__mem_alloc+0xc0>

0000000080004930 <__putc>:
    80004930:	fe010113          	addi	sp,sp,-32
    80004934:	00813823          	sd	s0,16(sp)
    80004938:	00113c23          	sd	ra,24(sp)
    8000493c:	02010413          	addi	s0,sp,32
    80004940:	00050793          	mv	a5,a0
    80004944:	fef40593          	addi	a1,s0,-17
    80004948:	00100613          	li	a2,1
    8000494c:	00000513          	li	a0,0
    80004950:	fef407a3          	sb	a5,-17(s0)
    80004954:	fffff097          	auipc	ra,0xfffff
    80004958:	918080e7          	jalr	-1768(ra) # 8000326c <console_write>
    8000495c:	01813083          	ld	ra,24(sp)
    80004960:	01013403          	ld	s0,16(sp)
    80004964:	02010113          	addi	sp,sp,32
    80004968:	00008067          	ret

000000008000496c <__getc>:
    8000496c:	fe010113          	addi	sp,sp,-32
    80004970:	00813823          	sd	s0,16(sp)
    80004974:	00113c23          	sd	ra,24(sp)
    80004978:	02010413          	addi	s0,sp,32
    8000497c:	fe840593          	addi	a1,s0,-24
    80004980:	00100613          	li	a2,1
    80004984:	00000513          	li	a0,0
    80004988:	fffff097          	auipc	ra,0xfffff
    8000498c:	8c4080e7          	jalr	-1852(ra) # 8000324c <console_read>
    80004990:	fe844503          	lbu	a0,-24(s0)
    80004994:	01813083          	ld	ra,24(sp)
    80004998:	01013403          	ld	s0,16(sp)
    8000499c:	02010113          	addi	sp,sp,32
    800049a0:	00008067          	ret

00000000800049a4 <console_handler>:
    800049a4:	fe010113          	addi	sp,sp,-32
    800049a8:	00813823          	sd	s0,16(sp)
    800049ac:	00113c23          	sd	ra,24(sp)
    800049b0:	00913423          	sd	s1,8(sp)
    800049b4:	02010413          	addi	s0,sp,32
    800049b8:	14202773          	csrr	a4,scause
    800049bc:	100027f3          	csrr	a5,sstatus
    800049c0:	0027f793          	andi	a5,a5,2
    800049c4:	06079e63          	bnez	a5,80004a40 <console_handler+0x9c>
    800049c8:	00074c63          	bltz	a4,800049e0 <console_handler+0x3c>
    800049cc:	01813083          	ld	ra,24(sp)
    800049d0:	01013403          	ld	s0,16(sp)
    800049d4:	00813483          	ld	s1,8(sp)
    800049d8:	02010113          	addi	sp,sp,32
    800049dc:	00008067          	ret
    800049e0:	0ff77713          	andi	a4,a4,255
    800049e4:	00900793          	li	a5,9
    800049e8:	fef712e3          	bne	a4,a5,800049cc <console_handler+0x28>
    800049ec:	ffffe097          	auipc	ra,0xffffe
    800049f0:	4b8080e7          	jalr	1208(ra) # 80002ea4 <plic_claim>
    800049f4:	00a00793          	li	a5,10
    800049f8:	00050493          	mv	s1,a0
    800049fc:	02f50c63          	beq	a0,a5,80004a34 <console_handler+0x90>
    80004a00:	fc0506e3          	beqz	a0,800049cc <console_handler+0x28>
    80004a04:	00050593          	mv	a1,a0
    80004a08:	00001517          	auipc	a0,0x1
    80004a0c:	86850513          	addi	a0,a0,-1944 # 80005270 <_ZZ12printIntegermE6digits+0xe0>
    80004a10:	fffff097          	auipc	ra,0xfffff
    80004a14:	8d8080e7          	jalr	-1832(ra) # 800032e8 <__printf>
    80004a18:	01013403          	ld	s0,16(sp)
    80004a1c:	01813083          	ld	ra,24(sp)
    80004a20:	00048513          	mv	a0,s1
    80004a24:	00813483          	ld	s1,8(sp)
    80004a28:	02010113          	addi	sp,sp,32
    80004a2c:	ffffe317          	auipc	t1,0xffffe
    80004a30:	4b030067          	jr	1200(t1) # 80002edc <plic_complete>
    80004a34:	fffff097          	auipc	ra,0xfffff
    80004a38:	1bc080e7          	jalr	444(ra) # 80003bf0 <uartintr>
    80004a3c:	fddff06f          	j	80004a18 <console_handler+0x74>
    80004a40:	00001517          	auipc	a0,0x1
    80004a44:	93050513          	addi	a0,a0,-1744 # 80005370 <digits+0x78>
    80004a48:	fffff097          	auipc	ra,0xfffff
    80004a4c:	844080e7          	jalr	-1980(ra) # 8000328c <panic>

0000000080004a50 <kvmincrease>:
    80004a50:	fe010113          	addi	sp,sp,-32
    80004a54:	01213023          	sd	s2,0(sp)
    80004a58:	00001937          	lui	s2,0x1
    80004a5c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004a60:	00813823          	sd	s0,16(sp)
    80004a64:	00113c23          	sd	ra,24(sp)
    80004a68:	00913423          	sd	s1,8(sp)
    80004a6c:	02010413          	addi	s0,sp,32
    80004a70:	01250933          	add	s2,a0,s2
    80004a74:	00c95913          	srli	s2,s2,0xc
    80004a78:	02090863          	beqz	s2,80004aa8 <kvmincrease+0x58>
    80004a7c:	00000493          	li	s1,0
    80004a80:	00148493          	addi	s1,s1,1
    80004a84:	fffff097          	auipc	ra,0xfffff
    80004a88:	4bc080e7          	jalr	1212(ra) # 80003f40 <kalloc>
    80004a8c:	fe991ae3          	bne	s2,s1,80004a80 <kvmincrease+0x30>
    80004a90:	01813083          	ld	ra,24(sp)
    80004a94:	01013403          	ld	s0,16(sp)
    80004a98:	00813483          	ld	s1,8(sp)
    80004a9c:	00013903          	ld	s2,0(sp)
    80004aa0:	02010113          	addi	sp,sp,32
    80004aa4:	00008067          	ret
    80004aa8:	01813083          	ld	ra,24(sp)
    80004aac:	01013403          	ld	s0,16(sp)
    80004ab0:	00813483          	ld	s1,8(sp)
    80004ab4:	00013903          	ld	s2,0(sp)
    80004ab8:	00000513          	li	a0,0
    80004abc:	02010113          	addi	sp,sp,32
    80004ac0:	00008067          	ret
	...
