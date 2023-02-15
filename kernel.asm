
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	e2813103          	ld	sp,-472(sp) # 80006e28 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	405020ef          	jal	ra,80002c20 <start>

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
    80001184:	484010ef          	jal	ra,80002608 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001250:	00006797          	auipc	a5,0x6
    80001254:	c107b783          	ld	a5,-1008(a5) # 80006e60 <free_mem_head>
    80001258:	08078463          	beqz	a5,800012e0 <_mem_alloc+0x9c>

        free_mem_head->next = NULL;
        free_mem_head->prev = NULL;
    }

    size_t allocate = blocks * MEM_BLOCK_SIZE; // Now this is in bytes
    8000125c:	00651793          	slli	a5,a0,0x6

    // I'm not a sure I have to check for this other case in the for loop:  || ((char*) curr + allocate) < HEAP_END_ADDR
    for (struct mem_block* curr = free_mem_head; curr != NULL; curr = curr->next)
    80001260:	00006517          	auipc	a0,0x6
    80001264:	c0053503          	ld	a0,-1024(a0) # 80006e60 <free_mem_head>
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
    800012b0:	00006797          	auipc	a5,0x6
    800012b4:	ba87b783          	ld	a5,-1112(a5) # 80006e58 <used_mem_head>
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
    800012c8:	00006797          	auipc	a5,0x6
    800012cc:	b8a7b823          	sd	a0,-1136(a5) # 80006e58 <used_mem_head>
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
    800012e0:	00006797          	auipc	a5,0x6
    800012e4:	b707a783          	lw	a5,-1168(a5) # 80006e50 <beginning>
    800012e8:	f6079ae3          	bnez	a5,8000125c <_mem_alloc+0x18>
        beginning = 1;
    800012ec:	00100793          	li	a5,1
    800012f0:	00006717          	auipc	a4,0x6
    800012f4:	b6f72023          	sw	a5,-1184(a4) # 80006e50 <beginning>
        free_mem_head = (struct mem_block*) HEAP_START_ADDR;
    800012f8:	00006797          	auipc	a5,0x6
    800012fc:	a407b783          	ld	a5,-1472(a5) # 80006d38 <HEAP_START_ADDR>
    80001300:	00006717          	auipc	a4,0x6
    80001304:	b6f73023          	sd	a5,-1184(a4) # 80006e60 <free_mem_head>
        free_mem_head->size = ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR) - sizeof(struct mem_block);
    80001308:	00006717          	auipc	a4,0x6
    8000130c:	a2873703          	ld	a4,-1496(a4) # 80006d30 <HEAP_END_ADDR>
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
    80001358:	00006797          	auipc	a5,0x6
    8000135c:	b007b783          	ld	a5,-1280(a5) # 80006e58 <used_mem_head>
    80001360:	02078863          	beqz	a5,80001390 <_mem_alloc+0x14c>
                if ((char*)curr < (char*)used_mem_head) // Should be first in the list
    80001364:	06f57463          	bgeu	a0,a5,800013cc <_mem_alloc+0x188>
                    used_mem_head->prev = curr;
    80001368:	00a7b423          	sd	a0,8(a5)
                    curr->next = used_mem_head;
    8000136c:	00f53823          	sd	a5,16(a0)
                    used_mem_head = curr;
    80001370:	00006797          	auipc	a5,0x6
    80001374:	aea7b423          	sd	a0,-1304(a5) # 80006e58 <used_mem_head>
                    return (void*)((char*) curr + sizeof(struct mem_block));
    80001378:	01850513          	addi	a0,a0,24
    8000137c:	f59ff06f          	j	800012d4 <_mem_alloc+0x90>
                free_mem_head = curr->next;
    80001380:	01053783          	ld	a5,16(a0)
    80001384:	00006717          	auipc	a4,0x6
    80001388:	acf73e23          	sd	a5,-1316(a4) # 80006e60 <free_mem_head>
    8000138c:	fb5ff06f          	j	80001340 <_mem_alloc+0xfc>
                used_mem_head = curr;
    80001390:	00006797          	auipc	a5,0x6
    80001394:	aca7b423          	sd	a0,-1336(a5) # 80006e58 <used_mem_head>
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
    800013d8:	00006717          	auipc	a4,0x6
    800013dc:	a8f73423          	sd	a5,-1400(a4) # 80006e60 <free_mem_head>
    800013e0:	eb9ff06f          	j	80001298 <_mem_alloc+0x54>
                    used_mem_head = curr;
    800013e4:	00006797          	auipc	a5,0x6
    800013e8:	a6a7ba23          	sd	a0,-1420(a5) # 80006e58 <used_mem_head>
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
    80001454:	00006697          	auipc	a3,0x6
    80001458:	a046b683          	ld	a3,-1532(a3) # 80006e58 <used_mem_head>
    8000145c:	04068463          	beqz	a3,800014a4 <_mem_alloc+0x260>
                    if ((char*)curr < (char*) used_mem_head)
    80001460:	06d57c63          	bgeu	a0,a3,800014d8 <_mem_alloc+0x294>
                        used_mem_head->prev = curr;
    80001464:	00a6b423          	sd	a0,8(a3)
                        curr->next = used_mem_head;
    80001468:	00d53823          	sd	a3,16(a0)
                        used_mem_head = curr;
    8000146c:	00006697          	auipc	a3,0x6
    80001470:	9ea6b623          	sd	a0,-1556(a3) # 80006e58 <used_mem_head>
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
    80001498:	00006617          	auipc	a2,0x6
    8000149c:	9cd63423          	sd	a3,-1592(a2) # 80006e60 <free_mem_head>
    800014a0:	f91ff06f          	j	80001430 <_mem_alloc+0x1ec>
                    used_mem_head = curr;
    800014a4:	00006697          	auipc	a3,0x6
    800014a8:	9aa6ba23          	sd	a0,-1612(a3) # 80006e58 <used_mem_head>
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
    800014e0:	00006717          	auipc	a4,0x6
    800014e4:	98f73023          	sd	a5,-1664(a4) # 80006e60 <free_mem_head>
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
    80001500:	00006717          	auipc	a4,0x6
    80001504:	95873703          	ld	a4,-1704(a4) # 80006e58 <used_mem_head>
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
    80001538:	00006797          	auipc	a5,0x6
    8000153c:	9287b783          	ld	a5,-1752(a5) # 80006e60 <free_mem_head>
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
    80001568:	00006717          	auipc	a4,0x6
    8000156c:	8ef73823          	sd	a5,-1808(a4) # 80006e58 <used_mem_head>
        if (used_mem_head)
    80001570:	00078463          	beqz	a5,80001578 <_mem_free+0x88>
            used_mem_head->prev = NULL;
    80001574:	0007b423          	sd	zero,8(a5)
        block_to_free->next = NULL;
    80001578:	fe053c23          	sd	zero,-8(a0)
        if (free_mem_head == NULL)
    8000157c:	00006797          	auipc	a5,0x6
    80001580:	8e47b783          	ld	a5,-1820(a5) # 80006e60 <free_mem_head>
    80001584:	00078663          	beqz	a5,80001590 <_mem_free+0xa0>
            struct mem_block* prev_tmp = NULL;
    80001588:	00000713          	li	a4,0
    8000158c:	01c0006f          	j	800015a8 <_mem_free+0xb8>
            free_mem_head = block_to_free;
    80001590:	00006797          	auipc	a5,0x6
    80001594:	8cd7b823          	sd	a3,-1840(a5) # 80006e60 <free_mem_head>
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
    800015f8:	00006617          	auipc	a2,0x6
    800015fc:	86d63423          	sd	a3,-1944(a2) # 80006e60 <free_mem_head>
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
    80001688:	00005797          	auipc	a5,0x5
    8000168c:	7cd7bc23          	sd	a3,2008(a5) # 80006e60 <free_mem_head>
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

0000000080001810 <_Z22thread_create_wo_startPP3TCBPFvPvES2_>:



int thread_create_wo_start(thread_t *handle, void(*start_routine)(void*), void *arg)
{
    80001810:	ff010113          	addi	sp,sp,-16
    80001814:	00813423          	sd	s0,8(sp)
    80001818:	01010413          	addi	s0,sp,16
    uint64 number = 0x14;

    __asm__ volatile("mv a6, %0" : : "r" (arg));
    8000181c:	00060813          	mv	a6,a2
    __asm__ volatile("mv a5, %0" : : "r" (arg));
    80001820:	00060793          	mv	a5,a2
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    80001824:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    80001828:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (number));
    8000182c:	01400793          	li	a5,20
    80001830:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001834:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001838:	00050513          	mv	a0,a0

    return (int)ret;
}
    8000183c:	0005051b          	sext.w	a0,a0
    80001840:	00813403          	ld	s0,8(sp)
    80001844:	01010113          	addi	sp,sp,16
    80001848:	00008067          	ret

000000008000184c <_Z12thread_startP3TCB>:


int thread_start(thread_t handle)
{
    8000184c:	ff010113          	addi	sp,sp,-16
    80001850:	00813423          	sd	s0,8(sp)
    80001854:	01010413          	addi	s0,sp,16
    int number = 0x15;
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    80001858:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (number));
    8000185c:	01500793          	li	a5,21
    80001860:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001864:	00000073          	ecall

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001868:	00050513          	mv	a0,a0

    return ret;
}
    8000186c:	0005051b          	sext.w	a0,a0
    80001870:	00813403          	ld	s0,8(sp)
    80001874:	01010113          	addi	sp,sp,16
    80001878:	00008067          	ret

000000008000187c <_Z9fibonaccim>:
bool finishedA = false;
bool finishedB = false;
bool finishedC = false;
bool finishedD = false;

uint64 fibonacci(uint64 n) {
    8000187c:	fe010113          	addi	sp,sp,-32
    80001880:	00113c23          	sd	ra,24(sp)
    80001884:	00813823          	sd	s0,16(sp)
    80001888:	00913423          	sd	s1,8(sp)
    8000188c:	01213023          	sd	s2,0(sp)
    80001890:	02010413          	addi	s0,sp,32
    80001894:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001898:	00100793          	li	a5,1
    8000189c:	02a7f863          	bgeu	a5,a0,800018cc <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800018a0:	00a00793          	li	a5,10
    800018a4:	02f577b3          	remu	a5,a0,a5
    800018a8:	02078e63          	beqz	a5,800018e4 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800018ac:	fff48513          	addi	a0,s1,-1
    800018b0:	00000097          	auipc	ra,0x0
    800018b4:	fcc080e7          	jalr	-52(ra) # 8000187c <_Z9fibonaccim>
    800018b8:	00050913          	mv	s2,a0
    800018bc:	ffe48513          	addi	a0,s1,-2
    800018c0:	00000097          	auipc	ra,0x0
    800018c4:	fbc080e7          	jalr	-68(ra) # 8000187c <_Z9fibonaccim>
    800018c8:	00a90533          	add	a0,s2,a0
}
    800018cc:	01813083          	ld	ra,24(sp)
    800018d0:	01013403          	ld	s0,16(sp)
    800018d4:	00813483          	ld	s1,8(sp)
    800018d8:	00013903          	ld	s2,0(sp)
    800018dc:	02010113          	addi	sp,sp,32
    800018e0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800018e4:	00000097          	auipc	ra,0x0
    800018e8:	f08080e7          	jalr	-248(ra) # 800017ec <_Z15thread_dispatchv>
    800018ec:	fc1ff06f          	j	800018ac <_Z9fibonaccim+0x30>

00000000800018f0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800018f0:	fe010113          	addi	sp,sp,-32
    800018f4:	00113c23          	sd	ra,24(sp)
    800018f8:	00813823          	sd	s0,16(sp)
    800018fc:	00913423          	sd	s1,8(sp)
    80001900:	01213023          	sd	s2,0(sp)
    80001904:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80001908:	00000913          	li	s2,0
    8000190c:	0380006f          	j	80001944 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001910:	00000097          	auipc	ra,0x0
    80001914:	edc080e7          	jalr	-292(ra) # 800017ec <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001918:	00148493          	addi	s1,s1,1
    8000191c:	000027b7          	lui	a5,0x2
    80001920:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001924:	0097ee63          	bltu	a5,s1,80001940 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001928:	00000713          	li	a4,0
    8000192c:	000077b7          	lui	a5,0x7
    80001930:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001934:	fce7eee3          	bltu	a5,a4,80001910 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80001938:	00170713          	addi	a4,a4,1
    8000193c:	ff1ff06f          	j	8000192c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80001940:	00190913          	addi	s2,s2,1
    80001944:	00900793          	li	a5,9
    80001948:	0327ec63          	bltu	a5,s2,80001980 <_ZN7WorkerA11workerBodyAEPv+0x90>
        printString("A: i="); printInteger(i); printString("\n");
    8000194c:	00004517          	auipc	a0,0x4
    80001950:	6d450513          	addi	a0,a0,1748 # 80006020 <CONSOLE_STATUS+0x10>
    80001954:	00001097          	auipc	ra,0x1
    80001958:	030080e7          	jalr	48(ra) # 80002984 <_Z11printStringPKc>
    8000195c:	00090513          	mv	a0,s2
    80001960:	00001097          	auipc	ra,0x1
    80001964:	094080e7          	jalr	148(ra) # 800029f4 <_Z12printIntegerm>
    80001968:	00004517          	auipc	a0,0x4
    8000196c:	7f850513          	addi	a0,a0,2040 # 80006160 <CONSOLE_STATUS+0x150>
    80001970:	00001097          	auipc	ra,0x1
    80001974:	014080e7          	jalr	20(ra) # 80002984 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001978:	00000493          	li	s1,0
    8000197c:	fa1ff06f          	j	8000191c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80001980:	00004517          	auipc	a0,0x4
    80001984:	6a850513          	addi	a0,a0,1704 # 80006028 <CONSOLE_STATUS+0x18>
    80001988:	00001097          	auipc	ra,0x1
    8000198c:	ffc080e7          	jalr	-4(ra) # 80002984 <_Z11printStringPKc>
    finishedA = true;
    80001990:	00100793          	li	a5,1
    80001994:	00005717          	auipc	a4,0x5
    80001998:	50f70623          	sb	a5,1292(a4) # 80006ea0 <finishedA>
}
    8000199c:	01813083          	ld	ra,24(sp)
    800019a0:	01013403          	ld	s0,16(sp)
    800019a4:	00813483          	ld	s1,8(sp)
    800019a8:	00013903          	ld	s2,0(sp)
    800019ac:	02010113          	addi	sp,sp,32
    800019b0:	00008067          	ret

00000000800019b4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800019b4:	fe010113          	addi	sp,sp,-32
    800019b8:	00113c23          	sd	ra,24(sp)
    800019bc:	00813823          	sd	s0,16(sp)
    800019c0:	00913423          	sd	s1,8(sp)
    800019c4:	01213023          	sd	s2,0(sp)
    800019c8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800019cc:	00000913          	li	s2,0
    800019d0:	0380006f          	j	80001a08 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	e18080e7          	jalr	-488(ra) # 800017ec <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800019dc:	00148493          	addi	s1,s1,1
    800019e0:	000027b7          	lui	a5,0x2
    800019e4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800019e8:	0097ee63          	bltu	a5,s1,80001a04 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800019ec:	00000713          	li	a4,0
    800019f0:	000077b7          	lui	a5,0x7
    800019f4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800019f8:	fce7eee3          	bltu	a5,a4,800019d4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800019fc:	00170713          	addi	a4,a4,1
    80001a00:	ff1ff06f          	j	800019f0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80001a04:	00190913          	addi	s2,s2,1
    80001a08:	00f00793          	li	a5,15
    80001a0c:	0327ec63          	bltu	a5,s2,80001a44 <_ZN7WorkerB11workerBodyBEPv+0x90>
        printString("B: i="); printInteger(i); printString("\n");
    80001a10:	00004517          	auipc	a0,0x4
    80001a14:	62850513          	addi	a0,a0,1576 # 80006038 <CONSOLE_STATUS+0x28>
    80001a18:	00001097          	auipc	ra,0x1
    80001a1c:	f6c080e7          	jalr	-148(ra) # 80002984 <_Z11printStringPKc>
    80001a20:	00090513          	mv	a0,s2
    80001a24:	00001097          	auipc	ra,0x1
    80001a28:	fd0080e7          	jalr	-48(ra) # 800029f4 <_Z12printIntegerm>
    80001a2c:	00004517          	auipc	a0,0x4
    80001a30:	73450513          	addi	a0,a0,1844 # 80006160 <CONSOLE_STATUS+0x150>
    80001a34:	00001097          	auipc	ra,0x1
    80001a38:	f50080e7          	jalr	-176(ra) # 80002984 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001a3c:	00000493          	li	s1,0
    80001a40:	fa1ff06f          	j	800019e0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80001a44:	00004517          	auipc	a0,0x4
    80001a48:	5fc50513          	addi	a0,a0,1532 # 80006040 <CONSOLE_STATUS+0x30>
    80001a4c:	00001097          	auipc	ra,0x1
    80001a50:	f38080e7          	jalr	-200(ra) # 80002984 <_Z11printStringPKc>
    finishedB = true;
    80001a54:	00100793          	li	a5,1
    80001a58:	00005717          	auipc	a4,0x5
    80001a5c:	44f704a3          	sb	a5,1097(a4) # 80006ea1 <finishedB>
    thread_dispatch();
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	d8c080e7          	jalr	-628(ra) # 800017ec <_Z15thread_dispatchv>
}
    80001a68:	01813083          	ld	ra,24(sp)
    80001a6c:	01013403          	ld	s0,16(sp)
    80001a70:	00813483          	ld	s1,8(sp)
    80001a74:	00013903          	ld	s2,0(sp)
    80001a78:	02010113          	addi	sp,sp,32
    80001a7c:	00008067          	ret

0000000080001a80 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80001a80:	fe010113          	addi	sp,sp,-32
    80001a84:	00113c23          	sd	ra,24(sp)
    80001a88:	00813823          	sd	s0,16(sp)
    80001a8c:	00913423          	sd	s1,8(sp)
    80001a90:	01213023          	sd	s2,0(sp)
    80001a94:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001a98:	00000493          	li	s1,0
    80001a9c:	0380006f          	j	80001ad4 <_ZN7WorkerC11workerBodyCEPv+0x54>
    for (; i < 3; i++) {
        printString("C: i="); printInteger(i); printString("\n");
    80001aa0:	00004517          	auipc	a0,0x4
    80001aa4:	5b050513          	addi	a0,a0,1456 # 80006050 <CONSOLE_STATUS+0x40>
    80001aa8:	00001097          	auipc	ra,0x1
    80001aac:	edc080e7          	jalr	-292(ra) # 80002984 <_Z11printStringPKc>
    80001ab0:	00048513          	mv	a0,s1
    80001ab4:	00001097          	auipc	ra,0x1
    80001ab8:	f40080e7          	jalr	-192(ra) # 800029f4 <_Z12printIntegerm>
    80001abc:	00004517          	auipc	a0,0x4
    80001ac0:	6a450513          	addi	a0,a0,1700 # 80006160 <CONSOLE_STATUS+0x150>
    80001ac4:	00001097          	auipc	ra,0x1
    80001ac8:	ec0080e7          	jalr	-320(ra) # 80002984 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80001acc:	0014849b          	addiw	s1,s1,1
    80001ad0:	0ff4f493          	andi	s1,s1,255
    80001ad4:	00200793          	li	a5,2
    80001ad8:	fc97f4e3          	bgeu	a5,s1,80001aa0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80001adc:	00004517          	auipc	a0,0x4
    80001ae0:	57c50513          	addi	a0,a0,1404 # 80006058 <CONSOLE_STATUS+0x48>
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	ea0080e7          	jalr	-352(ra) # 80002984 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001aec:	00700313          	li	t1,7
    thread_dispatch();
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	cfc080e7          	jalr	-772(ra) # 800017ec <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001af8:	00030913          	mv	s2,t1

    printString("C: t1="); printInteger(t1); printString("\n");
    80001afc:	00004517          	auipc	a0,0x4
    80001b00:	56c50513          	addi	a0,a0,1388 # 80006068 <CONSOLE_STATUS+0x58>
    80001b04:	00001097          	auipc	ra,0x1
    80001b08:	e80080e7          	jalr	-384(ra) # 80002984 <_Z11printStringPKc>
    80001b0c:	00090513          	mv	a0,s2
    80001b10:	00001097          	auipc	ra,0x1
    80001b14:	ee4080e7          	jalr	-284(ra) # 800029f4 <_Z12printIntegerm>
    80001b18:	00004517          	auipc	a0,0x4
    80001b1c:	64850513          	addi	a0,a0,1608 # 80006160 <CONSOLE_STATUS+0x150>
    80001b20:	00001097          	auipc	ra,0x1
    80001b24:	e64080e7          	jalr	-412(ra) # 80002984 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001b28:	00c00513          	li	a0,12
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	d50080e7          	jalr	-688(ra) # 8000187c <_Z9fibonaccim>
    80001b34:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInteger(result); printString("\n");
    80001b38:	00004517          	auipc	a0,0x4
    80001b3c:	53850513          	addi	a0,a0,1336 # 80006070 <CONSOLE_STATUS+0x60>
    80001b40:	00001097          	auipc	ra,0x1
    80001b44:	e44080e7          	jalr	-444(ra) # 80002984 <_Z11printStringPKc>
    80001b48:	00090513          	mv	a0,s2
    80001b4c:	00001097          	auipc	ra,0x1
    80001b50:	ea8080e7          	jalr	-344(ra) # 800029f4 <_Z12printIntegerm>
    80001b54:	00004517          	auipc	a0,0x4
    80001b58:	60c50513          	addi	a0,a0,1548 # 80006160 <CONSOLE_STATUS+0x150>
    80001b5c:	00001097          	auipc	ra,0x1
    80001b60:	e28080e7          	jalr	-472(ra) # 80002984 <_Z11printStringPKc>
    80001b64:	0380006f          	j	80001b9c <_ZN7WorkerC11workerBodyCEPv+0x11c>

    for (; i < 6; i++) {
        printString("C: i="); printInteger(i); printString("\n");
    80001b68:	00004517          	auipc	a0,0x4
    80001b6c:	4e850513          	addi	a0,a0,1256 # 80006050 <CONSOLE_STATUS+0x40>
    80001b70:	00001097          	auipc	ra,0x1
    80001b74:	e14080e7          	jalr	-492(ra) # 80002984 <_Z11printStringPKc>
    80001b78:	00048513          	mv	a0,s1
    80001b7c:	00001097          	auipc	ra,0x1
    80001b80:	e78080e7          	jalr	-392(ra) # 800029f4 <_Z12printIntegerm>
    80001b84:	00004517          	auipc	a0,0x4
    80001b88:	5dc50513          	addi	a0,a0,1500 # 80006160 <CONSOLE_STATUS+0x150>
    80001b8c:	00001097          	auipc	ra,0x1
    80001b90:	df8080e7          	jalr	-520(ra) # 80002984 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80001b94:	0014849b          	addiw	s1,s1,1
    80001b98:	0ff4f493          	andi	s1,s1,255
    80001b9c:	00500793          	li	a5,5
    80001ba0:	fc97f4e3          	bgeu	a5,s1,80001b68 <_ZN7WorkerC11workerBodyCEPv+0xe8>
    }

    printString("A finished!\n");
    80001ba4:	00004517          	auipc	a0,0x4
    80001ba8:	48450513          	addi	a0,a0,1156 # 80006028 <CONSOLE_STATUS+0x18>
    80001bac:	00001097          	auipc	ra,0x1
    80001bb0:	dd8080e7          	jalr	-552(ra) # 80002984 <_Z11printStringPKc>
    finishedC = true;
    80001bb4:	00100793          	li	a5,1
    80001bb8:	00005717          	auipc	a4,0x5
    80001bbc:	2ef70523          	sb	a5,746(a4) # 80006ea2 <finishedC>
    thread_dispatch();
    80001bc0:	00000097          	auipc	ra,0x0
    80001bc4:	c2c080e7          	jalr	-980(ra) # 800017ec <_Z15thread_dispatchv>
}
    80001bc8:	01813083          	ld	ra,24(sp)
    80001bcc:	01013403          	ld	s0,16(sp)
    80001bd0:	00813483          	ld	s1,8(sp)
    80001bd4:	00013903          	ld	s2,0(sp)
    80001bd8:	02010113          	addi	sp,sp,32
    80001bdc:	00008067          	ret

0000000080001be0 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80001be0:	fe010113          	addi	sp,sp,-32
    80001be4:	00113c23          	sd	ra,24(sp)
    80001be8:	00813823          	sd	s0,16(sp)
    80001bec:	00913423          	sd	s1,8(sp)
    80001bf0:	01213023          	sd	s2,0(sp)
    80001bf4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001bf8:	00a00493          	li	s1,10
    80001bfc:	0380006f          	j	80001c34 <_ZN7WorkerD11workerBodyDEPv+0x54>
    for (; i < 13; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80001c00:	00004517          	auipc	a0,0x4
    80001c04:	48050513          	addi	a0,a0,1152 # 80006080 <CONSOLE_STATUS+0x70>
    80001c08:	00001097          	auipc	ra,0x1
    80001c0c:	d7c080e7          	jalr	-644(ra) # 80002984 <_Z11printStringPKc>
    80001c10:	00048513          	mv	a0,s1
    80001c14:	00001097          	auipc	ra,0x1
    80001c18:	de0080e7          	jalr	-544(ra) # 800029f4 <_Z12printIntegerm>
    80001c1c:	00004517          	auipc	a0,0x4
    80001c20:	54450513          	addi	a0,a0,1348 # 80006160 <CONSOLE_STATUS+0x150>
    80001c24:	00001097          	auipc	ra,0x1
    80001c28:	d60080e7          	jalr	-672(ra) # 80002984 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80001c2c:	0014849b          	addiw	s1,s1,1
    80001c30:	0ff4f493          	andi	s1,s1,255
    80001c34:	00c00793          	li	a5,12
    80001c38:	fc97f4e3          	bgeu	a5,s1,80001c00 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80001c3c:	00004517          	auipc	a0,0x4
    80001c40:	44c50513          	addi	a0,a0,1100 # 80006088 <CONSOLE_STATUS+0x78>
    80001c44:	00001097          	auipc	ra,0x1
    80001c48:	d40080e7          	jalr	-704(ra) # 80002984 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001c4c:	00500313          	li	t1,5
    thread_dispatch();
    80001c50:	00000097          	auipc	ra,0x0
    80001c54:	b9c080e7          	jalr	-1124(ra) # 800017ec <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80001c58:	01000513          	li	a0,16
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	c20080e7          	jalr	-992(ra) # 8000187c <_Z9fibonaccim>
    80001c64:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInteger(result); printString("\n");
    80001c68:	00004517          	auipc	a0,0x4
    80001c6c:	43050513          	addi	a0,a0,1072 # 80006098 <CONSOLE_STATUS+0x88>
    80001c70:	00001097          	auipc	ra,0x1
    80001c74:	d14080e7          	jalr	-748(ra) # 80002984 <_Z11printStringPKc>
    80001c78:	00090513          	mv	a0,s2
    80001c7c:	00001097          	auipc	ra,0x1
    80001c80:	d78080e7          	jalr	-648(ra) # 800029f4 <_Z12printIntegerm>
    80001c84:	00004517          	auipc	a0,0x4
    80001c88:	4dc50513          	addi	a0,a0,1244 # 80006160 <CONSOLE_STATUS+0x150>
    80001c8c:	00001097          	auipc	ra,0x1
    80001c90:	cf8080e7          	jalr	-776(ra) # 80002984 <_Z11printStringPKc>
    80001c94:	0380006f          	j	80001ccc <_ZN7WorkerD11workerBodyDEPv+0xec>

    for (; i < 16; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80001c98:	00004517          	auipc	a0,0x4
    80001c9c:	3e850513          	addi	a0,a0,1000 # 80006080 <CONSOLE_STATUS+0x70>
    80001ca0:	00001097          	auipc	ra,0x1
    80001ca4:	ce4080e7          	jalr	-796(ra) # 80002984 <_Z11printStringPKc>
    80001ca8:	00048513          	mv	a0,s1
    80001cac:	00001097          	auipc	ra,0x1
    80001cb0:	d48080e7          	jalr	-696(ra) # 800029f4 <_Z12printIntegerm>
    80001cb4:	00004517          	auipc	a0,0x4
    80001cb8:	4ac50513          	addi	a0,a0,1196 # 80006160 <CONSOLE_STATUS+0x150>
    80001cbc:	00001097          	auipc	ra,0x1
    80001cc0:	cc8080e7          	jalr	-824(ra) # 80002984 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80001cc4:	0014849b          	addiw	s1,s1,1
    80001cc8:	0ff4f493          	andi	s1,s1,255
    80001ccc:	00f00793          	li	a5,15
    80001cd0:	fc97f4e3          	bgeu	a5,s1,80001c98 <_ZN7WorkerD11workerBodyDEPv+0xb8>
    }

    printString("D finished!\n");
    80001cd4:	00004517          	auipc	a0,0x4
    80001cd8:	3d450513          	addi	a0,a0,980 # 800060a8 <CONSOLE_STATUS+0x98>
    80001cdc:	00001097          	auipc	ra,0x1
    80001ce0:	ca8080e7          	jalr	-856(ra) # 80002984 <_Z11printStringPKc>
    finishedD = true;
    80001ce4:	00100793          	li	a5,1
    80001ce8:	00005717          	auipc	a4,0x5
    80001cec:	1af70da3          	sb	a5,443(a4) # 80006ea3 <finishedD>
    thread_dispatch();
    80001cf0:	00000097          	auipc	ra,0x0
    80001cf4:	afc080e7          	jalr	-1284(ra) # 800017ec <_Z15thread_dispatchv>
}
    80001cf8:	01813083          	ld	ra,24(sp)
    80001cfc:	01013403          	ld	s0,16(sp)
    80001d00:	00813483          	ld	s1,8(sp)
    80001d04:	00013903          	ld	s2,0(sp)
    80001d08:	02010113          	addi	sp,sp,32
    80001d0c:	00008067          	ret

0000000080001d10 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80001d10:	fc010113          	addi	sp,sp,-64
    80001d14:	02113c23          	sd	ra,56(sp)
    80001d18:	02813823          	sd	s0,48(sp)
    80001d1c:	02913423          	sd	s1,40(sp)
    80001d20:	03213023          	sd	s2,32(sp)
    80001d24:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80001d28:	01000513          	li	a0,16
    80001d2c:	00001097          	auipc	ra,0x1
    80001d30:	81c080e7          	jalr	-2020(ra) # 80002548 <_Znwm>
    80001d34:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80001d38:	00001097          	auipc	ra,0x1
    80001d3c:	e28080e7          	jalr	-472(ra) # 80002b60 <_ZN6ThreadC1Ev>
    80001d40:	00005797          	auipc	a5,0x5
    80001d44:	01078793          	addi	a5,a5,16 # 80006d50 <_ZTV7WorkerA+0x10>
    80001d48:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80001d4c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80001d50:	00004517          	auipc	a0,0x4
    80001d54:	36850513          	addi	a0,a0,872 # 800060b8 <CONSOLE_STATUS+0xa8>
    80001d58:	00001097          	auipc	ra,0x1
    80001d5c:	c2c080e7          	jalr	-980(ra) # 80002984 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80001d60:	01000513          	li	a0,16
    80001d64:	00000097          	auipc	ra,0x0
    80001d68:	7e4080e7          	jalr	2020(ra) # 80002548 <_Znwm>
    80001d6c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80001d70:	00001097          	auipc	ra,0x1
    80001d74:	df0080e7          	jalr	-528(ra) # 80002b60 <_ZN6ThreadC1Ev>
    80001d78:	00005797          	auipc	a5,0x5
    80001d7c:	00078793          	mv	a5,a5
    80001d80:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80001d84:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80001d88:	00004517          	auipc	a0,0x4
    80001d8c:	34850513          	addi	a0,a0,840 # 800060d0 <CONSOLE_STATUS+0xc0>
    80001d90:	00001097          	auipc	ra,0x1
    80001d94:	bf4080e7          	jalr	-1036(ra) # 80002984 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80001d98:	01000513          	li	a0,16
    80001d9c:	00000097          	auipc	ra,0x0
    80001da0:	7ac080e7          	jalr	1964(ra) # 80002548 <_Znwm>
    80001da4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80001da8:	00001097          	auipc	ra,0x1
    80001dac:	db8080e7          	jalr	-584(ra) # 80002b60 <_ZN6ThreadC1Ev>
    80001db0:	00005797          	auipc	a5,0x5
    80001db4:	ff078793          	addi	a5,a5,-16 # 80006da0 <_ZTV7WorkerC+0x10>
    80001db8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80001dbc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80001dc0:	00004517          	auipc	a0,0x4
    80001dc4:	32850513          	addi	a0,a0,808 # 800060e8 <CONSOLE_STATUS+0xd8>
    80001dc8:	00001097          	auipc	ra,0x1
    80001dcc:	bbc080e7          	jalr	-1092(ra) # 80002984 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80001dd0:	01000513          	li	a0,16
    80001dd4:	00000097          	auipc	ra,0x0
    80001dd8:	774080e7          	jalr	1908(ra) # 80002548 <_Znwm>
    80001ddc:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80001de0:	00001097          	auipc	ra,0x1
    80001de4:	d80080e7          	jalr	-640(ra) # 80002b60 <_ZN6ThreadC1Ev>
    80001de8:	00005797          	auipc	a5,0x5
    80001dec:	fe078793          	addi	a5,a5,-32 # 80006dc8 <_ZTV7WorkerD+0x10>
    80001df0:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80001df4:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80001df8:	00004517          	auipc	a0,0x4
    80001dfc:	30850513          	addi	a0,a0,776 # 80006100 <CONSOLE_STATUS+0xf0>
    80001e00:	00001097          	auipc	ra,0x1
    80001e04:	b84080e7          	jalr	-1148(ra) # 80002984 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80001e08:	00000493          	li	s1,0
    80001e0c:	00300793          	li	a5,3
    80001e10:	0297c663          	blt	a5,s1,80001e3c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80001e14:	00349793          	slli	a5,s1,0x3
    80001e18:	fe040713          	addi	a4,s0,-32
    80001e1c:	00f707b3          	add	a5,a4,a5
    80001e20:	fe07b503          	ld	a0,-32(a5)
    80001e24:	00001097          	auipc	ra,0x1
    80001e28:	d84080e7          	jalr	-636(ra) # 80002ba8 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80001e2c:	0014849b          	addiw	s1,s1,1
    80001e30:	fddff06f          	j	80001e0c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80001e34:	00001097          	auipc	ra,0x1
    80001e38:	dac080e7          	jalr	-596(ra) # 80002be0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80001e3c:	00005797          	auipc	a5,0x5
    80001e40:	0647c783          	lbu	a5,100(a5) # 80006ea0 <finishedA>
    80001e44:	fe0788e3          	beqz	a5,80001e34 <_Z20Threads_CPP_API_testv+0x124>
    80001e48:	00005797          	auipc	a5,0x5
    80001e4c:	0597c783          	lbu	a5,89(a5) # 80006ea1 <finishedB>
    80001e50:	fe0782e3          	beqz	a5,80001e34 <_Z20Threads_CPP_API_testv+0x124>
    80001e54:	00005797          	auipc	a5,0x5
    80001e58:	04e7c783          	lbu	a5,78(a5) # 80006ea2 <finishedC>
    80001e5c:	fc078ce3          	beqz	a5,80001e34 <_Z20Threads_CPP_API_testv+0x124>
    80001e60:	00005797          	auipc	a5,0x5
    80001e64:	0437c783          	lbu	a5,67(a5) # 80006ea3 <finishedD>
    80001e68:	fc0786e3          	beqz	a5,80001e34 <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    80001e6c:	fc040493          	addi	s1,s0,-64
    80001e70:	0080006f          	j	80001e78 <_Z20Threads_CPP_API_testv+0x168>
    80001e74:	00848493          	addi	s1,s1,8
    80001e78:	fe040793          	addi	a5,s0,-32
    80001e7c:	08f48663          	beq	s1,a5,80001f08 <_Z20Threads_CPP_API_testv+0x1f8>
    80001e80:	0004b503          	ld	a0,0(s1)
    80001e84:	fe0508e3          	beqz	a0,80001e74 <_Z20Threads_CPP_API_testv+0x164>
    80001e88:	00053783          	ld	a5,0(a0)
    80001e8c:	0087b783          	ld	a5,8(a5)
    80001e90:	000780e7          	jalr	a5
    80001e94:	fe1ff06f          	j	80001e74 <_Z20Threads_CPP_API_testv+0x164>
    80001e98:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80001e9c:	00048513          	mv	a0,s1
    80001ea0:	00000097          	auipc	ra,0x0
    80001ea4:	6f8080e7          	jalr	1784(ra) # 80002598 <_ZdlPv>
    80001ea8:	00090513          	mv	a0,s2
    80001eac:	00006097          	auipc	ra,0x6
    80001eb0:	0ec080e7          	jalr	236(ra) # 80007f98 <_Unwind_Resume>
    80001eb4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80001eb8:	00048513          	mv	a0,s1
    80001ebc:	00000097          	auipc	ra,0x0
    80001ec0:	6dc080e7          	jalr	1756(ra) # 80002598 <_ZdlPv>
    80001ec4:	00090513          	mv	a0,s2
    80001ec8:	00006097          	auipc	ra,0x6
    80001ecc:	0d0080e7          	jalr	208(ra) # 80007f98 <_Unwind_Resume>
    80001ed0:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80001ed4:	00048513          	mv	a0,s1
    80001ed8:	00000097          	auipc	ra,0x0
    80001edc:	6c0080e7          	jalr	1728(ra) # 80002598 <_ZdlPv>
    80001ee0:	00090513          	mv	a0,s2
    80001ee4:	00006097          	auipc	ra,0x6
    80001ee8:	0b4080e7          	jalr	180(ra) # 80007f98 <_Unwind_Resume>
    80001eec:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80001ef0:	00048513          	mv	a0,s1
    80001ef4:	00000097          	auipc	ra,0x0
    80001ef8:	6a4080e7          	jalr	1700(ra) # 80002598 <_ZdlPv>
    80001efc:	00090513          	mv	a0,s2
    80001f00:	00006097          	auipc	ra,0x6
    80001f04:	098080e7          	jalr	152(ra) # 80007f98 <_Unwind_Resume>
}
    80001f08:	03813083          	ld	ra,56(sp)
    80001f0c:	03013403          	ld	s0,48(sp)
    80001f10:	02813483          	ld	s1,40(sp)
    80001f14:	02013903          	ld	s2,32(sp)
    80001f18:	04010113          	addi	sp,sp,64
    80001f1c:	00008067          	ret

0000000080001f20 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80001f20:	ff010113          	addi	sp,sp,-16
    80001f24:	00113423          	sd	ra,8(sp)
    80001f28:	00813023          	sd	s0,0(sp)
    80001f2c:	01010413          	addi	s0,sp,16
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta
    80001f30:	00000097          	auipc	ra,0x0
    80001f34:	de0080e7          	jalr	-544(ra) # 80001d10 <_Z20Threads_CPP_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80001f38:	00813083          	ld	ra,8(sp)
    80001f3c:	00013403          	ld	s0,0(sp)
    80001f40:	01010113          	addi	sp,sp,16
    80001f44:	00008067          	ret

0000000080001f48 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80001f48:	ff010113          	addi	sp,sp,-16
    80001f4c:	00113423          	sd	ra,8(sp)
    80001f50:	00813023          	sd	s0,0(sp)
    80001f54:	01010413          	addi	s0,sp,16
    80001f58:	00005797          	auipc	a5,0x5
    80001f5c:	df878793          	addi	a5,a5,-520 # 80006d50 <_ZTV7WorkerA+0x10>
    80001f60:	00f53023          	sd	a5,0(a0)
    80001f64:	00001097          	auipc	ra,0x1
    80001f68:	b80080e7          	jalr	-1152(ra) # 80002ae4 <_ZN6ThreadD1Ev>
    80001f6c:	00813083          	ld	ra,8(sp)
    80001f70:	00013403          	ld	s0,0(sp)
    80001f74:	01010113          	addi	sp,sp,16
    80001f78:	00008067          	ret

0000000080001f7c <_ZN7WorkerAD0Ev>:
    80001f7c:	fe010113          	addi	sp,sp,-32
    80001f80:	00113c23          	sd	ra,24(sp)
    80001f84:	00813823          	sd	s0,16(sp)
    80001f88:	00913423          	sd	s1,8(sp)
    80001f8c:	02010413          	addi	s0,sp,32
    80001f90:	00050493          	mv	s1,a0
    80001f94:	00005797          	auipc	a5,0x5
    80001f98:	dbc78793          	addi	a5,a5,-580 # 80006d50 <_ZTV7WorkerA+0x10>
    80001f9c:	00f53023          	sd	a5,0(a0)
    80001fa0:	00001097          	auipc	ra,0x1
    80001fa4:	b44080e7          	jalr	-1212(ra) # 80002ae4 <_ZN6ThreadD1Ev>
    80001fa8:	00048513          	mv	a0,s1
    80001fac:	00000097          	auipc	ra,0x0
    80001fb0:	5ec080e7          	jalr	1516(ra) # 80002598 <_ZdlPv>
    80001fb4:	01813083          	ld	ra,24(sp)
    80001fb8:	01013403          	ld	s0,16(sp)
    80001fbc:	00813483          	ld	s1,8(sp)
    80001fc0:	02010113          	addi	sp,sp,32
    80001fc4:	00008067          	ret

0000000080001fc8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80001fc8:	ff010113          	addi	sp,sp,-16
    80001fcc:	00113423          	sd	ra,8(sp)
    80001fd0:	00813023          	sd	s0,0(sp)
    80001fd4:	01010413          	addi	s0,sp,16
    80001fd8:	00005797          	auipc	a5,0x5
    80001fdc:	da078793          	addi	a5,a5,-608 # 80006d78 <_ZTV7WorkerB+0x10>
    80001fe0:	00f53023          	sd	a5,0(a0)
    80001fe4:	00001097          	auipc	ra,0x1
    80001fe8:	b00080e7          	jalr	-1280(ra) # 80002ae4 <_ZN6ThreadD1Ev>
    80001fec:	00813083          	ld	ra,8(sp)
    80001ff0:	00013403          	ld	s0,0(sp)
    80001ff4:	01010113          	addi	sp,sp,16
    80001ff8:	00008067          	ret

0000000080001ffc <_ZN7WorkerBD0Ev>:
    80001ffc:	fe010113          	addi	sp,sp,-32
    80002000:	00113c23          	sd	ra,24(sp)
    80002004:	00813823          	sd	s0,16(sp)
    80002008:	00913423          	sd	s1,8(sp)
    8000200c:	02010413          	addi	s0,sp,32
    80002010:	00050493          	mv	s1,a0
    80002014:	00005797          	auipc	a5,0x5
    80002018:	d6478793          	addi	a5,a5,-668 # 80006d78 <_ZTV7WorkerB+0x10>
    8000201c:	00f53023          	sd	a5,0(a0)
    80002020:	00001097          	auipc	ra,0x1
    80002024:	ac4080e7          	jalr	-1340(ra) # 80002ae4 <_ZN6ThreadD1Ev>
    80002028:	00048513          	mv	a0,s1
    8000202c:	00000097          	auipc	ra,0x0
    80002030:	56c080e7          	jalr	1388(ra) # 80002598 <_ZdlPv>
    80002034:	01813083          	ld	ra,24(sp)
    80002038:	01013403          	ld	s0,16(sp)
    8000203c:	00813483          	ld	s1,8(sp)
    80002040:	02010113          	addi	sp,sp,32
    80002044:	00008067          	ret

0000000080002048 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80002048:	ff010113          	addi	sp,sp,-16
    8000204c:	00113423          	sd	ra,8(sp)
    80002050:	00813023          	sd	s0,0(sp)
    80002054:	01010413          	addi	s0,sp,16
    80002058:	00005797          	auipc	a5,0x5
    8000205c:	d4878793          	addi	a5,a5,-696 # 80006da0 <_ZTV7WorkerC+0x10>
    80002060:	00f53023          	sd	a5,0(a0)
    80002064:	00001097          	auipc	ra,0x1
    80002068:	a80080e7          	jalr	-1408(ra) # 80002ae4 <_ZN6ThreadD1Ev>
    8000206c:	00813083          	ld	ra,8(sp)
    80002070:	00013403          	ld	s0,0(sp)
    80002074:	01010113          	addi	sp,sp,16
    80002078:	00008067          	ret

000000008000207c <_ZN7WorkerCD0Ev>:
    8000207c:	fe010113          	addi	sp,sp,-32
    80002080:	00113c23          	sd	ra,24(sp)
    80002084:	00813823          	sd	s0,16(sp)
    80002088:	00913423          	sd	s1,8(sp)
    8000208c:	02010413          	addi	s0,sp,32
    80002090:	00050493          	mv	s1,a0
    80002094:	00005797          	auipc	a5,0x5
    80002098:	d0c78793          	addi	a5,a5,-756 # 80006da0 <_ZTV7WorkerC+0x10>
    8000209c:	00f53023          	sd	a5,0(a0)
    800020a0:	00001097          	auipc	ra,0x1
    800020a4:	a44080e7          	jalr	-1468(ra) # 80002ae4 <_ZN6ThreadD1Ev>
    800020a8:	00048513          	mv	a0,s1
    800020ac:	00000097          	auipc	ra,0x0
    800020b0:	4ec080e7          	jalr	1260(ra) # 80002598 <_ZdlPv>
    800020b4:	01813083          	ld	ra,24(sp)
    800020b8:	01013403          	ld	s0,16(sp)
    800020bc:	00813483          	ld	s1,8(sp)
    800020c0:	02010113          	addi	sp,sp,32
    800020c4:	00008067          	ret

00000000800020c8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800020c8:	ff010113          	addi	sp,sp,-16
    800020cc:	00113423          	sd	ra,8(sp)
    800020d0:	00813023          	sd	s0,0(sp)
    800020d4:	01010413          	addi	s0,sp,16
    800020d8:	00005797          	auipc	a5,0x5
    800020dc:	cf078793          	addi	a5,a5,-784 # 80006dc8 <_ZTV7WorkerD+0x10>
    800020e0:	00f53023          	sd	a5,0(a0)
    800020e4:	00001097          	auipc	ra,0x1
    800020e8:	a00080e7          	jalr	-1536(ra) # 80002ae4 <_ZN6ThreadD1Ev>
    800020ec:	00813083          	ld	ra,8(sp)
    800020f0:	00013403          	ld	s0,0(sp)
    800020f4:	01010113          	addi	sp,sp,16
    800020f8:	00008067          	ret

00000000800020fc <_ZN7WorkerDD0Ev>:
    800020fc:	fe010113          	addi	sp,sp,-32
    80002100:	00113c23          	sd	ra,24(sp)
    80002104:	00813823          	sd	s0,16(sp)
    80002108:	00913423          	sd	s1,8(sp)
    8000210c:	02010413          	addi	s0,sp,32
    80002110:	00050493          	mv	s1,a0
    80002114:	00005797          	auipc	a5,0x5
    80002118:	cb478793          	addi	a5,a5,-844 # 80006dc8 <_ZTV7WorkerD+0x10>
    8000211c:	00f53023          	sd	a5,0(a0)
    80002120:	00001097          	auipc	ra,0x1
    80002124:	9c4080e7          	jalr	-1596(ra) # 80002ae4 <_ZN6ThreadD1Ev>
    80002128:	00048513          	mv	a0,s1
    8000212c:	00000097          	auipc	ra,0x0
    80002130:	46c080e7          	jalr	1132(ra) # 80002598 <_ZdlPv>
    80002134:	01813083          	ld	ra,24(sp)
    80002138:	01013403          	ld	s0,16(sp)
    8000213c:	00813483          	ld	s1,8(sp)
    80002140:	02010113          	addi	sp,sp,32
    80002144:	00008067          	ret

0000000080002148 <_ZN7WorkerA3runEv>:
    void run() override {
    80002148:	ff010113          	addi	sp,sp,-16
    8000214c:	00113423          	sd	ra,8(sp)
    80002150:	00813023          	sd	s0,0(sp)
    80002154:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80002158:	00000593          	li	a1,0
    8000215c:	fffff097          	auipc	ra,0xfffff
    80002160:	794080e7          	jalr	1940(ra) # 800018f0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80002164:	00813083          	ld	ra,8(sp)
    80002168:	00013403          	ld	s0,0(sp)
    8000216c:	01010113          	addi	sp,sp,16
    80002170:	00008067          	ret

0000000080002174 <_ZN7WorkerB3runEv>:
    void run() override {
    80002174:	ff010113          	addi	sp,sp,-16
    80002178:	00113423          	sd	ra,8(sp)
    8000217c:	00813023          	sd	s0,0(sp)
    80002180:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80002184:	00000593          	li	a1,0
    80002188:	00000097          	auipc	ra,0x0
    8000218c:	82c080e7          	jalr	-2004(ra) # 800019b4 <_ZN7WorkerB11workerBodyBEPv>
    }
    80002190:	00813083          	ld	ra,8(sp)
    80002194:	00013403          	ld	s0,0(sp)
    80002198:	01010113          	addi	sp,sp,16
    8000219c:	00008067          	ret

00000000800021a0 <_ZN7WorkerC3runEv>:
    void run() override {
    800021a0:	ff010113          	addi	sp,sp,-16
    800021a4:	00113423          	sd	ra,8(sp)
    800021a8:	00813023          	sd	s0,0(sp)
    800021ac:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800021b0:	00000593          	li	a1,0
    800021b4:	00000097          	auipc	ra,0x0
    800021b8:	8cc080e7          	jalr	-1844(ra) # 80001a80 <_ZN7WorkerC11workerBodyCEPv>
    }
    800021bc:	00813083          	ld	ra,8(sp)
    800021c0:	00013403          	ld	s0,0(sp)
    800021c4:	01010113          	addi	sp,sp,16
    800021c8:	00008067          	ret

00000000800021cc <_ZN7WorkerD3runEv>:
    void run() override {
    800021cc:	ff010113          	addi	sp,sp,-16
    800021d0:	00113423          	sd	ra,8(sp)
    800021d4:	00813023          	sd	s0,0(sp)
    800021d8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800021dc:	00000593          	li	a1,0
    800021e0:	00000097          	auipc	ra,0x0
    800021e4:	a00080e7          	jalr	-1536(ra) # 80001be0 <_ZN7WorkerD11workerBodyDEPv>
    }
    800021e8:	00813083          	ld	ra,8(sp)
    800021ec:	00013403          	ld	s0,0(sp)
    800021f0:	01010113          	addi	sp,sp,16
    800021f4:	00008067          	ret

00000000800021f8 <_Z3wrpPv>:


bool done = false;
extern void userMain();

void wrp(void *t){
    800021f8:	ff010113          	addi	sp,sp,-16
    800021fc:	00113423          	sd	ra,8(sp)
    80002200:	00813023          	sd	s0,0(sp)
    80002204:	01010413          	addi	s0,sp,16
    printString("userMain()\n");
    80002208:	00004517          	auipc	a0,0x4
    8000220c:	f1050513          	addi	a0,a0,-240 # 80006118 <CONSOLE_STATUS+0x108>
    80002210:	00000097          	auipc	ra,0x0
    80002214:	774080e7          	jalr	1908(ra) # 80002984 <_Z11printStringPKc>
    userMain();
    80002218:	00000097          	auipc	ra,0x0
    8000221c:	d08080e7          	jalr	-760(ra) # 80001f20 <_Z8userMainv>
    printString("Done\n");
    80002220:	00004517          	auipc	a0,0x4
    80002224:	f0850513          	addi	a0,a0,-248 # 80006128 <CONSOLE_STATUS+0x118>
    80002228:	00000097          	auipc	ra,0x0
    8000222c:	75c080e7          	jalr	1884(ra) # 80002984 <_Z11printStringPKc>
    done = true;
    80002230:	00100793          	li	a5,1
    80002234:	00005717          	auipc	a4,0x5
    80002238:	c6f70823          	sb	a5,-912(a4) # 80006ea4 <done>
}
    8000223c:	00813083          	ld	ra,8(sp)
    80002240:	00013403          	ld	s0,0(sp)
    80002244:	01010113          	addi	sp,sp,16
    80002248:	00008067          	ret

000000008000224c <main>:

int main()
{
    8000224c:	fe010113          	addi	sp,sp,-32
    80002250:	00113c23          	sd	ra,24(sp)
    80002254:	00813823          	sd	s0,16(sp)
    80002258:	02010413          	addi	s0,sp,32
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    8000225c:	00005797          	auipc	a5,0x5
    80002260:	bbc7b783          	ld	a5,-1092(a5) # 80006e18 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002264:	10579073          	csrw	stvec,a5

    thread_t main, user_main;

    thread_create(&main, nullptr, nullptr);
    80002268:	00000613          	li	a2,0
    8000226c:	00000593          	li	a1,0
    80002270:	fe840513          	addi	a0,s0,-24
    80002274:	fffff097          	auipc	ra,0xfffff
    80002278:	514080e7          	jalr	1300(ra) # 80001788 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("Main Created\n");
    8000227c:	00004517          	auipc	a0,0x4
    80002280:	eb450513          	addi	a0,a0,-332 # 80006130 <CONSOLE_STATUS+0x120>
    80002284:	00000097          	auipc	ra,0x0
    80002288:	700080e7          	jalr	1792(ra) # 80002984 <_Z11printStringPKc>
    TCB::running = main;
    8000228c:	00005797          	auipc	a5,0x5
    80002290:	ba47b783          	ld	a5,-1116(a5) # 80006e30 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002294:	fe843703          	ld	a4,-24(s0)
    80002298:	00e7b023          	sd	a4,0(a5)

    thread_create(&user_main, wrp, nullptr);
    8000229c:	00000613          	li	a2,0
    800022a0:	00000597          	auipc	a1,0x0
    800022a4:	f5858593          	addi	a1,a1,-168 # 800021f8 <_Z3wrpPv>
    800022a8:	fe040513          	addi	a0,s0,-32
    800022ac:	fffff097          	auipc	ra,0xfffff
    800022b0:	4dc080e7          	jalr	1244(ra) # 80001788 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("UserMain Created\n");
    800022b4:	00004517          	auipc	a0,0x4
    800022b8:	e8c50513          	addi	a0,a0,-372 # 80006140 <CONSOLE_STATUS+0x130>
    800022bc:	00000097          	auipc	ra,0x0
    800022c0:	6c8080e7          	jalr	1736(ra) # 80002984 <_Z11printStringPKc>

    // Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!done)
    800022c4:	00005797          	auipc	a5,0x5
    800022c8:	be07c783          	lbu	a5,-1056(a5) # 80006ea4 <done>
    800022cc:	00079863          	bnez	a5,800022dc <main+0x90>
    {
        thread_dispatch();
    800022d0:	fffff097          	auipc	ra,0xfffff
    800022d4:	51c080e7          	jalr	1308(ra) # 800017ec <_Z15thread_dispatchv>
    800022d8:	fedff06f          	j	800022c4 <main+0x78>
    }

    printString("Finished\n");
    800022dc:	00004517          	auipc	a0,0x4
    800022e0:	e7c50513          	addi	a0,a0,-388 # 80006158 <CONSOLE_STATUS+0x148>
    800022e4:	00000097          	auipc	ra,0x0
    800022e8:	6a0080e7          	jalr	1696(ra) # 80002984 <_Z11printStringPKc>

    return 0;
}
    800022ec:	00000513          	li	a0,0
    800022f0:	01813083          	ld	ra,24(sp)
    800022f4:	01013403          	ld	s0,16(sp)
    800022f8:	02010113          	addi	sp,sp,32
    800022fc:	00008067          	ret

0000000080002300 <_ZN3TCB12createThreadEPFvPvES0_S0_b>:
//
//    return new TCB(body, TIME_SLICE);
//}

TCB* TCB::createThread(Body body, void* arg, void* stack_space, bool start_immediately)
{
    80002300:	fc010113          	addi	sp,sp,-64
    80002304:	02113c23          	sd	ra,56(sp)
    80002308:	02813823          	sd	s0,48(sp)
    8000230c:	02913423          	sd	s1,40(sp)
    80002310:	03213023          	sd	s2,32(sp)
    80002314:	01313c23          	sd	s3,24(sp)
    80002318:	01413823          	sd	s4,16(sp)
    8000231c:	01513423          	sd	s5,8(sp)
    80002320:	04010413          	addi	s0,sp,64
    80002324:	00050993          	mv	s3,a0
    80002328:	00058a93          	mv	s5,a1
    8000232c:	00060913          	mv	s2,a2
    80002330:	00068a13          	mv	s4,a3
    return new TCB(body, arg, stack_space, start_immediately);
    80002334:	03800513          	li	a0,56
    80002338:	00000097          	auipc	ra,0x0
    8000233c:	210080e7          	jalr	528(ra) # 80002548 <_Znwm>
    80002340:	00050493          	mv	s1,a0
            context({(uint64)&threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            timeSlice(DEFAULT_TIME_SLICE),
            finished(false),
            start_immediately(start_immediately){
    80002344:	01353023          	sd	s3,0(a0)
    80002348:	01553423          	sd	s5,8(a0)
            stack(body != nullptr ? (uint64*)stack_space : nullptr),
    8000234c:	06098263          	beqz	s3,800023b0 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0xb0>
            start_immediately(start_immediately){
    80002350:	0124b823          	sd	s2,16(s1)
    80002354:	00000797          	auipc	a5,0x0
    80002358:	15c78793          	addi	a5,a5,348 # 800024b0 <_ZN3TCB13threadWrapperEv>
    8000235c:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80002360:	04090c63          	beqz	s2,800023b8 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0xb8>
    80002364:	00008637          	lui	a2,0x8
    80002368:	00c90933          	add	s2,s2,a2
            start_immediately(start_immediately){
    8000236c:	0324b023          	sd	s2,32(s1)
    80002370:	00200793          	li	a5,2
    80002374:	02f4b423          	sd	a5,40(s1)
    80002378:	02048823          	sb	zero,48(s1)
    8000237c:	034488a3          	sb	s4,49(s1)
        if (body != nullptr && start_immediately == true)
    80002380:	00098463          	beqz	s3,80002388 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0x88>
    80002384:	020a1e63          	bnez	s4,800023c0 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0xc0>
}
    80002388:	00048513          	mv	a0,s1
    8000238c:	03813083          	ld	ra,56(sp)
    80002390:	03013403          	ld	s0,48(sp)
    80002394:	02813483          	ld	s1,40(sp)
    80002398:	02013903          	ld	s2,32(sp)
    8000239c:	01813983          	ld	s3,24(sp)
    800023a0:	01013a03          	ld	s4,16(sp)
    800023a4:	00813a83          	ld	s5,8(sp)
    800023a8:	04010113          	addi	sp,sp,64
    800023ac:	00008067          	ret
            stack(body != nullptr ? (uint64*)stack_space : nullptr),
    800023b0:	00000913          	li	s2,0
    800023b4:	f9dff06f          	j	80002350 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0x50>
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    800023b8:	00000913          	li	s2,0
    800023bc:	fb1ff06f          	j	8000236c <_ZN3TCB12createThreadEPFvPvES0_S0_b+0x6c>
            Scheduler::put(this);
    800023c0:	00048513          	mv	a0,s1
    800023c4:	00000097          	auipc	ra,0x0
    800023c8:	520080e7          	jalr	1312(ra) # 800028e4 <_ZN9Scheduler3putEP3TCB>
    800023cc:	fbdff06f          	j	80002388 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0x88>
    800023d0:	00050913          	mv	s2,a0
    return new TCB(body, arg, stack_space, start_immediately);
    800023d4:	00048513          	mv	a0,s1
    800023d8:	00000097          	auipc	ra,0x0
    800023dc:	1c0080e7          	jalr	448(ra) # 80002598 <_ZdlPv>
    800023e0:	00090513          	mv	a0,s2
    800023e4:	00006097          	auipc	ra,0x6
    800023e8:	bb4080e7          	jalr	-1100(ra) # 80007f98 <_Unwind_Resume>

00000000800023ec <_ZN3TCB8dispatchEv>:

    return 0;
}

void TCB::dispatch()
{
    800023ec:	fe010113          	addi	sp,sp,-32
    800023f0:	00113c23          	sd	ra,24(sp)
    800023f4:	00813823          	sd	s0,16(sp)
    800023f8:	00913423          	sd	s1,8(sp)
    800023fc:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002400:	00005497          	auipc	s1,0x5
    80002404:	aa84b483          	ld	s1,-1368(s1) # 80006ea8 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80002408:	0304c783          	lbu	a5,48(s1)

    if (!old->isFinished())
    8000240c:	02078c63          	beqz	a5,80002444 <_ZN3TCB8dispatchEv+0x58>
        Scheduler::put(old);

    running = Scheduler::get();
    80002410:	00000097          	auipc	ra,0x0
    80002414:	46c080e7          	jalr	1132(ra) # 8000287c <_ZN9Scheduler3getEv>
    80002418:	00005797          	auipc	a5,0x5
    8000241c:	a8a7b823          	sd	a0,-1392(a5) # 80006ea8 <_ZN3TCB7runningE>

    TCB::contextSwitch(&old->context, &running->context);
    80002420:	01850593          	addi	a1,a0,24
    80002424:	01848513          	addi	a0,s1,24
    80002428:	fffff097          	auipc	ra,0xfffff
    8000242c:	e08080e7          	jalr	-504(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002430:	01813083          	ld	ra,24(sp)
    80002434:	01013403          	ld	s0,16(sp)
    80002438:	00813483          	ld	s1,8(sp)
    8000243c:	02010113          	addi	sp,sp,32
    80002440:	00008067          	ret
        Scheduler::put(old);
    80002444:	00048513          	mv	a0,s1
    80002448:	00000097          	auipc	ra,0x0
    8000244c:	49c080e7          	jalr	1180(ra) # 800028e4 <_ZN9Scheduler3putEP3TCB>
    80002450:	fc1ff06f          	j	80002410 <_ZN3TCB8dispatchEv+0x24>

0000000080002454 <_ZN3TCB10threadExitEv>:
{
    80002454:	ff010113          	addi	sp,sp,-16
    80002458:	00113423          	sd	ra,8(sp)
    8000245c:	00813023          	sd	s0,0(sp)
    80002460:	01010413          	addi	s0,sp,16
    printString("Unutar tcb Exita!\n");
    80002464:	00004517          	auipc	a0,0x4
    80002468:	d0450513          	addi	a0,a0,-764 # 80006168 <CONSOLE_STATUS+0x158>
    8000246c:	00000097          	auipc	ra,0x0
    80002470:	518080e7          	jalr	1304(ra) # 80002984 <_Z11printStringPKc>
    if (running->isFinished())
    80002474:	00005797          	auipc	a5,0x5
    80002478:	a347b783          	ld	a5,-1484(a5) # 80006ea8 <_ZN3TCB7runningE>
    8000247c:	0307c703          	lbu	a4,48(a5)
    80002480:	02071463          	bnez	a4,800024a8 <_ZN3TCB10threadExitEv+0x54>
    void setFinished(bool value) { finished = value; }
    80002484:	00100713          	li	a4,1
    80002488:	02e78823          	sb	a4,48(a5)
    TCB::dispatch();
    8000248c:	00000097          	auipc	ra,0x0
    80002490:	f60080e7          	jalr	-160(ra) # 800023ec <_ZN3TCB8dispatchEv>
    return 0;
    80002494:	00000513          	li	a0,0
}
    80002498:	00813083          	ld	ra,8(sp)
    8000249c:	00013403          	ld	s0,0(sp)
    800024a0:	01010113          	addi	sp,sp,16
    800024a4:	00008067          	ret
        return -1;
    800024a8:	fff00513          	li	a0,-1
    800024ac:	fedff06f          	j	80002498 <_ZN3TCB10threadExitEv+0x44>

00000000800024b0 <_ZN3TCB13threadWrapperEv>:

void TCB::threadWrapper()
{
    800024b0:	fe010113          	addi	sp,sp,-32
    800024b4:	00113c23          	sd	ra,24(sp)
    800024b8:	00813823          	sd	s0,16(sp)
    800024bc:	00913423          	sd	s1,8(sp)
    800024c0:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800024c4:	00000097          	auipc	ra,0x0
    800024c8:	124080e7          	jalr	292(ra) # 800025e8 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800024cc:	00005497          	auipc	s1,0x5
    800024d0:	9dc48493          	addi	s1,s1,-1572 # 80006ea8 <_ZN3TCB7runningE>
    800024d4:	0004b783          	ld	a5,0(s1)
    800024d8:	0007b703          	ld	a4,0(a5)
    800024dc:	0087b503          	ld	a0,8(a5)
    800024e0:	000700e7          	jalr	a4
    running->setFinished(true);
    800024e4:	0004b783          	ld	a5,0(s1)
    800024e8:	00100713          	li	a4,1
    800024ec:	02e78823          	sb	a4,48(a5)

    TCB::dispatch();
    800024f0:	00000097          	auipc	ra,0x0
    800024f4:	efc080e7          	jalr	-260(ra) # 800023ec <_ZN3TCB8dispatchEv>
}
    800024f8:	01813083          	ld	ra,24(sp)
    800024fc:	01013403          	ld	s0,16(sp)
    80002500:	00813483          	ld	s1,8(sp)
    80002504:	02010113          	addi	sp,sp,32
    80002508:	00008067          	ret

000000008000250c <_ZN3TCB11threadStartEPS_>:

int TCB::threadStart(TCB *handle)
{
    if (handle)
    8000250c:	02050a63          	beqz	a0,80002540 <_ZN3TCB11threadStartEPS_+0x34>
{
    80002510:	ff010113          	addi	sp,sp,-16
    80002514:	00113423          	sd	ra,8(sp)
    80002518:	00813023          	sd	s0,0(sp)
    8000251c:	01010413          	addi	s0,sp,16
    80002520:	02050823          	sb	zero,48(a0)
    {
        handle->setFinished(false);
        Scheduler::put(handle);
    80002524:	00000097          	auipc	ra,0x0
    80002528:	3c0080e7          	jalr	960(ra) # 800028e4 <_ZN9Scheduler3putEP3TCB>
        return 0;
    8000252c:	00000513          	li	a0,0
    }
    return -1;
}
    80002530:	00813083          	ld	ra,8(sp)
    80002534:	00013403          	ld	s0,0(sp)
    80002538:	01010113          	addi	sp,sp,16
    8000253c:	00008067          	ret
    return -1;
    80002540:	fff00513          	li	a0,-1
}
    80002544:	00008067          	ret

0000000080002548 <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80002548:	ff010113          	addi	sp,sp,-16
    8000254c:	00113423          	sd	ra,8(sp)
    80002550:	00813023          	sd	s0,0(sp)
    80002554:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80002558:	00003097          	auipc	ra,0x3
    8000255c:	850080e7          	jalr	-1968(ra) # 80004da8 <__mem_alloc>
}
    80002560:	00813083          	ld	ra,8(sp)
    80002564:	00013403          	ld	s0,0(sp)
    80002568:	01010113          	addi	sp,sp,16
    8000256c:	00008067          	ret

0000000080002570 <_Znam>:

void *operator new[](size_t n)
{
    80002570:	ff010113          	addi	sp,sp,-16
    80002574:	00113423          	sd	ra,8(sp)
    80002578:	00813023          	sd	s0,0(sp)
    8000257c:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80002580:	00003097          	auipc	ra,0x3
    80002584:	828080e7          	jalr	-2008(ra) # 80004da8 <__mem_alloc>
}
    80002588:	00813083          	ld	ra,8(sp)
    8000258c:	00013403          	ld	s0,0(sp)
    80002590:	01010113          	addi	sp,sp,16
    80002594:	00008067          	ret

0000000080002598 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80002598:	ff010113          	addi	sp,sp,-16
    8000259c:	00113423          	sd	ra,8(sp)
    800025a0:	00813023          	sd	s0,0(sp)
    800025a4:	01010413          	addi	s0,sp,16
__mem_free(p);
    800025a8:	00002097          	auipc	ra,0x2
    800025ac:	734080e7          	jalr	1844(ra) # 80004cdc <__mem_free>
}
    800025b0:	00813083          	ld	ra,8(sp)
    800025b4:	00013403          	ld	s0,0(sp)
    800025b8:	01010113          	addi	sp,sp,16
    800025bc:	00008067          	ret

00000000800025c0 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    800025c0:	ff010113          	addi	sp,sp,-16
    800025c4:	00113423          	sd	ra,8(sp)
    800025c8:	00813023          	sd	s0,0(sp)
    800025cc:	01010413          	addi	s0,sp,16
__mem_free(p);
    800025d0:	00002097          	auipc	ra,0x2
    800025d4:	70c080e7          	jalr	1804(ra) # 80004cdc <__mem_free>
    800025d8:	00813083          	ld	ra,8(sp)
    800025dc:	00013403          	ld	s0,0(sp)
    800025e0:	01010113          	addi	sp,sp,16
    800025e4:	00008067          	ret

00000000800025e8 <_ZN5Riscv10popSppSpieEv>:
#include "../h/syscall_c.h"

using Body = void (*)(void*);

void Riscv::popSppSpie()
{
    800025e8:	ff010113          	addi	sp,sp,-16
    800025ec:	00813423          	sd	s0,8(sp)
    800025f0:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800025f4:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800025f8:	10200073          	sret
}
    800025fc:	00813403          	ld	s0,8(sp)
    80002600:	01010113          	addi	sp,sp,16
    80002604:	00008067          	ret

0000000080002608 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80002608:	f9010113          	addi	sp,sp,-112
    8000260c:	06113423          	sd	ra,104(sp)
    80002610:	06813023          	sd	s0,96(sp)
    80002614:	04913c23          	sd	s1,88(sp)
    80002618:	05213823          	sd	s2,80(sp)
    8000261c:	05313423          	sd	s3,72(sp)
    80002620:	05413023          	sd	s4,64(sp)
    80002624:	03513c23          	sd	s5,56(sp)
    80002628:	07010413          	addi	s0,sp,112
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000262c:	142027f3          	csrr	a5,scause
    80002630:	f8f43c23          	sd	a5,-104(s0)
    return scause;
    80002634:	f9843703          	ld	a4,-104(s0)
    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80002638:	ff870693          	addi	a3,a4,-8
    8000263c:	00100793          	li	a5,1
    80002640:	02d7f863          	bgeu	a5,a3,80002670 <_ZN5Riscv20handleSupervisorTrapEv+0x68>
//        TCB::timeSliceCounter = 0;
//        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80002644:	fff00793          	li	a5,-1
    80002648:	03f79793          	slli	a5,a5,0x3f
    8000264c:	00178793          	addi	a5,a5,1
    80002650:	18f70063          	beq	a4,a5,800027d0 <_ZN5Riscv20handleSupervisorTrapEv+0x1c8>
            w_sepc(sepc);
        }

        mc_sip(SIP_SSIP);
    }
    else if (scause == 0x8000000000000009UL)
    80002654:	fff00793          	li	a5,-1
    80002658:	03f79793          	slli	a5,a5,0x3f
    8000265c:	00978793          	addi	a5,a5,9
    80002660:	0af71263          	bne	a4,a5,80002704 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
    {
        // Interrupt: yes, cause code: Software external interrupt (console)
        console_handler();
    80002664:	00003097          	auipc	ra,0x3
    80002668:	910080e7          	jalr	-1776(ra) # 80004f74 <console_handler>
        // print(scause)
        // print(sepc)
        // print(stvalue)

    }
    8000266c:	0980006f          	j	80002704 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002670:	141027f3          	csrr	a5,sepc
    80002674:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80002678:	fa843483          	ld	s1,-88(s0)
        uint64 sepc = r_sepc() + 4;
    8000267c:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002680:	100027f3          	csrr	a5,sstatus
    80002684:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80002688:	fa043903          	ld	s2,-96(s0)
        __asm__ volatile ("mv %0, a0" : "=r" (number));
    8000268c:	00050793          	mv	a5,a0
        switch (number)
    80002690:	fef78793          	addi	a5,a5,-17
    80002694:	00400713          	li	a4,4
    80002698:	06f76263          	bltu	a4,a5,800026fc <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
    8000269c:	00279793          	slli	a5,a5,0x2
    800026a0:	00004717          	auipc	a4,0x4
    800026a4:	aec70713          	addi	a4,a4,-1300 # 8000618c <CONSOLE_STATUS+0x17c>
    800026a8:	00e787b3          	add	a5,a5,a4
    800026ac:	0007a783          	lw	a5,0(a5)
    800026b0:	00e787b3          	add	a5,a5,a4
    800026b4:	00078067          	jr	a5
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    800026b8:	00058a13          	mv	s4,a1
                __asm__ volatile ("mv %0, a2" : "=r" (body));
    800026bc:	00060993          	mv	s3,a2
                __asm__ volatile ("mv %0, a3" : "=r" (arg));
    800026c0:	00068a93          	mv	s5,a3
                if (body != 0)
    800026c4:	06098263          	beqz	s3,80002728 <_ZN5Riscv20handleSupervisorTrapEv+0x120>
                    stack = (uint64 *)new uint64[DEFAULT_STACK_SIZE];
    800026c8:	00008537          	lui	a0,0x8
    800026cc:	00000097          	auipc	ra,0x0
    800026d0:	ea4080e7          	jalr	-348(ra) # 80002570 <_Znam>
    800026d4:	00050613          	mv	a2,a0
                *handle = TCB::createThread(body, arg, stack, true);
    800026d8:	00100693          	li	a3,1
    800026dc:	000a8593          	mv	a1,s5
    800026e0:	00098513          	mv	a0,s3
    800026e4:	00000097          	auipc	ra,0x0
    800026e8:	c1c080e7          	jalr	-996(ra) # 80002300 <_ZN3TCB12createThreadEPFvPvES0_S0_b>
    800026ec:	00aa3023          	sd	a0,0(s4)
                ret = (*handle) != nullptr ? 0 : -1;
    800026f0:	04050063          	beqz	a0,80002730 <_ZN5Riscv20handleSupervisorTrapEv+0x128>
    800026f4:	00000793          	li	a5,0
                __asm__ volatile ("mv a0, %0" : : "r" (ret));
    800026f8:	00078513          	mv	a0,a5
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800026fc:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002700:	14149073          	csrw	sepc,s1
    80002704:	06813083          	ld	ra,104(sp)
    80002708:	06013403          	ld	s0,96(sp)
    8000270c:	05813483          	ld	s1,88(sp)
    80002710:	05013903          	ld	s2,80(sp)
    80002714:	04813983          	ld	s3,72(sp)
    80002718:	04013a03          	ld	s4,64(sp)
    8000271c:	03813a83          	ld	s5,56(sp)
    80002720:	07010113          	addi	sp,sp,112
    80002724:	00008067          	ret
                    stack = 0;
    80002728:	00000613          	li	a2,0
    8000272c:	fadff06f          	j	800026d8 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                ret = (*handle) != nullptr ? 0 : -1;
    80002730:	fff00793          	li	a5,-1
    80002734:	fc5ff06f          	j	800026f8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                printString("Exiting...\n");
    80002738:	00004517          	auipc	a0,0x4
    8000273c:	a4850513          	addi	a0,a0,-1464 # 80006180 <CONSOLE_STATUS+0x170>
    80002740:	00000097          	auipc	ra,0x0
    80002744:	244080e7          	jalr	580(ra) # 80002984 <_Z11printStringPKc>
                ret = TCB::threadExit();
    80002748:	00000097          	auipc	ra,0x0
    8000274c:	d0c080e7          	jalr	-756(ra) # 80002454 <_ZN3TCB10threadExitEv>
                __asm__ volatile ("mv a0, %0" : : "r" (ret));
    80002750:	00050513          	mv	a0,a0
                break;
    80002754:	fa9ff06f          	j	800026fc <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
                TCB::dispatch();
    80002758:	00000097          	auipc	ra,0x0
    8000275c:	c94080e7          	jalr	-876(ra) # 800023ec <_ZN3TCB8dispatchEv>
                break;
    80002760:	f9dff06f          	j	800026fc <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80002764:	00058a13          	mv	s4,a1
                __asm__ volatile ("mv %0, a2" : "=r" (body));
    80002768:	00060993          	mv	s3,a2
                __asm__ volatile ("mv %0, a5" : "=r" (arg));
    8000276c:	00078793          	mv	a5,a5
                __asm__ volatile ("mv %0, a6" : "=r" (arg));
    80002770:	00080a93          	mv	s5,a6
                if (body != 0)
    80002774:	02098e63          	beqz	s3,800027b0 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                    stack = (uint64 *)new uint64[DEFAULT_STACK_SIZE];
    80002778:	00008537          	lui	a0,0x8
    8000277c:	00000097          	auipc	ra,0x0
    80002780:	df4080e7          	jalr	-524(ra) # 80002570 <_Znam>
    80002784:	00050613          	mv	a2,a0
                *handle = TCB::createThread(body, arg, stack, false);
    80002788:	00000693          	li	a3,0
    8000278c:	000a8593          	mv	a1,s5
    80002790:	00098513          	mv	a0,s3
    80002794:	00000097          	auipc	ra,0x0
    80002798:	b6c080e7          	jalr	-1172(ra) # 80002300 <_ZN3TCB12createThreadEPFvPvES0_S0_b>
    8000279c:	00aa3023          	sd	a0,0(s4)
                ret = (*handle) != nullptr ? 0 : -1;
    800027a0:	00050c63          	beqz	a0,800027b8 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
    800027a4:	00000793          	li	a5,0
                __asm__ volatile ("mv a0, %0" : : "r" (ret));
    800027a8:	00078513          	mv	a0,a5
                break;
    800027ac:	f51ff06f          	j	800026fc <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
                    stack = 0;
    800027b0:	00000613          	li	a2,0
    800027b4:	fd5ff06f          	j	80002788 <_ZN5Riscv20handleSupervisorTrapEv+0x180>
                ret = (*handle) != nullptr ? 0 : -1;
    800027b8:	fff00793          	li	a5,-1
    800027bc:	fedff06f          	j	800027a8 <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    800027c0:	00058513          	mv	a0,a1
                TCB::threadStart((TCB*)handle);
    800027c4:	00000097          	auipc	ra,0x0
    800027c8:	d48080e7          	jalr	-696(ra) # 8000250c <_ZN3TCB11threadStartEPS_>
                break;
    800027cc:	f31ff06f          	j	800026fc <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
        TCB::timeSliceCounter++;
    800027d0:	00004717          	auipc	a4,0x4
    800027d4:	65073703          	ld	a4,1616(a4) # 80006e20 <_GLOBAL_OFFSET_TABLE_+0x10>
    800027d8:	00073783          	ld	a5,0(a4)
    800027dc:	00178793          	addi	a5,a5,1
    800027e0:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    800027e4:	00004717          	auipc	a4,0x4
    800027e8:	64c73703          	ld	a4,1612(a4) # 80006e30 <_GLOBAL_OFFSET_TABLE_+0x20>
    800027ec:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    800027f0:	02873703          	ld	a4,40(a4)
    800027f4:	00e7f863          	bgeu	a5,a4,80002804 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800027f8:	00200793          	li	a5,2
    800027fc:	1447b073          	csrc	sip,a5
}
    80002800:	f05ff06f          	j	80002704 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002804:	141027f3          	csrr	a5,sepc
    80002808:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    8000280c:	fb843483          	ld	s1,-72(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002810:	100027f3          	csrr	a5,sstatus
    80002814:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80002818:	fb043903          	ld	s2,-80(s0)
            TCB::timeSliceCounter = 0;
    8000281c:	00004797          	auipc	a5,0x4
    80002820:	6047b783          	ld	a5,1540(a5) # 80006e20 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002824:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002828:	00000097          	auipc	ra,0x0
    8000282c:	bc4080e7          	jalr	-1084(ra) # 800023ec <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002830:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002834:	14149073          	csrw	sepc,s1
}
    80002838:	fc1ff06f          	j	800027f8 <_ZN5Riscv20handleSupervisorTrapEv+0x1f0>

000000008000283c <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    8000283c:	ff010113          	addi	sp,sp,-16
    80002840:	00813423          	sd	s0,8(sp)
    80002844:	01010413          	addi	s0,sp,16
    80002848:	00100793          	li	a5,1
    8000284c:	00f50863          	beq	a0,a5,8000285c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002850:	00813403          	ld	s0,8(sp)
    80002854:	01010113          	addi	sp,sp,16
    80002858:	00008067          	ret
    8000285c:	000107b7          	lui	a5,0x10
    80002860:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002864:	fef596e3          	bne	a1,a5,80002850 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80002868:	00004797          	auipc	a5,0x4
    8000286c:	65078793          	addi	a5,a5,1616 # 80006eb8 <_ZN9Scheduler19readyCoroutineQueueE>
    80002870:	0007b023          	sd	zero,0(a5)
    80002874:	0007b423          	sd	zero,8(a5)
    80002878:	fd9ff06f          	j	80002850 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000287c <_ZN9Scheduler3getEv>:
{
    8000287c:	fe010113          	addi	sp,sp,-32
    80002880:	00113c23          	sd	ra,24(sp)
    80002884:	00813823          	sd	s0,16(sp)
    80002888:	00913423          	sd	s1,8(sp)
    8000288c:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80002890:	00004517          	auipc	a0,0x4
    80002894:	62853503          	ld	a0,1576(a0) # 80006eb8 <_ZN9Scheduler19readyCoroutineQueueE>
    80002898:	04050263          	beqz	a0,800028dc <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    8000289c:	00853783          	ld	a5,8(a0)
    800028a0:	00004717          	auipc	a4,0x4
    800028a4:	60f73c23          	sd	a5,1560(a4) # 80006eb8 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    800028a8:	02078463          	beqz	a5,800028d0 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    800028ac:	00053483          	ld	s1,0(a0)
        delete elem;
    800028b0:	00000097          	auipc	ra,0x0
    800028b4:	ce8080e7          	jalr	-792(ra) # 80002598 <_ZdlPv>
}
    800028b8:	00048513          	mv	a0,s1
    800028bc:	01813083          	ld	ra,24(sp)
    800028c0:	01013403          	ld	s0,16(sp)
    800028c4:	00813483          	ld	s1,8(sp)
    800028c8:	02010113          	addi	sp,sp,32
    800028cc:	00008067          	ret
        if (!head) { tail = 0; }
    800028d0:	00004797          	auipc	a5,0x4
    800028d4:	5e07b823          	sd	zero,1520(a5) # 80006ec0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800028d8:	fd5ff06f          	j	800028ac <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800028dc:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    800028e0:	fd9ff06f          	j	800028b8 <_ZN9Scheduler3getEv+0x3c>

00000000800028e4 <_ZN9Scheduler3putEP3TCB>:
{
    800028e4:	fe010113          	addi	sp,sp,-32
    800028e8:	00113c23          	sd	ra,24(sp)
    800028ec:	00813823          	sd	s0,16(sp)
    800028f0:	00913423          	sd	s1,8(sp)
    800028f4:	02010413          	addi	s0,sp,32
    800028f8:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800028fc:	01000513          	li	a0,16
    80002900:	00000097          	auipc	ra,0x0
    80002904:	c48080e7          	jalr	-952(ra) # 80002548 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002908:	00953023          	sd	s1,0(a0)
    8000290c:	00053423          	sd	zero,8(a0)
        if (tail)
    80002910:	00004797          	auipc	a5,0x4
    80002914:	5b07b783          	ld	a5,1456(a5) # 80006ec0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002918:	02078263          	beqz	a5,8000293c <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    8000291c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002920:	00004797          	auipc	a5,0x4
    80002924:	5aa7b023          	sd	a0,1440(a5) # 80006ec0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002928:	01813083          	ld	ra,24(sp)
    8000292c:	01013403          	ld	s0,16(sp)
    80002930:	00813483          	ld	s1,8(sp)
    80002934:	02010113          	addi	sp,sp,32
    80002938:	00008067          	ret
            head = tail = elem;
    8000293c:	00004797          	auipc	a5,0x4
    80002940:	57c78793          	addi	a5,a5,1404 # 80006eb8 <_ZN9Scheduler19readyCoroutineQueueE>
    80002944:	00a7b423          	sd	a0,8(a5)
    80002948:	00a7b023          	sd	a0,0(a5)
    8000294c:	fddff06f          	j	80002928 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002950 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80002950:	ff010113          	addi	sp,sp,-16
    80002954:	00113423          	sd	ra,8(sp)
    80002958:	00813023          	sd	s0,0(sp)
    8000295c:	01010413          	addi	s0,sp,16
    80002960:	000105b7          	lui	a1,0x10
    80002964:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002968:	00100513          	li	a0,1
    8000296c:	00000097          	auipc	ra,0x0
    80002970:	ed0080e7          	jalr	-304(ra) # 8000283c <_Z41__static_initialization_and_destruction_0ii>
    80002974:	00813083          	ld	ra,8(sp)
    80002978:	00013403          	ld	s0,0(sp)
    8000297c:	01010113          	addi	sp,sp,16
    80002980:	00008067          	ret

0000000080002984 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../lib/console.h"
#include "../h/riscv.hpp"

void printString(char const *string)
{
    80002984:	fd010113          	addi	sp,sp,-48
    80002988:	02113423          	sd	ra,40(sp)
    8000298c:	02813023          	sd	s0,32(sp)
    80002990:	00913c23          	sd	s1,24(sp)
    80002994:	01213823          	sd	s2,16(sp)
    80002998:	03010413          	addi	s0,sp,48
    8000299c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800029a0:	100027f3          	csrr	a5,sstatus
    800029a4:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800029a8:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800029ac:	00200793          	li	a5,2
    800029b0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    800029b4:	0004c503          	lbu	a0,0(s1)
    800029b8:	00050a63          	beqz	a0,800029cc <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    800029bc:	00002097          	auipc	ra,0x2
    800029c0:	544080e7          	jalr	1348(ra) # 80004f00 <__putc>
        string++;
    800029c4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800029c8:	fedff06f          	j	800029b4 <_Z11printStringPKc+0x30>
    }

    Riscv::ms_sstatus( sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800029cc:	0009091b          	sext.w	s2,s2
    800029d0:	00297913          	andi	s2,s2,2
    800029d4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800029d8:	10092073          	csrs	sstatus,s2
}
    800029dc:	02813083          	ld	ra,40(sp)
    800029e0:	02013403          	ld	s0,32(sp)
    800029e4:	01813483          	ld	s1,24(sp)
    800029e8:	01013903          	ld	s2,16(sp)
    800029ec:	03010113          	addi	sp,sp,48
    800029f0:	00008067          	ret

00000000800029f4 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    800029f4:	fc010113          	addi	sp,sp,-64
    800029f8:	02113c23          	sd	ra,56(sp)
    800029fc:	02813823          	sd	s0,48(sp)
    80002a00:	02913423          	sd	s1,40(sp)
    80002a04:	03213023          	sd	s2,32(sp)
    80002a08:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002a0c:	100027f3          	csrr	a5,sstatus
    80002a10:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002a14:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002a18:	00200793          	li	a5,2
    80002a1c:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002a20:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002a24:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80002a28:	00a00613          	li	a2,10
    80002a2c:	02c5773b          	remuw	a4,a0,a2
    80002a30:	02071693          	slli	a3,a4,0x20
    80002a34:	0206d693          	srli	a3,a3,0x20
    80002a38:	00003717          	auipc	a4,0x3
    80002a3c:	76870713          	addi	a4,a4,1896 # 800061a0 <_ZZ12printIntegermE6digits>
    80002a40:	00d70733          	add	a4,a4,a3
    80002a44:	00074703          	lbu	a4,0(a4)
    80002a48:	fe040693          	addi	a3,s0,-32
    80002a4c:	009687b3          	add	a5,a3,s1
    80002a50:	0014849b          	addiw	s1,s1,1
    80002a54:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002a58:	0005071b          	sext.w	a4,a0
    80002a5c:	02c5553b          	divuw	a0,a0,a2
    80002a60:	00900793          	li	a5,9
    80002a64:	fce7e2e3          	bltu	a5,a4,80002a28 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
    80002a68:	fff4849b          	addiw	s1,s1,-1
    80002a6c:	0004ce63          	bltz	s1,80002a88 <_Z12printIntegerm+0x94>
        __putc(buf[i]);
    80002a70:	fe040793          	addi	a5,s0,-32
    80002a74:	009787b3          	add	a5,a5,s1
    80002a78:	ff07c503          	lbu	a0,-16(a5)
    80002a7c:	00002097          	auipc	ra,0x2
    80002a80:	484080e7          	jalr	1156(ra) # 80004f00 <__putc>
    80002a84:	fe5ff06f          	j	80002a68 <_Z12printIntegerm+0x74>

    Riscv::ms_sstatus( sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002a88:	0009091b          	sext.w	s2,s2
    80002a8c:	00297913          	andi	s2,s2,2
    80002a90:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002a94:	10092073          	csrs	sstatus,s2
    80002a98:	03813083          	ld	ra,56(sp)
    80002a9c:	03013403          	ld	s0,48(sp)
    80002aa0:	02813483          	ld	s1,40(sp)
    80002aa4:	02013903          	ld	s2,32(sp)
    80002aa8:	04010113          	addi	sp,sp,64
    80002aac:	00008067          	ret

0000000080002ab0 <_ZN6Thread7wrapperEPv>:
//    mem_free(ptr);
//}

void Thread::wrapper(void *handle)
{
    if(handle)
    80002ab0:	02050863          	beqz	a0,80002ae0 <_ZN6Thread7wrapperEPv+0x30>
{
    80002ab4:	ff010113          	addi	sp,sp,-16
    80002ab8:	00113423          	sd	ra,8(sp)
    80002abc:	00813023          	sd	s0,0(sp)
    80002ac0:	01010413          	addi	s0,sp,16
        ((Thread*)handle)->run();
    80002ac4:	00053783          	ld	a5,0(a0)
    80002ac8:	0107b783          	ld	a5,16(a5)
    80002acc:	000780e7          	jalr	a5
}
    80002ad0:	00813083          	ld	ra,8(sp)
    80002ad4:	00013403          	ld	s0,0(sp)
    80002ad8:	01010113          	addi	sp,sp,16
    80002adc:	00008067          	ret
    80002ae0:	00008067          	ret

0000000080002ae4 <_ZN6ThreadD1Ev>:
{
    myHandle = nullptr;
    thread_create_wo_start(&myHandle, Thread::wrapper, this);
}

Thread::~Thread()
    80002ae4:	ff010113          	addi	sp,sp,-16
    80002ae8:	00813423          	sd	s0,8(sp)
    80002aec:	01010413          	addi	s0,sp,16
{
    myHandle = nullptr;
    delete myHandle;
}
    80002af0:	00813403          	ld	s0,8(sp)
    80002af4:	01010113          	addi	sp,sp,16
    80002af8:	00008067          	ret

0000000080002afc <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80002afc:	ff010113          	addi	sp,sp,-16
    80002b00:	00113423          	sd	ra,8(sp)
    80002b04:	00813023          	sd	s0,0(sp)
    80002b08:	01010413          	addi	s0,sp,16
}
    80002b0c:	00000097          	auipc	ra,0x0
    80002b10:	a8c080e7          	jalr	-1396(ra) # 80002598 <_ZdlPv>
    80002b14:	00813083          	ld	ra,8(sp)
    80002b18:	00013403          	ld	s0,0(sp)
    80002b1c:	01010113          	addi	sp,sp,16
    80002b20:	00008067          	ret

0000000080002b24 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg)
    80002b24:	ff010113          	addi	sp,sp,-16
    80002b28:	00113423          	sd	ra,8(sp)
    80002b2c:	00813023          	sd	s0,0(sp)
    80002b30:	01010413          	addi	s0,sp,16
    80002b34:	00004797          	auipc	a5,0x4
    80002b38:	2c478793          	addi	a5,a5,708 # 80006df8 <_ZTV6Thread+0x10>
    80002b3c:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002b40:	00053423          	sd	zero,8(a0)
    thread_create_wo_start(&myHandle, body, arg);
    80002b44:	00850513          	addi	a0,a0,8
    80002b48:	fffff097          	auipc	ra,0xfffff
    80002b4c:	cc8080e7          	jalr	-824(ra) # 80001810 <_Z22thread_create_wo_startPP3TCBPFvPvES2_>
}
    80002b50:	00813083          	ld	ra,8(sp)
    80002b54:	00013403          	ld	s0,0(sp)
    80002b58:	01010113          	addi	sp,sp,16
    80002b5c:	00008067          	ret

0000000080002b60 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80002b60:	ff010113          	addi	sp,sp,-16
    80002b64:	00113423          	sd	ra,8(sp)
    80002b68:	00813023          	sd	s0,0(sp)
    80002b6c:	01010413          	addi	s0,sp,16
    80002b70:	00004797          	auipc	a5,0x4
    80002b74:	28878793          	addi	a5,a5,648 # 80006df8 <_ZTV6Thread+0x10>
    80002b78:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002b7c:	00053423          	sd	zero,8(a0)
    thread_create_wo_start(&myHandle, Thread::wrapper, this);
    80002b80:	00050613          	mv	a2,a0
    80002b84:	00000597          	auipc	a1,0x0
    80002b88:	f2c58593          	addi	a1,a1,-212 # 80002ab0 <_ZN6Thread7wrapperEPv>
    80002b8c:	00850513          	addi	a0,a0,8
    80002b90:	fffff097          	auipc	ra,0xfffff
    80002b94:	c80080e7          	jalr	-896(ra) # 80001810 <_Z22thread_create_wo_startPP3TCBPFvPvES2_>
}
    80002b98:	00813083          	ld	ra,8(sp)
    80002b9c:	00013403          	ld	s0,0(sp)
    80002ba0:	01010113          	addi	sp,sp,16
    80002ba4:	00008067          	ret

0000000080002ba8 <_ZN6Thread5startEv>:

int Thread::start()
{
    int ret = -3;

    if(myHandle)
    80002ba8:	00853503          	ld	a0,8(a0)
    80002bac:	02050663          	beqz	a0,80002bd8 <_ZN6Thread5startEv+0x30>
{
    80002bb0:	ff010113          	addi	sp,sp,-16
    80002bb4:	00113423          	sd	ra,8(sp)
    80002bb8:	00813023          	sd	s0,0(sp)
    80002bbc:	01010413          	addi	s0,sp,16
        ret = thread_start(myHandle);
    80002bc0:	fffff097          	auipc	ra,0xfffff
    80002bc4:	c8c080e7          	jalr	-884(ra) # 8000184c <_Z12thread_startP3TCB>

    return ret;
}
    80002bc8:	00813083          	ld	ra,8(sp)
    80002bcc:	00013403          	ld	s0,0(sp)
    80002bd0:	01010113          	addi	sp,sp,16
    80002bd4:	00008067          	ret
    int ret = -3;
    80002bd8:	ffd00513          	li	a0,-3
}
    80002bdc:	00008067          	ret

0000000080002be0 <_ZN6Thread8dispatchEv>:

void Thread::dispatch()
{
    80002be0:	ff010113          	addi	sp,sp,-16
    80002be4:	00113423          	sd	ra,8(sp)
    80002be8:	00813023          	sd	s0,0(sp)
    80002bec:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002bf0:	fffff097          	auipc	ra,0xfffff
    80002bf4:	bfc080e7          	jalr	-1028(ra) # 800017ec <_Z15thread_dispatchv>
    80002bf8:	00813083          	ld	ra,8(sp)
    80002bfc:	00013403          	ld	s0,0(sp)
    80002c00:	01010113          	addi	sp,sp,16
    80002c04:	00008067          	ret

0000000080002c08 <_ZN6Thread3runEv>:

    static void dispatch ();
    static void wrapper(void *handle);
protected:
    Thread ();
    virtual void run () {}
    80002c08:	ff010113          	addi	sp,sp,-16
    80002c0c:	00813423          	sd	s0,8(sp)
    80002c10:	01010413          	addi	s0,sp,16
    80002c14:	00813403          	ld	s0,8(sp)
    80002c18:	01010113          	addi	sp,sp,16
    80002c1c:	00008067          	ret

0000000080002c20 <start>:
    80002c20:	ff010113          	addi	sp,sp,-16
    80002c24:	00813423          	sd	s0,8(sp)
    80002c28:	01010413          	addi	s0,sp,16
    80002c2c:	300027f3          	csrr	a5,mstatus
    80002c30:	ffffe737          	lui	a4,0xffffe
    80002c34:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff66bf>
    80002c38:	00e7f7b3          	and	a5,a5,a4
    80002c3c:	00001737          	lui	a4,0x1
    80002c40:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002c44:	00e7e7b3          	or	a5,a5,a4
    80002c48:	30079073          	csrw	mstatus,a5
    80002c4c:	00000797          	auipc	a5,0x0
    80002c50:	16078793          	addi	a5,a5,352 # 80002dac <system_main>
    80002c54:	34179073          	csrw	mepc,a5
    80002c58:	00000793          	li	a5,0
    80002c5c:	18079073          	csrw	satp,a5
    80002c60:	000107b7          	lui	a5,0x10
    80002c64:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002c68:	30279073          	csrw	medeleg,a5
    80002c6c:	30379073          	csrw	mideleg,a5
    80002c70:	104027f3          	csrr	a5,sie
    80002c74:	2227e793          	ori	a5,a5,546
    80002c78:	10479073          	csrw	sie,a5
    80002c7c:	fff00793          	li	a5,-1
    80002c80:	00a7d793          	srli	a5,a5,0xa
    80002c84:	3b079073          	csrw	pmpaddr0,a5
    80002c88:	00f00793          	li	a5,15
    80002c8c:	3a079073          	csrw	pmpcfg0,a5
    80002c90:	f14027f3          	csrr	a5,mhartid
    80002c94:	0200c737          	lui	a4,0x200c
    80002c98:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002c9c:	0007869b          	sext.w	a3,a5
    80002ca0:	00269713          	slli	a4,a3,0x2
    80002ca4:	000f4637          	lui	a2,0xf4
    80002ca8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002cac:	00d70733          	add	a4,a4,a3
    80002cb0:	0037979b          	slliw	a5,a5,0x3
    80002cb4:	020046b7          	lui	a3,0x2004
    80002cb8:	00d787b3          	add	a5,a5,a3
    80002cbc:	00c585b3          	add	a1,a1,a2
    80002cc0:	00371693          	slli	a3,a4,0x3
    80002cc4:	00004717          	auipc	a4,0x4
    80002cc8:	20c70713          	addi	a4,a4,524 # 80006ed0 <timer_scratch>
    80002ccc:	00b7b023          	sd	a1,0(a5)
    80002cd0:	00d70733          	add	a4,a4,a3
    80002cd4:	00f73c23          	sd	a5,24(a4)
    80002cd8:	02c73023          	sd	a2,32(a4)
    80002cdc:	34071073          	csrw	mscratch,a4
    80002ce0:	00000797          	auipc	a5,0x0
    80002ce4:	6e078793          	addi	a5,a5,1760 # 800033c0 <timervec>
    80002ce8:	30579073          	csrw	mtvec,a5
    80002cec:	300027f3          	csrr	a5,mstatus
    80002cf0:	0087e793          	ori	a5,a5,8
    80002cf4:	30079073          	csrw	mstatus,a5
    80002cf8:	304027f3          	csrr	a5,mie
    80002cfc:	0807e793          	ori	a5,a5,128
    80002d00:	30479073          	csrw	mie,a5
    80002d04:	f14027f3          	csrr	a5,mhartid
    80002d08:	0007879b          	sext.w	a5,a5
    80002d0c:	00078213          	mv	tp,a5
    80002d10:	30200073          	mret
    80002d14:	00813403          	ld	s0,8(sp)
    80002d18:	01010113          	addi	sp,sp,16
    80002d1c:	00008067          	ret

0000000080002d20 <timerinit>:
    80002d20:	ff010113          	addi	sp,sp,-16
    80002d24:	00813423          	sd	s0,8(sp)
    80002d28:	01010413          	addi	s0,sp,16
    80002d2c:	f14027f3          	csrr	a5,mhartid
    80002d30:	0200c737          	lui	a4,0x200c
    80002d34:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002d38:	0007869b          	sext.w	a3,a5
    80002d3c:	00269713          	slli	a4,a3,0x2
    80002d40:	000f4637          	lui	a2,0xf4
    80002d44:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002d48:	00d70733          	add	a4,a4,a3
    80002d4c:	0037979b          	slliw	a5,a5,0x3
    80002d50:	020046b7          	lui	a3,0x2004
    80002d54:	00d787b3          	add	a5,a5,a3
    80002d58:	00c585b3          	add	a1,a1,a2
    80002d5c:	00371693          	slli	a3,a4,0x3
    80002d60:	00004717          	auipc	a4,0x4
    80002d64:	17070713          	addi	a4,a4,368 # 80006ed0 <timer_scratch>
    80002d68:	00b7b023          	sd	a1,0(a5)
    80002d6c:	00d70733          	add	a4,a4,a3
    80002d70:	00f73c23          	sd	a5,24(a4)
    80002d74:	02c73023          	sd	a2,32(a4)
    80002d78:	34071073          	csrw	mscratch,a4
    80002d7c:	00000797          	auipc	a5,0x0
    80002d80:	64478793          	addi	a5,a5,1604 # 800033c0 <timervec>
    80002d84:	30579073          	csrw	mtvec,a5
    80002d88:	300027f3          	csrr	a5,mstatus
    80002d8c:	0087e793          	ori	a5,a5,8
    80002d90:	30079073          	csrw	mstatus,a5
    80002d94:	304027f3          	csrr	a5,mie
    80002d98:	0807e793          	ori	a5,a5,128
    80002d9c:	30479073          	csrw	mie,a5
    80002da0:	00813403          	ld	s0,8(sp)
    80002da4:	01010113          	addi	sp,sp,16
    80002da8:	00008067          	ret

0000000080002dac <system_main>:
    80002dac:	fe010113          	addi	sp,sp,-32
    80002db0:	00813823          	sd	s0,16(sp)
    80002db4:	00913423          	sd	s1,8(sp)
    80002db8:	00113c23          	sd	ra,24(sp)
    80002dbc:	02010413          	addi	s0,sp,32
    80002dc0:	00000097          	auipc	ra,0x0
    80002dc4:	0c4080e7          	jalr	196(ra) # 80002e84 <cpuid>
    80002dc8:	00004497          	auipc	s1,0x4
    80002dcc:	0a048493          	addi	s1,s1,160 # 80006e68 <started>
    80002dd0:	02050263          	beqz	a0,80002df4 <system_main+0x48>
    80002dd4:	0004a783          	lw	a5,0(s1)
    80002dd8:	0007879b          	sext.w	a5,a5
    80002ddc:	fe078ce3          	beqz	a5,80002dd4 <system_main+0x28>
    80002de0:	0ff0000f          	fence
    80002de4:	00003517          	auipc	a0,0x3
    80002de8:	3fc50513          	addi	a0,a0,1020 # 800061e0 <_ZZ12printIntegermE6digits+0x40>
    80002dec:	00001097          	auipc	ra,0x1
    80002df0:	a70080e7          	jalr	-1424(ra) # 8000385c <panic>
    80002df4:	00001097          	auipc	ra,0x1
    80002df8:	9c4080e7          	jalr	-1596(ra) # 800037b8 <consoleinit>
    80002dfc:	00001097          	auipc	ra,0x1
    80002e00:	150080e7          	jalr	336(ra) # 80003f4c <printfinit>
    80002e04:	00003517          	auipc	a0,0x3
    80002e08:	35c50513          	addi	a0,a0,860 # 80006160 <CONSOLE_STATUS+0x150>
    80002e0c:	00001097          	auipc	ra,0x1
    80002e10:	aac080e7          	jalr	-1364(ra) # 800038b8 <__printf>
    80002e14:	00003517          	auipc	a0,0x3
    80002e18:	39c50513          	addi	a0,a0,924 # 800061b0 <_ZZ12printIntegermE6digits+0x10>
    80002e1c:	00001097          	auipc	ra,0x1
    80002e20:	a9c080e7          	jalr	-1380(ra) # 800038b8 <__printf>
    80002e24:	00003517          	auipc	a0,0x3
    80002e28:	33c50513          	addi	a0,a0,828 # 80006160 <CONSOLE_STATUS+0x150>
    80002e2c:	00001097          	auipc	ra,0x1
    80002e30:	a8c080e7          	jalr	-1396(ra) # 800038b8 <__printf>
    80002e34:	00001097          	auipc	ra,0x1
    80002e38:	4a4080e7          	jalr	1188(ra) # 800042d8 <kinit>
    80002e3c:	00000097          	auipc	ra,0x0
    80002e40:	148080e7          	jalr	328(ra) # 80002f84 <trapinit>
    80002e44:	00000097          	auipc	ra,0x0
    80002e48:	16c080e7          	jalr	364(ra) # 80002fb0 <trapinithart>
    80002e4c:	00000097          	auipc	ra,0x0
    80002e50:	5b4080e7          	jalr	1460(ra) # 80003400 <plicinit>
    80002e54:	00000097          	auipc	ra,0x0
    80002e58:	5d4080e7          	jalr	1492(ra) # 80003428 <plicinithart>
    80002e5c:	00000097          	auipc	ra,0x0
    80002e60:	078080e7          	jalr	120(ra) # 80002ed4 <userinit>
    80002e64:	0ff0000f          	fence
    80002e68:	00100793          	li	a5,1
    80002e6c:	00003517          	auipc	a0,0x3
    80002e70:	35c50513          	addi	a0,a0,860 # 800061c8 <_ZZ12printIntegermE6digits+0x28>
    80002e74:	00f4a023          	sw	a5,0(s1)
    80002e78:	00001097          	auipc	ra,0x1
    80002e7c:	a40080e7          	jalr	-1472(ra) # 800038b8 <__printf>
    80002e80:	0000006f          	j	80002e80 <system_main+0xd4>

0000000080002e84 <cpuid>:
    80002e84:	ff010113          	addi	sp,sp,-16
    80002e88:	00813423          	sd	s0,8(sp)
    80002e8c:	01010413          	addi	s0,sp,16
    80002e90:	00020513          	mv	a0,tp
    80002e94:	00813403          	ld	s0,8(sp)
    80002e98:	0005051b          	sext.w	a0,a0
    80002e9c:	01010113          	addi	sp,sp,16
    80002ea0:	00008067          	ret

0000000080002ea4 <mycpu>:
    80002ea4:	ff010113          	addi	sp,sp,-16
    80002ea8:	00813423          	sd	s0,8(sp)
    80002eac:	01010413          	addi	s0,sp,16
    80002eb0:	00020793          	mv	a5,tp
    80002eb4:	00813403          	ld	s0,8(sp)
    80002eb8:	0007879b          	sext.w	a5,a5
    80002ebc:	00779793          	slli	a5,a5,0x7
    80002ec0:	00005517          	auipc	a0,0x5
    80002ec4:	04050513          	addi	a0,a0,64 # 80007f00 <cpus>
    80002ec8:	00f50533          	add	a0,a0,a5
    80002ecc:	01010113          	addi	sp,sp,16
    80002ed0:	00008067          	ret

0000000080002ed4 <userinit>:
    80002ed4:	ff010113          	addi	sp,sp,-16
    80002ed8:	00813423          	sd	s0,8(sp)
    80002edc:	01010413          	addi	s0,sp,16
    80002ee0:	00813403          	ld	s0,8(sp)
    80002ee4:	01010113          	addi	sp,sp,16
    80002ee8:	fffff317          	auipc	t1,0xfffff
    80002eec:	36430067          	jr	868(t1) # 8000224c <main>

0000000080002ef0 <either_copyout>:
    80002ef0:	ff010113          	addi	sp,sp,-16
    80002ef4:	00813023          	sd	s0,0(sp)
    80002ef8:	00113423          	sd	ra,8(sp)
    80002efc:	01010413          	addi	s0,sp,16
    80002f00:	02051663          	bnez	a0,80002f2c <either_copyout+0x3c>
    80002f04:	00058513          	mv	a0,a1
    80002f08:	00060593          	mv	a1,a2
    80002f0c:	0006861b          	sext.w	a2,a3
    80002f10:	00002097          	auipc	ra,0x2
    80002f14:	c54080e7          	jalr	-940(ra) # 80004b64 <__memmove>
    80002f18:	00813083          	ld	ra,8(sp)
    80002f1c:	00013403          	ld	s0,0(sp)
    80002f20:	00000513          	li	a0,0
    80002f24:	01010113          	addi	sp,sp,16
    80002f28:	00008067          	ret
    80002f2c:	00003517          	auipc	a0,0x3
    80002f30:	2dc50513          	addi	a0,a0,732 # 80006208 <_ZZ12printIntegermE6digits+0x68>
    80002f34:	00001097          	auipc	ra,0x1
    80002f38:	928080e7          	jalr	-1752(ra) # 8000385c <panic>

0000000080002f3c <either_copyin>:
    80002f3c:	ff010113          	addi	sp,sp,-16
    80002f40:	00813023          	sd	s0,0(sp)
    80002f44:	00113423          	sd	ra,8(sp)
    80002f48:	01010413          	addi	s0,sp,16
    80002f4c:	02059463          	bnez	a1,80002f74 <either_copyin+0x38>
    80002f50:	00060593          	mv	a1,a2
    80002f54:	0006861b          	sext.w	a2,a3
    80002f58:	00002097          	auipc	ra,0x2
    80002f5c:	c0c080e7          	jalr	-1012(ra) # 80004b64 <__memmove>
    80002f60:	00813083          	ld	ra,8(sp)
    80002f64:	00013403          	ld	s0,0(sp)
    80002f68:	00000513          	li	a0,0
    80002f6c:	01010113          	addi	sp,sp,16
    80002f70:	00008067          	ret
    80002f74:	00003517          	auipc	a0,0x3
    80002f78:	2bc50513          	addi	a0,a0,700 # 80006230 <_ZZ12printIntegermE6digits+0x90>
    80002f7c:	00001097          	auipc	ra,0x1
    80002f80:	8e0080e7          	jalr	-1824(ra) # 8000385c <panic>

0000000080002f84 <trapinit>:
    80002f84:	ff010113          	addi	sp,sp,-16
    80002f88:	00813423          	sd	s0,8(sp)
    80002f8c:	01010413          	addi	s0,sp,16
    80002f90:	00813403          	ld	s0,8(sp)
    80002f94:	00003597          	auipc	a1,0x3
    80002f98:	2c458593          	addi	a1,a1,708 # 80006258 <_ZZ12printIntegermE6digits+0xb8>
    80002f9c:	00005517          	auipc	a0,0x5
    80002fa0:	fe450513          	addi	a0,a0,-28 # 80007f80 <tickslock>
    80002fa4:	01010113          	addi	sp,sp,16
    80002fa8:	00001317          	auipc	t1,0x1
    80002fac:	5c030067          	jr	1472(t1) # 80004568 <initlock>

0000000080002fb0 <trapinithart>:
    80002fb0:	ff010113          	addi	sp,sp,-16
    80002fb4:	00813423          	sd	s0,8(sp)
    80002fb8:	01010413          	addi	s0,sp,16
    80002fbc:	00000797          	auipc	a5,0x0
    80002fc0:	2f478793          	addi	a5,a5,756 # 800032b0 <kernelvec>
    80002fc4:	10579073          	csrw	stvec,a5
    80002fc8:	00813403          	ld	s0,8(sp)
    80002fcc:	01010113          	addi	sp,sp,16
    80002fd0:	00008067          	ret

0000000080002fd4 <usertrap>:
    80002fd4:	ff010113          	addi	sp,sp,-16
    80002fd8:	00813423          	sd	s0,8(sp)
    80002fdc:	01010413          	addi	s0,sp,16
    80002fe0:	00813403          	ld	s0,8(sp)
    80002fe4:	01010113          	addi	sp,sp,16
    80002fe8:	00008067          	ret

0000000080002fec <usertrapret>:
    80002fec:	ff010113          	addi	sp,sp,-16
    80002ff0:	00813423          	sd	s0,8(sp)
    80002ff4:	01010413          	addi	s0,sp,16
    80002ff8:	00813403          	ld	s0,8(sp)
    80002ffc:	01010113          	addi	sp,sp,16
    80003000:	00008067          	ret

0000000080003004 <kerneltrap>:
    80003004:	fe010113          	addi	sp,sp,-32
    80003008:	00813823          	sd	s0,16(sp)
    8000300c:	00113c23          	sd	ra,24(sp)
    80003010:	00913423          	sd	s1,8(sp)
    80003014:	02010413          	addi	s0,sp,32
    80003018:	142025f3          	csrr	a1,scause
    8000301c:	100027f3          	csrr	a5,sstatus
    80003020:	0027f793          	andi	a5,a5,2
    80003024:	10079c63          	bnez	a5,8000313c <kerneltrap+0x138>
    80003028:	142027f3          	csrr	a5,scause
    8000302c:	0207ce63          	bltz	a5,80003068 <kerneltrap+0x64>
    80003030:	00003517          	auipc	a0,0x3
    80003034:	27050513          	addi	a0,a0,624 # 800062a0 <_ZZ12printIntegermE6digits+0x100>
    80003038:	00001097          	auipc	ra,0x1
    8000303c:	880080e7          	jalr	-1920(ra) # 800038b8 <__printf>
    80003040:	141025f3          	csrr	a1,sepc
    80003044:	14302673          	csrr	a2,stval
    80003048:	00003517          	auipc	a0,0x3
    8000304c:	26850513          	addi	a0,a0,616 # 800062b0 <_ZZ12printIntegermE6digits+0x110>
    80003050:	00001097          	auipc	ra,0x1
    80003054:	868080e7          	jalr	-1944(ra) # 800038b8 <__printf>
    80003058:	00003517          	auipc	a0,0x3
    8000305c:	27050513          	addi	a0,a0,624 # 800062c8 <_ZZ12printIntegermE6digits+0x128>
    80003060:	00000097          	auipc	ra,0x0
    80003064:	7fc080e7          	jalr	2044(ra) # 8000385c <panic>
    80003068:	0ff7f713          	andi	a4,a5,255
    8000306c:	00900693          	li	a3,9
    80003070:	04d70063          	beq	a4,a3,800030b0 <kerneltrap+0xac>
    80003074:	fff00713          	li	a4,-1
    80003078:	03f71713          	slli	a4,a4,0x3f
    8000307c:	00170713          	addi	a4,a4,1
    80003080:	fae798e3          	bne	a5,a4,80003030 <kerneltrap+0x2c>
    80003084:	00000097          	auipc	ra,0x0
    80003088:	e00080e7          	jalr	-512(ra) # 80002e84 <cpuid>
    8000308c:	06050663          	beqz	a0,800030f8 <kerneltrap+0xf4>
    80003090:	144027f3          	csrr	a5,sip
    80003094:	ffd7f793          	andi	a5,a5,-3
    80003098:	14479073          	csrw	sip,a5
    8000309c:	01813083          	ld	ra,24(sp)
    800030a0:	01013403          	ld	s0,16(sp)
    800030a4:	00813483          	ld	s1,8(sp)
    800030a8:	02010113          	addi	sp,sp,32
    800030ac:	00008067          	ret
    800030b0:	00000097          	auipc	ra,0x0
    800030b4:	3c4080e7          	jalr	964(ra) # 80003474 <plic_claim>
    800030b8:	00a00793          	li	a5,10
    800030bc:	00050493          	mv	s1,a0
    800030c0:	06f50863          	beq	a0,a5,80003130 <kerneltrap+0x12c>
    800030c4:	fc050ce3          	beqz	a0,8000309c <kerneltrap+0x98>
    800030c8:	00050593          	mv	a1,a0
    800030cc:	00003517          	auipc	a0,0x3
    800030d0:	1b450513          	addi	a0,a0,436 # 80006280 <_ZZ12printIntegermE6digits+0xe0>
    800030d4:	00000097          	auipc	ra,0x0
    800030d8:	7e4080e7          	jalr	2020(ra) # 800038b8 <__printf>
    800030dc:	01013403          	ld	s0,16(sp)
    800030e0:	01813083          	ld	ra,24(sp)
    800030e4:	00048513          	mv	a0,s1
    800030e8:	00813483          	ld	s1,8(sp)
    800030ec:	02010113          	addi	sp,sp,32
    800030f0:	00000317          	auipc	t1,0x0
    800030f4:	3bc30067          	jr	956(t1) # 800034ac <plic_complete>
    800030f8:	00005517          	auipc	a0,0x5
    800030fc:	e8850513          	addi	a0,a0,-376 # 80007f80 <tickslock>
    80003100:	00001097          	auipc	ra,0x1
    80003104:	48c080e7          	jalr	1164(ra) # 8000458c <acquire>
    80003108:	00004717          	auipc	a4,0x4
    8000310c:	d6470713          	addi	a4,a4,-668 # 80006e6c <ticks>
    80003110:	00072783          	lw	a5,0(a4)
    80003114:	00005517          	auipc	a0,0x5
    80003118:	e6c50513          	addi	a0,a0,-404 # 80007f80 <tickslock>
    8000311c:	0017879b          	addiw	a5,a5,1
    80003120:	00f72023          	sw	a5,0(a4)
    80003124:	00001097          	auipc	ra,0x1
    80003128:	534080e7          	jalr	1332(ra) # 80004658 <release>
    8000312c:	f65ff06f          	j	80003090 <kerneltrap+0x8c>
    80003130:	00001097          	auipc	ra,0x1
    80003134:	090080e7          	jalr	144(ra) # 800041c0 <uartintr>
    80003138:	fa5ff06f          	j	800030dc <kerneltrap+0xd8>
    8000313c:	00003517          	auipc	a0,0x3
    80003140:	12450513          	addi	a0,a0,292 # 80006260 <_ZZ12printIntegermE6digits+0xc0>
    80003144:	00000097          	auipc	ra,0x0
    80003148:	718080e7          	jalr	1816(ra) # 8000385c <panic>

000000008000314c <clockintr>:
    8000314c:	fe010113          	addi	sp,sp,-32
    80003150:	00813823          	sd	s0,16(sp)
    80003154:	00913423          	sd	s1,8(sp)
    80003158:	00113c23          	sd	ra,24(sp)
    8000315c:	02010413          	addi	s0,sp,32
    80003160:	00005497          	auipc	s1,0x5
    80003164:	e2048493          	addi	s1,s1,-480 # 80007f80 <tickslock>
    80003168:	00048513          	mv	a0,s1
    8000316c:	00001097          	auipc	ra,0x1
    80003170:	420080e7          	jalr	1056(ra) # 8000458c <acquire>
    80003174:	00004717          	auipc	a4,0x4
    80003178:	cf870713          	addi	a4,a4,-776 # 80006e6c <ticks>
    8000317c:	00072783          	lw	a5,0(a4)
    80003180:	01013403          	ld	s0,16(sp)
    80003184:	01813083          	ld	ra,24(sp)
    80003188:	00048513          	mv	a0,s1
    8000318c:	0017879b          	addiw	a5,a5,1
    80003190:	00813483          	ld	s1,8(sp)
    80003194:	00f72023          	sw	a5,0(a4)
    80003198:	02010113          	addi	sp,sp,32
    8000319c:	00001317          	auipc	t1,0x1
    800031a0:	4bc30067          	jr	1212(t1) # 80004658 <release>

00000000800031a4 <devintr>:
    800031a4:	142027f3          	csrr	a5,scause
    800031a8:	00000513          	li	a0,0
    800031ac:	0007c463          	bltz	a5,800031b4 <devintr+0x10>
    800031b0:	00008067          	ret
    800031b4:	fe010113          	addi	sp,sp,-32
    800031b8:	00813823          	sd	s0,16(sp)
    800031bc:	00113c23          	sd	ra,24(sp)
    800031c0:	00913423          	sd	s1,8(sp)
    800031c4:	02010413          	addi	s0,sp,32
    800031c8:	0ff7f713          	andi	a4,a5,255
    800031cc:	00900693          	li	a3,9
    800031d0:	04d70c63          	beq	a4,a3,80003228 <devintr+0x84>
    800031d4:	fff00713          	li	a4,-1
    800031d8:	03f71713          	slli	a4,a4,0x3f
    800031dc:	00170713          	addi	a4,a4,1
    800031e0:	00e78c63          	beq	a5,a4,800031f8 <devintr+0x54>
    800031e4:	01813083          	ld	ra,24(sp)
    800031e8:	01013403          	ld	s0,16(sp)
    800031ec:	00813483          	ld	s1,8(sp)
    800031f0:	02010113          	addi	sp,sp,32
    800031f4:	00008067          	ret
    800031f8:	00000097          	auipc	ra,0x0
    800031fc:	c8c080e7          	jalr	-884(ra) # 80002e84 <cpuid>
    80003200:	06050663          	beqz	a0,8000326c <devintr+0xc8>
    80003204:	144027f3          	csrr	a5,sip
    80003208:	ffd7f793          	andi	a5,a5,-3
    8000320c:	14479073          	csrw	sip,a5
    80003210:	01813083          	ld	ra,24(sp)
    80003214:	01013403          	ld	s0,16(sp)
    80003218:	00813483          	ld	s1,8(sp)
    8000321c:	00200513          	li	a0,2
    80003220:	02010113          	addi	sp,sp,32
    80003224:	00008067          	ret
    80003228:	00000097          	auipc	ra,0x0
    8000322c:	24c080e7          	jalr	588(ra) # 80003474 <plic_claim>
    80003230:	00a00793          	li	a5,10
    80003234:	00050493          	mv	s1,a0
    80003238:	06f50663          	beq	a0,a5,800032a4 <devintr+0x100>
    8000323c:	00100513          	li	a0,1
    80003240:	fa0482e3          	beqz	s1,800031e4 <devintr+0x40>
    80003244:	00048593          	mv	a1,s1
    80003248:	00003517          	auipc	a0,0x3
    8000324c:	03850513          	addi	a0,a0,56 # 80006280 <_ZZ12printIntegermE6digits+0xe0>
    80003250:	00000097          	auipc	ra,0x0
    80003254:	668080e7          	jalr	1640(ra) # 800038b8 <__printf>
    80003258:	00048513          	mv	a0,s1
    8000325c:	00000097          	auipc	ra,0x0
    80003260:	250080e7          	jalr	592(ra) # 800034ac <plic_complete>
    80003264:	00100513          	li	a0,1
    80003268:	f7dff06f          	j	800031e4 <devintr+0x40>
    8000326c:	00005517          	auipc	a0,0x5
    80003270:	d1450513          	addi	a0,a0,-748 # 80007f80 <tickslock>
    80003274:	00001097          	auipc	ra,0x1
    80003278:	318080e7          	jalr	792(ra) # 8000458c <acquire>
    8000327c:	00004717          	auipc	a4,0x4
    80003280:	bf070713          	addi	a4,a4,-1040 # 80006e6c <ticks>
    80003284:	00072783          	lw	a5,0(a4)
    80003288:	00005517          	auipc	a0,0x5
    8000328c:	cf850513          	addi	a0,a0,-776 # 80007f80 <tickslock>
    80003290:	0017879b          	addiw	a5,a5,1
    80003294:	00f72023          	sw	a5,0(a4)
    80003298:	00001097          	auipc	ra,0x1
    8000329c:	3c0080e7          	jalr	960(ra) # 80004658 <release>
    800032a0:	f65ff06f          	j	80003204 <devintr+0x60>
    800032a4:	00001097          	auipc	ra,0x1
    800032a8:	f1c080e7          	jalr	-228(ra) # 800041c0 <uartintr>
    800032ac:	fadff06f          	j	80003258 <devintr+0xb4>

00000000800032b0 <kernelvec>:
    800032b0:	f0010113          	addi	sp,sp,-256
    800032b4:	00113023          	sd	ra,0(sp)
    800032b8:	00213423          	sd	sp,8(sp)
    800032bc:	00313823          	sd	gp,16(sp)
    800032c0:	00413c23          	sd	tp,24(sp)
    800032c4:	02513023          	sd	t0,32(sp)
    800032c8:	02613423          	sd	t1,40(sp)
    800032cc:	02713823          	sd	t2,48(sp)
    800032d0:	02813c23          	sd	s0,56(sp)
    800032d4:	04913023          	sd	s1,64(sp)
    800032d8:	04a13423          	sd	a0,72(sp)
    800032dc:	04b13823          	sd	a1,80(sp)
    800032e0:	04c13c23          	sd	a2,88(sp)
    800032e4:	06d13023          	sd	a3,96(sp)
    800032e8:	06e13423          	sd	a4,104(sp)
    800032ec:	06f13823          	sd	a5,112(sp)
    800032f0:	07013c23          	sd	a6,120(sp)
    800032f4:	09113023          	sd	a7,128(sp)
    800032f8:	09213423          	sd	s2,136(sp)
    800032fc:	09313823          	sd	s3,144(sp)
    80003300:	09413c23          	sd	s4,152(sp)
    80003304:	0b513023          	sd	s5,160(sp)
    80003308:	0b613423          	sd	s6,168(sp)
    8000330c:	0b713823          	sd	s7,176(sp)
    80003310:	0b813c23          	sd	s8,184(sp)
    80003314:	0d913023          	sd	s9,192(sp)
    80003318:	0da13423          	sd	s10,200(sp)
    8000331c:	0db13823          	sd	s11,208(sp)
    80003320:	0dc13c23          	sd	t3,216(sp)
    80003324:	0fd13023          	sd	t4,224(sp)
    80003328:	0fe13423          	sd	t5,232(sp)
    8000332c:	0ff13823          	sd	t6,240(sp)
    80003330:	cd5ff0ef          	jal	ra,80003004 <kerneltrap>
    80003334:	00013083          	ld	ra,0(sp)
    80003338:	00813103          	ld	sp,8(sp)
    8000333c:	01013183          	ld	gp,16(sp)
    80003340:	02013283          	ld	t0,32(sp)
    80003344:	02813303          	ld	t1,40(sp)
    80003348:	03013383          	ld	t2,48(sp)
    8000334c:	03813403          	ld	s0,56(sp)
    80003350:	04013483          	ld	s1,64(sp)
    80003354:	04813503          	ld	a0,72(sp)
    80003358:	05013583          	ld	a1,80(sp)
    8000335c:	05813603          	ld	a2,88(sp)
    80003360:	06013683          	ld	a3,96(sp)
    80003364:	06813703          	ld	a4,104(sp)
    80003368:	07013783          	ld	a5,112(sp)
    8000336c:	07813803          	ld	a6,120(sp)
    80003370:	08013883          	ld	a7,128(sp)
    80003374:	08813903          	ld	s2,136(sp)
    80003378:	09013983          	ld	s3,144(sp)
    8000337c:	09813a03          	ld	s4,152(sp)
    80003380:	0a013a83          	ld	s5,160(sp)
    80003384:	0a813b03          	ld	s6,168(sp)
    80003388:	0b013b83          	ld	s7,176(sp)
    8000338c:	0b813c03          	ld	s8,184(sp)
    80003390:	0c013c83          	ld	s9,192(sp)
    80003394:	0c813d03          	ld	s10,200(sp)
    80003398:	0d013d83          	ld	s11,208(sp)
    8000339c:	0d813e03          	ld	t3,216(sp)
    800033a0:	0e013e83          	ld	t4,224(sp)
    800033a4:	0e813f03          	ld	t5,232(sp)
    800033a8:	0f013f83          	ld	t6,240(sp)
    800033ac:	10010113          	addi	sp,sp,256
    800033b0:	10200073          	sret
    800033b4:	00000013          	nop
    800033b8:	00000013          	nop
    800033bc:	00000013          	nop

00000000800033c0 <timervec>:
    800033c0:	34051573          	csrrw	a0,mscratch,a0
    800033c4:	00b53023          	sd	a1,0(a0)
    800033c8:	00c53423          	sd	a2,8(a0)
    800033cc:	00d53823          	sd	a3,16(a0)
    800033d0:	01853583          	ld	a1,24(a0)
    800033d4:	02053603          	ld	a2,32(a0)
    800033d8:	0005b683          	ld	a3,0(a1)
    800033dc:	00c686b3          	add	a3,a3,a2
    800033e0:	00d5b023          	sd	a3,0(a1)
    800033e4:	00200593          	li	a1,2
    800033e8:	14459073          	csrw	sip,a1
    800033ec:	01053683          	ld	a3,16(a0)
    800033f0:	00853603          	ld	a2,8(a0)
    800033f4:	00053583          	ld	a1,0(a0)
    800033f8:	34051573          	csrrw	a0,mscratch,a0
    800033fc:	30200073          	mret

0000000080003400 <plicinit>:
    80003400:	ff010113          	addi	sp,sp,-16
    80003404:	00813423          	sd	s0,8(sp)
    80003408:	01010413          	addi	s0,sp,16
    8000340c:	00813403          	ld	s0,8(sp)
    80003410:	0c0007b7          	lui	a5,0xc000
    80003414:	00100713          	li	a4,1
    80003418:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000341c:	00e7a223          	sw	a4,4(a5)
    80003420:	01010113          	addi	sp,sp,16
    80003424:	00008067          	ret

0000000080003428 <plicinithart>:
    80003428:	ff010113          	addi	sp,sp,-16
    8000342c:	00813023          	sd	s0,0(sp)
    80003430:	00113423          	sd	ra,8(sp)
    80003434:	01010413          	addi	s0,sp,16
    80003438:	00000097          	auipc	ra,0x0
    8000343c:	a4c080e7          	jalr	-1460(ra) # 80002e84 <cpuid>
    80003440:	0085171b          	slliw	a4,a0,0x8
    80003444:	0c0027b7          	lui	a5,0xc002
    80003448:	00e787b3          	add	a5,a5,a4
    8000344c:	40200713          	li	a4,1026
    80003450:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003454:	00813083          	ld	ra,8(sp)
    80003458:	00013403          	ld	s0,0(sp)
    8000345c:	00d5151b          	slliw	a0,a0,0xd
    80003460:	0c2017b7          	lui	a5,0xc201
    80003464:	00a78533          	add	a0,a5,a0
    80003468:	00052023          	sw	zero,0(a0)
    8000346c:	01010113          	addi	sp,sp,16
    80003470:	00008067          	ret

0000000080003474 <plic_claim>:
    80003474:	ff010113          	addi	sp,sp,-16
    80003478:	00813023          	sd	s0,0(sp)
    8000347c:	00113423          	sd	ra,8(sp)
    80003480:	01010413          	addi	s0,sp,16
    80003484:	00000097          	auipc	ra,0x0
    80003488:	a00080e7          	jalr	-1536(ra) # 80002e84 <cpuid>
    8000348c:	00813083          	ld	ra,8(sp)
    80003490:	00013403          	ld	s0,0(sp)
    80003494:	00d5151b          	slliw	a0,a0,0xd
    80003498:	0c2017b7          	lui	a5,0xc201
    8000349c:	00a78533          	add	a0,a5,a0
    800034a0:	00452503          	lw	a0,4(a0)
    800034a4:	01010113          	addi	sp,sp,16
    800034a8:	00008067          	ret

00000000800034ac <plic_complete>:
    800034ac:	fe010113          	addi	sp,sp,-32
    800034b0:	00813823          	sd	s0,16(sp)
    800034b4:	00913423          	sd	s1,8(sp)
    800034b8:	00113c23          	sd	ra,24(sp)
    800034bc:	02010413          	addi	s0,sp,32
    800034c0:	00050493          	mv	s1,a0
    800034c4:	00000097          	auipc	ra,0x0
    800034c8:	9c0080e7          	jalr	-1600(ra) # 80002e84 <cpuid>
    800034cc:	01813083          	ld	ra,24(sp)
    800034d0:	01013403          	ld	s0,16(sp)
    800034d4:	00d5179b          	slliw	a5,a0,0xd
    800034d8:	0c201737          	lui	a4,0xc201
    800034dc:	00f707b3          	add	a5,a4,a5
    800034e0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800034e4:	00813483          	ld	s1,8(sp)
    800034e8:	02010113          	addi	sp,sp,32
    800034ec:	00008067          	ret

00000000800034f0 <consolewrite>:
    800034f0:	fb010113          	addi	sp,sp,-80
    800034f4:	04813023          	sd	s0,64(sp)
    800034f8:	04113423          	sd	ra,72(sp)
    800034fc:	02913c23          	sd	s1,56(sp)
    80003500:	03213823          	sd	s2,48(sp)
    80003504:	03313423          	sd	s3,40(sp)
    80003508:	03413023          	sd	s4,32(sp)
    8000350c:	01513c23          	sd	s5,24(sp)
    80003510:	05010413          	addi	s0,sp,80
    80003514:	06c05c63          	blez	a2,8000358c <consolewrite+0x9c>
    80003518:	00060993          	mv	s3,a2
    8000351c:	00050a13          	mv	s4,a0
    80003520:	00058493          	mv	s1,a1
    80003524:	00000913          	li	s2,0
    80003528:	fff00a93          	li	s5,-1
    8000352c:	01c0006f          	j	80003548 <consolewrite+0x58>
    80003530:	fbf44503          	lbu	a0,-65(s0)
    80003534:	0019091b          	addiw	s2,s2,1
    80003538:	00148493          	addi	s1,s1,1
    8000353c:	00001097          	auipc	ra,0x1
    80003540:	a9c080e7          	jalr	-1380(ra) # 80003fd8 <uartputc>
    80003544:	03298063          	beq	s3,s2,80003564 <consolewrite+0x74>
    80003548:	00048613          	mv	a2,s1
    8000354c:	00100693          	li	a3,1
    80003550:	000a0593          	mv	a1,s4
    80003554:	fbf40513          	addi	a0,s0,-65
    80003558:	00000097          	auipc	ra,0x0
    8000355c:	9e4080e7          	jalr	-1564(ra) # 80002f3c <either_copyin>
    80003560:	fd5518e3          	bne	a0,s5,80003530 <consolewrite+0x40>
    80003564:	04813083          	ld	ra,72(sp)
    80003568:	04013403          	ld	s0,64(sp)
    8000356c:	03813483          	ld	s1,56(sp)
    80003570:	02813983          	ld	s3,40(sp)
    80003574:	02013a03          	ld	s4,32(sp)
    80003578:	01813a83          	ld	s5,24(sp)
    8000357c:	00090513          	mv	a0,s2
    80003580:	03013903          	ld	s2,48(sp)
    80003584:	05010113          	addi	sp,sp,80
    80003588:	00008067          	ret
    8000358c:	00000913          	li	s2,0
    80003590:	fd5ff06f          	j	80003564 <consolewrite+0x74>

0000000080003594 <consoleread>:
    80003594:	f9010113          	addi	sp,sp,-112
    80003598:	06813023          	sd	s0,96(sp)
    8000359c:	04913c23          	sd	s1,88(sp)
    800035a0:	05213823          	sd	s2,80(sp)
    800035a4:	05313423          	sd	s3,72(sp)
    800035a8:	05413023          	sd	s4,64(sp)
    800035ac:	03513c23          	sd	s5,56(sp)
    800035b0:	03613823          	sd	s6,48(sp)
    800035b4:	03713423          	sd	s7,40(sp)
    800035b8:	03813023          	sd	s8,32(sp)
    800035bc:	06113423          	sd	ra,104(sp)
    800035c0:	01913c23          	sd	s9,24(sp)
    800035c4:	07010413          	addi	s0,sp,112
    800035c8:	00060b93          	mv	s7,a2
    800035cc:	00050913          	mv	s2,a0
    800035d0:	00058c13          	mv	s8,a1
    800035d4:	00060b1b          	sext.w	s6,a2
    800035d8:	00005497          	auipc	s1,0x5
    800035dc:	9d048493          	addi	s1,s1,-1584 # 80007fa8 <cons>
    800035e0:	00400993          	li	s3,4
    800035e4:	fff00a13          	li	s4,-1
    800035e8:	00a00a93          	li	s5,10
    800035ec:	05705e63          	blez	s7,80003648 <consoleread+0xb4>
    800035f0:	09c4a703          	lw	a4,156(s1)
    800035f4:	0984a783          	lw	a5,152(s1)
    800035f8:	0007071b          	sext.w	a4,a4
    800035fc:	08e78463          	beq	a5,a4,80003684 <consoleread+0xf0>
    80003600:	07f7f713          	andi	a4,a5,127
    80003604:	00e48733          	add	a4,s1,a4
    80003608:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000360c:	0017869b          	addiw	a3,a5,1
    80003610:	08d4ac23          	sw	a3,152(s1)
    80003614:	00070c9b          	sext.w	s9,a4
    80003618:	0b370663          	beq	a4,s3,800036c4 <consoleread+0x130>
    8000361c:	00100693          	li	a3,1
    80003620:	f9f40613          	addi	a2,s0,-97
    80003624:	000c0593          	mv	a1,s8
    80003628:	00090513          	mv	a0,s2
    8000362c:	f8e40fa3          	sb	a4,-97(s0)
    80003630:	00000097          	auipc	ra,0x0
    80003634:	8c0080e7          	jalr	-1856(ra) # 80002ef0 <either_copyout>
    80003638:	01450863          	beq	a0,s4,80003648 <consoleread+0xb4>
    8000363c:	001c0c13          	addi	s8,s8,1
    80003640:	fffb8b9b          	addiw	s7,s7,-1
    80003644:	fb5c94e3          	bne	s9,s5,800035ec <consoleread+0x58>
    80003648:	000b851b          	sext.w	a0,s7
    8000364c:	06813083          	ld	ra,104(sp)
    80003650:	06013403          	ld	s0,96(sp)
    80003654:	05813483          	ld	s1,88(sp)
    80003658:	05013903          	ld	s2,80(sp)
    8000365c:	04813983          	ld	s3,72(sp)
    80003660:	04013a03          	ld	s4,64(sp)
    80003664:	03813a83          	ld	s5,56(sp)
    80003668:	02813b83          	ld	s7,40(sp)
    8000366c:	02013c03          	ld	s8,32(sp)
    80003670:	01813c83          	ld	s9,24(sp)
    80003674:	40ab053b          	subw	a0,s6,a0
    80003678:	03013b03          	ld	s6,48(sp)
    8000367c:	07010113          	addi	sp,sp,112
    80003680:	00008067          	ret
    80003684:	00001097          	auipc	ra,0x1
    80003688:	1d8080e7          	jalr	472(ra) # 8000485c <push_on>
    8000368c:	0984a703          	lw	a4,152(s1)
    80003690:	09c4a783          	lw	a5,156(s1)
    80003694:	0007879b          	sext.w	a5,a5
    80003698:	fef70ce3          	beq	a4,a5,80003690 <consoleread+0xfc>
    8000369c:	00001097          	auipc	ra,0x1
    800036a0:	234080e7          	jalr	564(ra) # 800048d0 <pop_on>
    800036a4:	0984a783          	lw	a5,152(s1)
    800036a8:	07f7f713          	andi	a4,a5,127
    800036ac:	00e48733          	add	a4,s1,a4
    800036b0:	01874703          	lbu	a4,24(a4)
    800036b4:	0017869b          	addiw	a3,a5,1
    800036b8:	08d4ac23          	sw	a3,152(s1)
    800036bc:	00070c9b          	sext.w	s9,a4
    800036c0:	f5371ee3          	bne	a4,s3,8000361c <consoleread+0x88>
    800036c4:	000b851b          	sext.w	a0,s7
    800036c8:	f96bf2e3          	bgeu	s7,s6,8000364c <consoleread+0xb8>
    800036cc:	08f4ac23          	sw	a5,152(s1)
    800036d0:	f7dff06f          	j	8000364c <consoleread+0xb8>

00000000800036d4 <consputc>:
    800036d4:	10000793          	li	a5,256
    800036d8:	00f50663          	beq	a0,a5,800036e4 <consputc+0x10>
    800036dc:	00001317          	auipc	t1,0x1
    800036e0:	9f430067          	jr	-1548(t1) # 800040d0 <uartputc_sync>
    800036e4:	ff010113          	addi	sp,sp,-16
    800036e8:	00113423          	sd	ra,8(sp)
    800036ec:	00813023          	sd	s0,0(sp)
    800036f0:	01010413          	addi	s0,sp,16
    800036f4:	00800513          	li	a0,8
    800036f8:	00001097          	auipc	ra,0x1
    800036fc:	9d8080e7          	jalr	-1576(ra) # 800040d0 <uartputc_sync>
    80003700:	02000513          	li	a0,32
    80003704:	00001097          	auipc	ra,0x1
    80003708:	9cc080e7          	jalr	-1588(ra) # 800040d0 <uartputc_sync>
    8000370c:	00013403          	ld	s0,0(sp)
    80003710:	00813083          	ld	ra,8(sp)
    80003714:	00800513          	li	a0,8
    80003718:	01010113          	addi	sp,sp,16
    8000371c:	00001317          	auipc	t1,0x1
    80003720:	9b430067          	jr	-1612(t1) # 800040d0 <uartputc_sync>

0000000080003724 <consoleintr>:
    80003724:	fe010113          	addi	sp,sp,-32
    80003728:	00813823          	sd	s0,16(sp)
    8000372c:	00913423          	sd	s1,8(sp)
    80003730:	01213023          	sd	s2,0(sp)
    80003734:	00113c23          	sd	ra,24(sp)
    80003738:	02010413          	addi	s0,sp,32
    8000373c:	00005917          	auipc	s2,0x5
    80003740:	86c90913          	addi	s2,s2,-1940 # 80007fa8 <cons>
    80003744:	00050493          	mv	s1,a0
    80003748:	00090513          	mv	a0,s2
    8000374c:	00001097          	auipc	ra,0x1
    80003750:	e40080e7          	jalr	-448(ra) # 8000458c <acquire>
    80003754:	02048c63          	beqz	s1,8000378c <consoleintr+0x68>
    80003758:	0a092783          	lw	a5,160(s2)
    8000375c:	09892703          	lw	a4,152(s2)
    80003760:	07f00693          	li	a3,127
    80003764:	40e7873b          	subw	a4,a5,a4
    80003768:	02e6e263          	bltu	a3,a4,8000378c <consoleintr+0x68>
    8000376c:	00d00713          	li	a4,13
    80003770:	04e48063          	beq	s1,a4,800037b0 <consoleintr+0x8c>
    80003774:	07f7f713          	andi	a4,a5,127
    80003778:	00e90733          	add	a4,s2,a4
    8000377c:	0017879b          	addiw	a5,a5,1
    80003780:	0af92023          	sw	a5,160(s2)
    80003784:	00970c23          	sb	s1,24(a4)
    80003788:	08f92e23          	sw	a5,156(s2)
    8000378c:	01013403          	ld	s0,16(sp)
    80003790:	01813083          	ld	ra,24(sp)
    80003794:	00813483          	ld	s1,8(sp)
    80003798:	00013903          	ld	s2,0(sp)
    8000379c:	00005517          	auipc	a0,0x5
    800037a0:	80c50513          	addi	a0,a0,-2036 # 80007fa8 <cons>
    800037a4:	02010113          	addi	sp,sp,32
    800037a8:	00001317          	auipc	t1,0x1
    800037ac:	eb030067          	jr	-336(t1) # 80004658 <release>
    800037b0:	00a00493          	li	s1,10
    800037b4:	fc1ff06f          	j	80003774 <consoleintr+0x50>

00000000800037b8 <consoleinit>:
    800037b8:	fe010113          	addi	sp,sp,-32
    800037bc:	00113c23          	sd	ra,24(sp)
    800037c0:	00813823          	sd	s0,16(sp)
    800037c4:	00913423          	sd	s1,8(sp)
    800037c8:	02010413          	addi	s0,sp,32
    800037cc:	00004497          	auipc	s1,0x4
    800037d0:	7dc48493          	addi	s1,s1,2012 # 80007fa8 <cons>
    800037d4:	00048513          	mv	a0,s1
    800037d8:	00003597          	auipc	a1,0x3
    800037dc:	b0058593          	addi	a1,a1,-1280 # 800062d8 <_ZZ12printIntegermE6digits+0x138>
    800037e0:	00001097          	auipc	ra,0x1
    800037e4:	d88080e7          	jalr	-632(ra) # 80004568 <initlock>
    800037e8:	00000097          	auipc	ra,0x0
    800037ec:	7ac080e7          	jalr	1964(ra) # 80003f94 <uartinit>
    800037f0:	01813083          	ld	ra,24(sp)
    800037f4:	01013403          	ld	s0,16(sp)
    800037f8:	00000797          	auipc	a5,0x0
    800037fc:	d9c78793          	addi	a5,a5,-612 # 80003594 <consoleread>
    80003800:	0af4bc23          	sd	a5,184(s1)
    80003804:	00000797          	auipc	a5,0x0
    80003808:	cec78793          	addi	a5,a5,-788 # 800034f0 <consolewrite>
    8000380c:	0cf4b023          	sd	a5,192(s1)
    80003810:	00813483          	ld	s1,8(sp)
    80003814:	02010113          	addi	sp,sp,32
    80003818:	00008067          	ret

000000008000381c <console_read>:
    8000381c:	ff010113          	addi	sp,sp,-16
    80003820:	00813423          	sd	s0,8(sp)
    80003824:	01010413          	addi	s0,sp,16
    80003828:	00813403          	ld	s0,8(sp)
    8000382c:	00005317          	auipc	t1,0x5
    80003830:	83433303          	ld	t1,-1996(t1) # 80008060 <devsw+0x10>
    80003834:	01010113          	addi	sp,sp,16
    80003838:	00030067          	jr	t1

000000008000383c <console_write>:
    8000383c:	ff010113          	addi	sp,sp,-16
    80003840:	00813423          	sd	s0,8(sp)
    80003844:	01010413          	addi	s0,sp,16
    80003848:	00813403          	ld	s0,8(sp)
    8000384c:	00005317          	auipc	t1,0x5
    80003850:	81c33303          	ld	t1,-2020(t1) # 80008068 <devsw+0x18>
    80003854:	01010113          	addi	sp,sp,16
    80003858:	00030067          	jr	t1

000000008000385c <panic>:
    8000385c:	fe010113          	addi	sp,sp,-32
    80003860:	00113c23          	sd	ra,24(sp)
    80003864:	00813823          	sd	s0,16(sp)
    80003868:	00913423          	sd	s1,8(sp)
    8000386c:	02010413          	addi	s0,sp,32
    80003870:	00050493          	mv	s1,a0
    80003874:	00003517          	auipc	a0,0x3
    80003878:	a6c50513          	addi	a0,a0,-1428 # 800062e0 <_ZZ12printIntegermE6digits+0x140>
    8000387c:	00005797          	auipc	a5,0x5
    80003880:	8807a623          	sw	zero,-1908(a5) # 80008108 <pr+0x18>
    80003884:	00000097          	auipc	ra,0x0
    80003888:	034080e7          	jalr	52(ra) # 800038b8 <__printf>
    8000388c:	00048513          	mv	a0,s1
    80003890:	00000097          	auipc	ra,0x0
    80003894:	028080e7          	jalr	40(ra) # 800038b8 <__printf>
    80003898:	00003517          	auipc	a0,0x3
    8000389c:	8c850513          	addi	a0,a0,-1848 # 80006160 <CONSOLE_STATUS+0x150>
    800038a0:	00000097          	auipc	ra,0x0
    800038a4:	018080e7          	jalr	24(ra) # 800038b8 <__printf>
    800038a8:	00100793          	li	a5,1
    800038ac:	00003717          	auipc	a4,0x3
    800038b0:	5cf72223          	sw	a5,1476(a4) # 80006e70 <panicked>
    800038b4:	0000006f          	j	800038b4 <panic+0x58>

00000000800038b8 <__printf>:
    800038b8:	f3010113          	addi	sp,sp,-208
    800038bc:	08813023          	sd	s0,128(sp)
    800038c0:	07313423          	sd	s3,104(sp)
    800038c4:	09010413          	addi	s0,sp,144
    800038c8:	05813023          	sd	s8,64(sp)
    800038cc:	08113423          	sd	ra,136(sp)
    800038d0:	06913c23          	sd	s1,120(sp)
    800038d4:	07213823          	sd	s2,112(sp)
    800038d8:	07413023          	sd	s4,96(sp)
    800038dc:	05513c23          	sd	s5,88(sp)
    800038e0:	05613823          	sd	s6,80(sp)
    800038e4:	05713423          	sd	s7,72(sp)
    800038e8:	03913c23          	sd	s9,56(sp)
    800038ec:	03a13823          	sd	s10,48(sp)
    800038f0:	03b13423          	sd	s11,40(sp)
    800038f4:	00004317          	auipc	t1,0x4
    800038f8:	7fc30313          	addi	t1,t1,2044 # 800080f0 <pr>
    800038fc:	01832c03          	lw	s8,24(t1)
    80003900:	00b43423          	sd	a1,8(s0)
    80003904:	00c43823          	sd	a2,16(s0)
    80003908:	00d43c23          	sd	a3,24(s0)
    8000390c:	02e43023          	sd	a4,32(s0)
    80003910:	02f43423          	sd	a5,40(s0)
    80003914:	03043823          	sd	a6,48(s0)
    80003918:	03143c23          	sd	a7,56(s0)
    8000391c:	00050993          	mv	s3,a0
    80003920:	4a0c1663          	bnez	s8,80003dcc <__printf+0x514>
    80003924:	60098c63          	beqz	s3,80003f3c <__printf+0x684>
    80003928:	0009c503          	lbu	a0,0(s3)
    8000392c:	00840793          	addi	a5,s0,8
    80003930:	f6f43c23          	sd	a5,-136(s0)
    80003934:	00000493          	li	s1,0
    80003938:	22050063          	beqz	a0,80003b58 <__printf+0x2a0>
    8000393c:	00002a37          	lui	s4,0x2
    80003940:	00018ab7          	lui	s5,0x18
    80003944:	000f4b37          	lui	s6,0xf4
    80003948:	00989bb7          	lui	s7,0x989
    8000394c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003950:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003954:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003958:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000395c:	00148c9b          	addiw	s9,s1,1
    80003960:	02500793          	li	a5,37
    80003964:	01998933          	add	s2,s3,s9
    80003968:	38f51263          	bne	a0,a5,80003cec <__printf+0x434>
    8000396c:	00094783          	lbu	a5,0(s2)
    80003970:	00078c9b          	sext.w	s9,a5
    80003974:	1e078263          	beqz	a5,80003b58 <__printf+0x2a0>
    80003978:	0024849b          	addiw	s1,s1,2
    8000397c:	07000713          	li	a4,112
    80003980:	00998933          	add	s2,s3,s1
    80003984:	38e78a63          	beq	a5,a4,80003d18 <__printf+0x460>
    80003988:	20f76863          	bltu	a4,a5,80003b98 <__printf+0x2e0>
    8000398c:	42a78863          	beq	a5,a0,80003dbc <__printf+0x504>
    80003990:	06400713          	li	a4,100
    80003994:	40e79663          	bne	a5,a4,80003da0 <__printf+0x4e8>
    80003998:	f7843783          	ld	a5,-136(s0)
    8000399c:	0007a603          	lw	a2,0(a5)
    800039a0:	00878793          	addi	a5,a5,8
    800039a4:	f6f43c23          	sd	a5,-136(s0)
    800039a8:	42064a63          	bltz	a2,80003ddc <__printf+0x524>
    800039ac:	00a00713          	li	a4,10
    800039b0:	02e677bb          	remuw	a5,a2,a4
    800039b4:	00003d97          	auipc	s11,0x3
    800039b8:	954d8d93          	addi	s11,s11,-1708 # 80006308 <digits>
    800039bc:	00900593          	li	a1,9
    800039c0:	0006051b          	sext.w	a0,a2
    800039c4:	00000c93          	li	s9,0
    800039c8:	02079793          	slli	a5,a5,0x20
    800039cc:	0207d793          	srli	a5,a5,0x20
    800039d0:	00fd87b3          	add	a5,s11,a5
    800039d4:	0007c783          	lbu	a5,0(a5)
    800039d8:	02e656bb          	divuw	a3,a2,a4
    800039dc:	f8f40023          	sb	a5,-128(s0)
    800039e0:	14c5d863          	bge	a1,a2,80003b30 <__printf+0x278>
    800039e4:	06300593          	li	a1,99
    800039e8:	00100c93          	li	s9,1
    800039ec:	02e6f7bb          	remuw	a5,a3,a4
    800039f0:	02079793          	slli	a5,a5,0x20
    800039f4:	0207d793          	srli	a5,a5,0x20
    800039f8:	00fd87b3          	add	a5,s11,a5
    800039fc:	0007c783          	lbu	a5,0(a5)
    80003a00:	02e6d73b          	divuw	a4,a3,a4
    80003a04:	f8f400a3          	sb	a5,-127(s0)
    80003a08:	12a5f463          	bgeu	a1,a0,80003b30 <__printf+0x278>
    80003a0c:	00a00693          	li	a3,10
    80003a10:	00900593          	li	a1,9
    80003a14:	02d777bb          	remuw	a5,a4,a3
    80003a18:	02079793          	slli	a5,a5,0x20
    80003a1c:	0207d793          	srli	a5,a5,0x20
    80003a20:	00fd87b3          	add	a5,s11,a5
    80003a24:	0007c503          	lbu	a0,0(a5)
    80003a28:	02d757bb          	divuw	a5,a4,a3
    80003a2c:	f8a40123          	sb	a0,-126(s0)
    80003a30:	48e5f263          	bgeu	a1,a4,80003eb4 <__printf+0x5fc>
    80003a34:	06300513          	li	a0,99
    80003a38:	02d7f5bb          	remuw	a1,a5,a3
    80003a3c:	02059593          	slli	a1,a1,0x20
    80003a40:	0205d593          	srli	a1,a1,0x20
    80003a44:	00bd85b3          	add	a1,s11,a1
    80003a48:	0005c583          	lbu	a1,0(a1)
    80003a4c:	02d7d7bb          	divuw	a5,a5,a3
    80003a50:	f8b401a3          	sb	a1,-125(s0)
    80003a54:	48e57263          	bgeu	a0,a4,80003ed8 <__printf+0x620>
    80003a58:	3e700513          	li	a0,999
    80003a5c:	02d7f5bb          	remuw	a1,a5,a3
    80003a60:	02059593          	slli	a1,a1,0x20
    80003a64:	0205d593          	srli	a1,a1,0x20
    80003a68:	00bd85b3          	add	a1,s11,a1
    80003a6c:	0005c583          	lbu	a1,0(a1)
    80003a70:	02d7d7bb          	divuw	a5,a5,a3
    80003a74:	f8b40223          	sb	a1,-124(s0)
    80003a78:	46e57663          	bgeu	a0,a4,80003ee4 <__printf+0x62c>
    80003a7c:	02d7f5bb          	remuw	a1,a5,a3
    80003a80:	02059593          	slli	a1,a1,0x20
    80003a84:	0205d593          	srli	a1,a1,0x20
    80003a88:	00bd85b3          	add	a1,s11,a1
    80003a8c:	0005c583          	lbu	a1,0(a1)
    80003a90:	02d7d7bb          	divuw	a5,a5,a3
    80003a94:	f8b402a3          	sb	a1,-123(s0)
    80003a98:	46ea7863          	bgeu	s4,a4,80003f08 <__printf+0x650>
    80003a9c:	02d7f5bb          	remuw	a1,a5,a3
    80003aa0:	02059593          	slli	a1,a1,0x20
    80003aa4:	0205d593          	srli	a1,a1,0x20
    80003aa8:	00bd85b3          	add	a1,s11,a1
    80003aac:	0005c583          	lbu	a1,0(a1)
    80003ab0:	02d7d7bb          	divuw	a5,a5,a3
    80003ab4:	f8b40323          	sb	a1,-122(s0)
    80003ab8:	3eeaf863          	bgeu	s5,a4,80003ea8 <__printf+0x5f0>
    80003abc:	02d7f5bb          	remuw	a1,a5,a3
    80003ac0:	02059593          	slli	a1,a1,0x20
    80003ac4:	0205d593          	srli	a1,a1,0x20
    80003ac8:	00bd85b3          	add	a1,s11,a1
    80003acc:	0005c583          	lbu	a1,0(a1)
    80003ad0:	02d7d7bb          	divuw	a5,a5,a3
    80003ad4:	f8b403a3          	sb	a1,-121(s0)
    80003ad8:	42eb7e63          	bgeu	s6,a4,80003f14 <__printf+0x65c>
    80003adc:	02d7f5bb          	remuw	a1,a5,a3
    80003ae0:	02059593          	slli	a1,a1,0x20
    80003ae4:	0205d593          	srli	a1,a1,0x20
    80003ae8:	00bd85b3          	add	a1,s11,a1
    80003aec:	0005c583          	lbu	a1,0(a1)
    80003af0:	02d7d7bb          	divuw	a5,a5,a3
    80003af4:	f8b40423          	sb	a1,-120(s0)
    80003af8:	42ebfc63          	bgeu	s7,a4,80003f30 <__printf+0x678>
    80003afc:	02079793          	slli	a5,a5,0x20
    80003b00:	0207d793          	srli	a5,a5,0x20
    80003b04:	00fd8db3          	add	s11,s11,a5
    80003b08:	000dc703          	lbu	a4,0(s11)
    80003b0c:	00a00793          	li	a5,10
    80003b10:	00900c93          	li	s9,9
    80003b14:	f8e404a3          	sb	a4,-119(s0)
    80003b18:	00065c63          	bgez	a2,80003b30 <__printf+0x278>
    80003b1c:	f9040713          	addi	a4,s0,-112
    80003b20:	00f70733          	add	a4,a4,a5
    80003b24:	02d00693          	li	a3,45
    80003b28:	fed70823          	sb	a3,-16(a4)
    80003b2c:	00078c93          	mv	s9,a5
    80003b30:	f8040793          	addi	a5,s0,-128
    80003b34:	01978cb3          	add	s9,a5,s9
    80003b38:	f7f40d13          	addi	s10,s0,-129
    80003b3c:	000cc503          	lbu	a0,0(s9)
    80003b40:	fffc8c93          	addi	s9,s9,-1
    80003b44:	00000097          	auipc	ra,0x0
    80003b48:	b90080e7          	jalr	-1136(ra) # 800036d4 <consputc>
    80003b4c:	ffac98e3          	bne	s9,s10,80003b3c <__printf+0x284>
    80003b50:	00094503          	lbu	a0,0(s2)
    80003b54:	e00514e3          	bnez	a0,8000395c <__printf+0xa4>
    80003b58:	1a0c1663          	bnez	s8,80003d04 <__printf+0x44c>
    80003b5c:	08813083          	ld	ra,136(sp)
    80003b60:	08013403          	ld	s0,128(sp)
    80003b64:	07813483          	ld	s1,120(sp)
    80003b68:	07013903          	ld	s2,112(sp)
    80003b6c:	06813983          	ld	s3,104(sp)
    80003b70:	06013a03          	ld	s4,96(sp)
    80003b74:	05813a83          	ld	s5,88(sp)
    80003b78:	05013b03          	ld	s6,80(sp)
    80003b7c:	04813b83          	ld	s7,72(sp)
    80003b80:	04013c03          	ld	s8,64(sp)
    80003b84:	03813c83          	ld	s9,56(sp)
    80003b88:	03013d03          	ld	s10,48(sp)
    80003b8c:	02813d83          	ld	s11,40(sp)
    80003b90:	0d010113          	addi	sp,sp,208
    80003b94:	00008067          	ret
    80003b98:	07300713          	li	a4,115
    80003b9c:	1ce78a63          	beq	a5,a4,80003d70 <__printf+0x4b8>
    80003ba0:	07800713          	li	a4,120
    80003ba4:	1ee79e63          	bne	a5,a4,80003da0 <__printf+0x4e8>
    80003ba8:	f7843783          	ld	a5,-136(s0)
    80003bac:	0007a703          	lw	a4,0(a5)
    80003bb0:	00878793          	addi	a5,a5,8
    80003bb4:	f6f43c23          	sd	a5,-136(s0)
    80003bb8:	28074263          	bltz	a4,80003e3c <__printf+0x584>
    80003bbc:	00002d97          	auipc	s11,0x2
    80003bc0:	74cd8d93          	addi	s11,s11,1868 # 80006308 <digits>
    80003bc4:	00f77793          	andi	a5,a4,15
    80003bc8:	00fd87b3          	add	a5,s11,a5
    80003bcc:	0007c683          	lbu	a3,0(a5)
    80003bd0:	00f00613          	li	a2,15
    80003bd4:	0007079b          	sext.w	a5,a4
    80003bd8:	f8d40023          	sb	a3,-128(s0)
    80003bdc:	0047559b          	srliw	a1,a4,0x4
    80003be0:	0047569b          	srliw	a3,a4,0x4
    80003be4:	00000c93          	li	s9,0
    80003be8:	0ee65063          	bge	a2,a4,80003cc8 <__printf+0x410>
    80003bec:	00f6f693          	andi	a3,a3,15
    80003bf0:	00dd86b3          	add	a3,s11,a3
    80003bf4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003bf8:	0087d79b          	srliw	a5,a5,0x8
    80003bfc:	00100c93          	li	s9,1
    80003c00:	f8d400a3          	sb	a3,-127(s0)
    80003c04:	0cb67263          	bgeu	a2,a1,80003cc8 <__printf+0x410>
    80003c08:	00f7f693          	andi	a3,a5,15
    80003c0c:	00dd86b3          	add	a3,s11,a3
    80003c10:	0006c583          	lbu	a1,0(a3)
    80003c14:	00f00613          	li	a2,15
    80003c18:	0047d69b          	srliw	a3,a5,0x4
    80003c1c:	f8b40123          	sb	a1,-126(s0)
    80003c20:	0047d593          	srli	a1,a5,0x4
    80003c24:	28f67e63          	bgeu	a2,a5,80003ec0 <__printf+0x608>
    80003c28:	00f6f693          	andi	a3,a3,15
    80003c2c:	00dd86b3          	add	a3,s11,a3
    80003c30:	0006c503          	lbu	a0,0(a3)
    80003c34:	0087d813          	srli	a6,a5,0x8
    80003c38:	0087d69b          	srliw	a3,a5,0x8
    80003c3c:	f8a401a3          	sb	a0,-125(s0)
    80003c40:	28b67663          	bgeu	a2,a1,80003ecc <__printf+0x614>
    80003c44:	00f6f693          	andi	a3,a3,15
    80003c48:	00dd86b3          	add	a3,s11,a3
    80003c4c:	0006c583          	lbu	a1,0(a3)
    80003c50:	00c7d513          	srli	a0,a5,0xc
    80003c54:	00c7d69b          	srliw	a3,a5,0xc
    80003c58:	f8b40223          	sb	a1,-124(s0)
    80003c5c:	29067a63          	bgeu	a2,a6,80003ef0 <__printf+0x638>
    80003c60:	00f6f693          	andi	a3,a3,15
    80003c64:	00dd86b3          	add	a3,s11,a3
    80003c68:	0006c583          	lbu	a1,0(a3)
    80003c6c:	0107d813          	srli	a6,a5,0x10
    80003c70:	0107d69b          	srliw	a3,a5,0x10
    80003c74:	f8b402a3          	sb	a1,-123(s0)
    80003c78:	28a67263          	bgeu	a2,a0,80003efc <__printf+0x644>
    80003c7c:	00f6f693          	andi	a3,a3,15
    80003c80:	00dd86b3          	add	a3,s11,a3
    80003c84:	0006c683          	lbu	a3,0(a3)
    80003c88:	0147d79b          	srliw	a5,a5,0x14
    80003c8c:	f8d40323          	sb	a3,-122(s0)
    80003c90:	21067663          	bgeu	a2,a6,80003e9c <__printf+0x5e4>
    80003c94:	02079793          	slli	a5,a5,0x20
    80003c98:	0207d793          	srli	a5,a5,0x20
    80003c9c:	00fd8db3          	add	s11,s11,a5
    80003ca0:	000dc683          	lbu	a3,0(s11)
    80003ca4:	00800793          	li	a5,8
    80003ca8:	00700c93          	li	s9,7
    80003cac:	f8d403a3          	sb	a3,-121(s0)
    80003cb0:	00075c63          	bgez	a4,80003cc8 <__printf+0x410>
    80003cb4:	f9040713          	addi	a4,s0,-112
    80003cb8:	00f70733          	add	a4,a4,a5
    80003cbc:	02d00693          	li	a3,45
    80003cc0:	fed70823          	sb	a3,-16(a4)
    80003cc4:	00078c93          	mv	s9,a5
    80003cc8:	f8040793          	addi	a5,s0,-128
    80003ccc:	01978cb3          	add	s9,a5,s9
    80003cd0:	f7f40d13          	addi	s10,s0,-129
    80003cd4:	000cc503          	lbu	a0,0(s9)
    80003cd8:	fffc8c93          	addi	s9,s9,-1
    80003cdc:	00000097          	auipc	ra,0x0
    80003ce0:	9f8080e7          	jalr	-1544(ra) # 800036d4 <consputc>
    80003ce4:	ff9d18e3          	bne	s10,s9,80003cd4 <__printf+0x41c>
    80003ce8:	0100006f          	j	80003cf8 <__printf+0x440>
    80003cec:	00000097          	auipc	ra,0x0
    80003cf0:	9e8080e7          	jalr	-1560(ra) # 800036d4 <consputc>
    80003cf4:	000c8493          	mv	s1,s9
    80003cf8:	00094503          	lbu	a0,0(s2)
    80003cfc:	c60510e3          	bnez	a0,8000395c <__printf+0xa4>
    80003d00:	e40c0ee3          	beqz	s8,80003b5c <__printf+0x2a4>
    80003d04:	00004517          	auipc	a0,0x4
    80003d08:	3ec50513          	addi	a0,a0,1004 # 800080f0 <pr>
    80003d0c:	00001097          	auipc	ra,0x1
    80003d10:	94c080e7          	jalr	-1716(ra) # 80004658 <release>
    80003d14:	e49ff06f          	j	80003b5c <__printf+0x2a4>
    80003d18:	f7843783          	ld	a5,-136(s0)
    80003d1c:	03000513          	li	a0,48
    80003d20:	01000d13          	li	s10,16
    80003d24:	00878713          	addi	a4,a5,8
    80003d28:	0007bc83          	ld	s9,0(a5)
    80003d2c:	f6e43c23          	sd	a4,-136(s0)
    80003d30:	00000097          	auipc	ra,0x0
    80003d34:	9a4080e7          	jalr	-1628(ra) # 800036d4 <consputc>
    80003d38:	07800513          	li	a0,120
    80003d3c:	00000097          	auipc	ra,0x0
    80003d40:	998080e7          	jalr	-1640(ra) # 800036d4 <consputc>
    80003d44:	00002d97          	auipc	s11,0x2
    80003d48:	5c4d8d93          	addi	s11,s11,1476 # 80006308 <digits>
    80003d4c:	03ccd793          	srli	a5,s9,0x3c
    80003d50:	00fd87b3          	add	a5,s11,a5
    80003d54:	0007c503          	lbu	a0,0(a5)
    80003d58:	fffd0d1b          	addiw	s10,s10,-1
    80003d5c:	004c9c93          	slli	s9,s9,0x4
    80003d60:	00000097          	auipc	ra,0x0
    80003d64:	974080e7          	jalr	-1676(ra) # 800036d4 <consputc>
    80003d68:	fe0d12e3          	bnez	s10,80003d4c <__printf+0x494>
    80003d6c:	f8dff06f          	j	80003cf8 <__printf+0x440>
    80003d70:	f7843783          	ld	a5,-136(s0)
    80003d74:	0007bc83          	ld	s9,0(a5)
    80003d78:	00878793          	addi	a5,a5,8
    80003d7c:	f6f43c23          	sd	a5,-136(s0)
    80003d80:	000c9a63          	bnez	s9,80003d94 <__printf+0x4dc>
    80003d84:	1080006f          	j	80003e8c <__printf+0x5d4>
    80003d88:	001c8c93          	addi	s9,s9,1
    80003d8c:	00000097          	auipc	ra,0x0
    80003d90:	948080e7          	jalr	-1720(ra) # 800036d4 <consputc>
    80003d94:	000cc503          	lbu	a0,0(s9)
    80003d98:	fe0518e3          	bnez	a0,80003d88 <__printf+0x4d0>
    80003d9c:	f5dff06f          	j	80003cf8 <__printf+0x440>
    80003da0:	02500513          	li	a0,37
    80003da4:	00000097          	auipc	ra,0x0
    80003da8:	930080e7          	jalr	-1744(ra) # 800036d4 <consputc>
    80003dac:	000c8513          	mv	a0,s9
    80003db0:	00000097          	auipc	ra,0x0
    80003db4:	924080e7          	jalr	-1756(ra) # 800036d4 <consputc>
    80003db8:	f41ff06f          	j	80003cf8 <__printf+0x440>
    80003dbc:	02500513          	li	a0,37
    80003dc0:	00000097          	auipc	ra,0x0
    80003dc4:	914080e7          	jalr	-1772(ra) # 800036d4 <consputc>
    80003dc8:	f31ff06f          	j	80003cf8 <__printf+0x440>
    80003dcc:	00030513          	mv	a0,t1
    80003dd0:	00000097          	auipc	ra,0x0
    80003dd4:	7bc080e7          	jalr	1980(ra) # 8000458c <acquire>
    80003dd8:	b4dff06f          	j	80003924 <__printf+0x6c>
    80003ddc:	40c0053b          	negw	a0,a2
    80003de0:	00a00713          	li	a4,10
    80003de4:	02e576bb          	remuw	a3,a0,a4
    80003de8:	00002d97          	auipc	s11,0x2
    80003dec:	520d8d93          	addi	s11,s11,1312 # 80006308 <digits>
    80003df0:	ff700593          	li	a1,-9
    80003df4:	02069693          	slli	a3,a3,0x20
    80003df8:	0206d693          	srli	a3,a3,0x20
    80003dfc:	00dd86b3          	add	a3,s11,a3
    80003e00:	0006c683          	lbu	a3,0(a3)
    80003e04:	02e557bb          	divuw	a5,a0,a4
    80003e08:	f8d40023          	sb	a3,-128(s0)
    80003e0c:	10b65e63          	bge	a2,a1,80003f28 <__printf+0x670>
    80003e10:	06300593          	li	a1,99
    80003e14:	02e7f6bb          	remuw	a3,a5,a4
    80003e18:	02069693          	slli	a3,a3,0x20
    80003e1c:	0206d693          	srli	a3,a3,0x20
    80003e20:	00dd86b3          	add	a3,s11,a3
    80003e24:	0006c683          	lbu	a3,0(a3)
    80003e28:	02e7d73b          	divuw	a4,a5,a4
    80003e2c:	00200793          	li	a5,2
    80003e30:	f8d400a3          	sb	a3,-127(s0)
    80003e34:	bca5ece3          	bltu	a1,a0,80003a0c <__printf+0x154>
    80003e38:	ce5ff06f          	j	80003b1c <__printf+0x264>
    80003e3c:	40e007bb          	negw	a5,a4
    80003e40:	00002d97          	auipc	s11,0x2
    80003e44:	4c8d8d93          	addi	s11,s11,1224 # 80006308 <digits>
    80003e48:	00f7f693          	andi	a3,a5,15
    80003e4c:	00dd86b3          	add	a3,s11,a3
    80003e50:	0006c583          	lbu	a1,0(a3)
    80003e54:	ff100613          	li	a2,-15
    80003e58:	0047d69b          	srliw	a3,a5,0x4
    80003e5c:	f8b40023          	sb	a1,-128(s0)
    80003e60:	0047d59b          	srliw	a1,a5,0x4
    80003e64:	0ac75e63          	bge	a4,a2,80003f20 <__printf+0x668>
    80003e68:	00f6f693          	andi	a3,a3,15
    80003e6c:	00dd86b3          	add	a3,s11,a3
    80003e70:	0006c603          	lbu	a2,0(a3)
    80003e74:	00f00693          	li	a3,15
    80003e78:	0087d79b          	srliw	a5,a5,0x8
    80003e7c:	f8c400a3          	sb	a2,-127(s0)
    80003e80:	d8b6e4e3          	bltu	a3,a1,80003c08 <__printf+0x350>
    80003e84:	00200793          	li	a5,2
    80003e88:	e2dff06f          	j	80003cb4 <__printf+0x3fc>
    80003e8c:	00002c97          	auipc	s9,0x2
    80003e90:	45cc8c93          	addi	s9,s9,1116 # 800062e8 <_ZZ12printIntegermE6digits+0x148>
    80003e94:	02800513          	li	a0,40
    80003e98:	ef1ff06f          	j	80003d88 <__printf+0x4d0>
    80003e9c:	00700793          	li	a5,7
    80003ea0:	00600c93          	li	s9,6
    80003ea4:	e0dff06f          	j	80003cb0 <__printf+0x3f8>
    80003ea8:	00700793          	li	a5,7
    80003eac:	00600c93          	li	s9,6
    80003eb0:	c69ff06f          	j	80003b18 <__printf+0x260>
    80003eb4:	00300793          	li	a5,3
    80003eb8:	00200c93          	li	s9,2
    80003ebc:	c5dff06f          	j	80003b18 <__printf+0x260>
    80003ec0:	00300793          	li	a5,3
    80003ec4:	00200c93          	li	s9,2
    80003ec8:	de9ff06f          	j	80003cb0 <__printf+0x3f8>
    80003ecc:	00400793          	li	a5,4
    80003ed0:	00300c93          	li	s9,3
    80003ed4:	dddff06f          	j	80003cb0 <__printf+0x3f8>
    80003ed8:	00400793          	li	a5,4
    80003edc:	00300c93          	li	s9,3
    80003ee0:	c39ff06f          	j	80003b18 <__printf+0x260>
    80003ee4:	00500793          	li	a5,5
    80003ee8:	00400c93          	li	s9,4
    80003eec:	c2dff06f          	j	80003b18 <__printf+0x260>
    80003ef0:	00500793          	li	a5,5
    80003ef4:	00400c93          	li	s9,4
    80003ef8:	db9ff06f          	j	80003cb0 <__printf+0x3f8>
    80003efc:	00600793          	li	a5,6
    80003f00:	00500c93          	li	s9,5
    80003f04:	dadff06f          	j	80003cb0 <__printf+0x3f8>
    80003f08:	00600793          	li	a5,6
    80003f0c:	00500c93          	li	s9,5
    80003f10:	c09ff06f          	j	80003b18 <__printf+0x260>
    80003f14:	00800793          	li	a5,8
    80003f18:	00700c93          	li	s9,7
    80003f1c:	bfdff06f          	j	80003b18 <__printf+0x260>
    80003f20:	00100793          	li	a5,1
    80003f24:	d91ff06f          	j	80003cb4 <__printf+0x3fc>
    80003f28:	00100793          	li	a5,1
    80003f2c:	bf1ff06f          	j	80003b1c <__printf+0x264>
    80003f30:	00900793          	li	a5,9
    80003f34:	00800c93          	li	s9,8
    80003f38:	be1ff06f          	j	80003b18 <__printf+0x260>
    80003f3c:	00002517          	auipc	a0,0x2
    80003f40:	3b450513          	addi	a0,a0,948 # 800062f0 <_ZZ12printIntegermE6digits+0x150>
    80003f44:	00000097          	auipc	ra,0x0
    80003f48:	918080e7          	jalr	-1768(ra) # 8000385c <panic>

0000000080003f4c <printfinit>:
    80003f4c:	fe010113          	addi	sp,sp,-32
    80003f50:	00813823          	sd	s0,16(sp)
    80003f54:	00913423          	sd	s1,8(sp)
    80003f58:	00113c23          	sd	ra,24(sp)
    80003f5c:	02010413          	addi	s0,sp,32
    80003f60:	00004497          	auipc	s1,0x4
    80003f64:	19048493          	addi	s1,s1,400 # 800080f0 <pr>
    80003f68:	00048513          	mv	a0,s1
    80003f6c:	00002597          	auipc	a1,0x2
    80003f70:	39458593          	addi	a1,a1,916 # 80006300 <_ZZ12printIntegermE6digits+0x160>
    80003f74:	00000097          	auipc	ra,0x0
    80003f78:	5f4080e7          	jalr	1524(ra) # 80004568 <initlock>
    80003f7c:	01813083          	ld	ra,24(sp)
    80003f80:	01013403          	ld	s0,16(sp)
    80003f84:	0004ac23          	sw	zero,24(s1)
    80003f88:	00813483          	ld	s1,8(sp)
    80003f8c:	02010113          	addi	sp,sp,32
    80003f90:	00008067          	ret

0000000080003f94 <uartinit>:
    80003f94:	ff010113          	addi	sp,sp,-16
    80003f98:	00813423          	sd	s0,8(sp)
    80003f9c:	01010413          	addi	s0,sp,16
    80003fa0:	100007b7          	lui	a5,0x10000
    80003fa4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003fa8:	f8000713          	li	a4,-128
    80003fac:	00e781a3          	sb	a4,3(a5)
    80003fb0:	00300713          	li	a4,3
    80003fb4:	00e78023          	sb	a4,0(a5)
    80003fb8:	000780a3          	sb	zero,1(a5)
    80003fbc:	00e781a3          	sb	a4,3(a5)
    80003fc0:	00700693          	li	a3,7
    80003fc4:	00d78123          	sb	a3,2(a5)
    80003fc8:	00e780a3          	sb	a4,1(a5)
    80003fcc:	00813403          	ld	s0,8(sp)
    80003fd0:	01010113          	addi	sp,sp,16
    80003fd4:	00008067          	ret

0000000080003fd8 <uartputc>:
    80003fd8:	00003797          	auipc	a5,0x3
    80003fdc:	e987a783          	lw	a5,-360(a5) # 80006e70 <panicked>
    80003fe0:	00078463          	beqz	a5,80003fe8 <uartputc+0x10>
    80003fe4:	0000006f          	j	80003fe4 <uartputc+0xc>
    80003fe8:	fd010113          	addi	sp,sp,-48
    80003fec:	02813023          	sd	s0,32(sp)
    80003ff0:	00913c23          	sd	s1,24(sp)
    80003ff4:	01213823          	sd	s2,16(sp)
    80003ff8:	01313423          	sd	s3,8(sp)
    80003ffc:	02113423          	sd	ra,40(sp)
    80004000:	03010413          	addi	s0,sp,48
    80004004:	00003917          	auipc	s2,0x3
    80004008:	e7490913          	addi	s2,s2,-396 # 80006e78 <uart_tx_r>
    8000400c:	00093783          	ld	a5,0(s2)
    80004010:	00003497          	auipc	s1,0x3
    80004014:	e7048493          	addi	s1,s1,-400 # 80006e80 <uart_tx_w>
    80004018:	0004b703          	ld	a4,0(s1)
    8000401c:	02078693          	addi	a3,a5,32
    80004020:	00050993          	mv	s3,a0
    80004024:	02e69c63          	bne	a3,a4,8000405c <uartputc+0x84>
    80004028:	00001097          	auipc	ra,0x1
    8000402c:	834080e7          	jalr	-1996(ra) # 8000485c <push_on>
    80004030:	00093783          	ld	a5,0(s2)
    80004034:	0004b703          	ld	a4,0(s1)
    80004038:	02078793          	addi	a5,a5,32
    8000403c:	00e79463          	bne	a5,a4,80004044 <uartputc+0x6c>
    80004040:	0000006f          	j	80004040 <uartputc+0x68>
    80004044:	00001097          	auipc	ra,0x1
    80004048:	88c080e7          	jalr	-1908(ra) # 800048d0 <pop_on>
    8000404c:	00093783          	ld	a5,0(s2)
    80004050:	0004b703          	ld	a4,0(s1)
    80004054:	02078693          	addi	a3,a5,32
    80004058:	fce688e3          	beq	a3,a4,80004028 <uartputc+0x50>
    8000405c:	01f77693          	andi	a3,a4,31
    80004060:	00004597          	auipc	a1,0x4
    80004064:	0b058593          	addi	a1,a1,176 # 80008110 <uart_tx_buf>
    80004068:	00d586b3          	add	a3,a1,a3
    8000406c:	00170713          	addi	a4,a4,1
    80004070:	01368023          	sb	s3,0(a3)
    80004074:	00e4b023          	sd	a4,0(s1)
    80004078:	10000637          	lui	a2,0x10000
    8000407c:	02f71063          	bne	a4,a5,8000409c <uartputc+0xc4>
    80004080:	0340006f          	j	800040b4 <uartputc+0xdc>
    80004084:	00074703          	lbu	a4,0(a4)
    80004088:	00f93023          	sd	a5,0(s2)
    8000408c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004090:	00093783          	ld	a5,0(s2)
    80004094:	0004b703          	ld	a4,0(s1)
    80004098:	00f70e63          	beq	a4,a5,800040b4 <uartputc+0xdc>
    8000409c:	00564683          	lbu	a3,5(a2)
    800040a0:	01f7f713          	andi	a4,a5,31
    800040a4:	00e58733          	add	a4,a1,a4
    800040a8:	0206f693          	andi	a3,a3,32
    800040ac:	00178793          	addi	a5,a5,1
    800040b0:	fc069ae3          	bnez	a3,80004084 <uartputc+0xac>
    800040b4:	02813083          	ld	ra,40(sp)
    800040b8:	02013403          	ld	s0,32(sp)
    800040bc:	01813483          	ld	s1,24(sp)
    800040c0:	01013903          	ld	s2,16(sp)
    800040c4:	00813983          	ld	s3,8(sp)
    800040c8:	03010113          	addi	sp,sp,48
    800040cc:	00008067          	ret

00000000800040d0 <uartputc_sync>:
    800040d0:	ff010113          	addi	sp,sp,-16
    800040d4:	00813423          	sd	s0,8(sp)
    800040d8:	01010413          	addi	s0,sp,16
    800040dc:	00003717          	auipc	a4,0x3
    800040e0:	d9472703          	lw	a4,-620(a4) # 80006e70 <panicked>
    800040e4:	02071663          	bnez	a4,80004110 <uartputc_sync+0x40>
    800040e8:	00050793          	mv	a5,a0
    800040ec:	100006b7          	lui	a3,0x10000
    800040f0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800040f4:	02077713          	andi	a4,a4,32
    800040f8:	fe070ce3          	beqz	a4,800040f0 <uartputc_sync+0x20>
    800040fc:	0ff7f793          	andi	a5,a5,255
    80004100:	00f68023          	sb	a5,0(a3)
    80004104:	00813403          	ld	s0,8(sp)
    80004108:	01010113          	addi	sp,sp,16
    8000410c:	00008067          	ret
    80004110:	0000006f          	j	80004110 <uartputc_sync+0x40>

0000000080004114 <uartstart>:
    80004114:	ff010113          	addi	sp,sp,-16
    80004118:	00813423          	sd	s0,8(sp)
    8000411c:	01010413          	addi	s0,sp,16
    80004120:	00003617          	auipc	a2,0x3
    80004124:	d5860613          	addi	a2,a2,-680 # 80006e78 <uart_tx_r>
    80004128:	00003517          	auipc	a0,0x3
    8000412c:	d5850513          	addi	a0,a0,-680 # 80006e80 <uart_tx_w>
    80004130:	00063783          	ld	a5,0(a2)
    80004134:	00053703          	ld	a4,0(a0)
    80004138:	04f70263          	beq	a4,a5,8000417c <uartstart+0x68>
    8000413c:	100005b7          	lui	a1,0x10000
    80004140:	00004817          	auipc	a6,0x4
    80004144:	fd080813          	addi	a6,a6,-48 # 80008110 <uart_tx_buf>
    80004148:	01c0006f          	j	80004164 <uartstart+0x50>
    8000414c:	0006c703          	lbu	a4,0(a3)
    80004150:	00f63023          	sd	a5,0(a2)
    80004154:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004158:	00063783          	ld	a5,0(a2)
    8000415c:	00053703          	ld	a4,0(a0)
    80004160:	00f70e63          	beq	a4,a5,8000417c <uartstart+0x68>
    80004164:	01f7f713          	andi	a4,a5,31
    80004168:	00e806b3          	add	a3,a6,a4
    8000416c:	0055c703          	lbu	a4,5(a1)
    80004170:	00178793          	addi	a5,a5,1
    80004174:	02077713          	andi	a4,a4,32
    80004178:	fc071ae3          	bnez	a4,8000414c <uartstart+0x38>
    8000417c:	00813403          	ld	s0,8(sp)
    80004180:	01010113          	addi	sp,sp,16
    80004184:	00008067          	ret

0000000080004188 <uartgetc>:
    80004188:	ff010113          	addi	sp,sp,-16
    8000418c:	00813423          	sd	s0,8(sp)
    80004190:	01010413          	addi	s0,sp,16
    80004194:	10000737          	lui	a4,0x10000
    80004198:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000419c:	0017f793          	andi	a5,a5,1
    800041a0:	00078c63          	beqz	a5,800041b8 <uartgetc+0x30>
    800041a4:	00074503          	lbu	a0,0(a4)
    800041a8:	0ff57513          	andi	a0,a0,255
    800041ac:	00813403          	ld	s0,8(sp)
    800041b0:	01010113          	addi	sp,sp,16
    800041b4:	00008067          	ret
    800041b8:	fff00513          	li	a0,-1
    800041bc:	ff1ff06f          	j	800041ac <uartgetc+0x24>

00000000800041c0 <uartintr>:
    800041c0:	100007b7          	lui	a5,0x10000
    800041c4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800041c8:	0017f793          	andi	a5,a5,1
    800041cc:	0a078463          	beqz	a5,80004274 <uartintr+0xb4>
    800041d0:	fe010113          	addi	sp,sp,-32
    800041d4:	00813823          	sd	s0,16(sp)
    800041d8:	00913423          	sd	s1,8(sp)
    800041dc:	00113c23          	sd	ra,24(sp)
    800041e0:	02010413          	addi	s0,sp,32
    800041e4:	100004b7          	lui	s1,0x10000
    800041e8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800041ec:	0ff57513          	andi	a0,a0,255
    800041f0:	fffff097          	auipc	ra,0xfffff
    800041f4:	534080e7          	jalr	1332(ra) # 80003724 <consoleintr>
    800041f8:	0054c783          	lbu	a5,5(s1)
    800041fc:	0017f793          	andi	a5,a5,1
    80004200:	fe0794e3          	bnez	a5,800041e8 <uartintr+0x28>
    80004204:	00003617          	auipc	a2,0x3
    80004208:	c7460613          	addi	a2,a2,-908 # 80006e78 <uart_tx_r>
    8000420c:	00003517          	auipc	a0,0x3
    80004210:	c7450513          	addi	a0,a0,-908 # 80006e80 <uart_tx_w>
    80004214:	00063783          	ld	a5,0(a2)
    80004218:	00053703          	ld	a4,0(a0)
    8000421c:	04f70263          	beq	a4,a5,80004260 <uartintr+0xa0>
    80004220:	100005b7          	lui	a1,0x10000
    80004224:	00004817          	auipc	a6,0x4
    80004228:	eec80813          	addi	a6,a6,-276 # 80008110 <uart_tx_buf>
    8000422c:	01c0006f          	j	80004248 <uartintr+0x88>
    80004230:	0006c703          	lbu	a4,0(a3)
    80004234:	00f63023          	sd	a5,0(a2)
    80004238:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000423c:	00063783          	ld	a5,0(a2)
    80004240:	00053703          	ld	a4,0(a0)
    80004244:	00f70e63          	beq	a4,a5,80004260 <uartintr+0xa0>
    80004248:	01f7f713          	andi	a4,a5,31
    8000424c:	00e806b3          	add	a3,a6,a4
    80004250:	0055c703          	lbu	a4,5(a1)
    80004254:	00178793          	addi	a5,a5,1
    80004258:	02077713          	andi	a4,a4,32
    8000425c:	fc071ae3          	bnez	a4,80004230 <uartintr+0x70>
    80004260:	01813083          	ld	ra,24(sp)
    80004264:	01013403          	ld	s0,16(sp)
    80004268:	00813483          	ld	s1,8(sp)
    8000426c:	02010113          	addi	sp,sp,32
    80004270:	00008067          	ret
    80004274:	00003617          	auipc	a2,0x3
    80004278:	c0460613          	addi	a2,a2,-1020 # 80006e78 <uart_tx_r>
    8000427c:	00003517          	auipc	a0,0x3
    80004280:	c0450513          	addi	a0,a0,-1020 # 80006e80 <uart_tx_w>
    80004284:	00063783          	ld	a5,0(a2)
    80004288:	00053703          	ld	a4,0(a0)
    8000428c:	04f70263          	beq	a4,a5,800042d0 <uartintr+0x110>
    80004290:	100005b7          	lui	a1,0x10000
    80004294:	00004817          	auipc	a6,0x4
    80004298:	e7c80813          	addi	a6,a6,-388 # 80008110 <uart_tx_buf>
    8000429c:	01c0006f          	j	800042b8 <uartintr+0xf8>
    800042a0:	0006c703          	lbu	a4,0(a3)
    800042a4:	00f63023          	sd	a5,0(a2)
    800042a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800042ac:	00063783          	ld	a5,0(a2)
    800042b0:	00053703          	ld	a4,0(a0)
    800042b4:	02f70063          	beq	a4,a5,800042d4 <uartintr+0x114>
    800042b8:	01f7f713          	andi	a4,a5,31
    800042bc:	00e806b3          	add	a3,a6,a4
    800042c0:	0055c703          	lbu	a4,5(a1)
    800042c4:	00178793          	addi	a5,a5,1
    800042c8:	02077713          	andi	a4,a4,32
    800042cc:	fc071ae3          	bnez	a4,800042a0 <uartintr+0xe0>
    800042d0:	00008067          	ret
    800042d4:	00008067          	ret

00000000800042d8 <kinit>:
    800042d8:	fc010113          	addi	sp,sp,-64
    800042dc:	02913423          	sd	s1,40(sp)
    800042e0:	fffff7b7          	lui	a5,0xfffff
    800042e4:	00005497          	auipc	s1,0x5
    800042e8:	e5b48493          	addi	s1,s1,-421 # 8000913f <end+0xfff>
    800042ec:	02813823          	sd	s0,48(sp)
    800042f0:	01313c23          	sd	s3,24(sp)
    800042f4:	00f4f4b3          	and	s1,s1,a5
    800042f8:	02113c23          	sd	ra,56(sp)
    800042fc:	03213023          	sd	s2,32(sp)
    80004300:	01413823          	sd	s4,16(sp)
    80004304:	01513423          	sd	s5,8(sp)
    80004308:	04010413          	addi	s0,sp,64
    8000430c:	000017b7          	lui	a5,0x1
    80004310:	01100993          	li	s3,17
    80004314:	00f487b3          	add	a5,s1,a5
    80004318:	01b99993          	slli	s3,s3,0x1b
    8000431c:	06f9e063          	bltu	s3,a5,8000437c <kinit+0xa4>
    80004320:	00004a97          	auipc	s5,0x4
    80004324:	e20a8a93          	addi	s5,s5,-480 # 80008140 <end>
    80004328:	0754ec63          	bltu	s1,s5,800043a0 <kinit+0xc8>
    8000432c:	0734fa63          	bgeu	s1,s3,800043a0 <kinit+0xc8>
    80004330:	00088a37          	lui	s4,0x88
    80004334:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004338:	00003917          	auipc	s2,0x3
    8000433c:	b5090913          	addi	s2,s2,-1200 # 80006e88 <kmem>
    80004340:	00ca1a13          	slli	s4,s4,0xc
    80004344:	0140006f          	j	80004358 <kinit+0x80>
    80004348:	000017b7          	lui	a5,0x1
    8000434c:	00f484b3          	add	s1,s1,a5
    80004350:	0554e863          	bltu	s1,s5,800043a0 <kinit+0xc8>
    80004354:	0534f663          	bgeu	s1,s3,800043a0 <kinit+0xc8>
    80004358:	00001637          	lui	a2,0x1
    8000435c:	00100593          	li	a1,1
    80004360:	00048513          	mv	a0,s1
    80004364:	00000097          	auipc	ra,0x0
    80004368:	5e4080e7          	jalr	1508(ra) # 80004948 <__memset>
    8000436c:	00093783          	ld	a5,0(s2)
    80004370:	00f4b023          	sd	a5,0(s1)
    80004374:	00993023          	sd	s1,0(s2)
    80004378:	fd4498e3          	bne	s1,s4,80004348 <kinit+0x70>
    8000437c:	03813083          	ld	ra,56(sp)
    80004380:	03013403          	ld	s0,48(sp)
    80004384:	02813483          	ld	s1,40(sp)
    80004388:	02013903          	ld	s2,32(sp)
    8000438c:	01813983          	ld	s3,24(sp)
    80004390:	01013a03          	ld	s4,16(sp)
    80004394:	00813a83          	ld	s5,8(sp)
    80004398:	04010113          	addi	sp,sp,64
    8000439c:	00008067          	ret
    800043a0:	00002517          	auipc	a0,0x2
    800043a4:	f8050513          	addi	a0,a0,-128 # 80006320 <digits+0x18>
    800043a8:	fffff097          	auipc	ra,0xfffff
    800043ac:	4b4080e7          	jalr	1204(ra) # 8000385c <panic>

00000000800043b0 <freerange>:
    800043b0:	fc010113          	addi	sp,sp,-64
    800043b4:	000017b7          	lui	a5,0x1
    800043b8:	02913423          	sd	s1,40(sp)
    800043bc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800043c0:	009504b3          	add	s1,a0,s1
    800043c4:	fffff537          	lui	a0,0xfffff
    800043c8:	02813823          	sd	s0,48(sp)
    800043cc:	02113c23          	sd	ra,56(sp)
    800043d0:	03213023          	sd	s2,32(sp)
    800043d4:	01313c23          	sd	s3,24(sp)
    800043d8:	01413823          	sd	s4,16(sp)
    800043dc:	01513423          	sd	s5,8(sp)
    800043e0:	01613023          	sd	s6,0(sp)
    800043e4:	04010413          	addi	s0,sp,64
    800043e8:	00a4f4b3          	and	s1,s1,a0
    800043ec:	00f487b3          	add	a5,s1,a5
    800043f0:	06f5e463          	bltu	a1,a5,80004458 <freerange+0xa8>
    800043f4:	00004a97          	auipc	s5,0x4
    800043f8:	d4ca8a93          	addi	s5,s5,-692 # 80008140 <end>
    800043fc:	0954e263          	bltu	s1,s5,80004480 <freerange+0xd0>
    80004400:	01100993          	li	s3,17
    80004404:	01b99993          	slli	s3,s3,0x1b
    80004408:	0734fc63          	bgeu	s1,s3,80004480 <freerange+0xd0>
    8000440c:	00058a13          	mv	s4,a1
    80004410:	00003917          	auipc	s2,0x3
    80004414:	a7890913          	addi	s2,s2,-1416 # 80006e88 <kmem>
    80004418:	00002b37          	lui	s6,0x2
    8000441c:	0140006f          	j	80004430 <freerange+0x80>
    80004420:	000017b7          	lui	a5,0x1
    80004424:	00f484b3          	add	s1,s1,a5
    80004428:	0554ec63          	bltu	s1,s5,80004480 <freerange+0xd0>
    8000442c:	0534fa63          	bgeu	s1,s3,80004480 <freerange+0xd0>
    80004430:	00001637          	lui	a2,0x1
    80004434:	00100593          	li	a1,1
    80004438:	00048513          	mv	a0,s1
    8000443c:	00000097          	auipc	ra,0x0
    80004440:	50c080e7          	jalr	1292(ra) # 80004948 <__memset>
    80004444:	00093703          	ld	a4,0(s2)
    80004448:	016487b3          	add	a5,s1,s6
    8000444c:	00e4b023          	sd	a4,0(s1)
    80004450:	00993023          	sd	s1,0(s2)
    80004454:	fcfa76e3          	bgeu	s4,a5,80004420 <freerange+0x70>
    80004458:	03813083          	ld	ra,56(sp)
    8000445c:	03013403          	ld	s0,48(sp)
    80004460:	02813483          	ld	s1,40(sp)
    80004464:	02013903          	ld	s2,32(sp)
    80004468:	01813983          	ld	s3,24(sp)
    8000446c:	01013a03          	ld	s4,16(sp)
    80004470:	00813a83          	ld	s5,8(sp)
    80004474:	00013b03          	ld	s6,0(sp)
    80004478:	04010113          	addi	sp,sp,64
    8000447c:	00008067          	ret
    80004480:	00002517          	auipc	a0,0x2
    80004484:	ea050513          	addi	a0,a0,-352 # 80006320 <digits+0x18>
    80004488:	fffff097          	auipc	ra,0xfffff
    8000448c:	3d4080e7          	jalr	980(ra) # 8000385c <panic>

0000000080004490 <kfree>:
    80004490:	fe010113          	addi	sp,sp,-32
    80004494:	00813823          	sd	s0,16(sp)
    80004498:	00113c23          	sd	ra,24(sp)
    8000449c:	00913423          	sd	s1,8(sp)
    800044a0:	02010413          	addi	s0,sp,32
    800044a4:	03451793          	slli	a5,a0,0x34
    800044a8:	04079c63          	bnez	a5,80004500 <kfree+0x70>
    800044ac:	00004797          	auipc	a5,0x4
    800044b0:	c9478793          	addi	a5,a5,-876 # 80008140 <end>
    800044b4:	00050493          	mv	s1,a0
    800044b8:	04f56463          	bltu	a0,a5,80004500 <kfree+0x70>
    800044bc:	01100793          	li	a5,17
    800044c0:	01b79793          	slli	a5,a5,0x1b
    800044c4:	02f57e63          	bgeu	a0,a5,80004500 <kfree+0x70>
    800044c8:	00001637          	lui	a2,0x1
    800044cc:	00100593          	li	a1,1
    800044d0:	00000097          	auipc	ra,0x0
    800044d4:	478080e7          	jalr	1144(ra) # 80004948 <__memset>
    800044d8:	00003797          	auipc	a5,0x3
    800044dc:	9b078793          	addi	a5,a5,-1616 # 80006e88 <kmem>
    800044e0:	0007b703          	ld	a4,0(a5)
    800044e4:	01813083          	ld	ra,24(sp)
    800044e8:	01013403          	ld	s0,16(sp)
    800044ec:	00e4b023          	sd	a4,0(s1)
    800044f0:	0097b023          	sd	s1,0(a5)
    800044f4:	00813483          	ld	s1,8(sp)
    800044f8:	02010113          	addi	sp,sp,32
    800044fc:	00008067          	ret
    80004500:	00002517          	auipc	a0,0x2
    80004504:	e2050513          	addi	a0,a0,-480 # 80006320 <digits+0x18>
    80004508:	fffff097          	auipc	ra,0xfffff
    8000450c:	354080e7          	jalr	852(ra) # 8000385c <panic>

0000000080004510 <kalloc>:
    80004510:	fe010113          	addi	sp,sp,-32
    80004514:	00813823          	sd	s0,16(sp)
    80004518:	00913423          	sd	s1,8(sp)
    8000451c:	00113c23          	sd	ra,24(sp)
    80004520:	02010413          	addi	s0,sp,32
    80004524:	00003797          	auipc	a5,0x3
    80004528:	96478793          	addi	a5,a5,-1692 # 80006e88 <kmem>
    8000452c:	0007b483          	ld	s1,0(a5)
    80004530:	02048063          	beqz	s1,80004550 <kalloc+0x40>
    80004534:	0004b703          	ld	a4,0(s1)
    80004538:	00001637          	lui	a2,0x1
    8000453c:	00500593          	li	a1,5
    80004540:	00048513          	mv	a0,s1
    80004544:	00e7b023          	sd	a4,0(a5)
    80004548:	00000097          	auipc	ra,0x0
    8000454c:	400080e7          	jalr	1024(ra) # 80004948 <__memset>
    80004550:	01813083          	ld	ra,24(sp)
    80004554:	01013403          	ld	s0,16(sp)
    80004558:	00048513          	mv	a0,s1
    8000455c:	00813483          	ld	s1,8(sp)
    80004560:	02010113          	addi	sp,sp,32
    80004564:	00008067          	ret

0000000080004568 <initlock>:
    80004568:	ff010113          	addi	sp,sp,-16
    8000456c:	00813423          	sd	s0,8(sp)
    80004570:	01010413          	addi	s0,sp,16
    80004574:	00813403          	ld	s0,8(sp)
    80004578:	00b53423          	sd	a1,8(a0)
    8000457c:	00052023          	sw	zero,0(a0)
    80004580:	00053823          	sd	zero,16(a0)
    80004584:	01010113          	addi	sp,sp,16
    80004588:	00008067          	ret

000000008000458c <acquire>:
    8000458c:	fe010113          	addi	sp,sp,-32
    80004590:	00813823          	sd	s0,16(sp)
    80004594:	00913423          	sd	s1,8(sp)
    80004598:	00113c23          	sd	ra,24(sp)
    8000459c:	01213023          	sd	s2,0(sp)
    800045a0:	02010413          	addi	s0,sp,32
    800045a4:	00050493          	mv	s1,a0
    800045a8:	10002973          	csrr	s2,sstatus
    800045ac:	100027f3          	csrr	a5,sstatus
    800045b0:	ffd7f793          	andi	a5,a5,-3
    800045b4:	10079073          	csrw	sstatus,a5
    800045b8:	fffff097          	auipc	ra,0xfffff
    800045bc:	8ec080e7          	jalr	-1812(ra) # 80002ea4 <mycpu>
    800045c0:	07852783          	lw	a5,120(a0)
    800045c4:	06078e63          	beqz	a5,80004640 <acquire+0xb4>
    800045c8:	fffff097          	auipc	ra,0xfffff
    800045cc:	8dc080e7          	jalr	-1828(ra) # 80002ea4 <mycpu>
    800045d0:	07852783          	lw	a5,120(a0)
    800045d4:	0004a703          	lw	a4,0(s1)
    800045d8:	0017879b          	addiw	a5,a5,1
    800045dc:	06f52c23          	sw	a5,120(a0)
    800045e0:	04071063          	bnez	a4,80004620 <acquire+0x94>
    800045e4:	00100713          	li	a4,1
    800045e8:	00070793          	mv	a5,a4
    800045ec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800045f0:	0007879b          	sext.w	a5,a5
    800045f4:	fe079ae3          	bnez	a5,800045e8 <acquire+0x5c>
    800045f8:	0ff0000f          	fence
    800045fc:	fffff097          	auipc	ra,0xfffff
    80004600:	8a8080e7          	jalr	-1880(ra) # 80002ea4 <mycpu>
    80004604:	01813083          	ld	ra,24(sp)
    80004608:	01013403          	ld	s0,16(sp)
    8000460c:	00a4b823          	sd	a0,16(s1)
    80004610:	00013903          	ld	s2,0(sp)
    80004614:	00813483          	ld	s1,8(sp)
    80004618:	02010113          	addi	sp,sp,32
    8000461c:	00008067          	ret
    80004620:	0104b903          	ld	s2,16(s1)
    80004624:	fffff097          	auipc	ra,0xfffff
    80004628:	880080e7          	jalr	-1920(ra) # 80002ea4 <mycpu>
    8000462c:	faa91ce3          	bne	s2,a0,800045e4 <acquire+0x58>
    80004630:	00002517          	auipc	a0,0x2
    80004634:	cf850513          	addi	a0,a0,-776 # 80006328 <digits+0x20>
    80004638:	fffff097          	auipc	ra,0xfffff
    8000463c:	224080e7          	jalr	548(ra) # 8000385c <panic>
    80004640:	00195913          	srli	s2,s2,0x1
    80004644:	fffff097          	auipc	ra,0xfffff
    80004648:	860080e7          	jalr	-1952(ra) # 80002ea4 <mycpu>
    8000464c:	00197913          	andi	s2,s2,1
    80004650:	07252e23          	sw	s2,124(a0)
    80004654:	f75ff06f          	j	800045c8 <acquire+0x3c>

0000000080004658 <release>:
    80004658:	fe010113          	addi	sp,sp,-32
    8000465c:	00813823          	sd	s0,16(sp)
    80004660:	00113c23          	sd	ra,24(sp)
    80004664:	00913423          	sd	s1,8(sp)
    80004668:	01213023          	sd	s2,0(sp)
    8000466c:	02010413          	addi	s0,sp,32
    80004670:	00052783          	lw	a5,0(a0)
    80004674:	00079a63          	bnez	a5,80004688 <release+0x30>
    80004678:	00002517          	auipc	a0,0x2
    8000467c:	cb850513          	addi	a0,a0,-840 # 80006330 <digits+0x28>
    80004680:	fffff097          	auipc	ra,0xfffff
    80004684:	1dc080e7          	jalr	476(ra) # 8000385c <panic>
    80004688:	01053903          	ld	s2,16(a0)
    8000468c:	00050493          	mv	s1,a0
    80004690:	fffff097          	auipc	ra,0xfffff
    80004694:	814080e7          	jalr	-2028(ra) # 80002ea4 <mycpu>
    80004698:	fea910e3          	bne	s2,a0,80004678 <release+0x20>
    8000469c:	0004b823          	sd	zero,16(s1)
    800046a0:	0ff0000f          	fence
    800046a4:	0f50000f          	fence	iorw,ow
    800046a8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800046ac:	ffffe097          	auipc	ra,0xffffe
    800046b0:	7f8080e7          	jalr	2040(ra) # 80002ea4 <mycpu>
    800046b4:	100027f3          	csrr	a5,sstatus
    800046b8:	0027f793          	andi	a5,a5,2
    800046bc:	04079a63          	bnez	a5,80004710 <release+0xb8>
    800046c0:	07852783          	lw	a5,120(a0)
    800046c4:	02f05e63          	blez	a5,80004700 <release+0xa8>
    800046c8:	fff7871b          	addiw	a4,a5,-1
    800046cc:	06e52c23          	sw	a4,120(a0)
    800046d0:	00071c63          	bnez	a4,800046e8 <release+0x90>
    800046d4:	07c52783          	lw	a5,124(a0)
    800046d8:	00078863          	beqz	a5,800046e8 <release+0x90>
    800046dc:	100027f3          	csrr	a5,sstatus
    800046e0:	0027e793          	ori	a5,a5,2
    800046e4:	10079073          	csrw	sstatus,a5
    800046e8:	01813083          	ld	ra,24(sp)
    800046ec:	01013403          	ld	s0,16(sp)
    800046f0:	00813483          	ld	s1,8(sp)
    800046f4:	00013903          	ld	s2,0(sp)
    800046f8:	02010113          	addi	sp,sp,32
    800046fc:	00008067          	ret
    80004700:	00002517          	auipc	a0,0x2
    80004704:	c5050513          	addi	a0,a0,-944 # 80006350 <digits+0x48>
    80004708:	fffff097          	auipc	ra,0xfffff
    8000470c:	154080e7          	jalr	340(ra) # 8000385c <panic>
    80004710:	00002517          	auipc	a0,0x2
    80004714:	c2850513          	addi	a0,a0,-984 # 80006338 <digits+0x30>
    80004718:	fffff097          	auipc	ra,0xfffff
    8000471c:	144080e7          	jalr	324(ra) # 8000385c <panic>

0000000080004720 <holding>:
    80004720:	00052783          	lw	a5,0(a0)
    80004724:	00079663          	bnez	a5,80004730 <holding+0x10>
    80004728:	00000513          	li	a0,0
    8000472c:	00008067          	ret
    80004730:	fe010113          	addi	sp,sp,-32
    80004734:	00813823          	sd	s0,16(sp)
    80004738:	00913423          	sd	s1,8(sp)
    8000473c:	00113c23          	sd	ra,24(sp)
    80004740:	02010413          	addi	s0,sp,32
    80004744:	01053483          	ld	s1,16(a0)
    80004748:	ffffe097          	auipc	ra,0xffffe
    8000474c:	75c080e7          	jalr	1884(ra) # 80002ea4 <mycpu>
    80004750:	01813083          	ld	ra,24(sp)
    80004754:	01013403          	ld	s0,16(sp)
    80004758:	40a48533          	sub	a0,s1,a0
    8000475c:	00153513          	seqz	a0,a0
    80004760:	00813483          	ld	s1,8(sp)
    80004764:	02010113          	addi	sp,sp,32
    80004768:	00008067          	ret

000000008000476c <push_off>:
    8000476c:	fe010113          	addi	sp,sp,-32
    80004770:	00813823          	sd	s0,16(sp)
    80004774:	00113c23          	sd	ra,24(sp)
    80004778:	00913423          	sd	s1,8(sp)
    8000477c:	02010413          	addi	s0,sp,32
    80004780:	100024f3          	csrr	s1,sstatus
    80004784:	100027f3          	csrr	a5,sstatus
    80004788:	ffd7f793          	andi	a5,a5,-3
    8000478c:	10079073          	csrw	sstatus,a5
    80004790:	ffffe097          	auipc	ra,0xffffe
    80004794:	714080e7          	jalr	1812(ra) # 80002ea4 <mycpu>
    80004798:	07852783          	lw	a5,120(a0)
    8000479c:	02078663          	beqz	a5,800047c8 <push_off+0x5c>
    800047a0:	ffffe097          	auipc	ra,0xffffe
    800047a4:	704080e7          	jalr	1796(ra) # 80002ea4 <mycpu>
    800047a8:	07852783          	lw	a5,120(a0)
    800047ac:	01813083          	ld	ra,24(sp)
    800047b0:	01013403          	ld	s0,16(sp)
    800047b4:	0017879b          	addiw	a5,a5,1
    800047b8:	06f52c23          	sw	a5,120(a0)
    800047bc:	00813483          	ld	s1,8(sp)
    800047c0:	02010113          	addi	sp,sp,32
    800047c4:	00008067          	ret
    800047c8:	0014d493          	srli	s1,s1,0x1
    800047cc:	ffffe097          	auipc	ra,0xffffe
    800047d0:	6d8080e7          	jalr	1752(ra) # 80002ea4 <mycpu>
    800047d4:	0014f493          	andi	s1,s1,1
    800047d8:	06952e23          	sw	s1,124(a0)
    800047dc:	fc5ff06f          	j	800047a0 <push_off+0x34>

00000000800047e0 <pop_off>:
    800047e0:	ff010113          	addi	sp,sp,-16
    800047e4:	00813023          	sd	s0,0(sp)
    800047e8:	00113423          	sd	ra,8(sp)
    800047ec:	01010413          	addi	s0,sp,16
    800047f0:	ffffe097          	auipc	ra,0xffffe
    800047f4:	6b4080e7          	jalr	1716(ra) # 80002ea4 <mycpu>
    800047f8:	100027f3          	csrr	a5,sstatus
    800047fc:	0027f793          	andi	a5,a5,2
    80004800:	04079663          	bnez	a5,8000484c <pop_off+0x6c>
    80004804:	07852783          	lw	a5,120(a0)
    80004808:	02f05a63          	blez	a5,8000483c <pop_off+0x5c>
    8000480c:	fff7871b          	addiw	a4,a5,-1
    80004810:	06e52c23          	sw	a4,120(a0)
    80004814:	00071c63          	bnez	a4,8000482c <pop_off+0x4c>
    80004818:	07c52783          	lw	a5,124(a0)
    8000481c:	00078863          	beqz	a5,8000482c <pop_off+0x4c>
    80004820:	100027f3          	csrr	a5,sstatus
    80004824:	0027e793          	ori	a5,a5,2
    80004828:	10079073          	csrw	sstatus,a5
    8000482c:	00813083          	ld	ra,8(sp)
    80004830:	00013403          	ld	s0,0(sp)
    80004834:	01010113          	addi	sp,sp,16
    80004838:	00008067          	ret
    8000483c:	00002517          	auipc	a0,0x2
    80004840:	b1450513          	addi	a0,a0,-1260 # 80006350 <digits+0x48>
    80004844:	fffff097          	auipc	ra,0xfffff
    80004848:	018080e7          	jalr	24(ra) # 8000385c <panic>
    8000484c:	00002517          	auipc	a0,0x2
    80004850:	aec50513          	addi	a0,a0,-1300 # 80006338 <digits+0x30>
    80004854:	fffff097          	auipc	ra,0xfffff
    80004858:	008080e7          	jalr	8(ra) # 8000385c <panic>

000000008000485c <push_on>:
    8000485c:	fe010113          	addi	sp,sp,-32
    80004860:	00813823          	sd	s0,16(sp)
    80004864:	00113c23          	sd	ra,24(sp)
    80004868:	00913423          	sd	s1,8(sp)
    8000486c:	02010413          	addi	s0,sp,32
    80004870:	100024f3          	csrr	s1,sstatus
    80004874:	100027f3          	csrr	a5,sstatus
    80004878:	0027e793          	ori	a5,a5,2
    8000487c:	10079073          	csrw	sstatus,a5
    80004880:	ffffe097          	auipc	ra,0xffffe
    80004884:	624080e7          	jalr	1572(ra) # 80002ea4 <mycpu>
    80004888:	07852783          	lw	a5,120(a0)
    8000488c:	02078663          	beqz	a5,800048b8 <push_on+0x5c>
    80004890:	ffffe097          	auipc	ra,0xffffe
    80004894:	614080e7          	jalr	1556(ra) # 80002ea4 <mycpu>
    80004898:	07852783          	lw	a5,120(a0)
    8000489c:	01813083          	ld	ra,24(sp)
    800048a0:	01013403          	ld	s0,16(sp)
    800048a4:	0017879b          	addiw	a5,a5,1
    800048a8:	06f52c23          	sw	a5,120(a0)
    800048ac:	00813483          	ld	s1,8(sp)
    800048b0:	02010113          	addi	sp,sp,32
    800048b4:	00008067          	ret
    800048b8:	0014d493          	srli	s1,s1,0x1
    800048bc:	ffffe097          	auipc	ra,0xffffe
    800048c0:	5e8080e7          	jalr	1512(ra) # 80002ea4 <mycpu>
    800048c4:	0014f493          	andi	s1,s1,1
    800048c8:	06952e23          	sw	s1,124(a0)
    800048cc:	fc5ff06f          	j	80004890 <push_on+0x34>

00000000800048d0 <pop_on>:
    800048d0:	ff010113          	addi	sp,sp,-16
    800048d4:	00813023          	sd	s0,0(sp)
    800048d8:	00113423          	sd	ra,8(sp)
    800048dc:	01010413          	addi	s0,sp,16
    800048e0:	ffffe097          	auipc	ra,0xffffe
    800048e4:	5c4080e7          	jalr	1476(ra) # 80002ea4 <mycpu>
    800048e8:	100027f3          	csrr	a5,sstatus
    800048ec:	0027f793          	andi	a5,a5,2
    800048f0:	04078463          	beqz	a5,80004938 <pop_on+0x68>
    800048f4:	07852783          	lw	a5,120(a0)
    800048f8:	02f05863          	blez	a5,80004928 <pop_on+0x58>
    800048fc:	fff7879b          	addiw	a5,a5,-1
    80004900:	06f52c23          	sw	a5,120(a0)
    80004904:	07853783          	ld	a5,120(a0)
    80004908:	00079863          	bnez	a5,80004918 <pop_on+0x48>
    8000490c:	100027f3          	csrr	a5,sstatus
    80004910:	ffd7f793          	andi	a5,a5,-3
    80004914:	10079073          	csrw	sstatus,a5
    80004918:	00813083          	ld	ra,8(sp)
    8000491c:	00013403          	ld	s0,0(sp)
    80004920:	01010113          	addi	sp,sp,16
    80004924:	00008067          	ret
    80004928:	00002517          	auipc	a0,0x2
    8000492c:	a5050513          	addi	a0,a0,-1456 # 80006378 <digits+0x70>
    80004930:	fffff097          	auipc	ra,0xfffff
    80004934:	f2c080e7          	jalr	-212(ra) # 8000385c <panic>
    80004938:	00002517          	auipc	a0,0x2
    8000493c:	a2050513          	addi	a0,a0,-1504 # 80006358 <digits+0x50>
    80004940:	fffff097          	auipc	ra,0xfffff
    80004944:	f1c080e7          	jalr	-228(ra) # 8000385c <panic>

0000000080004948 <__memset>:
    80004948:	ff010113          	addi	sp,sp,-16
    8000494c:	00813423          	sd	s0,8(sp)
    80004950:	01010413          	addi	s0,sp,16
    80004954:	1a060e63          	beqz	a2,80004b10 <__memset+0x1c8>
    80004958:	40a007b3          	neg	a5,a0
    8000495c:	0077f793          	andi	a5,a5,7
    80004960:	00778693          	addi	a3,a5,7
    80004964:	00b00813          	li	a6,11
    80004968:	0ff5f593          	andi	a1,a1,255
    8000496c:	fff6071b          	addiw	a4,a2,-1
    80004970:	1b06e663          	bltu	a3,a6,80004b1c <__memset+0x1d4>
    80004974:	1cd76463          	bltu	a4,a3,80004b3c <__memset+0x1f4>
    80004978:	1a078e63          	beqz	a5,80004b34 <__memset+0x1ec>
    8000497c:	00b50023          	sb	a1,0(a0)
    80004980:	00100713          	li	a4,1
    80004984:	1ae78463          	beq	a5,a4,80004b2c <__memset+0x1e4>
    80004988:	00b500a3          	sb	a1,1(a0)
    8000498c:	00200713          	li	a4,2
    80004990:	1ae78a63          	beq	a5,a4,80004b44 <__memset+0x1fc>
    80004994:	00b50123          	sb	a1,2(a0)
    80004998:	00300713          	li	a4,3
    8000499c:	18e78463          	beq	a5,a4,80004b24 <__memset+0x1dc>
    800049a0:	00b501a3          	sb	a1,3(a0)
    800049a4:	00400713          	li	a4,4
    800049a8:	1ae78263          	beq	a5,a4,80004b4c <__memset+0x204>
    800049ac:	00b50223          	sb	a1,4(a0)
    800049b0:	00500713          	li	a4,5
    800049b4:	1ae78063          	beq	a5,a4,80004b54 <__memset+0x20c>
    800049b8:	00b502a3          	sb	a1,5(a0)
    800049bc:	00700713          	li	a4,7
    800049c0:	18e79e63          	bne	a5,a4,80004b5c <__memset+0x214>
    800049c4:	00b50323          	sb	a1,6(a0)
    800049c8:	00700e93          	li	t4,7
    800049cc:	00859713          	slli	a4,a1,0x8
    800049d0:	00e5e733          	or	a4,a1,a4
    800049d4:	01059e13          	slli	t3,a1,0x10
    800049d8:	01c76e33          	or	t3,a4,t3
    800049dc:	01859313          	slli	t1,a1,0x18
    800049e0:	006e6333          	or	t1,t3,t1
    800049e4:	02059893          	slli	a7,a1,0x20
    800049e8:	40f60e3b          	subw	t3,a2,a5
    800049ec:	011368b3          	or	a7,t1,a7
    800049f0:	02859813          	slli	a6,a1,0x28
    800049f4:	0108e833          	or	a6,a7,a6
    800049f8:	03059693          	slli	a3,a1,0x30
    800049fc:	003e589b          	srliw	a7,t3,0x3
    80004a00:	00d866b3          	or	a3,a6,a3
    80004a04:	03859713          	slli	a4,a1,0x38
    80004a08:	00389813          	slli	a6,a7,0x3
    80004a0c:	00f507b3          	add	a5,a0,a5
    80004a10:	00e6e733          	or	a4,a3,a4
    80004a14:	000e089b          	sext.w	a7,t3
    80004a18:	00f806b3          	add	a3,a6,a5
    80004a1c:	00e7b023          	sd	a4,0(a5)
    80004a20:	00878793          	addi	a5,a5,8
    80004a24:	fed79ce3          	bne	a5,a3,80004a1c <__memset+0xd4>
    80004a28:	ff8e7793          	andi	a5,t3,-8
    80004a2c:	0007871b          	sext.w	a4,a5
    80004a30:	01d787bb          	addw	a5,a5,t4
    80004a34:	0ce88e63          	beq	a7,a4,80004b10 <__memset+0x1c8>
    80004a38:	00f50733          	add	a4,a0,a5
    80004a3c:	00b70023          	sb	a1,0(a4)
    80004a40:	0017871b          	addiw	a4,a5,1
    80004a44:	0cc77663          	bgeu	a4,a2,80004b10 <__memset+0x1c8>
    80004a48:	00e50733          	add	a4,a0,a4
    80004a4c:	00b70023          	sb	a1,0(a4)
    80004a50:	0027871b          	addiw	a4,a5,2
    80004a54:	0ac77e63          	bgeu	a4,a2,80004b10 <__memset+0x1c8>
    80004a58:	00e50733          	add	a4,a0,a4
    80004a5c:	00b70023          	sb	a1,0(a4)
    80004a60:	0037871b          	addiw	a4,a5,3
    80004a64:	0ac77663          	bgeu	a4,a2,80004b10 <__memset+0x1c8>
    80004a68:	00e50733          	add	a4,a0,a4
    80004a6c:	00b70023          	sb	a1,0(a4)
    80004a70:	0047871b          	addiw	a4,a5,4
    80004a74:	08c77e63          	bgeu	a4,a2,80004b10 <__memset+0x1c8>
    80004a78:	00e50733          	add	a4,a0,a4
    80004a7c:	00b70023          	sb	a1,0(a4)
    80004a80:	0057871b          	addiw	a4,a5,5
    80004a84:	08c77663          	bgeu	a4,a2,80004b10 <__memset+0x1c8>
    80004a88:	00e50733          	add	a4,a0,a4
    80004a8c:	00b70023          	sb	a1,0(a4)
    80004a90:	0067871b          	addiw	a4,a5,6
    80004a94:	06c77e63          	bgeu	a4,a2,80004b10 <__memset+0x1c8>
    80004a98:	00e50733          	add	a4,a0,a4
    80004a9c:	00b70023          	sb	a1,0(a4)
    80004aa0:	0077871b          	addiw	a4,a5,7
    80004aa4:	06c77663          	bgeu	a4,a2,80004b10 <__memset+0x1c8>
    80004aa8:	00e50733          	add	a4,a0,a4
    80004aac:	00b70023          	sb	a1,0(a4)
    80004ab0:	0087871b          	addiw	a4,a5,8
    80004ab4:	04c77e63          	bgeu	a4,a2,80004b10 <__memset+0x1c8>
    80004ab8:	00e50733          	add	a4,a0,a4
    80004abc:	00b70023          	sb	a1,0(a4)
    80004ac0:	0097871b          	addiw	a4,a5,9
    80004ac4:	04c77663          	bgeu	a4,a2,80004b10 <__memset+0x1c8>
    80004ac8:	00e50733          	add	a4,a0,a4
    80004acc:	00b70023          	sb	a1,0(a4)
    80004ad0:	00a7871b          	addiw	a4,a5,10
    80004ad4:	02c77e63          	bgeu	a4,a2,80004b10 <__memset+0x1c8>
    80004ad8:	00e50733          	add	a4,a0,a4
    80004adc:	00b70023          	sb	a1,0(a4)
    80004ae0:	00b7871b          	addiw	a4,a5,11
    80004ae4:	02c77663          	bgeu	a4,a2,80004b10 <__memset+0x1c8>
    80004ae8:	00e50733          	add	a4,a0,a4
    80004aec:	00b70023          	sb	a1,0(a4)
    80004af0:	00c7871b          	addiw	a4,a5,12
    80004af4:	00c77e63          	bgeu	a4,a2,80004b10 <__memset+0x1c8>
    80004af8:	00e50733          	add	a4,a0,a4
    80004afc:	00b70023          	sb	a1,0(a4)
    80004b00:	00d7879b          	addiw	a5,a5,13
    80004b04:	00c7f663          	bgeu	a5,a2,80004b10 <__memset+0x1c8>
    80004b08:	00f507b3          	add	a5,a0,a5
    80004b0c:	00b78023          	sb	a1,0(a5)
    80004b10:	00813403          	ld	s0,8(sp)
    80004b14:	01010113          	addi	sp,sp,16
    80004b18:	00008067          	ret
    80004b1c:	00b00693          	li	a3,11
    80004b20:	e55ff06f          	j	80004974 <__memset+0x2c>
    80004b24:	00300e93          	li	t4,3
    80004b28:	ea5ff06f          	j	800049cc <__memset+0x84>
    80004b2c:	00100e93          	li	t4,1
    80004b30:	e9dff06f          	j	800049cc <__memset+0x84>
    80004b34:	00000e93          	li	t4,0
    80004b38:	e95ff06f          	j	800049cc <__memset+0x84>
    80004b3c:	00000793          	li	a5,0
    80004b40:	ef9ff06f          	j	80004a38 <__memset+0xf0>
    80004b44:	00200e93          	li	t4,2
    80004b48:	e85ff06f          	j	800049cc <__memset+0x84>
    80004b4c:	00400e93          	li	t4,4
    80004b50:	e7dff06f          	j	800049cc <__memset+0x84>
    80004b54:	00500e93          	li	t4,5
    80004b58:	e75ff06f          	j	800049cc <__memset+0x84>
    80004b5c:	00600e93          	li	t4,6
    80004b60:	e6dff06f          	j	800049cc <__memset+0x84>

0000000080004b64 <__memmove>:
    80004b64:	ff010113          	addi	sp,sp,-16
    80004b68:	00813423          	sd	s0,8(sp)
    80004b6c:	01010413          	addi	s0,sp,16
    80004b70:	0e060863          	beqz	a2,80004c60 <__memmove+0xfc>
    80004b74:	fff6069b          	addiw	a3,a2,-1
    80004b78:	0006881b          	sext.w	a6,a3
    80004b7c:	0ea5e863          	bltu	a1,a0,80004c6c <__memmove+0x108>
    80004b80:	00758713          	addi	a4,a1,7
    80004b84:	00a5e7b3          	or	a5,a1,a0
    80004b88:	40a70733          	sub	a4,a4,a0
    80004b8c:	0077f793          	andi	a5,a5,7
    80004b90:	00f73713          	sltiu	a4,a4,15
    80004b94:	00174713          	xori	a4,a4,1
    80004b98:	0017b793          	seqz	a5,a5
    80004b9c:	00e7f7b3          	and	a5,a5,a4
    80004ba0:	10078863          	beqz	a5,80004cb0 <__memmove+0x14c>
    80004ba4:	00900793          	li	a5,9
    80004ba8:	1107f463          	bgeu	a5,a6,80004cb0 <__memmove+0x14c>
    80004bac:	0036581b          	srliw	a6,a2,0x3
    80004bb0:	fff8081b          	addiw	a6,a6,-1
    80004bb4:	02081813          	slli	a6,a6,0x20
    80004bb8:	01d85893          	srli	a7,a6,0x1d
    80004bbc:	00858813          	addi	a6,a1,8
    80004bc0:	00058793          	mv	a5,a1
    80004bc4:	00050713          	mv	a4,a0
    80004bc8:	01088833          	add	a6,a7,a6
    80004bcc:	0007b883          	ld	a7,0(a5)
    80004bd0:	00878793          	addi	a5,a5,8
    80004bd4:	00870713          	addi	a4,a4,8
    80004bd8:	ff173c23          	sd	a7,-8(a4)
    80004bdc:	ff0798e3          	bne	a5,a6,80004bcc <__memmove+0x68>
    80004be0:	ff867713          	andi	a4,a2,-8
    80004be4:	02071793          	slli	a5,a4,0x20
    80004be8:	0207d793          	srli	a5,a5,0x20
    80004bec:	00f585b3          	add	a1,a1,a5
    80004bf0:	40e686bb          	subw	a3,a3,a4
    80004bf4:	00f507b3          	add	a5,a0,a5
    80004bf8:	06e60463          	beq	a2,a4,80004c60 <__memmove+0xfc>
    80004bfc:	0005c703          	lbu	a4,0(a1)
    80004c00:	00e78023          	sb	a4,0(a5)
    80004c04:	04068e63          	beqz	a3,80004c60 <__memmove+0xfc>
    80004c08:	0015c603          	lbu	a2,1(a1)
    80004c0c:	00100713          	li	a4,1
    80004c10:	00c780a3          	sb	a2,1(a5)
    80004c14:	04e68663          	beq	a3,a4,80004c60 <__memmove+0xfc>
    80004c18:	0025c603          	lbu	a2,2(a1)
    80004c1c:	00200713          	li	a4,2
    80004c20:	00c78123          	sb	a2,2(a5)
    80004c24:	02e68e63          	beq	a3,a4,80004c60 <__memmove+0xfc>
    80004c28:	0035c603          	lbu	a2,3(a1)
    80004c2c:	00300713          	li	a4,3
    80004c30:	00c781a3          	sb	a2,3(a5)
    80004c34:	02e68663          	beq	a3,a4,80004c60 <__memmove+0xfc>
    80004c38:	0045c603          	lbu	a2,4(a1)
    80004c3c:	00400713          	li	a4,4
    80004c40:	00c78223          	sb	a2,4(a5)
    80004c44:	00e68e63          	beq	a3,a4,80004c60 <__memmove+0xfc>
    80004c48:	0055c603          	lbu	a2,5(a1)
    80004c4c:	00500713          	li	a4,5
    80004c50:	00c782a3          	sb	a2,5(a5)
    80004c54:	00e68663          	beq	a3,a4,80004c60 <__memmove+0xfc>
    80004c58:	0065c703          	lbu	a4,6(a1)
    80004c5c:	00e78323          	sb	a4,6(a5)
    80004c60:	00813403          	ld	s0,8(sp)
    80004c64:	01010113          	addi	sp,sp,16
    80004c68:	00008067          	ret
    80004c6c:	02061713          	slli	a4,a2,0x20
    80004c70:	02075713          	srli	a4,a4,0x20
    80004c74:	00e587b3          	add	a5,a1,a4
    80004c78:	f0f574e3          	bgeu	a0,a5,80004b80 <__memmove+0x1c>
    80004c7c:	02069613          	slli	a2,a3,0x20
    80004c80:	02065613          	srli	a2,a2,0x20
    80004c84:	fff64613          	not	a2,a2
    80004c88:	00e50733          	add	a4,a0,a4
    80004c8c:	00c78633          	add	a2,a5,a2
    80004c90:	fff7c683          	lbu	a3,-1(a5)
    80004c94:	fff78793          	addi	a5,a5,-1
    80004c98:	fff70713          	addi	a4,a4,-1
    80004c9c:	00d70023          	sb	a3,0(a4)
    80004ca0:	fec798e3          	bne	a5,a2,80004c90 <__memmove+0x12c>
    80004ca4:	00813403          	ld	s0,8(sp)
    80004ca8:	01010113          	addi	sp,sp,16
    80004cac:	00008067          	ret
    80004cb0:	02069713          	slli	a4,a3,0x20
    80004cb4:	02075713          	srli	a4,a4,0x20
    80004cb8:	00170713          	addi	a4,a4,1
    80004cbc:	00e50733          	add	a4,a0,a4
    80004cc0:	00050793          	mv	a5,a0
    80004cc4:	0005c683          	lbu	a3,0(a1)
    80004cc8:	00178793          	addi	a5,a5,1
    80004ccc:	00158593          	addi	a1,a1,1
    80004cd0:	fed78fa3          	sb	a3,-1(a5)
    80004cd4:	fee798e3          	bne	a5,a4,80004cc4 <__memmove+0x160>
    80004cd8:	f89ff06f          	j	80004c60 <__memmove+0xfc>

0000000080004cdc <__mem_free>:
    80004cdc:	ff010113          	addi	sp,sp,-16
    80004ce0:	00813423          	sd	s0,8(sp)
    80004ce4:	01010413          	addi	s0,sp,16
    80004ce8:	00002597          	auipc	a1,0x2
    80004cec:	1a858593          	addi	a1,a1,424 # 80006e90 <freep>
    80004cf0:	0005b783          	ld	a5,0(a1)
    80004cf4:	ff050693          	addi	a3,a0,-16
    80004cf8:	0007b703          	ld	a4,0(a5)
    80004cfc:	00d7fc63          	bgeu	a5,a3,80004d14 <__mem_free+0x38>
    80004d00:	00e6ee63          	bltu	a3,a4,80004d1c <__mem_free+0x40>
    80004d04:	00e7fc63          	bgeu	a5,a4,80004d1c <__mem_free+0x40>
    80004d08:	00070793          	mv	a5,a4
    80004d0c:	0007b703          	ld	a4,0(a5)
    80004d10:	fed7e8e3          	bltu	a5,a3,80004d00 <__mem_free+0x24>
    80004d14:	fee7eae3          	bltu	a5,a4,80004d08 <__mem_free+0x2c>
    80004d18:	fee6f8e3          	bgeu	a3,a4,80004d08 <__mem_free+0x2c>
    80004d1c:	ff852803          	lw	a6,-8(a0)
    80004d20:	02081613          	slli	a2,a6,0x20
    80004d24:	01c65613          	srli	a2,a2,0x1c
    80004d28:	00c68633          	add	a2,a3,a2
    80004d2c:	02c70a63          	beq	a4,a2,80004d60 <__mem_free+0x84>
    80004d30:	fee53823          	sd	a4,-16(a0)
    80004d34:	0087a503          	lw	a0,8(a5)
    80004d38:	02051613          	slli	a2,a0,0x20
    80004d3c:	01c65613          	srli	a2,a2,0x1c
    80004d40:	00c78633          	add	a2,a5,a2
    80004d44:	04c68263          	beq	a3,a2,80004d88 <__mem_free+0xac>
    80004d48:	00813403          	ld	s0,8(sp)
    80004d4c:	00d7b023          	sd	a3,0(a5)
    80004d50:	00f5b023          	sd	a5,0(a1)
    80004d54:	00000513          	li	a0,0
    80004d58:	01010113          	addi	sp,sp,16
    80004d5c:	00008067          	ret
    80004d60:	00872603          	lw	a2,8(a4)
    80004d64:	00073703          	ld	a4,0(a4)
    80004d68:	0106083b          	addw	a6,a2,a6
    80004d6c:	ff052c23          	sw	a6,-8(a0)
    80004d70:	fee53823          	sd	a4,-16(a0)
    80004d74:	0087a503          	lw	a0,8(a5)
    80004d78:	02051613          	slli	a2,a0,0x20
    80004d7c:	01c65613          	srli	a2,a2,0x1c
    80004d80:	00c78633          	add	a2,a5,a2
    80004d84:	fcc692e3          	bne	a3,a2,80004d48 <__mem_free+0x6c>
    80004d88:	00813403          	ld	s0,8(sp)
    80004d8c:	0105053b          	addw	a0,a0,a6
    80004d90:	00a7a423          	sw	a0,8(a5)
    80004d94:	00e7b023          	sd	a4,0(a5)
    80004d98:	00f5b023          	sd	a5,0(a1)
    80004d9c:	00000513          	li	a0,0
    80004da0:	01010113          	addi	sp,sp,16
    80004da4:	00008067          	ret

0000000080004da8 <__mem_alloc>:
    80004da8:	fc010113          	addi	sp,sp,-64
    80004dac:	02813823          	sd	s0,48(sp)
    80004db0:	02913423          	sd	s1,40(sp)
    80004db4:	03213023          	sd	s2,32(sp)
    80004db8:	01513423          	sd	s5,8(sp)
    80004dbc:	02113c23          	sd	ra,56(sp)
    80004dc0:	01313c23          	sd	s3,24(sp)
    80004dc4:	01413823          	sd	s4,16(sp)
    80004dc8:	01613023          	sd	s6,0(sp)
    80004dcc:	04010413          	addi	s0,sp,64
    80004dd0:	00002a97          	auipc	s5,0x2
    80004dd4:	0c0a8a93          	addi	s5,s5,192 # 80006e90 <freep>
    80004dd8:	00f50913          	addi	s2,a0,15
    80004ddc:	000ab683          	ld	a3,0(s5)
    80004de0:	00495913          	srli	s2,s2,0x4
    80004de4:	0019049b          	addiw	s1,s2,1
    80004de8:	00048913          	mv	s2,s1
    80004dec:	0c068c63          	beqz	a3,80004ec4 <__mem_alloc+0x11c>
    80004df0:	0006b503          	ld	a0,0(a3)
    80004df4:	00852703          	lw	a4,8(a0)
    80004df8:	10977063          	bgeu	a4,s1,80004ef8 <__mem_alloc+0x150>
    80004dfc:	000017b7          	lui	a5,0x1
    80004e00:	0009099b          	sext.w	s3,s2
    80004e04:	0af4e863          	bltu	s1,a5,80004eb4 <__mem_alloc+0x10c>
    80004e08:	02099a13          	slli	s4,s3,0x20
    80004e0c:	01ca5a13          	srli	s4,s4,0x1c
    80004e10:	fff00b13          	li	s6,-1
    80004e14:	0100006f          	j	80004e24 <__mem_alloc+0x7c>
    80004e18:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80004e1c:	00852703          	lw	a4,8(a0)
    80004e20:	04977463          	bgeu	a4,s1,80004e68 <__mem_alloc+0xc0>
    80004e24:	00050793          	mv	a5,a0
    80004e28:	fea698e3          	bne	a3,a0,80004e18 <__mem_alloc+0x70>
    80004e2c:	000a0513          	mv	a0,s4
    80004e30:	00000097          	auipc	ra,0x0
    80004e34:	1f0080e7          	jalr	496(ra) # 80005020 <kvmincrease>
    80004e38:	00050793          	mv	a5,a0
    80004e3c:	01050513          	addi	a0,a0,16
    80004e40:	07678e63          	beq	a5,s6,80004ebc <__mem_alloc+0x114>
    80004e44:	0137a423          	sw	s3,8(a5)
    80004e48:	00000097          	auipc	ra,0x0
    80004e4c:	e94080e7          	jalr	-364(ra) # 80004cdc <__mem_free>
    80004e50:	000ab783          	ld	a5,0(s5)
    80004e54:	06078463          	beqz	a5,80004ebc <__mem_alloc+0x114>
    80004e58:	0007b503          	ld	a0,0(a5)
    80004e5c:	00078693          	mv	a3,a5
    80004e60:	00852703          	lw	a4,8(a0)
    80004e64:	fc9760e3          	bltu	a4,s1,80004e24 <__mem_alloc+0x7c>
    80004e68:	08e48263          	beq	s1,a4,80004eec <__mem_alloc+0x144>
    80004e6c:	4127073b          	subw	a4,a4,s2
    80004e70:	02071693          	slli	a3,a4,0x20
    80004e74:	01c6d693          	srli	a3,a3,0x1c
    80004e78:	00e52423          	sw	a4,8(a0)
    80004e7c:	00d50533          	add	a0,a0,a3
    80004e80:	01252423          	sw	s2,8(a0)
    80004e84:	00fab023          	sd	a5,0(s5)
    80004e88:	01050513          	addi	a0,a0,16
    80004e8c:	03813083          	ld	ra,56(sp)
    80004e90:	03013403          	ld	s0,48(sp)
    80004e94:	02813483          	ld	s1,40(sp)
    80004e98:	02013903          	ld	s2,32(sp)
    80004e9c:	01813983          	ld	s3,24(sp)
    80004ea0:	01013a03          	ld	s4,16(sp)
    80004ea4:	00813a83          	ld	s5,8(sp)
    80004ea8:	00013b03          	ld	s6,0(sp)
    80004eac:	04010113          	addi	sp,sp,64
    80004eb0:	00008067          	ret
    80004eb4:	000019b7          	lui	s3,0x1
    80004eb8:	f51ff06f          	j	80004e08 <__mem_alloc+0x60>
    80004ebc:	00000513          	li	a0,0
    80004ec0:	fcdff06f          	j	80004e8c <__mem_alloc+0xe4>
    80004ec4:	00003797          	auipc	a5,0x3
    80004ec8:	26c78793          	addi	a5,a5,620 # 80008130 <base>
    80004ecc:	00078513          	mv	a0,a5
    80004ed0:	00fab023          	sd	a5,0(s5)
    80004ed4:	00f7b023          	sd	a5,0(a5)
    80004ed8:	00000713          	li	a4,0
    80004edc:	00003797          	auipc	a5,0x3
    80004ee0:	2407ae23          	sw	zero,604(a5) # 80008138 <base+0x8>
    80004ee4:	00050693          	mv	a3,a0
    80004ee8:	f11ff06f          	j	80004df8 <__mem_alloc+0x50>
    80004eec:	00053703          	ld	a4,0(a0)
    80004ef0:	00e7b023          	sd	a4,0(a5)
    80004ef4:	f91ff06f          	j	80004e84 <__mem_alloc+0xdc>
    80004ef8:	00068793          	mv	a5,a3
    80004efc:	f6dff06f          	j	80004e68 <__mem_alloc+0xc0>

0000000080004f00 <__putc>:
    80004f00:	fe010113          	addi	sp,sp,-32
    80004f04:	00813823          	sd	s0,16(sp)
    80004f08:	00113c23          	sd	ra,24(sp)
    80004f0c:	02010413          	addi	s0,sp,32
    80004f10:	00050793          	mv	a5,a0
    80004f14:	fef40593          	addi	a1,s0,-17
    80004f18:	00100613          	li	a2,1
    80004f1c:	00000513          	li	a0,0
    80004f20:	fef407a3          	sb	a5,-17(s0)
    80004f24:	fffff097          	auipc	ra,0xfffff
    80004f28:	918080e7          	jalr	-1768(ra) # 8000383c <console_write>
    80004f2c:	01813083          	ld	ra,24(sp)
    80004f30:	01013403          	ld	s0,16(sp)
    80004f34:	02010113          	addi	sp,sp,32
    80004f38:	00008067          	ret

0000000080004f3c <__getc>:
    80004f3c:	fe010113          	addi	sp,sp,-32
    80004f40:	00813823          	sd	s0,16(sp)
    80004f44:	00113c23          	sd	ra,24(sp)
    80004f48:	02010413          	addi	s0,sp,32
    80004f4c:	fe840593          	addi	a1,s0,-24
    80004f50:	00100613          	li	a2,1
    80004f54:	00000513          	li	a0,0
    80004f58:	fffff097          	auipc	ra,0xfffff
    80004f5c:	8c4080e7          	jalr	-1852(ra) # 8000381c <console_read>
    80004f60:	fe844503          	lbu	a0,-24(s0)
    80004f64:	01813083          	ld	ra,24(sp)
    80004f68:	01013403          	ld	s0,16(sp)
    80004f6c:	02010113          	addi	sp,sp,32
    80004f70:	00008067          	ret

0000000080004f74 <console_handler>:
    80004f74:	fe010113          	addi	sp,sp,-32
    80004f78:	00813823          	sd	s0,16(sp)
    80004f7c:	00113c23          	sd	ra,24(sp)
    80004f80:	00913423          	sd	s1,8(sp)
    80004f84:	02010413          	addi	s0,sp,32
    80004f88:	14202773          	csrr	a4,scause
    80004f8c:	100027f3          	csrr	a5,sstatus
    80004f90:	0027f793          	andi	a5,a5,2
    80004f94:	06079e63          	bnez	a5,80005010 <console_handler+0x9c>
    80004f98:	00074c63          	bltz	a4,80004fb0 <console_handler+0x3c>
    80004f9c:	01813083          	ld	ra,24(sp)
    80004fa0:	01013403          	ld	s0,16(sp)
    80004fa4:	00813483          	ld	s1,8(sp)
    80004fa8:	02010113          	addi	sp,sp,32
    80004fac:	00008067          	ret
    80004fb0:	0ff77713          	andi	a4,a4,255
    80004fb4:	00900793          	li	a5,9
    80004fb8:	fef712e3          	bne	a4,a5,80004f9c <console_handler+0x28>
    80004fbc:	ffffe097          	auipc	ra,0xffffe
    80004fc0:	4b8080e7          	jalr	1208(ra) # 80003474 <plic_claim>
    80004fc4:	00a00793          	li	a5,10
    80004fc8:	00050493          	mv	s1,a0
    80004fcc:	02f50c63          	beq	a0,a5,80005004 <console_handler+0x90>
    80004fd0:	fc0506e3          	beqz	a0,80004f9c <console_handler+0x28>
    80004fd4:	00050593          	mv	a1,a0
    80004fd8:	00001517          	auipc	a0,0x1
    80004fdc:	2a850513          	addi	a0,a0,680 # 80006280 <_ZZ12printIntegermE6digits+0xe0>
    80004fe0:	fffff097          	auipc	ra,0xfffff
    80004fe4:	8d8080e7          	jalr	-1832(ra) # 800038b8 <__printf>
    80004fe8:	01013403          	ld	s0,16(sp)
    80004fec:	01813083          	ld	ra,24(sp)
    80004ff0:	00048513          	mv	a0,s1
    80004ff4:	00813483          	ld	s1,8(sp)
    80004ff8:	02010113          	addi	sp,sp,32
    80004ffc:	ffffe317          	auipc	t1,0xffffe
    80005000:	4b030067          	jr	1200(t1) # 800034ac <plic_complete>
    80005004:	fffff097          	auipc	ra,0xfffff
    80005008:	1bc080e7          	jalr	444(ra) # 800041c0 <uartintr>
    8000500c:	fddff06f          	j	80004fe8 <console_handler+0x74>
    80005010:	00001517          	auipc	a0,0x1
    80005014:	37050513          	addi	a0,a0,880 # 80006380 <digits+0x78>
    80005018:	fffff097          	auipc	ra,0xfffff
    8000501c:	844080e7          	jalr	-1980(ra) # 8000385c <panic>

0000000080005020 <kvmincrease>:
    80005020:	fe010113          	addi	sp,sp,-32
    80005024:	01213023          	sd	s2,0(sp)
    80005028:	00001937          	lui	s2,0x1
    8000502c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80005030:	00813823          	sd	s0,16(sp)
    80005034:	00113c23          	sd	ra,24(sp)
    80005038:	00913423          	sd	s1,8(sp)
    8000503c:	02010413          	addi	s0,sp,32
    80005040:	01250933          	add	s2,a0,s2
    80005044:	00c95913          	srli	s2,s2,0xc
    80005048:	02090863          	beqz	s2,80005078 <kvmincrease+0x58>
    8000504c:	00000493          	li	s1,0
    80005050:	00148493          	addi	s1,s1,1
    80005054:	fffff097          	auipc	ra,0xfffff
    80005058:	4bc080e7          	jalr	1212(ra) # 80004510 <kalloc>
    8000505c:	fe991ae3          	bne	s2,s1,80005050 <kvmincrease+0x30>
    80005060:	01813083          	ld	ra,24(sp)
    80005064:	01013403          	ld	s0,16(sp)
    80005068:	00813483          	ld	s1,8(sp)
    8000506c:	00013903          	ld	s2,0(sp)
    80005070:	02010113          	addi	sp,sp,32
    80005074:	00008067          	ret
    80005078:	01813083          	ld	ra,24(sp)
    8000507c:	01013403          	ld	s0,16(sp)
    80005080:	00813483          	ld	s1,8(sp)
    80005084:	00013903          	ld	s2,0(sp)
    80005088:	00000513          	li	a0,0
    8000508c:	02010113          	addi	sp,sp,32
    80005090:	00008067          	ret
	...
