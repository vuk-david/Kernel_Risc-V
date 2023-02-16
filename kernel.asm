
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	32813103          	ld	sp,808(sp) # 80007328 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	2d9030ef          	jal	ra,80003af4 <start>

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
    80001184:	244010ef          	jal	ra,800023c8 <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001244 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001244:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001248:	00b29a63          	bne	t0,a1,8000125c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000124c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001250:	fe029ae3          	bnez	t0,80001244 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001254:	00000513          	li	a0,0
    jr ra                  # Return.
    80001258:	00008067          	ret

000000008000125c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000125c:	00100513          	li	a0,1
    80001260:	00008067          	ret

0000000080001264 <free_insert>:
void used_remove(struct mem_block* block);


void
free_insert(struct mem_block* block)
{
    80001264:	ff010113          	addi	sp,sp,-16
    80001268:	00813423          	sd	s0,8(sp)
    8000126c:	01010413          	addi	s0,sp,16
    if ((char*)block < (char*)HEAP_START_ADDR || (char*)block >= (char*)HEAP_END_ADDR)
    80001270:	00006797          	auipc	a5,0x6
    80001274:	0287b783          	ld	a5,40(a5) # 80007298 <HEAP_START_ADDR>
    80001278:	02f56a63          	bltu	a0,a5,800012ac <free_insert+0x48>
    8000127c:	00006797          	auipc	a5,0x6
    80001280:	0147b783          	ld	a5,20(a5) # 80007290 <HEAP_END_ADDR>
    80001284:	02f57463          	bgeu	a0,a5,800012ac <free_insert+0x48>
        return;

    if (free_mem_head == NULL)
    80001288:	00006717          	auipc	a4,0x6
    8000128c:	0e873703          	ld	a4,232(a4) # 80007370 <free_mem_head>
    80001290:	02070463          	beqz	a4,800012b8 <free_insert+0x54>
    {
        free_mem_head = block;
    }
    else if (block < free_mem_head)
    80001294:	02e57863          	bgeu	a0,a4,800012c4 <free_insert+0x60>
    {
        block->prev = NULL;
    80001298:	00053423          	sd	zero,8(a0)
        block->next = free_mem_head;
    8000129c:	00e53823          	sd	a4,16(a0)
        free_mem_head->prev = block;
    800012a0:	00a73423          	sd	a0,8(a4)

        free_mem_head = block;
    800012a4:	00006797          	auipc	a5,0x6
    800012a8:	0ca7b623          	sd	a0,204(a5) # 80007370 <free_mem_head>
        block->next = tmp;

        if (tmp != NULL)
            tmp->prev = block;
    }
}
    800012ac:	00813403          	ld	s0,8(sp)
    800012b0:	01010113          	addi	sp,sp,16
    800012b4:	00008067          	ret
        free_mem_head = block;
    800012b8:	00006797          	auipc	a5,0x6
    800012bc:	0aa7bc23          	sd	a0,184(a5) # 80007370 <free_mem_head>
    800012c0:	fedff06f          	j	800012ac <free_insert+0x48>
        struct mem_block* tmp      = free_mem_head->next;
    800012c4:	01073783          	ld	a5,16(a4)
        while (tmp != NULL && (char*)tmp < (char*)block)
    800012c8:	00078a63          	beqz	a5,800012dc <free_insert+0x78>
    800012cc:	00a7f863          	bgeu	a5,a0,800012dc <free_insert+0x78>
            prev_tmp = tmp;
    800012d0:	00078713          	mv	a4,a5
            tmp = tmp->next;
    800012d4:	0107b783          	ld	a5,16(a5)
    800012d8:	ff1ff06f          	j	800012c8 <free_insert+0x64>
        prev_tmp->next = block;
    800012dc:	00a73823          	sd	a0,16(a4)
        block->prev = prev_tmp;
    800012e0:	00e53423          	sd	a4,8(a0)
        block->next = tmp;
    800012e4:	00f53823          	sd	a5,16(a0)
        if (tmp != NULL)
    800012e8:	fc0782e3          	beqz	a5,800012ac <free_insert+0x48>
            tmp->prev = block;
    800012ec:	00a7b423          	sd	a0,8(a5)
    800012f0:	fbdff06f          	j	800012ac <free_insert+0x48>

00000000800012f4 <free_remove>:


void
free_remove(struct mem_block* block)
{
    800012f4:	ff010113          	addi	sp,sp,-16
    800012f8:	00813423          	sd	s0,8(sp)
    800012fc:	01010413          	addi	s0,sp,16
    if (free_mem_head == NULL || block == NULL)
    80001300:	00006797          	auipc	a5,0x6
    80001304:	0707b783          	ld	a5,112(a5) # 80007370 <free_mem_head>
    80001308:	02078663          	beqz	a5,80001334 <free_remove+0x40>
    8000130c:	02050463          	beqz	a0,80001334 <free_remove+0x40>
        return;

    if (block == free_mem_head)
    80001310:	02a78863          	beq	a5,a0,80001340 <free_remove+0x4c>
        if (free_mem_head != NULL)
            free_mem_head->prev = NULL;
    }
    else
    {
        block->prev->next = block->next;
    80001314:	00853703          	ld	a4,8(a0)
    80001318:	01053783          	ld	a5,16(a0)
    8000131c:	00f73823          	sd	a5,16(a4)
        if (block->next)
    80001320:	00078663          	beqz	a5,8000132c <free_remove+0x38>
            block->next->prev = block->prev;
    80001324:	00853703          	ld	a4,8(a0)
    80001328:	00e7b423          	sd	a4,8(a5)
    }

    // Unlink
    block->prev = NULL;
    8000132c:	00053423          	sd	zero,8(a0)
    block->next = NULL;
    80001330:	00053823          	sd	zero,16(a0)
}
    80001334:	00813403          	ld	s0,8(sp)
    80001338:	01010113          	addi	sp,sp,16
    8000133c:	00008067          	ret
        free_mem_head = free_mem_head->next;
    80001340:	0107b783          	ld	a5,16(a5)
    80001344:	00006717          	auipc	a4,0x6
    80001348:	02f73623          	sd	a5,44(a4) # 80007370 <free_mem_head>
        if (free_mem_head != NULL)
    8000134c:	fe0780e3          	beqz	a5,8000132c <free_remove+0x38>
            free_mem_head->prev = NULL;
    80001350:	0007b423          	sd	zero,8(a5)
    80001354:	fd9ff06f          	j	8000132c <free_remove+0x38>

0000000080001358 <used_insert>:


void
used_insert(struct mem_block* block)
{
    80001358:	ff010113          	addi	sp,sp,-16
    8000135c:	00813423          	sd	s0,8(sp)
    80001360:	01010413          	addi	s0,sp,16
    if ((char*)block < (char*)HEAP_START_ADDR || (char*)block >= (char*)HEAP_END_ADDR)
    80001364:	00006797          	auipc	a5,0x6
    80001368:	f347b783          	ld	a5,-204(a5) # 80007298 <HEAP_START_ADDR>
    8000136c:	02f56a63          	bltu	a0,a5,800013a0 <used_insert+0x48>
    80001370:	00006797          	auipc	a5,0x6
    80001374:	f207b783          	ld	a5,-224(a5) # 80007290 <HEAP_END_ADDR>
    80001378:	02f57463          	bgeu	a0,a5,800013a0 <used_insert+0x48>
        return;

    if (used_mem_head == NULL)
    8000137c:	00006717          	auipc	a4,0x6
    80001380:	fec73703          	ld	a4,-20(a4) # 80007368 <used_mem_head>
    80001384:	02070463          	beqz	a4,800013ac <used_insert+0x54>
    {
        used_mem_head = block;
    }
    else if (block < used_mem_head)
    80001388:	02e57863          	bgeu	a0,a4,800013b8 <used_insert+0x60>
    {
        block->prev = NULL;
    8000138c:	00053423          	sd	zero,8(a0)
        block->next = used_mem_head;
    80001390:	00e53823          	sd	a4,16(a0)
        used_mem_head->prev = block;
    80001394:	00a73423          	sd	a0,8(a4)

        used_mem_head = block;
    80001398:	00006797          	auipc	a5,0x6
    8000139c:	fca7b823          	sd	a0,-48(a5) # 80007368 <used_mem_head>
        block->next = tmp;

        if (tmp != NULL)
            tmp->prev = block;
    }
}
    800013a0:	00813403          	ld	s0,8(sp)
    800013a4:	01010113          	addi	sp,sp,16
    800013a8:	00008067          	ret
        used_mem_head = block;
    800013ac:	00006797          	auipc	a5,0x6
    800013b0:	faa7be23          	sd	a0,-68(a5) # 80007368 <used_mem_head>
    800013b4:	fedff06f          	j	800013a0 <used_insert+0x48>
        struct mem_block* tmp      = used_mem_head->next;
    800013b8:	01073783          	ld	a5,16(a4)
        while (tmp != NULL && (char*)tmp < (char*)block)
    800013bc:	00078a63          	beqz	a5,800013d0 <used_insert+0x78>
    800013c0:	00a7f863          	bgeu	a5,a0,800013d0 <used_insert+0x78>
            prev_tmp = tmp;
    800013c4:	00078713          	mv	a4,a5
            tmp = tmp->next;
    800013c8:	0107b783          	ld	a5,16(a5)
    800013cc:	ff1ff06f          	j	800013bc <used_insert+0x64>
        prev_tmp->next = block;
    800013d0:	00a73823          	sd	a0,16(a4)
        block->prev = prev_tmp;
    800013d4:	00e53423          	sd	a4,8(a0)
        block->next = tmp;
    800013d8:	00f53823          	sd	a5,16(a0)
        if (tmp != NULL)
    800013dc:	fc0782e3          	beqz	a5,800013a0 <used_insert+0x48>
            tmp->prev = block;
    800013e0:	00a7b423          	sd	a0,8(a5)
    800013e4:	fbdff06f          	j	800013a0 <used_insert+0x48>

00000000800013e8 <used_remove>:


void
used_remove(struct mem_block* block)
{
    800013e8:	ff010113          	addi	sp,sp,-16
    800013ec:	00813423          	sd	s0,8(sp)
    800013f0:	01010413          	addi	s0,sp,16
    if (used_mem_head == NULL || block == NULL)
    800013f4:	00006797          	auipc	a5,0x6
    800013f8:	f747b783          	ld	a5,-140(a5) # 80007368 <used_mem_head>
    800013fc:	02078663          	beqz	a5,80001428 <used_remove+0x40>
    80001400:	02050463          	beqz	a0,80001428 <used_remove+0x40>
        return;

    if (block == used_mem_head)
    80001404:	02a78863          	beq	a5,a0,80001434 <used_remove+0x4c>
        if (used_mem_head != NULL)
            used_mem_head->prev = NULL;
    }
    else
    {
        block->prev->next = block->next;
    80001408:	00853703          	ld	a4,8(a0)
    8000140c:	01053783          	ld	a5,16(a0)
    80001410:	00f73823          	sd	a5,16(a4)
        if (block->next)
    80001414:	00078663          	beqz	a5,80001420 <used_remove+0x38>
            block->next->prev = block->prev;
    80001418:	00853703          	ld	a4,8(a0)
    8000141c:	00e7b423          	sd	a4,8(a5)
    }

    // Unlink
    block->prev = NULL;
    80001420:	00053423          	sd	zero,8(a0)
    block->next = NULL;
    80001424:	00053823          	sd	zero,16(a0)
}
    80001428:	00813403          	ld	s0,8(sp)
    8000142c:	01010113          	addi	sp,sp,16
    80001430:	00008067          	ret
        used_mem_head = used_mem_head->next;
    80001434:	0107b783          	ld	a5,16(a5)
    80001438:	00006717          	auipc	a4,0x6
    8000143c:	f2f73823          	sd	a5,-208(a4) # 80007368 <used_mem_head>
        if (used_mem_head != NULL)
    80001440:	fe0780e3          	beqz	a5,80001420 <used_remove+0x38>
            used_mem_head->prev = NULL;
    80001444:	0007b423          	sd	zero,8(a5)
    80001448:	fd9ff06f          	j	80001420 <used_remove+0x38>

000000008000144c <__mem_alloc>:



void*
__mem_alloc(size_t bytes)
{
    8000144c:	fe010113          	addi	sp,sp,-32
    80001450:	00113c23          	sd	ra,24(sp)
    80001454:	00813823          	sd	s0,16(sp)
    80001458:	00913423          	sd	s1,8(sp)
    8000145c:	01213023          	sd	s2,0(sp)
    80001460:	02010413          	addi	s0,sp,32
    // Initialize if necessary(This is done only once)
    if (free_mem_head == NULL && beginning == 0)
    80001464:	00006797          	auipc	a5,0x6
    80001468:	f0c7b783          	ld	a5,-244(a5) # 80007370 <free_mem_head>
    8000146c:	02078263          	beqz	a5,80001490 <__mem_alloc+0x44>

        free_mem_head->next = NULL;
        free_mem_head->prev = NULL;
    }

    size_t blocks = (bytes % MEM_BLOCK_SIZE > 0) ? (bytes / MEM_BLOCK_SIZE + 1) : (bytes / MEM_BLOCK_SIZE);
    80001470:	03f57793          	andi	a5,a0,63
    80001474:	06078263          	beqz	a5,800014d8 <__mem_alloc+0x8c>
    80001478:	00655513          	srli	a0,a0,0x6
    8000147c:	00150913          	addi	s2,a0,1

    size_t allocate = blocks * MEM_BLOCK_SIZE; // Now this is in bytes
    80001480:	00691913          	slli	s2,s2,0x6

    for (struct mem_block* curr = free_mem_head; curr != NULL; curr = curr->next)
    80001484:	00006497          	auipc	s1,0x6
    80001488:	eec4b483          	ld	s1,-276(s1) # 80007370 <free_mem_head>
    8000148c:	0900006f          	j	8000151c <__mem_alloc+0xd0>
    if (free_mem_head == NULL && beginning == 0)
    80001490:	00006797          	auipc	a5,0x6
    80001494:	ed07a783          	lw	a5,-304(a5) # 80007360 <beginning>
    80001498:	fc079ce3          	bnez	a5,80001470 <__mem_alloc+0x24>
        beginning = 1;
    8000149c:	00100793          	li	a5,1
    800014a0:	00006717          	auipc	a4,0x6
    800014a4:	ecf72023          	sw	a5,-320(a4) # 80007360 <beginning>
        free_mem_head = (struct mem_block*) HEAP_START_ADDR;
    800014a8:	00006797          	auipc	a5,0x6
    800014ac:	df07b783          	ld	a5,-528(a5) # 80007298 <HEAP_START_ADDR>
    800014b0:	00006717          	auipc	a4,0x6
    800014b4:	ecf73023          	sd	a5,-320(a4) # 80007370 <free_mem_head>
        free_mem_head->size = ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR) - sizeof(struct mem_block);
    800014b8:	00006717          	auipc	a4,0x6
    800014bc:	dd873703          	ld	a4,-552(a4) # 80007290 <HEAP_END_ADDR>
    800014c0:	40f70733          	sub	a4,a4,a5
    800014c4:	fe870713          	addi	a4,a4,-24
    800014c8:	00e7b023          	sd	a4,0(a5)
        free_mem_head->next = NULL;
    800014cc:	0007b823          	sd	zero,16(a5)
        free_mem_head->prev = NULL;
    800014d0:	0007b423          	sd	zero,8(a5)
    800014d4:	f9dff06f          	j	80001470 <__mem_alloc+0x24>
    size_t blocks = (bytes % MEM_BLOCK_SIZE > 0) ? (bytes / MEM_BLOCK_SIZE + 1) : (bytes / MEM_BLOCK_SIZE);
    800014d8:	00655913          	srli	s2,a0,0x6
    800014dc:	fa5ff06f          	j	80001480 <__mem_alloc+0x34>
        /* FIRST FIT */
        if (curr->size < allocate)
            continue;
        else if (curr->size == allocate)
        {
            free_remove(curr);
    800014e0:	00048513          	mv	a0,s1
    800014e4:	00000097          	auipc	ra,0x0
    800014e8:	e10080e7          	jalr	-496(ra) # 800012f4 <free_remove>
            used_insert(curr);
    800014ec:	00048513          	mv	a0,s1
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	e68080e7          	jalr	-408(ra) # 80001358 <used_insert>

            return (void*)((char*)curr + sizeof(struct mem_block));
    800014f8:	01848493          	addi	s1,s1,24
        }
    }

    // There is not enough space
    return NULL;
}
    800014fc:	00048513          	mv	a0,s1
    80001500:	01813083          	ld	ra,24(sp)
    80001504:	01013403          	ld	s0,16(sp)
    80001508:	00813483          	ld	s1,8(sp)
    8000150c:	00013903          	ld	s2,0(sp)
    80001510:	02010113          	addi	sp,sp,32
    80001514:	00008067          	ret
    for (struct mem_block* curr = free_mem_head; curr != NULL; curr = curr->next)
    80001518:	0104b483          	ld	s1,16(s1)
    8000151c:	fe0480e3          	beqz	s1,800014fc <__mem_alloc+0xb0>
        if (curr->size < allocate)
    80001520:	0004b783          	ld	a5,0(s1)
    80001524:	ff27eae3          	bltu	a5,s2,80001518 <__mem_alloc+0xcc>
        else if (curr->size == allocate)
    80001528:	fb278ce3          	beq	a5,s2,800014e0 <__mem_alloc+0x94>
        else if (curr->size > allocate)
    8000152c:	fef976e3          	bgeu	s2,a5,80001518 <__mem_alloc+0xcc>
            free_remove(curr);
    80001530:	00048513          	mv	a0,s1
    80001534:	00000097          	auipc	ra,0x0
    80001538:	dc0080e7          	jalr	-576(ra) # 800012f4 <free_remove>
            size_t leftover_allocatable_size = curr->size - allocate; // Leftover
    8000153c:	0004b783          	ld	a5,0(s1)
    80001540:	412787b3          	sub	a5,a5,s2
            leftover_allocatable_size -= sizeof(struct mem_block);
    80001544:	fe878793          	addi	a5,a5,-24
            struct mem_block* leftover = (struct mem_block*) ((char*)curr + sizeof(struct mem_block) + allocate);
    80001548:	01890513          	addi	a0,s2,24
    8000154c:	00a48533          	add	a0,s1,a0
            leftover->prev = NULL;
    80001550:	00053423          	sd	zero,8(a0)
            leftover->next = NULL;
    80001554:	00053823          	sd	zero,16(a0)
            leftover->size = leftover_allocatable_size;
    80001558:	00f53023          	sd	a5,0(a0)
            curr->size = allocate;
    8000155c:	0124b023          	sd	s2,0(s1)
            free_insert(leftover);
    80001560:	00000097          	auipc	ra,0x0
    80001564:	d04080e7          	jalr	-764(ra) # 80001264 <free_insert>
            used_insert(curr);
    80001568:	00048513          	mv	a0,s1
    8000156c:	00000097          	auipc	ra,0x0
    80001570:	dec080e7          	jalr	-532(ra) # 80001358 <used_insert>
            return (void*)((char*)curr + sizeof(struct mem_block));
    80001574:	01848493          	addi	s1,s1,24
    80001578:	f85ff06f          	j	800014fc <__mem_alloc+0xb0>

000000008000157c <__mem_free>:

int
__mem_free(void* allocated_address)
{
    /* Nothing to free */
    if (allocated_address == NULL || used_mem_head == NULL)
    8000157c:	10050a63          	beqz	a0,80001690 <__mem_free+0x114>
{
    80001580:	fe010113          	addi	sp,sp,-32
    80001584:	00113c23          	sd	ra,24(sp)
    80001588:	00813823          	sd	s0,16(sp)
    8000158c:	00913423          	sd	s1,8(sp)
    80001590:	01213023          	sd	s2,0(sp)
    80001594:	02010413          	addi	s0,sp,32
    80001598:	00050493          	mv	s1,a0
    if (allocated_address == NULL || used_mem_head == NULL)
    8000159c:	00006797          	auipc	a5,0x6
    800015a0:	dcc7b783          	ld	a5,-564(a5) # 80007368 <used_mem_head>
    800015a4:	0e078a63          	beqz	a5,80001698 <__mem_free+0x11c>
        return -1;

    if ((char*)allocated_address < (char*)HEAP_START_ADDR || (char*)allocated_address > (char*)HEAP_END_ADDR)
    800015a8:	00006717          	auipc	a4,0x6
    800015ac:	cf073703          	ld	a4,-784(a4) # 80007298 <HEAP_START_ADDR>
    800015b0:	0ee56863          	bltu	a0,a4,800016a0 <__mem_free+0x124>
    800015b4:	00006717          	auipc	a4,0x6
    800015b8:	cdc73703          	ld	a4,-804(a4) # 80007290 <HEAP_END_ADDR>
    800015bc:	0ea76663          	bltu	a4,a0,800016a8 <__mem_free+0x12c>
        return -1;

    // Because we keep the list sorted
    if ((char*)allocated_address < (char*)used_mem_head)
    800015c0:	0ef56863          	bltu	a0,a5,800016b0 <__mem_free+0x134>
        return -1;

    struct mem_block* block_to_free = (struct mem_block*)((char*)allocated_address - sizeof(struct mem_block));
    800015c4:	fe850913          	addi	s2,a0,-24

    used_remove(block_to_free);
    800015c8:	00090513          	mv	a0,s2
    800015cc:	00000097          	auipc	ra,0x0
    800015d0:	e1c080e7          	jalr	-484(ra) # 800013e8 <used_remove>
    free_insert(block_to_free);
    800015d4:	00090513          	mv	a0,s2
    800015d8:	00000097          	auipc	ra,0x0
    800015dc:	c8c080e7          	jalr	-884(ra) # 80001264 <free_insert>

    /* Merge */
    struct mem_block* prev = block_to_free->prev;
    800015e0:	ff04b783          	ld	a5,-16(s1)
    struct mem_block* next = block_to_free->next;
    800015e4:	ff84b703          	ld	a4,-8(s1)

    /* Merge with Left */
    if (prev != NULL && ((char*)prev + sizeof(struct mem_block) + prev->size) >= (char*)block_to_free)
    800015e8:	06078863          	beqz	a5,80001658 <__mem_free+0xdc>
    800015ec:	0007b683          	ld	a3,0(a5)
    800015f0:	01868613          	addi	a2,a3,24
    800015f4:	00c78633          	add	a2,a5,a2
    800015f8:	07266063          	bltu	a2,s2,80001658 <__mem_free+0xdc>
    {
        prev->size += sizeof(struct mem_block) + block_to_free->size;
    800015fc:	fe84b603          	ld	a2,-24(s1)
    80001600:	00c686b3          	add	a3,a3,a2
    80001604:	01868693          	addi	a3,a3,24
    80001608:	00d7b023          	sd	a3,0(a5)
        prev->next = block_to_free->next;
    8000160c:	ff84b683          	ld	a3,-8(s1)
    80001610:	00d7b823          	sd	a3,16(a5)

        if (next != NULL)
    80001614:	00070463          	beqz	a4,8000161c <__mem_free+0xa0>
            next->prev = prev;
    80001618:	00f73423          	sd	a5,8(a4)

        /* Merge with Right as well */
        if (next != NULL && ((char*)prev + sizeof(struct mem_block) + prev->size) >= (char*)next)
    8000161c:	08070e63          	beqz	a4,800016b8 <__mem_free+0x13c>
    80001620:	0007b683          	ld	a3,0(a5)
    80001624:	01868613          	addi	a2,a3,24
    80001628:	00c78633          	add	a2,a5,a2
    8000162c:	08e66a63          	bltu	a2,a4,800016c0 <__mem_free+0x144>
        {
            prev->size += sizeof(struct mem_block) + next->size;
    80001630:	00073603          	ld	a2,0(a4)
    80001634:	00c686b3          	add	a3,a3,a2
    80001638:	01868693          	addi	a3,a3,24
    8000163c:	00d7b023          	sd	a3,0(a5)
            prev->next = next->next;
    80001640:	01073703          	ld	a4,16(a4)
    80001644:	00e7b823          	sd	a4,16(a5)

            if (next->next != NULL)
    80001648:	08070063          	beqz	a4,800016c8 <__mem_free+0x14c>
                next->next->prev = prev;
    8000164c:	00f73423          	sd	a5,8(a4)

        if (next->next != NULL)
            next->next->prev = block_to_free;
    }

    return 0;
    80001650:	00000513          	li	a0,0
    80001654:	0880006f          	j	800016dc <__mem_free+0x160>
    else if (next != NULL && ((char*)block_to_free + sizeof(struct mem_block) + block_to_free->size) >= (char*)next)
    80001658:	06070c63          	beqz	a4,800016d0 <__mem_free+0x154>
    8000165c:	fe84b783          	ld	a5,-24(s1)
    80001660:	00f486b3          	add	a3,s1,a5
    80001664:	06e6ea63          	bltu	a3,a4,800016d8 <__mem_free+0x15c>
        block_to_free->size += sizeof(struct mem_block) + next->size;
    80001668:	00073683          	ld	a3,0(a4)
    8000166c:	00d787b3          	add	a5,a5,a3
    80001670:	01878793          	addi	a5,a5,24
    80001674:	fef4b423          	sd	a5,-24(s1)
        block_to_free->next = next->next;
    80001678:	01073783          	ld	a5,16(a4)
    8000167c:	fef4bc23          	sd	a5,-8(s1)
        if (next->next != NULL)
    80001680:	06078a63          	beqz	a5,800016f4 <__mem_free+0x178>
            next->next->prev = block_to_free;
    80001684:	0127b423          	sd	s2,8(a5)
    return 0;
    80001688:	00000513          	li	a0,0
    8000168c:	0500006f          	j	800016dc <__mem_free+0x160>
        return -1;
    80001690:	fff00513          	li	a0,-1
    80001694:	00008067          	ret
        return -1;
    80001698:	fff00513          	li	a0,-1
    8000169c:	0400006f          	j	800016dc <__mem_free+0x160>
        return -1;
    800016a0:	fff00513          	li	a0,-1
    800016a4:	0380006f          	j	800016dc <__mem_free+0x160>
    800016a8:	fff00513          	li	a0,-1
    800016ac:	0300006f          	j	800016dc <__mem_free+0x160>
        return -1;
    800016b0:	fff00513          	li	a0,-1
    800016b4:	0280006f          	j	800016dc <__mem_free+0x160>
    return 0;
    800016b8:	00000513          	li	a0,0
    800016bc:	0200006f          	j	800016dc <__mem_free+0x160>
    800016c0:	00000513          	li	a0,0
    800016c4:	0180006f          	j	800016dc <__mem_free+0x160>
    800016c8:	00000513          	li	a0,0
    800016cc:	0100006f          	j	800016dc <__mem_free+0x160>
    800016d0:	00000513          	li	a0,0
    800016d4:	0080006f          	j	800016dc <__mem_free+0x160>
    800016d8:	00000513          	li	a0,0
    800016dc:	01813083          	ld	ra,24(sp)
    800016e0:	01013403          	ld	s0,16(sp)
    800016e4:	00813483          	ld	s1,8(sp)
    800016e8:	00013903          	ld	s2,0(sp)
    800016ec:	02010113          	addi	sp,sp,32
    800016f0:	00008067          	ret
    return 0;
    800016f4:	00000513          	li	a0,0
    800016f8:	fe5ff06f          	j	800016dc <__mem_free+0x160>

00000000800016fc <_Z9mem_allocm>:
#include "../lib/console.h"


void*
mem_alloc(size_t size)
{
    800016fc:	ff010113          	addi	sp,sp,-16
    80001700:	00813423          	sd	s0,8(sp)
    80001704:	01010413          	addi	s0,sp,16
    uint64 number = 0x01;
    size_t bytes = size;

    __asm__ volatile("mv a1, %0" : : "r" (bytes));
    80001708:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (number));
    8000170c:	00100793          	li	a5,1
    80001710:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001714:	00000073          	ecall

    void* allocated_address;
    __asm__ volatile("mv %0, a0" : "=r" (allocated_address));
    80001718:	00050513          	mv	a0,a0

    return allocated_address;
}
    8000171c:	00813403          	ld	s0,8(sp)
    80001720:	01010113          	addi	sp,sp,16
    80001724:	00008067          	ret

0000000080001728 <_Z8mem_freePv>:


int
mem_free(void* allocated_address)
{
    80001728:	ff010113          	addi	sp,sp,-16
    8000172c:	00813423          	sd	s0,8(sp)
    80001730:	01010413          	addi	s0,sp,16
    uint64 number = 0x02;
    __asm__ volatile("mv a1, %0" : : "r" (allocated_address));
    80001734:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (number));
    80001738:	00200793          	li	a5,2
    8000173c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001740:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001744:	00050513          	mv	a0,a0

    return ret;
}
    80001748:	0005051b          	sext.w	a0,a0
    8000174c:	00813403          	ld	s0,8(sp)
    80001750:	01010113          	addi	sp,sp,16
    80001754:	00008067          	ret

0000000080001758 <_Z13thread_createPP3TCBPFvPvES2_>:


int
thread_create(thread_t *handle, void(*start_routine)(void*), void *arg)
{
    80001758:	ff010113          	addi	sp,sp,-16
    8000175c:	00813423          	sd	s0,8(sp)
    80001760:	01010413          	addi	s0,sp,16
    uint64 number = 0x11;

    __asm__ volatile("mv a6, %0" : : "r" (arg));
    80001764:	00060813          	mv	a6,a2
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    80001768:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    8000176c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (number));
    80001770:	01100793          	li	a5,17
    80001774:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001778:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    8000177c:	00050513          	mv	a0,a0

    return (int)ret;

}
    80001780:	0005051b          	sext.w	a0,a0
    80001784:	00813403          	ld	s0,8(sp)
    80001788:	01010113          	addi	sp,sp,16
    8000178c:	00008067          	ret

0000000080001790 <_Z11thread_exitv>:

int
thread_exit()
{
    80001790:	ff010113          	addi	sp,sp,-16
    80001794:	00813423          	sd	s0,8(sp)
    80001798:	01010413          	addi	s0,sp,16
    int number = 0x12;
    __asm__ volatile("mv a0, %0" : : "r" (number));
    8000179c:	01200793          	li	a5,18
    800017a0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800017a4:	00000073          	ecall

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800017a8:	00050513          	mv	a0,a0

    return ret;
}
    800017ac:	0005051b          	sext.w	a0,a0
    800017b0:	00813403          	ld	s0,8(sp)
    800017b4:	01010113          	addi	sp,sp,16
    800017b8:	00008067          	ret

00000000800017bc <_Z15thread_dispatchv>:

void
thread_dispatch()
{
    800017bc:	ff010113          	addi	sp,sp,-16
    800017c0:	00813423          	sd	s0,8(sp)
    800017c4:	01010413          	addi	s0,sp,16
    int number = 0x13;
    __asm__ volatile("mv a0, %0" : : "r" (number));
    800017c8:	01300793          	li	a5,19
    800017cc:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800017d0:	00000073          	ecall
}
    800017d4:	00813403          	ld	s0,8(sp)
    800017d8:	01010113          	addi	sp,sp,16
    800017dc:	00008067          	ret

00000000800017e0 <_Z22thread_create_wo_startPP3TCBPFvPvES2_>:


int
thread_create_wo_start(thread_t *handle, void(*start_routine)(void*), void *arg)
{
    800017e0:	ff010113          	addi	sp,sp,-16
    800017e4:	00813423          	sd	s0,8(sp)
    800017e8:	01010413          	addi	s0,sp,16
    uint64 number = 0x14;

    __asm__ volatile("mv a6, %0" : : "r" (arg));
    800017ec:	00060813          	mv	a6,a2
    __asm__ volatile("mv a5, %0" : : "r" (arg));
    800017f0:	00060793          	mv	a5,a2
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    800017f4:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    800017f8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (number));
    800017fc:	01400793          	li	a5,20
    80001800:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001804:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001808:	00050513          	mv	a0,a0

    return (int)ret;
}
    8000180c:	0005051b          	sext.w	a0,a0
    80001810:	00813403          	ld	s0,8(sp)
    80001814:	01010113          	addi	sp,sp,16
    80001818:	00008067          	ret

000000008000181c <_Z12thread_startP3TCB>:


int
thread_start(thread_t handle)
{
    8000181c:	ff010113          	addi	sp,sp,-16
    80001820:	00813423          	sd	s0,8(sp)
    80001824:	01010413          	addi	s0,sp,16
    int number = 0x15;
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    80001828:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (number));
    8000182c:	01500793          	li	a5,21
    80001830:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001834:	00000073          	ecall

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001838:	00050513          	mv	a0,a0

    return ret;
}
    8000183c:	0005051b          	sext.w	a0,a0
    80001840:	00813403          	ld	s0,8(sp)
    80001844:	01010113          	addi	sp,sp,16
    80001848:	00008067          	ret

000000008000184c <_Z8sem_openPP3Semj>:



int
sem_open (sem_t* handle, unsigned init)
{
    8000184c:	ff010113          	addi	sp,sp,-16
    80001850:	00813423          	sd	s0,8(sp)
    80001854:	01010413          	addi	s0,sp,16
    uint64 number = 0x21;

    __asm__ volatile("mv a2, %0" : : "r" (init));
    80001858:	00058613          	mv	a2,a1
    __asm__ volatile("mv a6, %0" : : "r" (handle));
    8000185c:	00050813          	mv	a6,a0
    __asm__ volatile("mv a0, %0" : : "r" (number));
    80001860:	02100793          	li	a5,33
    80001864:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001868:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    8000186c:	00050513          	mv	a0,a0

    return (int)ret;
}
    80001870:	0005051b          	sext.w	a0,a0
    80001874:	00813403          	ld	s0,8(sp)
    80001878:	01010113          	addi	sp,sp,16
    8000187c:	00008067          	ret

0000000080001880 <_Z9sem_closeP3Sem>:


int
sem_close (sem_t handle)
{
    80001880:	ff010113          	addi	sp,sp,-16
    80001884:	00813423          	sd	s0,8(sp)
    80001888:	01010413          	addi	s0,sp,16
    uint64 number = 0x22;

    __asm__ volatile("mv a1, %0" : : "r" (handle));
    8000188c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (number));
    80001890:	02200793          	li	a5,34
    80001894:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001898:	00000073          	ecall

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    8000189c:	00050513          	mv	a0,a0

    return ret;
}
    800018a0:	0005051b          	sext.w	a0,a0
    800018a4:	00813403          	ld	s0,8(sp)
    800018a8:	01010113          	addi	sp,sp,16
    800018ac:	00008067          	ret

00000000800018b0 <_Z8sem_waitP3Sem>:


int
sem_wait (sem_t id)
{
    800018b0:	ff010113          	addi	sp,sp,-16
    800018b4:	00813423          	sd	s0,8(sp)
    800018b8:	01010413          	addi	s0,sp,16
    uint64 number = 0x23;

    __asm__ volatile("mv a1, %0" : : "r" (id));
    800018bc:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (number));
    800018c0:	02300793          	li	a5,35
    800018c4:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800018c8:	00000073          	ecall

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800018cc:	00050513          	mv	a0,a0

    return ret;
}
    800018d0:	0005051b          	sext.w	a0,a0
    800018d4:	00813403          	ld	s0,8(sp)
    800018d8:	01010113          	addi	sp,sp,16
    800018dc:	00008067          	ret

00000000800018e0 <_Z10sem_signalP3Sem>:


int
sem_signal (sem_t id)
{
    800018e0:	ff010113          	addi	sp,sp,-16
    800018e4:	00813423          	sd	s0,8(sp)
    800018e8:	01010413          	addi	s0,sp,16
    uint64 number = 0x24;

    __asm__ volatile("mv a1, %0" : : "r" (id));
    800018ec:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (number));
    800018f0:	02400793          	li	a5,36
    800018f4:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800018f8:	00000073          	ecall

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800018fc:	00050513          	mv	a0,a0

    return ret;
}
    80001900:	0005051b          	sext.w	a0,a0
    80001904:	00813403          	ld	s0,8(sp)
    80001908:	01010113          	addi	sp,sp,16
    8000190c:	00008067          	ret

0000000080001910 <_Z4putcc>:


void
putc (char chr)
{
    80001910:	ff010113          	addi	sp,sp,-16
    80001914:	00113423          	sd	ra,8(sp)
    80001918:	00813023          	sd	s0,0(sp)
    8000191c:	01010413          	addi	s0,sp,16
    __putc(chr);
    80001920:	00004097          	auipc	ra,0x4
    80001924:	29c080e7          	jalr	668(ra) # 80005bbc <__putc>
}
    80001928:	00813083          	ld	ra,8(sp)
    8000192c:	00013403          	ld	s0,0(sp)
    80001930:	01010113          	addi	sp,sp,16
    80001934:	00008067          	ret

0000000080001938 <_Z4getcv>:


char
getc ()
{
    80001938:	ff010113          	addi	sp,sp,-16
    8000193c:	00113423          	sd	ra,8(sp)
    80001940:	00813023          	sd	s0,0(sp)
    80001944:	01010413          	addi	s0,sp,16
    return __getc();
    80001948:	00004097          	auipc	ra,0x4
    8000194c:	2b0080e7          	jalr	688(ra) # 80005bf8 <__getc>
}
    80001950:	00813083          	ld	ra,8(sp)
    80001954:	00013403          	ld	s0,0(sp)
    80001958:	01010113          	addi	sp,sp,16
    8000195c:	00008067          	ret

0000000080001960 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init)
{
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore()
    80001960:	ff010113          	addi	sp,sp,-16
    80001964:	00113423          	sd	ra,8(sp)
    80001968:	00813023          	sd	s0,0(sp)
    8000196c:	01010413          	addi	s0,sp,16
    80001970:	00006797          	auipc	a5,0x6
    80001974:	94078793          	addi	a5,a5,-1728 # 800072b0 <_ZTV9Semaphore+0x10>
    80001978:	00f53023          	sd	a5,0(a0)
{
    sem_close(myHandle);
    8000197c:	00853503          	ld	a0,8(a0)
    80001980:	00000097          	auipc	ra,0x0
    80001984:	f00080e7          	jalr	-256(ra) # 80001880 <_Z9sem_closeP3Sem>
}
    80001988:	00813083          	ld	ra,8(sp)
    8000198c:	00013403          	ld	s0,0(sp)
    80001990:	01010113          	addi	sp,sp,16
    80001994:	00008067          	ret

0000000080001998 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore()
    80001998:	fe010113          	addi	sp,sp,-32
    8000199c:	00113c23          	sd	ra,24(sp)
    800019a0:	00813823          	sd	s0,16(sp)
    800019a4:	00913423          	sd	s1,8(sp)
    800019a8:	02010413          	addi	s0,sp,32
    800019ac:	00050493          	mv	s1,a0
}
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	fb0080e7          	jalr	-80(ra) # 80001960 <_ZN9SemaphoreD1Ev>
    800019b8:	00048513          	mv	a0,s1
    800019bc:	00001097          	auipc	ra,0x1
    800019c0:	99c080e7          	jalr	-1636(ra) # 80002358 <_ZdlPv>
    800019c4:	01813083          	ld	ra,24(sp)
    800019c8:	01013403          	ld	s0,16(sp)
    800019cc:	00813483          	ld	s1,8(sp)
    800019d0:	02010113          	addi	sp,sp,32
    800019d4:	00008067          	ret

00000000800019d8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init)
    800019d8:	ff010113          	addi	sp,sp,-16
    800019dc:	00113423          	sd	ra,8(sp)
    800019e0:	00813023          	sd	s0,0(sp)
    800019e4:	01010413          	addi	s0,sp,16
    800019e8:	00006797          	auipc	a5,0x6
    800019ec:	8c878793          	addi	a5,a5,-1848 # 800072b0 <_ZTV9Semaphore+0x10>
    800019f0:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    800019f4:	00850513          	addi	a0,a0,8
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	e54080e7          	jalr	-428(ra) # 8000184c <_Z8sem_openPP3Semj>
}
    80001a00:	00813083          	ld	ra,8(sp)
    80001a04:	00013403          	ld	s0,0(sp)
    80001a08:	01010113          	addi	sp,sp,16
    80001a0c:	00008067          	ret

0000000080001a10 <_ZN9Semaphore4waitEv>:

int Semaphore::wait()
{
    80001a10:	ff010113          	addi	sp,sp,-16
    80001a14:	00113423          	sd	ra,8(sp)
    80001a18:	00813023          	sd	s0,0(sp)
    80001a1c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001a20:	00853503          	ld	a0,8(a0)
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	e8c080e7          	jalr	-372(ra) # 800018b0 <_Z8sem_waitP3Sem>
}
    80001a2c:	00813083          	ld	ra,8(sp)
    80001a30:	00013403          	ld	s0,0(sp)
    80001a34:	01010113          	addi	sp,sp,16
    80001a38:	00008067          	ret

0000000080001a3c <_ZN9Semaphore6signalEv>:

int Semaphore::signal()
{
    80001a3c:	ff010113          	addi	sp,sp,-16
    80001a40:	00113423          	sd	ra,8(sp)
    80001a44:	00813023          	sd	s0,0(sp)
    80001a48:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001a4c:	00853503          	ld	a0,8(a0)
    80001a50:	00000097          	auipc	ra,0x0
    80001a54:	e90080e7          	jalr	-368(ra) # 800018e0 <_Z10sem_signalP3Sem>
    80001a58:	00813083          	ld	ra,8(sp)
    80001a5c:	00013403          	ld	s0,0(sp)
    80001a60:	01010113          	addi	sp,sp,16
    80001a64:	00008067          	ret

0000000080001a68 <_Z6helperPv>:
extern void userMain();

bool done = false;
void
helper(void *arg)
{
    80001a68:	ff010113          	addi	sp,sp,-16
    80001a6c:	00113423          	sd	ra,8(sp)
    80001a70:	00813023          	sd	s0,0(sp)
    80001a74:	01010413          	addi	s0,sp,16
    userMain();
    80001a78:	00002097          	auipc	ra,0x2
    80001a7c:	d34080e7          	jalr	-716(ra) # 800037ac <_Z8userMainv>
    done = true;
    80001a80:	00100793          	li	a5,1
    80001a84:	00006717          	auipc	a4,0x6
    80001a88:	90f70e23          	sb	a5,-1764(a4) # 800073a0 <done>
}
    80001a8c:	00813083          	ld	ra,8(sp)
    80001a90:	00013403          	ld	s0,0(sp)
    80001a94:	01010113          	addi	sp,sp,16
    80001a98:	00008067          	ret

0000000080001a9c <_Z11free_insertP9mem_block>:
void used_remove(struct mem_block* block);


void
free_insert(struct mem_block* block)
{
    80001a9c:	ff010113          	addi	sp,sp,-16
    80001aa0:	00813423          	sd	s0,8(sp)
    80001aa4:	01010413          	addi	s0,sp,16
    if ((char*)block < (char*)HEAP_START_ADDR || (char*)block >= (char*)HEAP_END_ADDR)
    80001aa8:	00006797          	auipc	a5,0x6
    80001aac:	8687b783          	ld	a5,-1944(a5) # 80007310 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001ab0:	0007b783          	ld	a5,0(a5)
    80001ab4:	02f56c63          	bltu	a0,a5,80001aec <_Z11free_insertP9mem_block+0x50>
    80001ab8:	00006797          	auipc	a5,0x6
    80001abc:	8807b783          	ld	a5,-1920(a5) # 80007338 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001ac0:	0007b783          	ld	a5,0(a5)
    80001ac4:	02f57463          	bgeu	a0,a5,80001aec <_Z11free_insertP9mem_block+0x50>
        return;

    if (free_mem_head == NULL)
    80001ac8:	00006717          	auipc	a4,0x6
    80001acc:	8e073703          	ld	a4,-1824(a4) # 800073a8 <_ZL13free_mem_head>
    80001ad0:	02070463          	beqz	a4,80001af8 <_Z11free_insertP9mem_block+0x5c>
    {
        free_mem_head = block;
    }
    else if (block < free_mem_head)
    80001ad4:	02e57863          	bgeu	a0,a4,80001b04 <_Z11free_insertP9mem_block+0x68>
    {
        block->prev = NULL;
    80001ad8:	00053423          	sd	zero,8(a0)
        block->next = free_mem_head;
    80001adc:	00e53823          	sd	a4,16(a0)
        free_mem_head->prev = block;
    80001ae0:	00a73423          	sd	a0,8(a4)

        free_mem_head = block;
    80001ae4:	00006797          	auipc	a5,0x6
    80001ae8:	8ca7b223          	sd	a0,-1852(a5) # 800073a8 <_ZL13free_mem_head>
        block->next = tmp;

        if (tmp != NULL)
            tmp->prev = block;
    }
}
    80001aec:	00813403          	ld	s0,8(sp)
    80001af0:	01010113          	addi	sp,sp,16
    80001af4:	00008067          	ret
        free_mem_head = block;
    80001af8:	00006797          	auipc	a5,0x6
    80001afc:	8aa7b823          	sd	a0,-1872(a5) # 800073a8 <_ZL13free_mem_head>
    80001b00:	fedff06f          	j	80001aec <_Z11free_insertP9mem_block+0x50>
        struct mem_block* tmp      = free_mem_head->next;
    80001b04:	01073783          	ld	a5,16(a4)
        while (tmp != NULL && (char*)tmp < (char*)block)
    80001b08:	00078a63          	beqz	a5,80001b1c <_Z11free_insertP9mem_block+0x80>
    80001b0c:	00a7f863          	bgeu	a5,a0,80001b1c <_Z11free_insertP9mem_block+0x80>
            prev_tmp = tmp;
    80001b10:	00078713          	mv	a4,a5
            tmp = tmp->next;
    80001b14:	0107b783          	ld	a5,16(a5)
        while (tmp != NULL && (char*)tmp < (char*)block)
    80001b18:	ff1ff06f          	j	80001b08 <_Z11free_insertP9mem_block+0x6c>
        prev_tmp->next = block;
    80001b1c:	00a73823          	sd	a0,16(a4)
        block->prev = prev_tmp;
    80001b20:	00e53423          	sd	a4,8(a0)
        block->next = tmp;
    80001b24:	00f53823          	sd	a5,16(a0)
        if (tmp != NULL)
    80001b28:	fc0782e3          	beqz	a5,80001aec <_Z11free_insertP9mem_block+0x50>
            tmp->prev = block;
    80001b2c:	00a7b423          	sd	a0,8(a5)
    80001b30:	fbdff06f          	j	80001aec <_Z11free_insertP9mem_block+0x50>

0000000080001b34 <_Z11free_removeP9mem_block>:


void
free_remove(struct mem_block* block)
{
    80001b34:	ff010113          	addi	sp,sp,-16
    80001b38:	00813423          	sd	s0,8(sp)
    80001b3c:	01010413          	addi	s0,sp,16
    if (free_mem_head == NULL || block == NULL)
    80001b40:	00006797          	auipc	a5,0x6
    80001b44:	8687b783          	ld	a5,-1944(a5) # 800073a8 <_ZL13free_mem_head>
    80001b48:	02078663          	beqz	a5,80001b74 <_Z11free_removeP9mem_block+0x40>
    80001b4c:	02050463          	beqz	a0,80001b74 <_Z11free_removeP9mem_block+0x40>
        return;

    if (block == free_mem_head)
    80001b50:	02a78863          	beq	a5,a0,80001b80 <_Z11free_removeP9mem_block+0x4c>
        if (free_mem_head != NULL)
            free_mem_head->prev = NULL;
    }
    else
    {
        block->prev->next = block->next;
    80001b54:	00853703          	ld	a4,8(a0)
    80001b58:	01053783          	ld	a5,16(a0)
    80001b5c:	00f73823          	sd	a5,16(a4)
        if (block->next)
    80001b60:	00078663          	beqz	a5,80001b6c <_Z11free_removeP9mem_block+0x38>
            block->next->prev = block->prev;
    80001b64:	00853703          	ld	a4,8(a0)
    80001b68:	00e7b423          	sd	a4,8(a5)
    }

    // Unlink
    block->prev = NULL;
    80001b6c:	00053423          	sd	zero,8(a0)
    block->next = NULL;
    80001b70:	00053823          	sd	zero,16(a0)
}
    80001b74:	00813403          	ld	s0,8(sp)
    80001b78:	01010113          	addi	sp,sp,16
    80001b7c:	00008067          	ret
        free_mem_head = free_mem_head->next;
    80001b80:	0107b783          	ld	a5,16(a5)
    80001b84:	00006717          	auipc	a4,0x6
    80001b88:	82f73223          	sd	a5,-2012(a4) # 800073a8 <_ZL13free_mem_head>
        if (free_mem_head != NULL)
    80001b8c:	fe0780e3          	beqz	a5,80001b6c <_Z11free_removeP9mem_block+0x38>
            free_mem_head->prev = NULL;
    80001b90:	0007b423          	sd	zero,8(a5)
    80001b94:	fd9ff06f          	j	80001b6c <_Z11free_removeP9mem_block+0x38>

0000000080001b98 <_Z11used_insertP9mem_block>:


void
used_insert(struct mem_block* block)
{
    80001b98:	ff010113          	addi	sp,sp,-16
    80001b9c:	00813423          	sd	s0,8(sp)
    80001ba0:	01010413          	addi	s0,sp,16
    if ((char*)block < (char*)HEAP_START_ADDR || (char*)block >= (char*)HEAP_END_ADDR)
    80001ba4:	00005797          	auipc	a5,0x5
    80001ba8:	76c7b783          	ld	a5,1900(a5) # 80007310 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001bac:	0007b783          	ld	a5,0(a5)
    80001bb0:	02f56c63          	bltu	a0,a5,80001be8 <_Z11used_insertP9mem_block+0x50>
    80001bb4:	00005797          	auipc	a5,0x5
    80001bb8:	7847b783          	ld	a5,1924(a5) # 80007338 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001bbc:	0007b783          	ld	a5,0(a5)
    80001bc0:	02f57463          	bgeu	a0,a5,80001be8 <_Z11used_insertP9mem_block+0x50>
        return;

    if (used_mem_head == NULL)
    80001bc4:	00005717          	auipc	a4,0x5
    80001bc8:	7ec73703          	ld	a4,2028(a4) # 800073b0 <_ZL13used_mem_head>
    80001bcc:	02070463          	beqz	a4,80001bf4 <_Z11used_insertP9mem_block+0x5c>
    {
        used_mem_head = block;
    }
    else if (block < used_mem_head)
    80001bd0:	02e57863          	bgeu	a0,a4,80001c00 <_Z11used_insertP9mem_block+0x68>
    {
        block->prev = NULL;
    80001bd4:	00053423          	sd	zero,8(a0)
        block->next = used_mem_head;
    80001bd8:	00e53823          	sd	a4,16(a0)
        used_mem_head->prev = block;
    80001bdc:	00a73423          	sd	a0,8(a4)

        used_mem_head = block;
    80001be0:	00005797          	auipc	a5,0x5
    80001be4:	7ca7b823          	sd	a0,2000(a5) # 800073b0 <_ZL13used_mem_head>
        block->next = tmp;

        if (tmp != NULL)
            tmp->prev = block;
    }
}
    80001be8:	00813403          	ld	s0,8(sp)
    80001bec:	01010113          	addi	sp,sp,16
    80001bf0:	00008067          	ret
        used_mem_head = block;
    80001bf4:	00005797          	auipc	a5,0x5
    80001bf8:	7aa7be23          	sd	a0,1980(a5) # 800073b0 <_ZL13used_mem_head>
    80001bfc:	fedff06f          	j	80001be8 <_Z11used_insertP9mem_block+0x50>
        struct mem_block* tmp      = used_mem_head->next;
    80001c00:	01073783          	ld	a5,16(a4)
        while (tmp != NULL && (char*)tmp < (char*)block)
    80001c04:	00078a63          	beqz	a5,80001c18 <_Z11used_insertP9mem_block+0x80>
    80001c08:	00a7f863          	bgeu	a5,a0,80001c18 <_Z11used_insertP9mem_block+0x80>
            prev_tmp = tmp;
    80001c0c:	00078713          	mv	a4,a5
            tmp = tmp->next;
    80001c10:	0107b783          	ld	a5,16(a5)
        while (tmp != NULL && (char*)tmp < (char*)block)
    80001c14:	ff1ff06f          	j	80001c04 <_Z11used_insertP9mem_block+0x6c>
        prev_tmp->next = block;
    80001c18:	00a73823          	sd	a0,16(a4)
        block->prev = prev_tmp;
    80001c1c:	00e53423          	sd	a4,8(a0)
        block->next = tmp;
    80001c20:	00f53823          	sd	a5,16(a0)
        if (tmp != NULL)
    80001c24:	fc0782e3          	beqz	a5,80001be8 <_Z11used_insertP9mem_block+0x50>
            tmp->prev = block;
    80001c28:	00a7b423          	sd	a0,8(a5)
    80001c2c:	fbdff06f          	j	80001be8 <_Z11used_insertP9mem_block+0x50>

0000000080001c30 <_Z11used_removeP9mem_block>:


void
used_remove(struct mem_block* block)
{
    80001c30:	ff010113          	addi	sp,sp,-16
    80001c34:	00813423          	sd	s0,8(sp)
    80001c38:	01010413          	addi	s0,sp,16
    if (used_mem_head == NULL || block == NULL)
    80001c3c:	00005797          	auipc	a5,0x5
    80001c40:	7747b783          	ld	a5,1908(a5) # 800073b0 <_ZL13used_mem_head>
    80001c44:	02078663          	beqz	a5,80001c70 <_Z11used_removeP9mem_block+0x40>
    80001c48:	02050463          	beqz	a0,80001c70 <_Z11used_removeP9mem_block+0x40>
        return;

    if (block == used_mem_head)
    80001c4c:	02a78863          	beq	a5,a0,80001c7c <_Z11used_removeP9mem_block+0x4c>
        if (used_mem_head != NULL)
            used_mem_head->prev = NULL;
    }
    else
    {
        block->prev->next = block->next;
    80001c50:	00853703          	ld	a4,8(a0)
    80001c54:	01053783          	ld	a5,16(a0)
    80001c58:	00f73823          	sd	a5,16(a4)
        if (block->next)
    80001c5c:	00078663          	beqz	a5,80001c68 <_Z11used_removeP9mem_block+0x38>
            block->next->prev = block->prev;
    80001c60:	00853703          	ld	a4,8(a0)
    80001c64:	00e7b423          	sd	a4,8(a5)
    }

    // Unlink
    block->prev = NULL;
    80001c68:	00053423          	sd	zero,8(a0)
    block->next = NULL;
    80001c6c:	00053823          	sd	zero,16(a0)
}
    80001c70:	00813403          	ld	s0,8(sp)
    80001c74:	01010113          	addi	sp,sp,16
    80001c78:	00008067          	ret
        used_mem_head = used_mem_head->next;
    80001c7c:	0107b783          	ld	a5,16(a5)
    80001c80:	00005717          	auipc	a4,0x5
    80001c84:	72f73823          	sd	a5,1840(a4) # 800073b0 <_ZL13used_mem_head>
        if (used_mem_head != NULL)
    80001c88:	fe0780e3          	beqz	a5,80001c68 <_Z11used_removeP9mem_block+0x38>
            used_mem_head->prev = NULL;
    80001c8c:	0007b423          	sd	zero,8(a5)
    80001c90:	fd9ff06f          	j	80001c68 <_Z11used_removeP9mem_block+0x38>

0000000080001c94 <_Z11__mem_allocm>:



void*
__mem_alloc(size_t bytes)
{
    80001c94:	fe010113          	addi	sp,sp,-32
    80001c98:	00113c23          	sd	ra,24(sp)
    80001c9c:	00813823          	sd	s0,16(sp)
    80001ca0:	00913423          	sd	s1,8(sp)
    80001ca4:	01213023          	sd	s2,0(sp)
    80001ca8:	02010413          	addi	s0,sp,32
    // Initialize if necessary(This is done only once)
    if (free_mem_head == NULL && beginning == 0)
    80001cac:	00005797          	auipc	a5,0x5
    80001cb0:	6fc7b783          	ld	a5,1788(a5) # 800073a8 <_ZL13free_mem_head>
    80001cb4:	02078263          	beqz	a5,80001cd8 <_Z11__mem_allocm+0x44>

        free_mem_head->next = NULL;
        free_mem_head->prev = NULL;
    }

    size_t blocks = (bytes % MEM_BLOCK_SIZE > 0) ? (bytes / MEM_BLOCK_SIZE + 1) : (bytes / MEM_BLOCK_SIZE);
    80001cb8:	03f57793          	andi	a5,a0,63
    80001cbc:	06078663          	beqz	a5,80001d28 <_Z11__mem_allocm+0x94>
    80001cc0:	00655513          	srli	a0,a0,0x6
    80001cc4:	00150913          	addi	s2,a0,1

    size_t allocate = blocks * MEM_BLOCK_SIZE; // Now this is in bytes
    80001cc8:	00691913          	slli	s2,s2,0x6

    for (struct mem_block* curr = free_mem_head; curr != NULL; curr = curr->next)
    80001ccc:	00005497          	auipc	s1,0x5
    80001cd0:	6dc4b483          	ld	s1,1756(s1) # 800073a8 <_ZL13free_mem_head>
    80001cd4:	0980006f          	j	80001d6c <_Z11__mem_allocm+0xd8>
    if (free_mem_head == NULL && beginning == 0)
    80001cd8:	00005797          	auipc	a5,0x5
    80001cdc:	6e07a783          	lw	a5,1760(a5) # 800073b8 <_ZL9beginning>
    80001ce0:	fc079ce3          	bnez	a5,80001cb8 <_Z11__mem_allocm+0x24>
        beginning = 1;
    80001ce4:	00005717          	auipc	a4,0x5
    80001ce8:	6bc70713          	addi	a4,a4,1724 # 800073a0 <done>
    80001cec:	00100793          	li	a5,1
    80001cf0:	00f72c23          	sw	a5,24(a4)
        free_mem_head = (struct mem_block*) HEAP_START_ADDR;
    80001cf4:	00005797          	auipc	a5,0x5
    80001cf8:	61c7b783          	ld	a5,1564(a5) # 80007310 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001cfc:	0007b783          	ld	a5,0(a5)
    80001d00:	00f73423          	sd	a5,8(a4)
        free_mem_head->size = ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR) - sizeof(struct mem_block);
    80001d04:	00005717          	auipc	a4,0x5
    80001d08:	63473703          	ld	a4,1588(a4) # 80007338 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d0c:	00073703          	ld	a4,0(a4)
    80001d10:	40f70733          	sub	a4,a4,a5
    80001d14:	fe870713          	addi	a4,a4,-24
    80001d18:	00e7b023          	sd	a4,0(a5)
        free_mem_head->next = NULL;
    80001d1c:	0007b823          	sd	zero,16(a5)
        free_mem_head->prev = NULL;
    80001d20:	0007b423          	sd	zero,8(a5)
    80001d24:	f95ff06f          	j	80001cb8 <_Z11__mem_allocm+0x24>
    size_t blocks = (bytes % MEM_BLOCK_SIZE > 0) ? (bytes / MEM_BLOCK_SIZE + 1) : (bytes / MEM_BLOCK_SIZE);
    80001d28:	00655913          	srli	s2,a0,0x6
    80001d2c:	f9dff06f          	j	80001cc8 <_Z11__mem_allocm+0x34>
        /* FIRST FIT */
        if (curr->size < allocate)
            continue;
        else if (curr->size == allocate)
        {
            free_remove(curr);
    80001d30:	00048513          	mv	a0,s1
    80001d34:	00000097          	auipc	ra,0x0
    80001d38:	e00080e7          	jalr	-512(ra) # 80001b34 <_Z11free_removeP9mem_block>
            used_insert(curr);
    80001d3c:	00048513          	mv	a0,s1
    80001d40:	00000097          	auipc	ra,0x0
    80001d44:	e58080e7          	jalr	-424(ra) # 80001b98 <_Z11used_insertP9mem_block>

            return (void*)((char*)curr + sizeof(struct mem_block));
    80001d48:	01848493          	addi	s1,s1,24
        }
    }

    // There is not enough space
    return NULL;
}
    80001d4c:	00048513          	mv	a0,s1
    80001d50:	01813083          	ld	ra,24(sp)
    80001d54:	01013403          	ld	s0,16(sp)
    80001d58:	00813483          	ld	s1,8(sp)
    80001d5c:	00013903          	ld	s2,0(sp)
    80001d60:	02010113          	addi	sp,sp,32
    80001d64:	00008067          	ret
    for (struct mem_block* curr = free_mem_head; curr != NULL; curr = curr->next)
    80001d68:	0104b483          	ld	s1,16(s1)
    80001d6c:	fe0480e3          	beqz	s1,80001d4c <_Z11__mem_allocm+0xb8>
        if (curr->size < allocate)
    80001d70:	0004b783          	ld	a5,0(s1)
    80001d74:	ff27eae3          	bltu	a5,s2,80001d68 <_Z11__mem_allocm+0xd4>
        else if (curr->size == allocate)
    80001d78:	fb278ce3          	beq	a5,s2,80001d30 <_Z11__mem_allocm+0x9c>
        else if (curr->size > allocate)
    80001d7c:	fef976e3          	bgeu	s2,a5,80001d68 <_Z11__mem_allocm+0xd4>
            free_remove(curr);
    80001d80:	00048513          	mv	a0,s1
    80001d84:	00000097          	auipc	ra,0x0
    80001d88:	db0080e7          	jalr	-592(ra) # 80001b34 <_Z11free_removeP9mem_block>
            size_t leftover_allocatable_size = curr->size - allocate; // Leftover
    80001d8c:	0004b783          	ld	a5,0(s1)
    80001d90:	412787b3          	sub	a5,a5,s2
            leftover_allocatable_size -= sizeof(struct mem_block);
    80001d94:	fe878793          	addi	a5,a5,-24
            struct mem_block* leftover = (struct mem_block*) ((char*)curr + sizeof(struct mem_block) + allocate);
    80001d98:	01890513          	addi	a0,s2,24
    80001d9c:	00a48533          	add	a0,s1,a0
            leftover->prev = NULL;
    80001da0:	00053423          	sd	zero,8(a0)
            leftover->next = NULL;
    80001da4:	00053823          	sd	zero,16(a0)
            leftover->size = leftover_allocatable_size;
    80001da8:	00f53023          	sd	a5,0(a0)
            curr->size = allocate;
    80001dac:	0124b023          	sd	s2,0(s1)
            free_insert(leftover);
    80001db0:	00000097          	auipc	ra,0x0
    80001db4:	cec080e7          	jalr	-788(ra) # 80001a9c <_Z11free_insertP9mem_block>
            used_insert(curr);
    80001db8:	00048513          	mv	a0,s1
    80001dbc:	00000097          	auipc	ra,0x0
    80001dc0:	ddc080e7          	jalr	-548(ra) # 80001b98 <_Z11used_insertP9mem_block>
            return (void*)((char*)curr + sizeof(struct mem_block));
    80001dc4:	01848493          	addi	s1,s1,24
    80001dc8:	f85ff06f          	j	80001d4c <_Z11__mem_allocm+0xb8>

0000000080001dcc <_Z10__mem_freePv>:

int
__mem_free(void* allocated_address)
{
    /* Nothing to free */
    if (allocated_address == NULL || used_mem_head == NULL)
    80001dcc:	10050e63          	beqz	a0,80001ee8 <_Z10__mem_freePv+0x11c>
{
    80001dd0:	fe010113          	addi	sp,sp,-32
    80001dd4:	00113c23          	sd	ra,24(sp)
    80001dd8:	00813823          	sd	s0,16(sp)
    80001ddc:	00913423          	sd	s1,8(sp)
    80001de0:	01213023          	sd	s2,0(sp)
    80001de4:	02010413          	addi	s0,sp,32
    80001de8:	00050493          	mv	s1,a0
    if (allocated_address == NULL || used_mem_head == NULL)
    80001dec:	00005797          	auipc	a5,0x5
    80001df0:	5c47b783          	ld	a5,1476(a5) # 800073b0 <_ZL13used_mem_head>
    80001df4:	0e078e63          	beqz	a5,80001ef0 <_Z10__mem_freePv+0x124>
        return -1;

    if ((char*)allocated_address < (char*)HEAP_START_ADDR || (char*)allocated_address > (char*)HEAP_END_ADDR)
    80001df8:	00005717          	auipc	a4,0x5
    80001dfc:	51873703          	ld	a4,1304(a4) # 80007310 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001e00:	00073703          	ld	a4,0(a4)
    80001e04:	0ee56a63          	bltu	a0,a4,80001ef8 <_Z10__mem_freePv+0x12c>
    80001e08:	00005717          	auipc	a4,0x5
    80001e0c:	53073703          	ld	a4,1328(a4) # 80007338 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e10:	00073703          	ld	a4,0(a4)
    80001e14:	0ea76663          	bltu	a4,a0,80001f00 <_Z10__mem_freePv+0x134>
        return -1;

    // Because we keep the list sorted
    if ((char*)allocated_address < (char*)used_mem_head)
    80001e18:	0ef56863          	bltu	a0,a5,80001f08 <_Z10__mem_freePv+0x13c>
        return -1;

    struct mem_block* block_to_free = (struct mem_block*)((char*)allocated_address - sizeof(struct mem_block));
    80001e1c:	fe850913          	addi	s2,a0,-24

    used_remove(block_to_free);
    80001e20:	00090513          	mv	a0,s2
    80001e24:	00000097          	auipc	ra,0x0
    80001e28:	e0c080e7          	jalr	-500(ra) # 80001c30 <_Z11used_removeP9mem_block>
    free_insert(block_to_free);
    80001e2c:	00090513          	mv	a0,s2
    80001e30:	00000097          	auipc	ra,0x0
    80001e34:	c6c080e7          	jalr	-916(ra) # 80001a9c <_Z11free_insertP9mem_block>

    /* Merge */
    struct mem_block* prev = block_to_free->prev;
    80001e38:	ff04b783          	ld	a5,-16(s1)
    struct mem_block* next = block_to_free->next;
    80001e3c:	ff84b703          	ld	a4,-8(s1)

    /* Merge with Left */
    if (prev != NULL && ((char*)prev + sizeof(struct mem_block) + prev->size) >= (char*)block_to_free)
    80001e40:	06078863          	beqz	a5,80001eb0 <_Z10__mem_freePv+0xe4>
    80001e44:	0007b683          	ld	a3,0(a5)
    80001e48:	01868613          	addi	a2,a3,24
    80001e4c:	00c78633          	add	a2,a5,a2
    80001e50:	07266063          	bltu	a2,s2,80001eb0 <_Z10__mem_freePv+0xe4>
    {
        prev->size += sizeof(struct mem_block) + block_to_free->size;
    80001e54:	fe84b603          	ld	a2,-24(s1)
    80001e58:	00c686b3          	add	a3,a3,a2
    80001e5c:	01868693          	addi	a3,a3,24
    80001e60:	00d7b023          	sd	a3,0(a5)
        prev->next = block_to_free->next;
    80001e64:	ff84b683          	ld	a3,-8(s1)
    80001e68:	00d7b823          	sd	a3,16(a5)

        if (next != NULL)
    80001e6c:	00070463          	beqz	a4,80001e74 <_Z10__mem_freePv+0xa8>
            next->prev = prev;
    80001e70:	00f73423          	sd	a5,8(a4)

        /* Merge with Right as well */
        if (next != NULL && ((char*)prev + sizeof(struct mem_block) + prev->size) >= (char*)next)
    80001e74:	08070e63          	beqz	a4,80001f10 <_Z10__mem_freePv+0x144>
    80001e78:	0007b683          	ld	a3,0(a5)
    80001e7c:	01868613          	addi	a2,a3,24
    80001e80:	00c78633          	add	a2,a5,a2
    80001e84:	08e66a63          	bltu	a2,a4,80001f18 <_Z10__mem_freePv+0x14c>
        {
            prev->size += sizeof(struct mem_block) + next->size;
    80001e88:	00073603          	ld	a2,0(a4)
    80001e8c:	00c686b3          	add	a3,a3,a2
    80001e90:	01868693          	addi	a3,a3,24
    80001e94:	00d7b023          	sd	a3,0(a5)
            prev->next = next->next;
    80001e98:	01073703          	ld	a4,16(a4)
    80001e9c:	00e7b823          	sd	a4,16(a5)

            if (next->next != NULL)
    80001ea0:	08070063          	beqz	a4,80001f20 <_Z10__mem_freePv+0x154>
                next->next->prev = prev;
    80001ea4:	00f73423          	sd	a5,8(a4)

        if (next->next != NULL)
            next->next->prev = block_to_free;
    }

    return 0;
    80001ea8:	00000513          	li	a0,0
    80001eac:	0880006f          	j	80001f34 <_Z10__mem_freePv+0x168>
    else if (next != NULL && ((char*)block_to_free + sizeof(struct mem_block) + block_to_free->size) >= (char*)next)
    80001eb0:	06070c63          	beqz	a4,80001f28 <_Z10__mem_freePv+0x15c>
    80001eb4:	fe84b783          	ld	a5,-24(s1)
    80001eb8:	00f486b3          	add	a3,s1,a5
    80001ebc:	06e6ea63          	bltu	a3,a4,80001f30 <_Z10__mem_freePv+0x164>
        block_to_free->size += sizeof(struct mem_block) + next->size;
    80001ec0:	00073683          	ld	a3,0(a4)
    80001ec4:	00d787b3          	add	a5,a5,a3
    80001ec8:	01878793          	addi	a5,a5,24
    80001ecc:	fef4b423          	sd	a5,-24(s1)
        block_to_free->next = next->next;
    80001ed0:	01073783          	ld	a5,16(a4)
    80001ed4:	fef4bc23          	sd	a5,-8(s1)
        if (next->next != NULL)
    80001ed8:	06078a63          	beqz	a5,80001f4c <_Z10__mem_freePv+0x180>
            next->next->prev = block_to_free;
    80001edc:	0127b423          	sd	s2,8(a5)
    return 0;
    80001ee0:	00000513          	li	a0,0
    80001ee4:	0500006f          	j	80001f34 <_Z10__mem_freePv+0x168>
        return -1;
    80001ee8:	fff00513          	li	a0,-1
    80001eec:	00008067          	ret
        return -1;
    80001ef0:	fff00513          	li	a0,-1
    80001ef4:	0400006f          	j	80001f34 <_Z10__mem_freePv+0x168>
        return -1;
    80001ef8:	fff00513          	li	a0,-1
    80001efc:	0380006f          	j	80001f34 <_Z10__mem_freePv+0x168>
    80001f00:	fff00513          	li	a0,-1
    80001f04:	0300006f          	j	80001f34 <_Z10__mem_freePv+0x168>
        return -1;
    80001f08:	fff00513          	li	a0,-1
    80001f0c:	0280006f          	j	80001f34 <_Z10__mem_freePv+0x168>
    return 0;
    80001f10:	00000513          	li	a0,0
    80001f14:	0200006f          	j	80001f34 <_Z10__mem_freePv+0x168>
    80001f18:	00000513          	li	a0,0
    80001f1c:	0180006f          	j	80001f34 <_Z10__mem_freePv+0x168>
    80001f20:	00000513          	li	a0,0
    80001f24:	0100006f          	j	80001f34 <_Z10__mem_freePv+0x168>
    80001f28:	00000513          	li	a0,0
    80001f2c:	0080006f          	j	80001f34 <_Z10__mem_freePv+0x168>
    80001f30:	00000513          	li	a0,0
    80001f34:	01813083          	ld	ra,24(sp)
    80001f38:	01013403          	ld	s0,16(sp)
    80001f3c:	00813483          	ld	s1,8(sp)
    80001f40:	00013903          	ld	s2,0(sp)
    80001f44:	02010113          	addi	sp,sp,32
    80001f48:	00008067          	ret
    return 0;
    80001f4c:	00000513          	li	a0,0
    80001f50:	fe5ff06f          	j	80001f34 <_Z10__mem_freePv+0x168>

0000000080001f54 <main>:

int
main()
{
    80001f54:	fe010113          	addi	sp,sp,-32
    80001f58:	00113c23          	sd	ra,24(sp)
    80001f5c:	00813823          	sd	s0,16(sp)
    80001f60:	02010413          	addi	s0,sp,32
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001f64:	00005797          	auipc	a5,0x5
    80001f68:	3b47b783          	ld	a5,948(a5) # 80007318 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001f6c:	10579073          	csrw	stvec,a5

    thread_t main, user_main;

    thread_create(&main, nullptr, nullptr);
    80001f70:	00000613          	li	a2,0
    80001f74:	00000593          	li	a1,0
    80001f78:	fe840513          	addi	a0,s0,-24
    80001f7c:	fffff097          	auipc	ra,0xfffff
    80001f80:	7dc080e7          	jalr	2012(ra) # 80001758 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("Main Created\n");
    80001f84:	00004517          	auipc	a0,0x4
    80001f88:	09c50513          	addi	a0,a0,156 # 80006020 <CONSOLE_STATUS+0x10>
    80001f8c:	00001097          	auipc	ra,0x1
    80001f90:	c88080e7          	jalr	-888(ra) # 80002c14 <_Z11printStringPKc>
    TCB::running = main;
    80001f94:	00005797          	auipc	a5,0x5
    80001f98:	39c7b783          	ld	a5,924(a5) # 80007330 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f9c:	fe843703          	ld	a4,-24(s0)
    80001fa0:	00e7b023          	sd	a4,0(a5)

    thread_create(&user_main, helper, nullptr);
    80001fa4:	00000613          	li	a2,0
    80001fa8:	00000597          	auipc	a1,0x0
    80001fac:	ac058593          	addi	a1,a1,-1344 # 80001a68 <_Z6helperPv>
    80001fb0:	fe040513          	addi	a0,s0,-32
    80001fb4:	fffff097          	auipc	ra,0xfffff
    80001fb8:	7a4080e7          	jalr	1956(ra) # 80001758 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("UserMain Created\n");
    80001fbc:	00004517          	auipc	a0,0x4
    80001fc0:	07450513          	addi	a0,a0,116 # 80006030 <CONSOLE_STATUS+0x20>
    80001fc4:	00001097          	auipc	ra,0x1
    80001fc8:	c50080e7          	jalr	-944(ra) # 80002c14 <_Z11printStringPKc>

    while (!done)
    80001fcc:	00005797          	auipc	a5,0x5
    80001fd0:	3d47c783          	lbu	a5,980(a5) # 800073a0 <done>
    80001fd4:	00079863          	bnez	a5,80001fe4 <main+0x90>
        thread_dispatch();
    80001fd8:	fffff097          	auipc	ra,0xfffff
    80001fdc:	7e4080e7          	jalr	2020(ra) # 800017bc <_Z15thread_dispatchv>
    80001fe0:	fedff06f          	j	80001fcc <main+0x78>

    printString("\nZavrsio\n");
    80001fe4:	00004517          	auipc	a0,0x4
    80001fe8:	06450513          	addi	a0,a0,100 # 80006048 <CONSOLE_STATUS+0x38>
    80001fec:	00001097          	auipc	ra,0x1
    80001ff0:	c28080e7          	jalr	-984(ra) # 80002c14 <_Z11printStringPKc>
    return 0;
}
    80001ff4:	00000513          	li	a0,0
    80001ff8:	01813083          	ld	ra,24(sp)
    80001ffc:	01013403          	ld	s0,16(sp)
    80002000:	02010113          	addi	sp,sp,32
    80002004:	00008067          	ret

0000000080002008 <_ZN7Console4getcEv>:
#include "../h/syscall_cpp.hpp"

char Console::getc()
{
    80002008:	ff010113          	addi	sp,sp,-16
    8000200c:	00113423          	sd	ra,8(sp)
    80002010:	00813023          	sd	s0,0(sp)
    80002014:	01010413          	addi	s0,sp,16
    return getc();
    80002018:	00000097          	auipc	ra,0x0
    8000201c:	ff0080e7          	jalr	-16(ra) # 80002008 <_ZN7Console4getcEv>
}
    80002020:	00813083          	ld	ra,8(sp)
    80002024:	00013403          	ld	s0,0(sp)
    80002028:	01010113          	addi	sp,sp,16
    8000202c:	00008067          	ret

0000000080002030 <_ZN7Console4putcEc>:

void Console::putc(char chr)
{
    80002030:	ff010113          	addi	sp,sp,-16
    80002034:	00113423          	sd	ra,8(sp)
    80002038:	00813023          	sd	s0,0(sp)
    8000203c:	01010413          	addi	s0,sp,16
    putc(chr);
    80002040:	00000097          	auipc	ra,0x0
    80002044:	ff0080e7          	jalr	-16(ra) # 80002030 <_ZN7Console4putcEc>
    80002048:	00813083          	ld	ra,8(sp)
    8000204c:	00013403          	ld	s0,0(sp)
    80002050:	01010113          	addi	sp,sp,16
    80002054:	00008067          	ret

0000000080002058 <_ZN3TCB12createThreadEPFvPvES0_S0_b>:
//    return new TCB(body, TIME_SLICE);
//}

TCB*
TCB::createThread(Body body, void* arg, void* stack_space, bool start_immediately)
{
    80002058:	fc010113          	addi	sp,sp,-64
    8000205c:	02113c23          	sd	ra,56(sp)
    80002060:	02813823          	sd	s0,48(sp)
    80002064:	02913423          	sd	s1,40(sp)
    80002068:	03213023          	sd	s2,32(sp)
    8000206c:	01313c23          	sd	s3,24(sp)
    80002070:	01413823          	sd	s4,16(sp)
    80002074:	01513423          	sd	s5,8(sp)
    80002078:	04010413          	addi	s0,sp,64
    8000207c:	00050993          	mv	s3,a0
    80002080:	00058a93          	mv	s5,a1
    80002084:	00060913          	mv	s2,a2
    80002088:	00068a13          	mv	s4,a3
    return new TCB(body, arg, stack_space, start_immediately);
    8000208c:	03800513          	li	a0,56
    80002090:	00000097          	auipc	ra,0x0
    80002094:	278080e7          	jalr	632(ra) # 80002308 <_Znwm>
    80002098:	00050493          	mv	s1,a0
            context({(uint64)&threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            timeSlice(DEFAULT_TIME_SLICE),
            finished(false),
            start_immediately(start_immediately)
    8000209c:	01353023          	sd	s3,0(a0)
    800020a0:	01553423          	sd	s5,8(a0)
            stack(body != nullptr ? (uint64*)stack_space : nullptr),
    800020a4:	06098463          	beqz	s3,8000210c <_ZN3TCB12createThreadEPFvPvES0_S0_b+0xb4>
            start_immediately(start_immediately)
    800020a8:	0124b823          	sd	s2,16(s1)
    800020ac:	00000797          	auipc	a5,0x0
    800020b0:	1a478793          	addi	a5,a5,420 # 80002250 <_ZN3TCB13threadWrapperEv>
    800020b4:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    800020b8:	04090e63          	beqz	s2,80002114 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0xbc>
    800020bc:	00008637          	lui	a2,0x8
    800020c0:	00c90933          	add	s2,s2,a2
            start_immediately(start_immediately)
    800020c4:	0324b023          	sd	s2,32(s1)
    800020c8:	00200793          	li	a5,2
    800020cc:	02f4b423          	sd	a5,40(s1)
    800020d0:	02048a23          	sb	zero,52(s1)
    800020d4:	03448aa3          	sb	s4,53(s1)
    {
        if (body != nullptr)
    800020d8:	04098c63          	beqz	s3,80002130 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0xd8>
        {
            if (start_immediately == true)
    800020dc:	040a1063          	bnez	s4,8000211c <_ZN3TCB12createThreadEPFvPvES0_S0_b+0xc4>
            {
                this->state = READY;
                Scheduler::put(this);
            }
            else
                this->state = NEW;
    800020e0:	0204a823          	sw	zero,48(s1)
}
    800020e4:	00048513          	mv	a0,s1
    800020e8:	03813083          	ld	ra,56(sp)
    800020ec:	03013403          	ld	s0,48(sp)
    800020f0:	02813483          	ld	s1,40(sp)
    800020f4:	02013903          	ld	s2,32(sp)
    800020f8:	01813983          	ld	s3,24(sp)
    800020fc:	01013a03          	ld	s4,16(sp)
    80002100:	00813a83          	ld	s5,8(sp)
    80002104:	04010113          	addi	sp,sp,64
    80002108:	00008067          	ret
            stack(body != nullptr ? (uint64*)stack_space : nullptr),
    8000210c:	00000913          	li	s2,0
    80002110:	f99ff06f          	j	800020a8 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0x50>
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80002114:	00000913          	li	s2,0
    80002118:	fadff06f          	j	800020c4 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0x6c>
                this->state = READY;
    8000211c:	02f4a823          	sw	a5,48(s1)
                Scheduler::put(this);
    80002120:	00048513          	mv	a0,s1
    80002124:	00001097          	auipc	ra,0x1
    80002128:	8e0080e7          	jalr	-1824(ra) # 80002a04 <_ZN9Scheduler3putEP3TCB>
    8000212c:	fb9ff06f          	j	800020e4 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0x8c>
        }
        else
            this->state = ACTIVE;
    80002130:	00100793          	li	a5,1
    80002134:	02f4a823          	sw	a5,48(s1)
    return new TCB(body, arg, stack_space, start_immediately);
    80002138:	fadff06f          	j	800020e4 <_ZN3TCB12createThreadEPFvPvES0_S0_b+0x8c>
    8000213c:	00050913          	mv	s2,a0
    80002140:	00048513          	mv	a0,s1
    80002144:	00000097          	auipc	ra,0x0
    80002148:	214080e7          	jalr	532(ra) # 80002358 <_ZdlPv>
    8000214c:	00090513          	mv	a0,s2
    80002150:	00006097          	auipc	ra,0x6
    80002154:	378080e7          	jalr	888(ra) # 800084c8 <_Unwind_Resume>

0000000080002158 <_ZN3TCB8dispatchEv>:
}


void
TCB::dispatch()
{
    80002158:	fe010113          	addi	sp,sp,-32
    8000215c:	00113c23          	sd	ra,24(sp)
    80002160:	00813823          	sd	s0,16(sp)
    80002164:	00913423          	sd	s1,8(sp)
    80002168:	02010413          	addi	s0,sp,32
    TCB *old = running;
    8000216c:	00005497          	auipc	s1,0x5
    80002170:	2544b483          	ld	s1,596(s1) # 800073c0 <_ZN3TCB7runningE>

    if (old->state == State::ACTIVE)
    80002174:	0304a703          	lw	a4,48(s1)
    80002178:	00100793          	li	a5,1
    8000217c:	04f70263          	beq	a4,a5,800021c0 <_ZN3TCB8dispatchEv+0x68>
    {
        old->state = State::READY;
        Scheduler::put(old);
    }

    running = Scheduler::get();
    80002180:	00001097          	auipc	ra,0x1
    80002184:	81c080e7          	jalr	-2020(ra) # 8000299c <_ZN9Scheduler3getEv>
    80002188:	00005797          	auipc	a5,0x5
    8000218c:	22a7bc23          	sd	a0,568(a5) # 800073c0 <_ZN3TCB7runningE>

    if (running)
    80002190:	04050463          	beqz	a0,800021d8 <_ZN3TCB8dispatchEv+0x80>
    void  setState(State state) {TCB::state = state;}
    80002194:	00100793          	li	a5,1
    80002198:	02f52823          	sw	a5,48(a0)
    {
        running->setState(State::ACTIVE);
        TCB::contextSwitch(&old->context, &running->context);
    8000219c:	01850593          	addi	a1,a0,24
    800021a0:	01848513          	addi	a0,s1,24
    800021a4:	fffff097          	auipc	ra,0xfffff
    800021a8:	08c080e7          	jalr	140(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    }
    else
        printString("\n------- NESTO ---\n");

}
    800021ac:	01813083          	ld	ra,24(sp)
    800021b0:	01013403          	ld	s0,16(sp)
    800021b4:	00813483          	ld	s1,8(sp)
    800021b8:	02010113          	addi	sp,sp,32
    800021bc:	00008067          	ret
        old->state = State::READY;
    800021c0:	00200793          	li	a5,2
    800021c4:	02f4a823          	sw	a5,48(s1)
        Scheduler::put(old);
    800021c8:	00048513          	mv	a0,s1
    800021cc:	00001097          	auipc	ra,0x1
    800021d0:	838080e7          	jalr	-1992(ra) # 80002a04 <_ZN9Scheduler3putEP3TCB>
    800021d4:	fadff06f          	j	80002180 <_ZN3TCB8dispatchEv+0x28>
        printString("\n------- NESTO ---\n");
    800021d8:	00004517          	auipc	a0,0x4
    800021dc:	e8050513          	addi	a0,a0,-384 # 80006058 <CONSOLE_STATUS+0x48>
    800021e0:	00001097          	auipc	ra,0x1
    800021e4:	a34080e7          	jalr	-1484(ra) # 80002c14 <_Z11printStringPKc>
}
    800021e8:	fc5ff06f          	j	800021ac <_ZN3TCB8dispatchEv+0x54>

00000000800021ec <_ZN3TCB10threadExitEv>:
    if (running->isFinished() || running->getState() != State::ACTIVE)
    800021ec:	00005797          	auipc	a5,0x5
    800021f0:	1d47b783          	ld	a5,468(a5) # 800073c0 <_ZN3TCB7runningE>
    bool isFinished() const      { return finished;  }
    800021f4:	0347c703          	lbu	a4,52(a5)
    800021f8:	04071463          	bnez	a4,80002240 <_ZN3TCB10threadExitEv+0x54>
    State getState()            { return state;     }
    800021fc:	0307a683          	lw	a3,48(a5)
    80002200:	00100713          	li	a4,1
    80002204:	04e69263          	bne	a3,a4,80002248 <_ZN3TCB10threadExitEv+0x5c>
{
    80002208:	ff010113          	addi	sp,sp,-16
    8000220c:	00113423          	sd	ra,8(sp)
    80002210:	00813023          	sd	s0,0(sp)
    80002214:	01010413          	addi	s0,sp,16
    void setFinished(bool value) { finished = value; }
    80002218:	02e78a23          	sb	a4,52(a5)
    running->state = State::FINISHED;
    8000221c:	00400713          	li	a4,4
    80002220:	02e7a823          	sw	a4,48(a5)
    TCB::dispatch();
    80002224:	00000097          	auipc	ra,0x0
    80002228:	f34080e7          	jalr	-204(ra) # 80002158 <_ZN3TCB8dispatchEv>
    return 0;
    8000222c:	00000513          	li	a0,0
}
    80002230:	00813083          	ld	ra,8(sp)
    80002234:	00013403          	ld	s0,0(sp)
    80002238:	01010113          	addi	sp,sp,16
    8000223c:	00008067          	ret
        return -1;
    80002240:	fff00513          	li	a0,-1
    80002244:	00008067          	ret
    80002248:	fff00513          	li	a0,-1
}
    8000224c:	00008067          	ret

0000000080002250 <_ZN3TCB13threadWrapperEv>:


void
TCB::threadWrapper()
{
    80002250:	fe010113          	addi	sp,sp,-32
    80002254:	00113c23          	sd	ra,24(sp)
    80002258:	00813823          	sd	s0,16(sp)
    8000225c:	00913423          	sd	s1,8(sp)
    80002260:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80002264:	00000097          	auipc	ra,0x0
    80002268:	144080e7          	jalr	324(ra) # 800023a8 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    8000226c:	00005497          	auipc	s1,0x5
    80002270:	15448493          	addi	s1,s1,340 # 800073c0 <_ZN3TCB7runningE>
    80002274:	0004b783          	ld	a5,0(s1)
    80002278:	0007b703          	ld	a4,0(a5)
    8000227c:	0087b503          	ld	a0,8(a5)
    80002280:	000700e7          	jalr	a4
    running->setFinished(true);
    80002284:	0004b783          	ld	a5,0(s1)
    80002288:	00100713          	li	a4,1
    8000228c:	02e78a23          	sb	a4,52(a5)
    void  setState(State state) {TCB::state = state;}
    80002290:	00400713          	li	a4,4
    80002294:	02e7a823          	sw	a4,48(a5)
    running->setState(State::FINISHED);

    TCB::dispatch();
    80002298:	00000097          	auipc	ra,0x0
    8000229c:	ec0080e7          	jalr	-320(ra) # 80002158 <_ZN3TCB8dispatchEv>
}
    800022a0:	01813083          	ld	ra,24(sp)
    800022a4:	01013403          	ld	s0,16(sp)
    800022a8:	00813483          	ld	s1,8(sp)
    800022ac:	02010113          	addi	sp,sp,32
    800022b0:	00008067          	ret

00000000800022b4 <_ZN3TCB11threadStartEPS_>:


int
TCB::threadStart(TCB *handle)
{
    if (handle)
    800022b4:	04050263          	beqz	a0,800022f8 <_ZN3TCB11threadStartEPS_+0x44>
    State getState()            { return state;     }
    800022b8:	03052783          	lw	a5,48(a0)
    {
        if (handle->getState() != State::NEW)
    800022bc:	04079263          	bnez	a5,80002300 <_ZN3TCB11threadStartEPS_+0x4c>
{
    800022c0:	ff010113          	addi	sp,sp,-16
    800022c4:	00113423          	sd	ra,8(sp)
    800022c8:	00813023          	sd	s0,0(sp)
    800022cc:	01010413          	addi	s0,sp,16
    void setFinished(bool value) { finished = value; }
    800022d0:	02050a23          	sb	zero,52(a0)
            return -1;

        handle->setFinished(false);
        handle->state = State::READY;
    800022d4:	00200793          	li	a5,2
    800022d8:	02f52823          	sw	a5,48(a0)
        Scheduler::put(handle);
    800022dc:	00000097          	auipc	ra,0x0
    800022e0:	728080e7          	jalr	1832(ra) # 80002a04 <_ZN9Scheduler3putEP3TCB>

        return 0;
    800022e4:	00000513          	li	a0,0
    }

    return -1;
}
    800022e8:	00813083          	ld	ra,8(sp)
    800022ec:	00013403          	ld	s0,0(sp)
    800022f0:	01010113          	addi	sp,sp,16
    800022f4:	00008067          	ret
    return -1;
    800022f8:	fff00513          	li	a0,-1
    800022fc:	00008067          	ret
            return -1;
    80002300:	fff00513          	li	a0,-1
}
    80002304:	00008067          	ret

0000000080002308 <_Znwm>:
#include "../h/my_mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80002308:	ff010113          	addi	sp,sp,-16
    8000230c:	00113423          	sd	ra,8(sp)
    80002310:	00813023          	sd	s0,0(sp)
    80002314:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80002318:	00000097          	auipc	ra,0x0
    8000231c:	97c080e7          	jalr	-1668(ra) # 80001c94 <_Z11__mem_allocm>
}
    80002320:	00813083          	ld	ra,8(sp)
    80002324:	00013403          	ld	s0,0(sp)
    80002328:	01010113          	addi	sp,sp,16
    8000232c:	00008067          	ret

0000000080002330 <_Znam>:

void *operator new[](size_t n)
{
    80002330:	ff010113          	addi	sp,sp,-16
    80002334:	00113423          	sd	ra,8(sp)
    80002338:	00813023          	sd	s0,0(sp)
    8000233c:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80002340:	00000097          	auipc	ra,0x0
    80002344:	954080e7          	jalr	-1708(ra) # 80001c94 <_Z11__mem_allocm>
}
    80002348:	00813083          	ld	ra,8(sp)
    8000234c:	00013403          	ld	s0,0(sp)
    80002350:	01010113          	addi	sp,sp,16
    80002354:	00008067          	ret

0000000080002358 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80002358:	ff010113          	addi	sp,sp,-16
    8000235c:	00113423          	sd	ra,8(sp)
    80002360:	00813023          	sd	s0,0(sp)
    80002364:	01010413          	addi	s0,sp,16
__mem_free(p);
    80002368:	00000097          	auipc	ra,0x0
    8000236c:	a64080e7          	jalr	-1436(ra) # 80001dcc <_Z10__mem_freePv>
}
    80002370:	00813083          	ld	ra,8(sp)
    80002374:	00013403          	ld	s0,0(sp)
    80002378:	01010113          	addi	sp,sp,16
    8000237c:	00008067          	ret

0000000080002380 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80002380:	ff010113          	addi	sp,sp,-16
    80002384:	00113423          	sd	ra,8(sp)
    80002388:	00813023          	sd	s0,0(sp)
    8000238c:	01010413          	addi	s0,sp,16
__mem_free(p);
    80002390:	00000097          	auipc	ra,0x0
    80002394:	a3c080e7          	jalr	-1476(ra) # 80001dcc <_Z10__mem_freePv>
    80002398:	00813083          	ld	ra,8(sp)
    8000239c:	00013403          	ld	s0,0(sp)
    800023a0:	01010113          	addi	sp,sp,16
    800023a4:	00008067          	ret

00000000800023a8 <_ZN5Riscv10popSppSpieEv>:
#include "../h/sem.hpp"

using Body = void (*)(void*);

void Riscv::popSppSpie()
{
    800023a8:	ff010113          	addi	sp,sp,-16
    800023ac:	00813423          	sd	s0,8(sp)
    800023b0:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800023b4:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800023b8:	10200073          	sret
}
    800023bc:	00813403          	ld	s0,8(sp)
    800023c0:	01010113          	addi	sp,sp,16
    800023c4:	00008067          	ret

00000000800023c8 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    800023c8:	f9010113          	addi	sp,sp,-112
    800023cc:	06113423          	sd	ra,104(sp)
    800023d0:	06813023          	sd	s0,96(sp)
    800023d4:	04913c23          	sd	s1,88(sp)
    800023d8:	05213823          	sd	s2,80(sp)
    800023dc:	05313423          	sd	s3,72(sp)
    800023e0:	05413023          	sd	s4,64(sp)
    800023e4:	03513c23          	sd	s5,56(sp)
    800023e8:	07010413          	addi	s0,sp,112
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800023ec:	142027f3          	csrr	a5,scause
    800023f0:	f8f43823          	sd	a5,-112(s0)
    return scause;
    800023f4:	f9043783          	ld	a5,-112(s0)
    uint64 volatile scause = r_scause();
    800023f8:	faf43c23          	sd	a5,-72(s0)

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    800023fc:	fb843703          	ld	a4,-72(s0)
    80002400:	00800793          	li	a5,8
    80002404:	04f70263          	beq	a4,a5,80002448 <_ZN5Riscv20handleSupervisorTrapEv+0x80>
    80002408:	fb843703          	ld	a4,-72(s0)
    8000240c:	00900793          	li	a5,9
    80002410:	02f70c63          	beq	a4,a5,80002448 <_ZN5Riscv20handleSupervisorTrapEv+0x80>
//        TCB::timeSliceCounter = 0;
//        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80002414:	fb843703          	ld	a4,-72(s0)
    80002418:	fff00793          	li	a5,-1
    8000241c:	03f79793          	slli	a5,a5,0x3f
    80002420:	00178793          	addi	a5,a5,1
    80002424:	1ef70863          	beq	a4,a5,80002614 <_ZN5Riscv20handleSupervisorTrapEv+0x24c>
            w_sepc(sepc);
        }

        mc_sip(SIP_SSIP);
    }
    else if (scause == 0x8000000000000009UL)
    80002428:	fb843703          	ld	a4,-72(s0)
    8000242c:	fff00793          	li	a5,-1
    80002430:	03f79793          	slli	a5,a5,0x3f
    80002434:	00978793          	addi	a5,a5,9
    80002438:	06f71663          	bne	a4,a5,800024a4 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
    {
        // Interrupt: yes, cause code: Software external interrupt (console)
        console_handler();
    8000243c:	00003097          	auipc	ra,0x3
    80002440:	7f4080e7          	jalr	2036(ra) # 80005c30 <console_handler>
        //printInt(scause);
//        printInt(sepc);
//        printInt(stvalue);
//        printString("Unexpected Trap Cause...\n");
    }
    80002444:	0600006f          	j	800024a4 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002448:	141027f3          	csrr	a5,sepc
    8000244c:	faf43023          	sd	a5,-96(s0)
    return sepc;
    80002450:	fa043483          	ld	s1,-96(s0)
        uint64 sepc = r_sepc() + 4;
    80002454:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002458:	100027f3          	csrr	a5,sstatus
    8000245c:	f8f43c23          	sd	a5,-104(s0)
    return sstatus;
    80002460:	f9843903          	ld	s2,-104(s0)
        __asm__ volatile ("mv %0, a0" : "=r" (number));
    80002464:	00050793          	mv	a5,a0
        switch (number)
    80002468:	02400713          	li	a4,36
    8000246c:	02f76863          	bltu	a4,a5,8000249c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
    80002470:	00279793          	slli	a5,a5,0x2
    80002474:	00004717          	auipc	a4,0x4
    80002478:	bf870713          	addi	a4,a4,-1032 # 8000606c <CONSOLE_STATUS+0x5c>
    8000247c:	00e787b3          	add	a5,a5,a4
    80002480:	0007a783          	lw	a5,0(a5)
    80002484:	00e787b3          	add	a5,a5,a4
    80002488:	00078067          	jr	a5
                __asm__ volatile ("mv %0, a1" : "=r" (allocate));
    8000248c:	00058513          	mv	a0,a1
                uint64 *allocated_address = (uint64*) __mem_alloc(allocate);
    80002490:	00000097          	auipc	ra,0x0
    80002494:	804080e7          	jalr	-2044(ra) # 80001c94 <_Z11__mem_allocm>
                __asm__ volatile ("mv a0, %0" : : "r" (allocated_address));
    80002498:	00050513          	mv	a0,a0
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000249c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800024a0:	14149073          	csrw	sepc,s1
    800024a4:	06813083          	ld	ra,104(sp)
    800024a8:	06013403          	ld	s0,96(sp)
    800024ac:	05813483          	ld	s1,88(sp)
    800024b0:	05013903          	ld	s2,80(sp)
    800024b4:	04813983          	ld	s3,72(sp)
    800024b8:	04013a03          	ld	s4,64(sp)
    800024bc:	03813a83          	ld	s5,56(sp)
    800024c0:	07010113          	addi	sp,sp,112
    800024c4:	00008067          	ret
                __asm__ volatile ("mv %0, a1" : "=r" (allocated_address));
    800024c8:	00058513          	mv	a0,a1
                int ret = __mem_free(allocated_address);
    800024cc:	00000097          	auipc	ra,0x0
    800024d0:	900080e7          	jalr	-1792(ra) # 80001dcc <_Z10__mem_freePv>
                __asm__ volatile ("mv a0, %0" : : "r" (ret));
    800024d4:	00050513          	mv	a0,a0
                break;
    800024d8:	fc5ff06f          	j	8000249c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    800024dc:	00058a13          	mv	s4,a1
                __asm__ volatile ("mv %0, a2" : "=r" (body));
    800024e0:	00060993          	mv	s3,a2
                __asm__ volatile ("mv %0, a6" : "=r" (arg));
    800024e4:	00080a93          	mv	s5,a6
                if (body != 0)
    800024e8:	02098e63          	beqz	s3,80002524 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
                    stack = (uint64 *)new uint64[DEFAULT_STACK_SIZE];
    800024ec:	00008537          	lui	a0,0x8
    800024f0:	00000097          	auipc	ra,0x0
    800024f4:	e40080e7          	jalr	-448(ra) # 80002330 <_Znam>
    800024f8:	00050613          	mv	a2,a0
                *handle = TCB::createThread(body, arg, stack, true);
    800024fc:	00100693          	li	a3,1
    80002500:	000a8593          	mv	a1,s5
    80002504:	00098513          	mv	a0,s3
    80002508:	00000097          	auipc	ra,0x0
    8000250c:	b50080e7          	jalr	-1200(ra) # 80002058 <_ZN3TCB12createThreadEPFvPvES0_S0_b>
    80002510:	00aa3023          	sd	a0,0(s4)
                ret = (*handle) != nullptr ? 0 : -1;
    80002514:	00050c63          	beqz	a0,8000252c <_ZN5Riscv20handleSupervisorTrapEv+0x164>
    80002518:	00000793          	li	a5,0
                __asm__ volatile ("mv a0, %0" : : "r" (ret));
    8000251c:	00078513          	mv	a0,a5
                break;
    80002520:	f7dff06f          	j	8000249c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                    stack = 0;
    80002524:	00000613          	li	a2,0
    80002528:	fd5ff06f          	j	800024fc <_ZN5Riscv20handleSupervisorTrapEv+0x134>
                ret = (*handle) != nullptr ? 0 : -1;
    8000252c:	fff00793          	li	a5,-1
    80002530:	fedff06f          	j	8000251c <_ZN5Riscv20handleSupervisorTrapEv+0x154>
                ret = TCB::threadExit();
    80002534:	00000097          	auipc	ra,0x0
    80002538:	cb8080e7          	jalr	-840(ra) # 800021ec <_ZN3TCB10threadExitEv>
                __asm__ volatile ("mv a0, %0" : : "r" (ret));
    8000253c:	00050513          	mv	a0,a0
                break;
    80002540:	f5dff06f          	j	8000249c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                TCB::dispatch();
    80002544:	00000097          	auipc	ra,0x0
    80002548:	c14080e7          	jalr	-1004(ra) # 80002158 <_ZN3TCB8dispatchEv>
                break;
    8000254c:	f51ff06f          	j	8000249c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80002550:	00058a13          	mv	s4,a1
                __asm__ volatile ("mv %0, a2" : "=r" (body));
    80002554:	00060993          	mv	s3,a2
                __asm__ volatile ("mv %0, a5" : "=r" (arg));
    80002558:	00078793          	mv	a5,a5
                __asm__ volatile ("mv %0, a6" : "=r" (arg));
    8000255c:	00080a93          	mv	s5,a6
                if (body != 0)
    80002560:	02098e63          	beqz	s3,8000259c <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                    stack = (uint64 *)new uint64[DEFAULT_STACK_SIZE];
    80002564:	00008537          	lui	a0,0x8
    80002568:	00000097          	auipc	ra,0x0
    8000256c:	dc8080e7          	jalr	-568(ra) # 80002330 <_Znam>
    80002570:	00050613          	mv	a2,a0
                *handle = TCB::createThread(body, arg, stack, false);
    80002574:	00000693          	li	a3,0
    80002578:	000a8593          	mv	a1,s5
    8000257c:	00098513          	mv	a0,s3
    80002580:	00000097          	auipc	ra,0x0
    80002584:	ad8080e7          	jalr	-1320(ra) # 80002058 <_ZN3TCB12createThreadEPFvPvES0_S0_b>
    80002588:	00aa3023          	sd	a0,0(s4)
                ret = (*handle) != nullptr ? 0 : -1;
    8000258c:	00050c63          	beqz	a0,800025a4 <_ZN5Riscv20handleSupervisorTrapEv+0x1dc>
    80002590:	00000793          	li	a5,0
                __asm__ volatile ("mv a0, %0" : : "r" (ret));
    80002594:	00078513          	mv	a0,a5
                break;
    80002598:	f05ff06f          	j	8000249c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                    stack = 0;
    8000259c:	00000613          	li	a2,0
    800025a0:	fd5ff06f          	j	80002574 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
                ret = (*handle) != nullptr ? 0 : -1;
    800025a4:	fff00793          	li	a5,-1
    800025a8:	fedff06f          	j	80002594 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    800025ac:	00058513          	mv	a0,a1
                TCB::threadStart((TCB*)handle);
    800025b0:	00000097          	auipc	ra,0x0
    800025b4:	d04080e7          	jalr	-764(ra) # 800022b4 <_ZN3TCB11threadStartEPS_>
                break;
    800025b8:	ee5ff06f          	j	8000249c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                __asm__ volatile ("mv %0, a2" : "=r" (init));
    800025bc:	00060593          	mv	a1,a2
    800025c0:	0005859b          	sext.w	a1,a1
                __asm__ volatile ("mv %0, a6" : "=r" (handle));
    800025c4:	00080513          	mv	a0,a6
                retu = Sem::__open(handle, init);
    800025c8:	00000097          	auipc	ra,0x0
    800025cc:	0e4080e7          	jalr	228(ra) # 800026ac <_ZN3Sem6__openEPPS_j>
                __asm__ volatile ("mv a0, %0" : : "r" (retu));
    800025d0:	00050513          	mv	a0,a0
                break;
    800025d4:	ec9ff06f          	j	8000249c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    800025d8:	00058513          	mv	a0,a1
                retu = handle->__close();
    800025dc:	00000097          	auipc	ra,0x0
    800025e0:	140080e7          	jalr	320(ra) # 8000271c <_ZN3Sem7__closeEv>
                __asm__ volatile ("mv a0, %0" : : "r" (retu));
    800025e4:	00050513          	mv	a0,a0
                break;
    800025e8:	eb5ff06f          	j	8000249c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    800025ec:	00058513          	mv	a0,a1
                retu = handle->__wait();
    800025f0:	00000097          	auipc	ra,0x0
    800025f4:	200080e7          	jalr	512(ra) # 800027f0 <_ZN3Sem6__waitEv>
                __asm__ volatile ("mv a0, %0" : : "r" (retu));
    800025f8:	00050513          	mv	a0,a0
                break;
    800025fc:	ea1ff06f          	j	8000249c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80002600:	00058513          	mv	a0,a1
                retu = handle->__signal();
    80002604:	00000097          	auipc	ra,0x0
    80002608:	29c080e7          	jalr	668(ra) # 800028a0 <_ZN3Sem8__signalEv>
                __asm__ volatile ("mv a0, %0" : : "r" (retu));
    8000260c:	00050513          	mv	a0,a0
                break;
    80002610:	e8dff06f          	j	8000249c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
        TCB::timeSliceCounter++;
    80002614:	00005717          	auipc	a4,0x5
    80002618:	d0c73703          	ld	a4,-756(a4) # 80007320 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000261c:	00073783          	ld	a5,0(a4)
    80002620:	00178793          	addi	a5,a5,1
    80002624:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80002628:	00005717          	auipc	a4,0x5
    8000262c:	d0873703          	ld	a4,-760(a4) # 80007330 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002630:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const  { return timeSlice; }
    80002634:	02873703          	ld	a4,40(a4)
    80002638:	00e7f863          	bgeu	a5,a4,80002648 <_ZN5Riscv20handleSupervisorTrapEv+0x280>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000263c:	00200793          	li	a5,2
    80002640:	1447b073          	csrc	sip,a5
}
    80002644:	e61ff06f          	j	800024a4 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002648:	141027f3          	csrr	a5,sepc
    8000264c:	faf43823          	sd	a5,-80(s0)
    return sepc;
    80002650:	fb043483          	ld	s1,-80(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002654:	100027f3          	csrr	a5,sstatus
    80002658:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    8000265c:	fa843903          	ld	s2,-88(s0)
            TCB::timeSliceCounter = 0;
    80002660:	00005797          	auipc	a5,0x5
    80002664:	cc07b783          	ld	a5,-832(a5) # 80007320 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002668:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    8000266c:	00000097          	auipc	ra,0x0
    80002670:	aec080e7          	jalr	-1300(ra) # 80002158 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002674:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002678:	14149073          	csrw	sepc,s1
}
    8000267c:	fc1ff06f          	j	8000263c <_ZN5Riscv20handleSupervisorTrapEv+0x274>

0000000080002680 <_ZN3SemC1Ej>:

class TCB;
typedef TCB* thread_t;


Sem::Sem(unsigned init)
    80002680:	ff010113          	addi	sp,sp,-16
    80002684:	00813423          	sd	s0,8(sp)
    80002688:	01010413          	addi	s0,sp,16
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    8000268c:	00053423          	sd	zero,8(a0) # 8008 <_entry-0x7fff7ff8>
    80002690:	00053823          	sd	zero,16(a0)
{
    this->value = (int)init;
    80002694:	00b52023          	sw	a1,0(a0)
    this->open = true;
    80002698:	00100793          	li	a5,1
    8000269c:	00f50223          	sb	a5,4(a0)
}
    800026a0:	00813403          	ld	s0,8(sp)
    800026a4:	01010113          	addi	sp,sp,16
    800026a8:	00008067          	ret

00000000800026ac <_ZN3Sem6__openEPPS_j>:
}


int
Sem::__open(Sem **handle, unsigned init)
{
    800026ac:	fd010113          	addi	sp,sp,-48
    800026b0:	02113423          	sd	ra,40(sp)
    800026b4:	02813023          	sd	s0,32(sp)
    800026b8:	00913c23          	sd	s1,24(sp)
    800026bc:	01213823          	sd	s2,16(sp)
    800026c0:	01313423          	sd	s3,8(sp)
    800026c4:	03010413          	addi	s0,sp,48
    800026c8:	00050913          	mv	s2,a0
    800026cc:	00058993          	mv	s3,a1
    *handle = new Sem(init);
    800026d0:	01800513          	li	a0,24
    800026d4:	00000097          	auipc	ra,0x0
    800026d8:	c34080e7          	jalr	-972(ra) # 80002308 <_Znwm>
    800026dc:	00050493          	mv	s1,a0
    800026e0:	00098593          	mv	a1,s3
    800026e4:	00000097          	auipc	ra,0x0
    800026e8:	f9c080e7          	jalr	-100(ra) # 80002680 <_ZN3SemC1Ej>
    800026ec:	00993023          	sd	s1,0(s2)

    if (*handle)
    800026f0:	02048263          	beqz	s1,80002714 <_ZN3Sem6__openEPPS_j+0x68>
        return 0;
    800026f4:	00000513          	li	a0,0

    return -1;
}
    800026f8:	02813083          	ld	ra,40(sp)
    800026fc:	02013403          	ld	s0,32(sp)
    80002700:	01813483          	ld	s1,24(sp)
    80002704:	01013903          	ld	s2,16(sp)
    80002708:	00813983          	ld	s3,8(sp)
    8000270c:	03010113          	addi	sp,sp,48
    80002710:	00008067          	ret
    return -1;
    80002714:	fff00513          	li	a0,-1
    80002718:	fe1ff06f          	j	800026f8 <_ZN3Sem6__openEPPS_j+0x4c>

000000008000271c <_ZN3Sem7__closeEv>:


int
Sem::__close()
{
    if(!open)
    8000271c:	00454783          	lbu	a5,4(a0)
    80002720:	06078e63          	beqz	a5,8000279c <_ZN3Sem7__closeEv+0x80>
{
    80002724:	fe010113          	addi	sp,sp,-32
    80002728:	00113c23          	sd	ra,24(sp)
    8000272c:	00813823          	sd	s0,16(sp)
    80002730:	00913423          	sd	s1,8(sp)
    80002734:	01213023          	sd	s2,0(sp)
    80002738:	02010413          	addi	s0,sp,32
    8000273c:	00050493          	mv	s1,a0
        return -1;

    open = false;
    80002740:	00050223          	sb	zero,4(a0)
    80002744:	0280006f          	j	8000276c <_ZN3Sem7__closeEv+0x50>
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }
    80002748:	0004b823          	sd	zero,16(s1)

        T *ret = elem->data;
    8000274c:	00053903          	ld	s2,0(a0)
        delete elem;
    80002750:	00000097          	auipc	ra,0x0
    80002754:	c08080e7          	jalr	-1016(ra) # 80002358 <_ZdlPv>

    static void dispatch();


    State getState()            { return state;     }
    void  setState(State state) {TCB::state = state;}
    80002758:	00200793          	li	a5,2
    8000275c:	02f92823          	sw	a5,48(s2)

    while(blockedCoroutineQueue.peekLast())
    {
        thread_t curr = blockedCoroutineQueue.removeFirst();
        curr->setState(State::READY);
        Scheduler::put(curr);
    80002760:	00090513          	mv	a0,s2
    80002764:	00000097          	auipc	ra,0x0
    80002768:	2a0080e7          	jalr	672(ra) # 80002a04 <_ZN9Scheduler3putEP3TCB>
        return ret;
    }

    T *peekLast()
    {
        if (!tail) { return 0; }
    8000276c:	0104b783          	ld	a5,16(s1)
    80002770:	02078a63          	beqz	a5,800027a4 <_ZN3Sem7__closeEv+0x88>
        return tail->data;
    80002774:	0007b783          	ld	a5,0(a5)
    while(blockedCoroutineQueue.peekLast())
    80002778:	04078463          	beqz	a5,800027c0 <_ZN3Sem7__closeEv+0xa4>
        if (!head) { return 0; }
    8000277c:	0084b503          	ld	a0,8(s1)
    80002780:	00050a63          	beqz	a0,80002794 <_ZN3Sem7__closeEv+0x78>
        head = head->next;
    80002784:	00853783          	ld	a5,8(a0)
    80002788:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    8000278c:	fc0790e3          	bnez	a5,8000274c <_ZN3Sem7__closeEv+0x30>
    80002790:	fb9ff06f          	j	80002748 <_ZN3Sem7__closeEv+0x2c>
        if (!head) { return 0; }
    80002794:	00050913          	mv	s2,a0
    80002798:	fc1ff06f          	j	80002758 <_ZN3Sem7__closeEv+0x3c>
        return -1;
    8000279c:	fff00513          	li	a0,-1
    }

    return 0;
}
    800027a0:	00008067          	ret
    return 0;
    800027a4:	00000513          	li	a0,0
}
    800027a8:	01813083          	ld	ra,24(sp)
    800027ac:	01013403          	ld	s0,16(sp)
    800027b0:	00813483          	ld	s1,8(sp)
    800027b4:	00013903          	ld	s2,0(sp)
    800027b8:	02010113          	addi	sp,sp,32
    800027bc:	00008067          	ret
    return 0;
    800027c0:	00000513          	li	a0,0
    800027c4:	fe5ff06f          	j	800027a8 <_ZN3Sem7__closeEv+0x8c>

00000000800027c8 <_ZN3SemD1Ev>:
Sem::~Sem()
    800027c8:	ff010113          	addi	sp,sp,-16
    800027cc:	00113423          	sd	ra,8(sp)
    800027d0:	00813023          	sd	s0,0(sp)
    800027d4:	01010413          	addi	s0,sp,16
    __close();
    800027d8:	00000097          	auipc	ra,0x0
    800027dc:	f44080e7          	jalr	-188(ra) # 8000271c <_ZN3Sem7__closeEv>
}
    800027e0:	00813083          	ld	ra,8(sp)
    800027e4:	00013403          	ld	s0,0(sp)
    800027e8:	01010113          	addi	sp,sp,16
    800027ec:	00008067          	ret

00000000800027f0 <_ZN3Sem6__waitEv>:


int
Sem::__wait()
{
    if(!open)
    800027f0:	00454783          	lbu	a5,4(a0)
    800027f4:	0a078263          	beqz	a5,80002898 <_ZN3Sem6__waitEv+0xa8>
{
    800027f8:	fe010113          	addi	sp,sp,-32
    800027fc:	00113c23          	sd	ra,24(sp)
    80002800:	00813823          	sd	s0,16(sp)
    80002804:	00913423          	sd	s1,8(sp)
    80002808:	01213023          	sd	s2,0(sp)
    8000280c:	02010413          	addi	s0,sp,32
    80002810:	00050493          	mv	s1,a0
        return -1;

    if(--(this->value) < 0)
    80002814:	00052783          	lw	a5,0(a0)
    80002818:	fff7879b          	addiw	a5,a5,-1
    8000281c:	00f52023          	sw	a5,0(a0)
    80002820:	02079713          	slli	a4,a5,0x20
    80002824:	02074063          	bltz	a4,80002844 <_ZN3Sem6__waitEv+0x54>
        TCB::running->setState(State::BLOCKED);
        blockedCoroutineQueue.addLast(TCB::running);
        TCB::dispatch();
    }

    return 0;
    80002828:	00000513          	li	a0,0
}
    8000282c:	01813083          	ld	ra,24(sp)
    80002830:	01013403          	ld	s0,16(sp)
    80002834:	00813483          	ld	s1,8(sp)
    80002838:	00013903          	ld	s2,0(sp)
    8000283c:	02010113          	addi	sp,sp,32
    80002840:	00008067          	ret
        TCB::running->setState(State::BLOCKED);
    80002844:	00005797          	auipc	a5,0x5
    80002848:	aec7b783          	ld	a5,-1300(a5) # 80007330 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000284c:	0007b903          	ld	s2,0(a5)
    80002850:	00300793          	li	a5,3
    80002854:	02f92823          	sw	a5,48(s2)
        Elem *elem = new Elem(data, 0);
    80002858:	01000513          	li	a0,16
    8000285c:	00000097          	auipc	ra,0x0
    80002860:	aac080e7          	jalr	-1364(ra) # 80002308 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002864:	01253023          	sd	s2,0(a0)
    80002868:	00053423          	sd	zero,8(a0)
        if (tail)
    8000286c:	0104b783          	ld	a5,16(s1)
    80002870:	00078e63          	beqz	a5,8000288c <_ZN3Sem6__waitEv+0x9c>
            tail->next = elem;
    80002874:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002878:	00a4b823          	sd	a0,16(s1)
        TCB::dispatch();
    8000287c:	00000097          	auipc	ra,0x0
    80002880:	8dc080e7          	jalr	-1828(ra) # 80002158 <_ZN3TCB8dispatchEv>
    return 0;
    80002884:	00000513          	li	a0,0
    80002888:	fa5ff06f          	j	8000282c <_ZN3Sem6__waitEv+0x3c>
            head = tail = elem;
    8000288c:	00a4b823          	sd	a0,16(s1)
    80002890:	00a4b423          	sd	a0,8(s1)
    80002894:	fe9ff06f          	j	8000287c <_ZN3Sem6__waitEv+0x8c>
        return -1;
    80002898:	fff00513          	li	a0,-1
}
    8000289c:	00008067          	ret

00000000800028a0 <_ZN3Sem8__signalEv>:


int
Sem::__signal()
{
    if(!open)
    800028a0:	00454703          	lbu	a4,4(a0)
    800028a4:	08070a63          	beqz	a4,80002938 <_ZN3Sem8__signalEv+0x98>
    800028a8:	00050793          	mv	a5,a0
        return -1;

    if(++(this->value) <= 0)
    800028ac:	00052703          	lw	a4,0(a0)
    800028b0:	0017071b          	addiw	a4,a4,1
    800028b4:	0007069b          	sext.w	a3,a4
    800028b8:	00e52023          	sw	a4,0(a0)
    800028bc:	00d05663          	blez	a3,800028c8 <_ZN3Sem8__signalEv+0x28>
        curr->setState(State::READY);
        Scheduler::put(curr);
    }


    return 0;
    800028c0:	00000513          	li	a0,0
}
    800028c4:	00008067          	ret
{
    800028c8:	fe010113          	addi	sp,sp,-32
    800028cc:	00113c23          	sd	ra,24(sp)
    800028d0:	00813823          	sd	s0,16(sp)
    800028d4:	00913423          	sd	s1,8(sp)
    800028d8:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    800028dc:	00853503          	ld	a0,8(a0)
    800028e0:	04050863          	beqz	a0,80002930 <_ZN3Sem8__signalEv+0x90>
        head = head->next;
    800028e4:	00853703          	ld	a4,8(a0)
    800028e8:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    800028ec:	02070e63          	beqz	a4,80002928 <_ZN3Sem8__signalEv+0x88>
        T *ret = elem->data;
    800028f0:	00053483          	ld	s1,0(a0)
        delete elem;
    800028f4:	00000097          	auipc	ra,0x0
    800028f8:	a64080e7          	jalr	-1436(ra) # 80002358 <_ZdlPv>
    800028fc:	00200793          	li	a5,2
    80002900:	02f4a823          	sw	a5,48(s1)
        Scheduler::put(curr);
    80002904:	00048513          	mv	a0,s1
    80002908:	00000097          	auipc	ra,0x0
    8000290c:	0fc080e7          	jalr	252(ra) # 80002a04 <_ZN9Scheduler3putEP3TCB>
    return 0;
    80002910:	00000513          	li	a0,0
}
    80002914:	01813083          	ld	ra,24(sp)
    80002918:	01013403          	ld	s0,16(sp)
    8000291c:	00813483          	ld	s1,8(sp)
    80002920:	02010113          	addi	sp,sp,32
    80002924:	00008067          	ret
        if (!head) { tail = 0; }
    80002928:	0007b823          	sd	zero,16(a5)
    8000292c:	fc5ff06f          	j	800028f0 <_ZN3Sem8__signalEv+0x50>
        if (!head) { return 0; }
    80002930:	00050493          	mv	s1,a0
    80002934:	fc9ff06f          	j	800028fc <_ZN3Sem8__signalEv+0x5c>
        return -1;
    80002938:	fff00513          	li	a0,-1
    8000293c:	00008067          	ret

0000000080002940 <_ZN3Sem10__getValueEv>:


int
Sem::__getValue()
{
    80002940:	ff010113          	addi	sp,sp,-16
    80002944:	00813423          	sd	s0,8(sp)
    80002948:	01010413          	addi	s0,sp,16
    return this->value;
    8000294c:	00052503          	lw	a0,0(a0)
    80002950:	00813403          	ld	s0,8(sp)
    80002954:	01010113          	addi	sp,sp,16
    80002958:	00008067          	ret

000000008000295c <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    8000295c:	ff010113          	addi	sp,sp,-16
    80002960:	00813423          	sd	s0,8(sp)
    80002964:	01010413          	addi	s0,sp,16
    80002968:	00100793          	li	a5,1
    8000296c:	00f50863          	beq	a0,a5,8000297c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002970:	00813403          	ld	s0,8(sp)
    80002974:	01010113          	addi	sp,sp,16
    80002978:	00008067          	ret
    8000297c:	000107b7          	lui	a5,0x10
    80002980:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002984:	fef596e3          	bne	a1,a5,80002970 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80002988:	00005797          	auipc	a5,0x5
    8000298c:	a4878793          	addi	a5,a5,-1464 # 800073d0 <_ZN9Scheduler19readyCoroutineQueueE>
    80002990:	0007b023          	sd	zero,0(a5)
    80002994:	0007b423          	sd	zero,8(a5)
    80002998:	fd9ff06f          	j	80002970 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000299c <_ZN9Scheduler3getEv>:
{
    8000299c:	fe010113          	addi	sp,sp,-32
    800029a0:	00113c23          	sd	ra,24(sp)
    800029a4:	00813823          	sd	s0,16(sp)
    800029a8:	00913423          	sd	s1,8(sp)
    800029ac:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800029b0:	00005517          	auipc	a0,0x5
    800029b4:	a2053503          	ld	a0,-1504(a0) # 800073d0 <_ZN9Scheduler19readyCoroutineQueueE>
    800029b8:	04050263          	beqz	a0,800029fc <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    800029bc:	00853783          	ld	a5,8(a0)
    800029c0:	00005717          	auipc	a4,0x5
    800029c4:	a0f73823          	sd	a5,-1520(a4) # 800073d0 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    800029c8:	02078463          	beqz	a5,800029f0 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    800029cc:	00053483          	ld	s1,0(a0)
        delete elem;
    800029d0:	00000097          	auipc	ra,0x0
    800029d4:	988080e7          	jalr	-1656(ra) # 80002358 <_ZdlPv>
}
    800029d8:	00048513          	mv	a0,s1
    800029dc:	01813083          	ld	ra,24(sp)
    800029e0:	01013403          	ld	s0,16(sp)
    800029e4:	00813483          	ld	s1,8(sp)
    800029e8:	02010113          	addi	sp,sp,32
    800029ec:	00008067          	ret
        if (!head) { tail = 0; }
    800029f0:	00005797          	auipc	a5,0x5
    800029f4:	9e07b423          	sd	zero,-1560(a5) # 800073d8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800029f8:	fd5ff06f          	j	800029cc <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800029fc:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80002a00:	fd9ff06f          	j	800029d8 <_ZN9Scheduler3getEv+0x3c>

0000000080002a04 <_ZN9Scheduler3putEP3TCB>:
{
    80002a04:	fe010113          	addi	sp,sp,-32
    80002a08:	00113c23          	sd	ra,24(sp)
    80002a0c:	00813823          	sd	s0,16(sp)
    80002a10:	00913423          	sd	s1,8(sp)
    80002a14:	02010413          	addi	s0,sp,32
    80002a18:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002a1c:	01000513          	li	a0,16
    80002a20:	00000097          	auipc	ra,0x0
    80002a24:	8e8080e7          	jalr	-1816(ra) # 80002308 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002a28:	00953023          	sd	s1,0(a0)
    80002a2c:	00053423          	sd	zero,8(a0)
        if (tail)
    80002a30:	00005797          	auipc	a5,0x5
    80002a34:	9a87b783          	ld	a5,-1624(a5) # 800073d8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002a38:	02078263          	beqz	a5,80002a5c <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002a3c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002a40:	00005797          	auipc	a5,0x5
    80002a44:	98a7bc23          	sd	a0,-1640(a5) # 800073d8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002a48:	01813083          	ld	ra,24(sp)
    80002a4c:	01013403          	ld	s0,16(sp)
    80002a50:	00813483          	ld	s1,8(sp)
    80002a54:	02010113          	addi	sp,sp,32
    80002a58:	00008067          	ret
            head = tail = elem;
    80002a5c:	00005797          	auipc	a5,0x5
    80002a60:	97478793          	addi	a5,a5,-1676 # 800073d0 <_ZN9Scheduler19readyCoroutineQueueE>
    80002a64:	00a7b423          	sd	a0,8(a5)
    80002a68:	00a7b023          	sd	a0,0(a5)
    80002a6c:	fddff06f          	j	80002a48 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002a70 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80002a70:	ff010113          	addi	sp,sp,-16
    80002a74:	00113423          	sd	ra,8(sp)
    80002a78:	00813023          	sd	s0,0(sp)
    80002a7c:	01010413          	addi	s0,sp,16
    80002a80:	000105b7          	lui	a1,0x10
    80002a84:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002a88:	00100513          	li	a0,1
    80002a8c:	00000097          	auipc	ra,0x0
    80002a90:	ed0080e7          	jalr	-304(ra) # 8000295c <_Z41__static_initialization_and_destruction_0ii>
    80002a94:	00813083          	ld	ra,8(sp)
    80002a98:	00013403          	ld	s0,0(sp)
    80002a9c:	01010113          	addi	sp,sp,16
    80002aa0:	00008067          	ret

0000000080002aa4 <_ZN6Thread7wrapperEPv>:
#include "../h/syscall_cpp.hpp"

void
Thread::wrapper(void *handle)
{
    if(handle)
    80002aa4:	02050863          	beqz	a0,80002ad4 <_ZN6Thread7wrapperEPv+0x30>
{
    80002aa8:	ff010113          	addi	sp,sp,-16
    80002aac:	00113423          	sd	ra,8(sp)
    80002ab0:	00813023          	sd	s0,0(sp)
    80002ab4:	01010413          	addi	s0,sp,16
        ((Thread*)handle)->run();
    80002ab8:	00053783          	ld	a5,0(a0)
    80002abc:	0107b783          	ld	a5,16(a5)
    80002ac0:	000780e7          	jalr	a5
}
    80002ac4:	00813083          	ld	ra,8(sp)
    80002ac8:	00013403          	ld	s0,0(sp)
    80002acc:	01010113          	addi	sp,sp,16
    80002ad0:	00008067          	ret
    80002ad4:	00008067          	ret

0000000080002ad8 <_ZN6ThreadD1Ev>:
{
    myHandle = nullptr;
    thread_create_wo_start(&myHandle, Thread::wrapper, this);
}

Thread::~Thread()
    80002ad8:	ff010113          	addi	sp,sp,-16
    80002adc:	00813423          	sd	s0,8(sp)
    80002ae0:	01010413          	addi	s0,sp,16
{
    myHandle = nullptr;
    delete myHandle;
}
    80002ae4:	00813403          	ld	s0,8(sp)
    80002ae8:	01010113          	addi	sp,sp,16
    80002aec:	00008067          	ret

0000000080002af0 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80002af0:	ff010113          	addi	sp,sp,-16
    80002af4:	00113423          	sd	ra,8(sp)
    80002af8:	00813023          	sd	s0,0(sp)
    80002afc:	01010413          	addi	s0,sp,16
}
    80002b00:	00000097          	auipc	ra,0x0
    80002b04:	858080e7          	jalr	-1960(ra) # 80002358 <_ZdlPv>
    80002b08:	00813083          	ld	ra,8(sp)
    80002b0c:	00013403          	ld	s0,0(sp)
    80002b10:	01010113          	addi	sp,sp,16
    80002b14:	00008067          	ret

0000000080002b18 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg)
    80002b18:	ff010113          	addi	sp,sp,-16
    80002b1c:	00113423          	sd	ra,8(sp)
    80002b20:	00813023          	sd	s0,0(sp)
    80002b24:	01010413          	addi	s0,sp,16
    80002b28:	00004797          	auipc	a5,0x4
    80002b2c:	7b078793          	addi	a5,a5,1968 # 800072d8 <_ZTV6Thread+0x10>
    80002b30:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002b34:	00053423          	sd	zero,8(a0)
    thread_create_wo_start(&myHandle, body, arg);
    80002b38:	00850513          	addi	a0,a0,8
    80002b3c:	fffff097          	auipc	ra,0xfffff
    80002b40:	ca4080e7          	jalr	-860(ra) # 800017e0 <_Z22thread_create_wo_startPP3TCBPFvPvES2_>
}
    80002b44:	00813083          	ld	ra,8(sp)
    80002b48:	00013403          	ld	s0,0(sp)
    80002b4c:	01010113          	addi	sp,sp,16
    80002b50:	00008067          	ret

0000000080002b54 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80002b54:	ff010113          	addi	sp,sp,-16
    80002b58:	00113423          	sd	ra,8(sp)
    80002b5c:	00813023          	sd	s0,0(sp)
    80002b60:	01010413          	addi	s0,sp,16
    80002b64:	00004797          	auipc	a5,0x4
    80002b68:	77478793          	addi	a5,a5,1908 # 800072d8 <_ZTV6Thread+0x10>
    80002b6c:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002b70:	00053423          	sd	zero,8(a0)
    thread_create_wo_start(&myHandle, Thread::wrapper, this);
    80002b74:	00050613          	mv	a2,a0
    80002b78:	00000597          	auipc	a1,0x0
    80002b7c:	f2c58593          	addi	a1,a1,-212 # 80002aa4 <_ZN6Thread7wrapperEPv>
    80002b80:	00850513          	addi	a0,a0,8
    80002b84:	fffff097          	auipc	ra,0xfffff
    80002b88:	c5c080e7          	jalr	-932(ra) # 800017e0 <_Z22thread_create_wo_startPP3TCBPFvPvES2_>
}
    80002b8c:	00813083          	ld	ra,8(sp)
    80002b90:	00013403          	ld	s0,0(sp)
    80002b94:	01010113          	addi	sp,sp,16
    80002b98:	00008067          	ret

0000000080002b9c <_ZN6Thread5startEv>:
int
Thread::start()
{
    int ret = -3;

    if(myHandle)
    80002b9c:	00853503          	ld	a0,8(a0)
    80002ba0:	02050663          	beqz	a0,80002bcc <_ZN6Thread5startEv+0x30>
{
    80002ba4:	ff010113          	addi	sp,sp,-16
    80002ba8:	00113423          	sd	ra,8(sp)
    80002bac:	00813023          	sd	s0,0(sp)
    80002bb0:	01010413          	addi	s0,sp,16
        ret = thread_start(myHandle);
    80002bb4:	fffff097          	auipc	ra,0xfffff
    80002bb8:	c68080e7          	jalr	-920(ra) # 8000181c <_Z12thread_startP3TCB>

    return ret;
}
    80002bbc:	00813083          	ld	ra,8(sp)
    80002bc0:	00013403          	ld	s0,0(sp)
    80002bc4:	01010113          	addi	sp,sp,16
    80002bc8:	00008067          	ret
    int ret = -3;
    80002bcc:	ffd00513          	li	a0,-3
}
    80002bd0:	00008067          	ret

0000000080002bd4 <_ZN6Thread8dispatchEv>:

void
Thread::dispatch()
{
    80002bd4:	ff010113          	addi	sp,sp,-16
    80002bd8:	00113423          	sd	ra,8(sp)
    80002bdc:	00813023          	sd	s0,0(sp)
    80002be0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002be4:	fffff097          	auipc	ra,0xfffff
    80002be8:	bd8080e7          	jalr	-1064(ra) # 800017bc <_Z15thread_dispatchv>
    80002bec:	00813083          	ld	ra,8(sp)
    80002bf0:	00013403          	ld	s0,0(sp)
    80002bf4:	01010113          	addi	sp,sp,16
    80002bf8:	00008067          	ret

0000000080002bfc <_ZN6Thread3runEv>:

    static void dispatch ();
    static void wrapper(void *handle);
protected:
    Thread ();
    virtual void run () {}
    80002bfc:	ff010113          	addi	sp,sp,-16
    80002c00:	00813423          	sd	s0,8(sp)
    80002c04:	01010413          	addi	s0,sp,16
    80002c08:	00813403          	ld	s0,8(sp)
    80002c0c:	01010113          	addi	sp,sp,16
    80002c10:	00008067          	ret

0000000080002c14 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002c14:	fe010113          	addi	sp,sp,-32
    80002c18:	00113c23          	sd	ra,24(sp)
    80002c1c:	00813823          	sd	s0,16(sp)
    80002c20:	00913423          	sd	s1,8(sp)
    80002c24:	02010413          	addi	s0,sp,32
    80002c28:	00050493          	mv	s1,a0
    LOCK();
    80002c2c:	00100613          	li	a2,1
    80002c30:	00000593          	li	a1,0
    80002c34:	00004517          	auipc	a0,0x4
    80002c38:	7ac50513          	addi	a0,a0,1964 # 800073e0 <lockPrint>
    80002c3c:	ffffe097          	auipc	ra,0xffffe
    80002c40:	608080e7          	jalr	1544(ra) # 80001244 <copy_and_swap>
    80002c44:	fe0514e3          	bnez	a0,80002c2c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002c48:	0004c503          	lbu	a0,0(s1)
    80002c4c:	00050a63          	beqz	a0,80002c60 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80002c50:	fffff097          	auipc	ra,0xfffff
    80002c54:	cc0080e7          	jalr	-832(ra) # 80001910 <_Z4putcc>
        string++;
    80002c58:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002c5c:	fedff06f          	j	80002c48 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80002c60:	00000613          	li	a2,0
    80002c64:	00100593          	li	a1,1
    80002c68:	00004517          	auipc	a0,0x4
    80002c6c:	77850513          	addi	a0,a0,1912 # 800073e0 <lockPrint>
    80002c70:	ffffe097          	auipc	ra,0xffffe
    80002c74:	5d4080e7          	jalr	1492(ra) # 80001244 <copy_and_swap>
    80002c78:	fe0514e3          	bnez	a0,80002c60 <_Z11printStringPKc+0x4c>
}
    80002c7c:	01813083          	ld	ra,24(sp)
    80002c80:	01013403          	ld	s0,16(sp)
    80002c84:	00813483          	ld	s1,8(sp)
    80002c88:	02010113          	addi	sp,sp,32
    80002c8c:	00008067          	ret

0000000080002c90 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002c90:	fd010113          	addi	sp,sp,-48
    80002c94:	02113423          	sd	ra,40(sp)
    80002c98:	02813023          	sd	s0,32(sp)
    80002c9c:	00913c23          	sd	s1,24(sp)
    80002ca0:	01213823          	sd	s2,16(sp)
    80002ca4:	01313423          	sd	s3,8(sp)
    80002ca8:	01413023          	sd	s4,0(sp)
    80002cac:	03010413          	addi	s0,sp,48
    80002cb0:	00050993          	mv	s3,a0
    80002cb4:	00058a13          	mv	s4,a1
    LOCK();
    80002cb8:	00100613          	li	a2,1
    80002cbc:	00000593          	li	a1,0
    80002cc0:	00004517          	auipc	a0,0x4
    80002cc4:	72050513          	addi	a0,a0,1824 # 800073e0 <lockPrint>
    80002cc8:	ffffe097          	auipc	ra,0xffffe
    80002ccc:	57c080e7          	jalr	1404(ra) # 80001244 <copy_and_swap>
    80002cd0:	fe0514e3          	bnez	a0,80002cb8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002cd4:	00000913          	li	s2,0
    80002cd8:	00090493          	mv	s1,s2
    80002cdc:	0019091b          	addiw	s2,s2,1
    80002ce0:	03495a63          	bge	s2,s4,80002d14 <_Z9getStringPci+0x84>
        cc = getc();
    80002ce4:	fffff097          	auipc	ra,0xfffff
    80002ce8:	c54080e7          	jalr	-940(ra) # 80001938 <_Z4getcv>
        if(cc < 1)
    80002cec:	02050463          	beqz	a0,80002d14 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002cf0:	009984b3          	add	s1,s3,s1
    80002cf4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002cf8:	00a00793          	li	a5,10
    80002cfc:	00f50a63          	beq	a0,a5,80002d10 <_Z9getStringPci+0x80>
    80002d00:	00d00793          	li	a5,13
    80002d04:	fcf51ae3          	bne	a0,a5,80002cd8 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002d08:	00090493          	mv	s1,s2
    80002d0c:	0080006f          	j	80002d14 <_Z9getStringPci+0x84>
    80002d10:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002d14:	009984b3          	add	s1,s3,s1
    80002d18:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002d1c:	00000613          	li	a2,0
    80002d20:	00100593          	li	a1,1
    80002d24:	00004517          	auipc	a0,0x4
    80002d28:	6bc50513          	addi	a0,a0,1724 # 800073e0 <lockPrint>
    80002d2c:	ffffe097          	auipc	ra,0xffffe
    80002d30:	518080e7          	jalr	1304(ra) # 80001244 <copy_and_swap>
    80002d34:	fe0514e3          	bnez	a0,80002d1c <_Z9getStringPci+0x8c>
    return buf;
}
    80002d38:	00098513          	mv	a0,s3
    80002d3c:	02813083          	ld	ra,40(sp)
    80002d40:	02013403          	ld	s0,32(sp)
    80002d44:	01813483          	ld	s1,24(sp)
    80002d48:	01013903          	ld	s2,16(sp)
    80002d4c:	00813983          	ld	s3,8(sp)
    80002d50:	00013a03          	ld	s4,0(sp)
    80002d54:	03010113          	addi	sp,sp,48
    80002d58:	00008067          	ret

0000000080002d5c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002d5c:	ff010113          	addi	sp,sp,-16
    80002d60:	00813423          	sd	s0,8(sp)
    80002d64:	01010413          	addi	s0,sp,16
    80002d68:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002d6c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80002d70:	0006c603          	lbu	a2,0(a3)
    80002d74:	fd06071b          	addiw	a4,a2,-48
    80002d78:	0ff77713          	andi	a4,a4,255
    80002d7c:	00900793          	li	a5,9
    80002d80:	02e7e063          	bltu	a5,a4,80002da0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002d84:	0025179b          	slliw	a5,a0,0x2
    80002d88:	00a787bb          	addw	a5,a5,a0
    80002d8c:	0017979b          	slliw	a5,a5,0x1
    80002d90:	00168693          	addi	a3,a3,1
    80002d94:	00c787bb          	addw	a5,a5,a2
    80002d98:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002d9c:	fd5ff06f          	j	80002d70 <_Z11stringToIntPKc+0x14>
    return n;
}
    80002da0:	00813403          	ld	s0,8(sp)
    80002da4:	01010113          	addi	sp,sp,16
    80002da8:	00008067          	ret

0000000080002dac <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002dac:	fc010113          	addi	sp,sp,-64
    80002db0:	02113c23          	sd	ra,56(sp)
    80002db4:	02813823          	sd	s0,48(sp)
    80002db8:	02913423          	sd	s1,40(sp)
    80002dbc:	03213023          	sd	s2,32(sp)
    80002dc0:	01313c23          	sd	s3,24(sp)
    80002dc4:	04010413          	addi	s0,sp,64
    80002dc8:	00050493          	mv	s1,a0
    80002dcc:	00058913          	mv	s2,a1
    80002dd0:	00060993          	mv	s3,a2
    LOCK();
    80002dd4:	00100613          	li	a2,1
    80002dd8:	00000593          	li	a1,0
    80002ddc:	00004517          	auipc	a0,0x4
    80002de0:	60450513          	addi	a0,a0,1540 # 800073e0 <lockPrint>
    80002de4:	ffffe097          	auipc	ra,0xffffe
    80002de8:	460080e7          	jalr	1120(ra) # 80001244 <copy_and_swap>
    80002dec:	fe0514e3          	bnez	a0,80002dd4 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002df0:	00098463          	beqz	s3,80002df8 <_Z8printIntiii+0x4c>
    80002df4:	0804c463          	bltz	s1,80002e7c <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002df8:	0004851b          	sext.w	a0,s1
    neg = 0;
    80002dfc:	00000593          	li	a1,0
    }

    i = 0;
    80002e00:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002e04:	0009079b          	sext.w	a5,s2
    80002e08:	0325773b          	remuw	a4,a0,s2
    80002e0c:	00048613          	mv	a2,s1
    80002e10:	0014849b          	addiw	s1,s1,1
    80002e14:	02071693          	slli	a3,a4,0x20
    80002e18:	0206d693          	srli	a3,a3,0x20
    80002e1c:	00004717          	auipc	a4,0x4
    80002e20:	4d470713          	addi	a4,a4,1236 # 800072f0 <digits>
    80002e24:	00d70733          	add	a4,a4,a3
    80002e28:	00074683          	lbu	a3,0(a4)
    80002e2c:	fd040713          	addi	a4,s0,-48
    80002e30:	00c70733          	add	a4,a4,a2
    80002e34:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80002e38:	0005071b          	sext.w	a4,a0
    80002e3c:	0325553b          	divuw	a0,a0,s2
    80002e40:	fcf772e3          	bgeu	a4,a5,80002e04 <_Z8printIntiii+0x58>
    if(neg)
    80002e44:	00058c63          	beqz	a1,80002e5c <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80002e48:	fd040793          	addi	a5,s0,-48
    80002e4c:	009784b3          	add	s1,a5,s1
    80002e50:	02d00793          	li	a5,45
    80002e54:	fef48823          	sb	a5,-16(s1)
    80002e58:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80002e5c:	fff4849b          	addiw	s1,s1,-1
    80002e60:	0204c463          	bltz	s1,80002e88 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80002e64:	fd040793          	addi	a5,s0,-48
    80002e68:	009787b3          	add	a5,a5,s1
    80002e6c:	ff07c503          	lbu	a0,-16(a5)
    80002e70:	fffff097          	auipc	ra,0xfffff
    80002e74:	aa0080e7          	jalr	-1376(ra) # 80001910 <_Z4putcc>
    80002e78:	fe5ff06f          	j	80002e5c <_Z8printIntiii+0xb0>
        x = -xx;
    80002e7c:	4090053b          	negw	a0,s1
        neg = 1;
    80002e80:	00100593          	li	a1,1
        x = -xx;
    80002e84:	f7dff06f          	j	80002e00 <_Z8printIntiii+0x54>

    UNLOCK();
    80002e88:	00000613          	li	a2,0
    80002e8c:	00100593          	li	a1,1
    80002e90:	00004517          	auipc	a0,0x4
    80002e94:	55050513          	addi	a0,a0,1360 # 800073e0 <lockPrint>
    80002e98:	ffffe097          	auipc	ra,0xffffe
    80002e9c:	3ac080e7          	jalr	940(ra) # 80001244 <copy_and_swap>
    80002ea0:	fe0514e3          	bnez	a0,80002e88 <_Z8printIntiii+0xdc>
    80002ea4:	03813083          	ld	ra,56(sp)
    80002ea8:	03013403          	ld	s0,48(sp)
    80002eac:	02813483          	ld	s1,40(sp)
    80002eb0:	02013903          	ld	s2,32(sp)
    80002eb4:	01813983          	ld	s3,24(sp)
    80002eb8:	04010113          	addi	sp,sp,64
    80002ebc:	00008067          	ret

0000000080002ec0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002ec0:	fd010113          	addi	sp,sp,-48
    80002ec4:	02113423          	sd	ra,40(sp)
    80002ec8:	02813023          	sd	s0,32(sp)
    80002ecc:	00913c23          	sd	s1,24(sp)
    80002ed0:	01213823          	sd	s2,16(sp)
    80002ed4:	01313423          	sd	s3,8(sp)
    80002ed8:	03010413          	addi	s0,sp,48
    80002edc:	00050493          	mv	s1,a0
    80002ee0:	00058913          	mv	s2,a1
    80002ee4:	0015879b          	addiw	a5,a1,1
    80002ee8:	0007851b          	sext.w	a0,a5
    80002eec:	00f4a023          	sw	a5,0(s1)
    80002ef0:	0004a823          	sw	zero,16(s1)
    80002ef4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002ef8:	00251513          	slli	a0,a0,0x2
    80002efc:	fffff097          	auipc	ra,0xfffff
    80002f00:	800080e7          	jalr	-2048(ra) # 800016fc <_Z9mem_allocm>
    80002f04:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80002f08:	01000513          	li	a0,16
    80002f0c:	fffff097          	auipc	ra,0xfffff
    80002f10:	3fc080e7          	jalr	1020(ra) # 80002308 <_Znwm>
    80002f14:	00050993          	mv	s3,a0
    80002f18:	00000593          	li	a1,0
    80002f1c:	fffff097          	auipc	ra,0xfffff
    80002f20:	abc080e7          	jalr	-1348(ra) # 800019d8 <_ZN9SemaphoreC1Ej>
    80002f24:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80002f28:	01000513          	li	a0,16
    80002f2c:	fffff097          	auipc	ra,0xfffff
    80002f30:	3dc080e7          	jalr	988(ra) # 80002308 <_Znwm>
    80002f34:	00050993          	mv	s3,a0
    80002f38:	00090593          	mv	a1,s2
    80002f3c:	fffff097          	auipc	ra,0xfffff
    80002f40:	a9c080e7          	jalr	-1380(ra) # 800019d8 <_ZN9SemaphoreC1Ej>
    80002f44:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80002f48:	01000513          	li	a0,16
    80002f4c:	fffff097          	auipc	ra,0xfffff
    80002f50:	3bc080e7          	jalr	956(ra) # 80002308 <_Znwm>
    80002f54:	00050913          	mv	s2,a0
    80002f58:	00100593          	li	a1,1
    80002f5c:	fffff097          	auipc	ra,0xfffff
    80002f60:	a7c080e7          	jalr	-1412(ra) # 800019d8 <_ZN9SemaphoreC1Ej>
    80002f64:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80002f68:	01000513          	li	a0,16
    80002f6c:	fffff097          	auipc	ra,0xfffff
    80002f70:	39c080e7          	jalr	924(ra) # 80002308 <_Znwm>
    80002f74:	00050913          	mv	s2,a0
    80002f78:	00100593          	li	a1,1
    80002f7c:	fffff097          	auipc	ra,0xfffff
    80002f80:	a5c080e7          	jalr	-1444(ra) # 800019d8 <_ZN9SemaphoreC1Ej>
    80002f84:	0324b823          	sd	s2,48(s1)
}
    80002f88:	02813083          	ld	ra,40(sp)
    80002f8c:	02013403          	ld	s0,32(sp)
    80002f90:	01813483          	ld	s1,24(sp)
    80002f94:	01013903          	ld	s2,16(sp)
    80002f98:	00813983          	ld	s3,8(sp)
    80002f9c:	03010113          	addi	sp,sp,48
    80002fa0:	00008067          	ret
    80002fa4:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80002fa8:	00098513          	mv	a0,s3
    80002fac:	fffff097          	auipc	ra,0xfffff
    80002fb0:	3ac080e7          	jalr	940(ra) # 80002358 <_ZdlPv>
    80002fb4:	00048513          	mv	a0,s1
    80002fb8:	00005097          	auipc	ra,0x5
    80002fbc:	510080e7          	jalr	1296(ra) # 800084c8 <_Unwind_Resume>
    80002fc0:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80002fc4:	00098513          	mv	a0,s3
    80002fc8:	fffff097          	auipc	ra,0xfffff
    80002fcc:	390080e7          	jalr	912(ra) # 80002358 <_ZdlPv>
    80002fd0:	00048513          	mv	a0,s1
    80002fd4:	00005097          	auipc	ra,0x5
    80002fd8:	4f4080e7          	jalr	1268(ra) # 800084c8 <_Unwind_Resume>
    80002fdc:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80002fe0:	00090513          	mv	a0,s2
    80002fe4:	fffff097          	auipc	ra,0xfffff
    80002fe8:	374080e7          	jalr	884(ra) # 80002358 <_ZdlPv>
    80002fec:	00048513          	mv	a0,s1
    80002ff0:	00005097          	auipc	ra,0x5
    80002ff4:	4d8080e7          	jalr	1240(ra) # 800084c8 <_Unwind_Resume>
    80002ff8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80002ffc:	00090513          	mv	a0,s2
    80003000:	fffff097          	auipc	ra,0xfffff
    80003004:	358080e7          	jalr	856(ra) # 80002358 <_ZdlPv>
    80003008:	00048513          	mv	a0,s1
    8000300c:	00005097          	auipc	ra,0x5
    80003010:	4bc080e7          	jalr	1212(ra) # 800084c8 <_Unwind_Resume>

0000000080003014 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80003014:	fe010113          	addi	sp,sp,-32
    80003018:	00113c23          	sd	ra,24(sp)
    8000301c:	00813823          	sd	s0,16(sp)
    80003020:	00913423          	sd	s1,8(sp)
    80003024:	01213023          	sd	s2,0(sp)
    80003028:	02010413          	addi	s0,sp,32
    8000302c:	00050493          	mv	s1,a0
    80003030:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80003034:	01853503          	ld	a0,24(a0)
    80003038:	fffff097          	auipc	ra,0xfffff
    8000303c:	9d8080e7          	jalr	-1576(ra) # 80001a10 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80003040:	0304b503          	ld	a0,48(s1)
    80003044:	fffff097          	auipc	ra,0xfffff
    80003048:	9cc080e7          	jalr	-1588(ra) # 80001a10 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000304c:	0084b783          	ld	a5,8(s1)
    80003050:	0144a703          	lw	a4,20(s1)
    80003054:	00271713          	slli	a4,a4,0x2
    80003058:	00e787b3          	add	a5,a5,a4
    8000305c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003060:	0144a783          	lw	a5,20(s1)
    80003064:	0017879b          	addiw	a5,a5,1
    80003068:	0004a703          	lw	a4,0(s1)
    8000306c:	02e7e7bb          	remw	a5,a5,a4
    80003070:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80003074:	0304b503          	ld	a0,48(s1)
    80003078:	fffff097          	auipc	ra,0xfffff
    8000307c:	9c4080e7          	jalr	-1596(ra) # 80001a3c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80003080:	0204b503          	ld	a0,32(s1)
    80003084:	fffff097          	auipc	ra,0xfffff
    80003088:	9b8080e7          	jalr	-1608(ra) # 80001a3c <_ZN9Semaphore6signalEv>

}
    8000308c:	01813083          	ld	ra,24(sp)
    80003090:	01013403          	ld	s0,16(sp)
    80003094:	00813483          	ld	s1,8(sp)
    80003098:	00013903          	ld	s2,0(sp)
    8000309c:	02010113          	addi	sp,sp,32
    800030a0:	00008067          	ret

00000000800030a4 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800030a4:	fe010113          	addi	sp,sp,-32
    800030a8:	00113c23          	sd	ra,24(sp)
    800030ac:	00813823          	sd	s0,16(sp)
    800030b0:	00913423          	sd	s1,8(sp)
    800030b4:	01213023          	sd	s2,0(sp)
    800030b8:	02010413          	addi	s0,sp,32
    800030bc:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800030c0:	02053503          	ld	a0,32(a0)
    800030c4:	fffff097          	auipc	ra,0xfffff
    800030c8:	94c080e7          	jalr	-1716(ra) # 80001a10 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800030cc:	0284b503          	ld	a0,40(s1)
    800030d0:	fffff097          	auipc	ra,0xfffff
    800030d4:	940080e7          	jalr	-1728(ra) # 80001a10 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800030d8:	0084b703          	ld	a4,8(s1)
    800030dc:	0104a783          	lw	a5,16(s1)
    800030e0:	00279693          	slli	a3,a5,0x2
    800030e4:	00d70733          	add	a4,a4,a3
    800030e8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800030ec:	0017879b          	addiw	a5,a5,1
    800030f0:	0004a703          	lw	a4,0(s1)
    800030f4:	02e7e7bb          	remw	a5,a5,a4
    800030f8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800030fc:	0284b503          	ld	a0,40(s1)
    80003100:	fffff097          	auipc	ra,0xfffff
    80003104:	93c080e7          	jalr	-1732(ra) # 80001a3c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80003108:	0184b503          	ld	a0,24(s1)
    8000310c:	fffff097          	auipc	ra,0xfffff
    80003110:	930080e7          	jalr	-1744(ra) # 80001a3c <_ZN9Semaphore6signalEv>

    return ret;
}
    80003114:	00090513          	mv	a0,s2
    80003118:	01813083          	ld	ra,24(sp)
    8000311c:	01013403          	ld	s0,16(sp)
    80003120:	00813483          	ld	s1,8(sp)
    80003124:	00013903          	ld	s2,0(sp)
    80003128:	02010113          	addi	sp,sp,32
    8000312c:	00008067          	ret

0000000080003130 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80003130:	fe010113          	addi	sp,sp,-32
    80003134:	00113c23          	sd	ra,24(sp)
    80003138:	00813823          	sd	s0,16(sp)
    8000313c:	00913423          	sd	s1,8(sp)
    80003140:	01213023          	sd	s2,0(sp)
    80003144:	02010413          	addi	s0,sp,32
    80003148:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000314c:	02853503          	ld	a0,40(a0)
    80003150:	fffff097          	auipc	ra,0xfffff
    80003154:	8c0080e7          	jalr	-1856(ra) # 80001a10 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80003158:	0304b503          	ld	a0,48(s1)
    8000315c:	fffff097          	auipc	ra,0xfffff
    80003160:	8b4080e7          	jalr	-1868(ra) # 80001a10 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80003164:	0144a783          	lw	a5,20(s1)
    80003168:	0104a903          	lw	s2,16(s1)
    8000316c:	0327ce63          	blt	a5,s2,800031a8 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80003170:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80003174:	0304b503          	ld	a0,48(s1)
    80003178:	fffff097          	auipc	ra,0xfffff
    8000317c:	8c4080e7          	jalr	-1852(ra) # 80001a3c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80003180:	0284b503          	ld	a0,40(s1)
    80003184:	fffff097          	auipc	ra,0xfffff
    80003188:	8b8080e7          	jalr	-1864(ra) # 80001a3c <_ZN9Semaphore6signalEv>

    return ret;
}
    8000318c:	00090513          	mv	a0,s2
    80003190:	01813083          	ld	ra,24(sp)
    80003194:	01013403          	ld	s0,16(sp)
    80003198:	00813483          	ld	s1,8(sp)
    8000319c:	00013903          	ld	s2,0(sp)
    800031a0:	02010113          	addi	sp,sp,32
    800031a4:	00008067          	ret
        ret = cap - head + tail;
    800031a8:	0004a703          	lw	a4,0(s1)
    800031ac:	4127093b          	subw	s2,a4,s2
    800031b0:	00f9093b          	addw	s2,s2,a5
    800031b4:	fc1ff06f          	j	80003174 <_ZN9BufferCPP6getCntEv+0x44>

00000000800031b8 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800031b8:	fe010113          	addi	sp,sp,-32
    800031bc:	00113c23          	sd	ra,24(sp)
    800031c0:	00813823          	sd	s0,16(sp)
    800031c4:	00913423          	sd	s1,8(sp)
    800031c8:	02010413          	addi	s0,sp,32
    800031cc:	00050493          	mv	s1,a0
    Console::putc('\n');
    800031d0:	00a00513          	li	a0,10
    800031d4:	fffff097          	auipc	ra,0xfffff
    800031d8:	e5c080e7          	jalr	-420(ra) # 80002030 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800031dc:	00003517          	auipc	a0,0x3
    800031e0:	f2450513          	addi	a0,a0,-220 # 80006100 <CONSOLE_STATUS+0xf0>
    800031e4:	00000097          	auipc	ra,0x0
    800031e8:	a30080e7          	jalr	-1488(ra) # 80002c14 <_Z11printStringPKc>
    while (getCnt()) {
    800031ec:	00048513          	mv	a0,s1
    800031f0:	00000097          	auipc	ra,0x0
    800031f4:	f40080e7          	jalr	-192(ra) # 80003130 <_ZN9BufferCPP6getCntEv>
    800031f8:	02050c63          	beqz	a0,80003230 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800031fc:	0084b783          	ld	a5,8(s1)
    80003200:	0104a703          	lw	a4,16(s1)
    80003204:	00271713          	slli	a4,a4,0x2
    80003208:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000320c:	0007c503          	lbu	a0,0(a5)
    80003210:	fffff097          	auipc	ra,0xfffff
    80003214:	e20080e7          	jalr	-480(ra) # 80002030 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80003218:	0104a783          	lw	a5,16(s1)
    8000321c:	0017879b          	addiw	a5,a5,1
    80003220:	0004a703          	lw	a4,0(s1)
    80003224:	02e7e7bb          	remw	a5,a5,a4
    80003228:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000322c:	fc1ff06f          	j	800031ec <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80003230:	02100513          	li	a0,33
    80003234:	fffff097          	auipc	ra,0xfffff
    80003238:	dfc080e7          	jalr	-516(ra) # 80002030 <_ZN7Console4putcEc>
    Console::putc('\n');
    8000323c:	00a00513          	li	a0,10
    80003240:	fffff097          	auipc	ra,0xfffff
    80003244:	df0080e7          	jalr	-528(ra) # 80002030 <_ZN7Console4putcEc>
    mem_free(buffer);
    80003248:	0084b503          	ld	a0,8(s1)
    8000324c:	ffffe097          	auipc	ra,0xffffe
    80003250:	4dc080e7          	jalr	1244(ra) # 80001728 <_Z8mem_freePv>
    delete itemAvailable;
    80003254:	0204b503          	ld	a0,32(s1)
    80003258:	00050863          	beqz	a0,80003268 <_ZN9BufferCPPD1Ev+0xb0>
    8000325c:	00053783          	ld	a5,0(a0)
    80003260:	0087b783          	ld	a5,8(a5)
    80003264:	000780e7          	jalr	a5
    delete spaceAvailable;
    80003268:	0184b503          	ld	a0,24(s1)
    8000326c:	00050863          	beqz	a0,8000327c <_ZN9BufferCPPD1Ev+0xc4>
    80003270:	00053783          	ld	a5,0(a0)
    80003274:	0087b783          	ld	a5,8(a5)
    80003278:	000780e7          	jalr	a5
    delete mutexTail;
    8000327c:	0304b503          	ld	a0,48(s1)
    80003280:	00050863          	beqz	a0,80003290 <_ZN9BufferCPPD1Ev+0xd8>
    80003284:	00053783          	ld	a5,0(a0)
    80003288:	0087b783          	ld	a5,8(a5)
    8000328c:	000780e7          	jalr	a5
    delete mutexHead;
    80003290:	0284b503          	ld	a0,40(s1)
    80003294:	00050863          	beqz	a0,800032a4 <_ZN9BufferCPPD1Ev+0xec>
    80003298:	00053783          	ld	a5,0(a0)
    8000329c:	0087b783          	ld	a5,8(a5)
    800032a0:	000780e7          	jalr	a5
}
    800032a4:	01813083          	ld	ra,24(sp)
    800032a8:	01013403          	ld	s0,16(sp)
    800032ac:	00813483          	ld	s1,8(sp)
    800032b0:	02010113          	addi	sp,sp,32
    800032b4:	00008067          	ret

00000000800032b8 <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    800032b8:	fe010113          	addi	sp,sp,-32
    800032bc:	00113c23          	sd	ra,24(sp)
    800032c0:	00813823          	sd	s0,16(sp)
    800032c4:	00913423          	sd	s1,8(sp)
    800032c8:	01213023          	sd	s2,0(sp)
    800032cc:	02010413          	addi	s0,sp,32
    800032d0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800032d4:	00000913          	li	s2,0
    800032d8:	00c0006f          	j	800032e4 <_Z16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800032dc:	ffffe097          	auipc	ra,0xffffe
    800032e0:	4e0080e7          	jalr	1248(ra) # 800017bc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800032e4:	ffffe097          	auipc	ra,0xffffe
    800032e8:	654080e7          	jalr	1620(ra) # 80001938 <_Z4getcv>
    800032ec:	0005059b          	sext.w	a1,a0
    800032f0:	01b00793          	li	a5,27
    800032f4:	02f58a63          	beq	a1,a5,80003328 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800032f8:	0084b503          	ld	a0,8(s1)
    800032fc:	00000097          	auipc	ra,0x0
    80003300:	574080e7          	jalr	1396(ra) # 80003870 <_ZN6Buffer3putEi>
        i++;
    80003304:	0019071b          	addiw	a4,s2,1
    80003308:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000330c:	0004a683          	lw	a3,0(s1)
    80003310:	0026979b          	slliw	a5,a3,0x2
    80003314:	00d787bb          	addw	a5,a5,a3
    80003318:	0017979b          	slliw	a5,a5,0x1
    8000331c:	02f767bb          	remw	a5,a4,a5
    80003320:	fc0792e3          	bnez	a5,800032e4 <_Z16producerKeyboardPv+0x2c>
    80003324:	fb9ff06f          	j	800032dc <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003328:	00100793          	li	a5,1
    8000332c:	00004717          	auipc	a4,0x4
    80003330:	0af72e23          	sw	a5,188(a4) # 800073e8 <threadEnd>
    data->buffer->put('!');
    80003334:	02100593          	li	a1,33
    80003338:	0084b503          	ld	a0,8(s1)
    8000333c:	00000097          	auipc	ra,0x0
    80003340:	534080e7          	jalr	1332(ra) # 80003870 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003344:	0104b503          	ld	a0,16(s1)
    80003348:	ffffe097          	auipc	ra,0xffffe
    8000334c:	598080e7          	jalr	1432(ra) # 800018e0 <_Z10sem_signalP3Sem>
}
    80003350:	01813083          	ld	ra,24(sp)
    80003354:	01013403          	ld	s0,16(sp)
    80003358:	00813483          	ld	s1,8(sp)
    8000335c:	00013903          	ld	s2,0(sp)
    80003360:	02010113          	addi	sp,sp,32
    80003364:	00008067          	ret

0000000080003368 <_Z8producerPv>:

void producer(void *arg) {
    80003368:	fe010113          	addi	sp,sp,-32
    8000336c:	00113c23          	sd	ra,24(sp)
    80003370:	00813823          	sd	s0,16(sp)
    80003374:	00913423          	sd	s1,8(sp)
    80003378:	01213023          	sd	s2,0(sp)
    8000337c:	02010413          	addi	s0,sp,32
    80003380:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003384:	00000913          	li	s2,0
    80003388:	00c0006f          	j	80003394 <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000338c:	ffffe097          	auipc	ra,0xffffe
    80003390:	430080e7          	jalr	1072(ra) # 800017bc <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003394:	00004797          	auipc	a5,0x4
    80003398:	0547a783          	lw	a5,84(a5) # 800073e8 <threadEnd>
    8000339c:	02079e63          	bnez	a5,800033d8 <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800033a0:	0004a583          	lw	a1,0(s1)
    800033a4:	0305859b          	addiw	a1,a1,48
    800033a8:	0084b503          	ld	a0,8(s1)
    800033ac:	00000097          	auipc	ra,0x0
    800033b0:	4c4080e7          	jalr	1220(ra) # 80003870 <_ZN6Buffer3putEi>
        i++;
    800033b4:	0019071b          	addiw	a4,s2,1
    800033b8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800033bc:	0004a683          	lw	a3,0(s1)
    800033c0:	0026979b          	slliw	a5,a3,0x2
    800033c4:	00d787bb          	addw	a5,a5,a3
    800033c8:	0017979b          	slliw	a5,a5,0x1
    800033cc:	02f767bb          	remw	a5,a4,a5
    800033d0:	fc0792e3          	bnez	a5,80003394 <_Z8producerPv+0x2c>
    800033d4:	fb9ff06f          	j	8000338c <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800033d8:	0104b503          	ld	a0,16(s1)
    800033dc:	ffffe097          	auipc	ra,0xffffe
    800033e0:	504080e7          	jalr	1284(ra) # 800018e0 <_Z10sem_signalP3Sem>
}
    800033e4:	01813083          	ld	ra,24(sp)
    800033e8:	01013403          	ld	s0,16(sp)
    800033ec:	00813483          	ld	s1,8(sp)
    800033f0:	00013903          	ld	s2,0(sp)
    800033f4:	02010113          	addi	sp,sp,32
    800033f8:	00008067          	ret

00000000800033fc <_Z8consumerPv>:

void consumer(void *arg) {
    800033fc:	fd010113          	addi	sp,sp,-48
    80003400:	02113423          	sd	ra,40(sp)
    80003404:	02813023          	sd	s0,32(sp)
    80003408:	00913c23          	sd	s1,24(sp)
    8000340c:	01213823          	sd	s2,16(sp)
    80003410:	01313423          	sd	s3,8(sp)
    80003414:	03010413          	addi	s0,sp,48
    80003418:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000341c:	00000993          	li	s3,0
    80003420:	01c0006f          	j	8000343c <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003424:	ffffe097          	auipc	ra,0xffffe
    80003428:	398080e7          	jalr	920(ra) # 800017bc <_Z15thread_dispatchv>
    8000342c:	0500006f          	j	8000347c <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003430:	00a00513          	li	a0,10
    80003434:	ffffe097          	auipc	ra,0xffffe
    80003438:	4dc080e7          	jalr	1244(ra) # 80001910 <_Z4putcc>
    while (!threadEnd) {
    8000343c:	00004797          	auipc	a5,0x4
    80003440:	fac7a783          	lw	a5,-84(a5) # 800073e8 <threadEnd>
    80003444:	06079063          	bnez	a5,800034a4 <_Z8consumerPv+0xa8>
        int key = data->buffer->get();
    80003448:	00893503          	ld	a0,8(s2)
    8000344c:	00000097          	auipc	ra,0x0
    80003450:	4b4080e7          	jalr	1204(ra) # 80003900 <_ZN6Buffer3getEv>
        i++;
    80003454:	0019849b          	addiw	s1,s3,1
    80003458:	0004899b          	sext.w	s3,s1
        putc(key);
    8000345c:	0ff57513          	andi	a0,a0,255
    80003460:	ffffe097          	auipc	ra,0xffffe
    80003464:	4b0080e7          	jalr	1200(ra) # 80001910 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003468:	00092703          	lw	a4,0(s2)
    8000346c:	0027179b          	slliw	a5,a4,0x2
    80003470:	00e787bb          	addw	a5,a5,a4
    80003474:	02f4e7bb          	remw	a5,s1,a5
    80003478:	fa0786e3          	beqz	a5,80003424 <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    8000347c:	05000793          	li	a5,80
    80003480:	02f4e4bb          	remw	s1,s1,a5
    80003484:	fa049ce3          	bnez	s1,8000343c <_Z8consumerPv+0x40>
    80003488:	fa9ff06f          	j	80003430 <_Z8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    8000348c:	00893503          	ld	a0,8(s2)
    80003490:	00000097          	auipc	ra,0x0
    80003494:	470080e7          	jalr	1136(ra) # 80003900 <_ZN6Buffer3getEv>
        putc(key);
    80003498:	0ff57513          	andi	a0,a0,255
    8000349c:	ffffe097          	auipc	ra,0xffffe
    800034a0:	474080e7          	jalr	1140(ra) # 80001910 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800034a4:	00893503          	ld	a0,8(s2)
    800034a8:	00000097          	auipc	ra,0x0
    800034ac:	4e4080e7          	jalr	1252(ra) # 8000398c <_ZN6Buffer6getCntEv>
    800034b0:	fca04ee3          	bgtz	a0,8000348c <_Z8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800034b4:	01093503          	ld	a0,16(s2)
    800034b8:	ffffe097          	auipc	ra,0xffffe
    800034bc:	428080e7          	jalr	1064(ra) # 800018e0 <_Z10sem_signalP3Sem>
}
    800034c0:	02813083          	ld	ra,40(sp)
    800034c4:	02013403          	ld	s0,32(sp)
    800034c8:	01813483          	ld	s1,24(sp)
    800034cc:	01013903          	ld	s2,16(sp)
    800034d0:	00813983          	ld	s3,8(sp)
    800034d4:	03010113          	addi	sp,sp,48
    800034d8:	00008067          	ret

00000000800034dc <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800034dc:	f9010113          	addi	sp,sp,-112
    800034e0:	06113423          	sd	ra,104(sp)
    800034e4:	06813023          	sd	s0,96(sp)
    800034e8:	04913c23          	sd	s1,88(sp)
    800034ec:	05213823          	sd	s2,80(sp)
    800034f0:	05313423          	sd	s3,72(sp)
    800034f4:	05413023          	sd	s4,64(sp)
    800034f8:	03513c23          	sd	s5,56(sp)
    800034fc:	03613823          	sd	s6,48(sp)
    80003500:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003504:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003508:	00003517          	auipc	a0,0x3
    8000350c:	c1050513          	addi	a0,a0,-1008 # 80006118 <CONSOLE_STATUS+0x108>
    80003510:	fffff097          	auipc	ra,0xfffff
    80003514:	704080e7          	jalr	1796(ra) # 80002c14 <_Z11printStringPKc>
    getString(input, 30);
    80003518:	01e00593          	li	a1,30
    8000351c:	fa040493          	addi	s1,s0,-96
    80003520:	00048513          	mv	a0,s1
    80003524:	fffff097          	auipc	ra,0xfffff
    80003528:	76c080e7          	jalr	1900(ra) # 80002c90 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000352c:	00048513          	mv	a0,s1
    80003530:	00000097          	auipc	ra,0x0
    80003534:	82c080e7          	jalr	-2004(ra) # 80002d5c <_Z11stringToIntPKc>
    80003538:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000353c:	00003517          	auipc	a0,0x3
    80003540:	bfc50513          	addi	a0,a0,-1028 # 80006138 <CONSOLE_STATUS+0x128>
    80003544:	fffff097          	auipc	ra,0xfffff
    80003548:	6d0080e7          	jalr	1744(ra) # 80002c14 <_Z11printStringPKc>
    getString(input, 30);
    8000354c:	01e00593          	li	a1,30
    80003550:	00048513          	mv	a0,s1
    80003554:	fffff097          	auipc	ra,0xfffff
    80003558:	73c080e7          	jalr	1852(ra) # 80002c90 <_Z9getStringPci>
    n = stringToInt(input);
    8000355c:	00048513          	mv	a0,s1
    80003560:	fffff097          	auipc	ra,0xfffff
    80003564:	7fc080e7          	jalr	2044(ra) # 80002d5c <_Z11stringToIntPKc>
    80003568:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000356c:	00003517          	auipc	a0,0x3
    80003570:	bec50513          	addi	a0,a0,-1044 # 80006158 <CONSOLE_STATUS+0x148>
    80003574:	fffff097          	auipc	ra,0xfffff
    80003578:	6a0080e7          	jalr	1696(ra) # 80002c14 <_Z11printStringPKc>
    8000357c:	00000613          	li	a2,0
    80003580:	00a00593          	li	a1,10
    80003584:	00090513          	mv	a0,s2
    80003588:	00000097          	auipc	ra,0x0
    8000358c:	824080e7          	jalr	-2012(ra) # 80002dac <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003590:	00003517          	auipc	a0,0x3
    80003594:	be050513          	addi	a0,a0,-1056 # 80006170 <CONSOLE_STATUS+0x160>
    80003598:	fffff097          	auipc	ra,0xfffff
    8000359c:	67c080e7          	jalr	1660(ra) # 80002c14 <_Z11printStringPKc>
    800035a0:	00000613          	li	a2,0
    800035a4:	00a00593          	li	a1,10
    800035a8:	00048513          	mv	a0,s1
    800035ac:	00000097          	auipc	ra,0x0
    800035b0:	800080e7          	jalr	-2048(ra) # 80002dac <_Z8printIntiii>
    printString(".\n");
    800035b4:	00003517          	auipc	a0,0x3
    800035b8:	bd450513          	addi	a0,a0,-1068 # 80006188 <CONSOLE_STATUS+0x178>
    800035bc:	fffff097          	auipc	ra,0xfffff
    800035c0:	658080e7          	jalr	1624(ra) # 80002c14 <_Z11printStringPKc>
    if(threadNum > n) {
    800035c4:	0324c463          	blt	s1,s2,800035ec <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800035c8:	03205c63          	blez	s2,80003600 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800035cc:	03800513          	li	a0,56
    800035d0:	fffff097          	auipc	ra,0xfffff
    800035d4:	d38080e7          	jalr	-712(ra) # 80002308 <_Znwm>
    800035d8:	00050a13          	mv	s4,a0
    800035dc:	00048593          	mv	a1,s1
    800035e0:	00000097          	auipc	ra,0x0
    800035e4:	1f4080e7          	jalr	500(ra) # 800037d4 <_ZN6BufferC1Ei>
    800035e8:	0300006f          	j	80003618 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800035ec:	00003517          	auipc	a0,0x3
    800035f0:	ba450513          	addi	a0,a0,-1116 # 80006190 <CONSOLE_STATUS+0x180>
    800035f4:	fffff097          	auipc	ra,0xfffff
    800035f8:	620080e7          	jalr	1568(ra) # 80002c14 <_Z11printStringPKc>
        return;
    800035fc:	0140006f          	j	80003610 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003600:	00003517          	auipc	a0,0x3
    80003604:	bd050513          	addi	a0,a0,-1072 # 800061d0 <CONSOLE_STATUS+0x1c0>
    80003608:	fffff097          	auipc	ra,0xfffff
    8000360c:	60c080e7          	jalr	1548(ra) # 80002c14 <_Z11printStringPKc>
        return;
    80003610:	000b0113          	mv	sp,s6
    80003614:	1500006f          	j	80003764 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003618:	00000593          	li	a1,0
    8000361c:	00004517          	auipc	a0,0x4
    80003620:	dd450513          	addi	a0,a0,-556 # 800073f0 <waitForAll>
    80003624:	ffffe097          	auipc	ra,0xffffe
    80003628:	228080e7          	jalr	552(ra) # 8000184c <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    8000362c:	00391793          	slli	a5,s2,0x3
    80003630:	00f78793          	addi	a5,a5,15
    80003634:	ff07f793          	andi	a5,a5,-16
    80003638:	40f10133          	sub	sp,sp,a5
    8000363c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003640:	0019071b          	addiw	a4,s2,1
    80003644:	00171793          	slli	a5,a4,0x1
    80003648:	00e787b3          	add	a5,a5,a4
    8000364c:	00379793          	slli	a5,a5,0x3
    80003650:	00f78793          	addi	a5,a5,15
    80003654:	ff07f793          	andi	a5,a5,-16
    80003658:	40f10133          	sub	sp,sp,a5
    8000365c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003660:	00191613          	slli	a2,s2,0x1
    80003664:	012607b3          	add	a5,a2,s2
    80003668:	00379793          	slli	a5,a5,0x3
    8000366c:	00f987b3          	add	a5,s3,a5
    80003670:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003674:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003678:	00004717          	auipc	a4,0x4
    8000367c:	d7873703          	ld	a4,-648(a4) # 800073f0 <waitForAll>
    80003680:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003684:	00078613          	mv	a2,a5
    80003688:	00000597          	auipc	a1,0x0
    8000368c:	d7458593          	addi	a1,a1,-652 # 800033fc <_Z8consumerPv>
    80003690:	f9840513          	addi	a0,s0,-104
    80003694:	ffffe097          	auipc	ra,0xffffe
    80003698:	0c4080e7          	jalr	196(ra) # 80001758 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000369c:	00000493          	li	s1,0
    800036a0:	0280006f          	j	800036c8 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800036a4:	00000597          	auipc	a1,0x0
    800036a8:	c1458593          	addi	a1,a1,-1004 # 800032b8 <_Z16producerKeyboardPv>
                      data + i);
    800036ac:	00179613          	slli	a2,a5,0x1
    800036b0:	00f60633          	add	a2,a2,a5
    800036b4:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800036b8:	00c98633          	add	a2,s3,a2
    800036bc:	ffffe097          	auipc	ra,0xffffe
    800036c0:	09c080e7          	jalr	156(ra) # 80001758 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800036c4:	0014849b          	addiw	s1,s1,1
    800036c8:	0524d263          	bge	s1,s2,8000370c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800036cc:	00149793          	slli	a5,s1,0x1
    800036d0:	009787b3          	add	a5,a5,s1
    800036d4:	00379793          	slli	a5,a5,0x3
    800036d8:	00f987b3          	add	a5,s3,a5
    800036dc:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800036e0:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800036e4:	00004717          	auipc	a4,0x4
    800036e8:	d0c73703          	ld	a4,-756(a4) # 800073f0 <waitForAll>
    800036ec:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800036f0:	00048793          	mv	a5,s1
    800036f4:	00349513          	slli	a0,s1,0x3
    800036f8:	00aa8533          	add	a0,s5,a0
    800036fc:	fa9054e3          	blez	s1,800036a4 <_Z22producerConsumer_C_APIv+0x1c8>
    80003700:	00000597          	auipc	a1,0x0
    80003704:	c6858593          	addi	a1,a1,-920 # 80003368 <_Z8producerPv>
    80003708:	fa5ff06f          	j	800036ac <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    8000370c:	ffffe097          	auipc	ra,0xffffe
    80003710:	0b0080e7          	jalr	176(ra) # 800017bc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003714:	00000493          	li	s1,0
    80003718:	00994e63          	blt	s2,s1,80003734 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    8000371c:	00004517          	auipc	a0,0x4
    80003720:	cd453503          	ld	a0,-812(a0) # 800073f0 <waitForAll>
    80003724:	ffffe097          	auipc	ra,0xffffe
    80003728:	18c080e7          	jalr	396(ra) # 800018b0 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    8000372c:	0014849b          	addiw	s1,s1,1
    80003730:	fe9ff06f          	j	80003718 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003734:	00004517          	auipc	a0,0x4
    80003738:	cbc53503          	ld	a0,-836(a0) # 800073f0 <waitForAll>
    8000373c:	ffffe097          	auipc	ra,0xffffe
    80003740:	144080e7          	jalr	324(ra) # 80001880 <_Z9sem_closeP3Sem>
    delete buffer;
    80003744:	000a0e63          	beqz	s4,80003760 <_Z22producerConsumer_C_APIv+0x284>
    80003748:	000a0513          	mv	a0,s4
    8000374c:	00000097          	auipc	ra,0x0
    80003750:	2c8080e7          	jalr	712(ra) # 80003a14 <_ZN6BufferD1Ev>
    80003754:	000a0513          	mv	a0,s4
    80003758:	fffff097          	auipc	ra,0xfffff
    8000375c:	c00080e7          	jalr	-1024(ra) # 80002358 <_ZdlPv>
    80003760:	000b0113          	mv	sp,s6

}
    80003764:	f9040113          	addi	sp,s0,-112
    80003768:	06813083          	ld	ra,104(sp)
    8000376c:	06013403          	ld	s0,96(sp)
    80003770:	05813483          	ld	s1,88(sp)
    80003774:	05013903          	ld	s2,80(sp)
    80003778:	04813983          	ld	s3,72(sp)
    8000377c:	04013a03          	ld	s4,64(sp)
    80003780:	03813a83          	ld	s5,56(sp)
    80003784:	03013b03          	ld	s6,48(sp)
    80003788:	07010113          	addi	sp,sp,112
    8000378c:	00008067          	ret
    80003790:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003794:	000a0513          	mv	a0,s4
    80003798:	fffff097          	auipc	ra,0xfffff
    8000379c:	bc0080e7          	jalr	-1088(ra) # 80002358 <_ZdlPv>
    800037a0:	00048513          	mv	a0,s1
    800037a4:	00005097          	auipc	ra,0x5
    800037a8:	d24080e7          	jalr	-732(ra) # 800084c8 <_Unwind_Resume>

00000000800037ac <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    800037ac:	ff010113          	addi	sp,sp,-16
    800037b0:	00113423          	sd	ra,8(sp)
    800037b4:	00813023          	sd	s0,0(sp)
    800037b8:	01010413          	addi	s0,sp,16
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    800037bc:	00000097          	auipc	ra,0x0
    800037c0:	d20080e7          	jalr	-736(ra) # 800034dc <_Z22producerConsumer_C_APIv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    800037c4:	00813083          	ld	ra,8(sp)
    800037c8:	00013403          	ld	s0,0(sp)
    800037cc:	01010113          	addi	sp,sp,16
    800037d0:	00008067          	ret

00000000800037d4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800037d4:	fe010113          	addi	sp,sp,-32
    800037d8:	00113c23          	sd	ra,24(sp)
    800037dc:	00813823          	sd	s0,16(sp)
    800037e0:	00913423          	sd	s1,8(sp)
    800037e4:	01213023          	sd	s2,0(sp)
    800037e8:	02010413          	addi	s0,sp,32
    800037ec:	00050493          	mv	s1,a0
    800037f0:	00058913          	mv	s2,a1
    800037f4:	0015879b          	addiw	a5,a1,1
    800037f8:	0007851b          	sext.w	a0,a5
    800037fc:	00f4a023          	sw	a5,0(s1)
    80003800:	0004a823          	sw	zero,16(s1)
    80003804:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003808:	00251513          	slli	a0,a0,0x2
    8000380c:	ffffe097          	auipc	ra,0xffffe
    80003810:	ef0080e7          	jalr	-272(ra) # 800016fc <_Z9mem_allocm>
    80003814:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80003818:	00000593          	li	a1,0
    8000381c:	02048513          	addi	a0,s1,32
    80003820:	ffffe097          	auipc	ra,0xffffe
    80003824:	02c080e7          	jalr	44(ra) # 8000184c <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80003828:	00090593          	mv	a1,s2
    8000382c:	01848513          	addi	a0,s1,24
    80003830:	ffffe097          	auipc	ra,0xffffe
    80003834:	01c080e7          	jalr	28(ra) # 8000184c <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80003838:	00100593          	li	a1,1
    8000383c:	02848513          	addi	a0,s1,40
    80003840:	ffffe097          	auipc	ra,0xffffe
    80003844:	00c080e7          	jalr	12(ra) # 8000184c <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80003848:	00100593          	li	a1,1
    8000384c:	03048513          	addi	a0,s1,48
    80003850:	ffffe097          	auipc	ra,0xffffe
    80003854:	ffc080e7          	jalr	-4(ra) # 8000184c <_Z8sem_openPP3Semj>
}
    80003858:	01813083          	ld	ra,24(sp)
    8000385c:	01013403          	ld	s0,16(sp)
    80003860:	00813483          	ld	s1,8(sp)
    80003864:	00013903          	ld	s2,0(sp)
    80003868:	02010113          	addi	sp,sp,32
    8000386c:	00008067          	ret

0000000080003870 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80003870:	fe010113          	addi	sp,sp,-32
    80003874:	00113c23          	sd	ra,24(sp)
    80003878:	00813823          	sd	s0,16(sp)
    8000387c:	00913423          	sd	s1,8(sp)
    80003880:	01213023          	sd	s2,0(sp)
    80003884:	02010413          	addi	s0,sp,32
    80003888:	00050493          	mv	s1,a0
    8000388c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003890:	01853503          	ld	a0,24(a0)
    80003894:	ffffe097          	auipc	ra,0xffffe
    80003898:	01c080e7          	jalr	28(ra) # 800018b0 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    8000389c:	0304b503          	ld	a0,48(s1)
    800038a0:	ffffe097          	auipc	ra,0xffffe
    800038a4:	010080e7          	jalr	16(ra) # 800018b0 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    800038a8:	0084b783          	ld	a5,8(s1)
    800038ac:	0144a703          	lw	a4,20(s1)
    800038b0:	00271713          	slli	a4,a4,0x2
    800038b4:	00e787b3          	add	a5,a5,a4
    800038b8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800038bc:	0144a783          	lw	a5,20(s1)
    800038c0:	0017879b          	addiw	a5,a5,1
    800038c4:	0004a703          	lw	a4,0(s1)
    800038c8:	02e7e7bb          	remw	a5,a5,a4
    800038cc:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800038d0:	0304b503          	ld	a0,48(s1)
    800038d4:	ffffe097          	auipc	ra,0xffffe
    800038d8:	00c080e7          	jalr	12(ra) # 800018e0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    800038dc:	0204b503          	ld	a0,32(s1)
    800038e0:	ffffe097          	auipc	ra,0xffffe
    800038e4:	000080e7          	jalr	ra # 800018e0 <_Z10sem_signalP3Sem>

}
    800038e8:	01813083          	ld	ra,24(sp)
    800038ec:	01013403          	ld	s0,16(sp)
    800038f0:	00813483          	ld	s1,8(sp)
    800038f4:	00013903          	ld	s2,0(sp)
    800038f8:	02010113          	addi	sp,sp,32
    800038fc:	00008067          	ret

0000000080003900 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003900:	fe010113          	addi	sp,sp,-32
    80003904:	00113c23          	sd	ra,24(sp)
    80003908:	00813823          	sd	s0,16(sp)
    8000390c:	00913423          	sd	s1,8(sp)
    80003910:	01213023          	sd	s2,0(sp)
    80003914:	02010413          	addi	s0,sp,32
    80003918:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000391c:	02053503          	ld	a0,32(a0)
    80003920:	ffffe097          	auipc	ra,0xffffe
    80003924:	f90080e7          	jalr	-112(ra) # 800018b0 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80003928:	0284b503          	ld	a0,40(s1)
    8000392c:	ffffe097          	auipc	ra,0xffffe
    80003930:	f84080e7          	jalr	-124(ra) # 800018b0 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80003934:	0084b703          	ld	a4,8(s1)
    80003938:	0104a783          	lw	a5,16(s1)
    8000393c:	00279693          	slli	a3,a5,0x2
    80003940:	00d70733          	add	a4,a4,a3
    80003944:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003948:	0017879b          	addiw	a5,a5,1
    8000394c:	0004a703          	lw	a4,0(s1)
    80003950:	02e7e7bb          	remw	a5,a5,a4
    80003954:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003958:	0284b503          	ld	a0,40(s1)
    8000395c:	ffffe097          	auipc	ra,0xffffe
    80003960:	f84080e7          	jalr	-124(ra) # 800018e0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80003964:	0184b503          	ld	a0,24(s1)
    80003968:	ffffe097          	auipc	ra,0xffffe
    8000396c:	f78080e7          	jalr	-136(ra) # 800018e0 <_Z10sem_signalP3Sem>

    return ret;
}
    80003970:	00090513          	mv	a0,s2
    80003974:	01813083          	ld	ra,24(sp)
    80003978:	01013403          	ld	s0,16(sp)
    8000397c:	00813483          	ld	s1,8(sp)
    80003980:	00013903          	ld	s2,0(sp)
    80003984:	02010113          	addi	sp,sp,32
    80003988:	00008067          	ret

000000008000398c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000398c:	fe010113          	addi	sp,sp,-32
    80003990:	00113c23          	sd	ra,24(sp)
    80003994:	00813823          	sd	s0,16(sp)
    80003998:	00913423          	sd	s1,8(sp)
    8000399c:	01213023          	sd	s2,0(sp)
    800039a0:	02010413          	addi	s0,sp,32
    800039a4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800039a8:	02853503          	ld	a0,40(a0)
    800039ac:	ffffe097          	auipc	ra,0xffffe
    800039b0:	f04080e7          	jalr	-252(ra) # 800018b0 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    800039b4:	0304b503          	ld	a0,48(s1)
    800039b8:	ffffe097          	auipc	ra,0xffffe
    800039bc:	ef8080e7          	jalr	-264(ra) # 800018b0 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    800039c0:	0144a783          	lw	a5,20(s1)
    800039c4:	0104a903          	lw	s2,16(s1)
    800039c8:	0327ce63          	blt	a5,s2,80003a04 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800039cc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800039d0:	0304b503          	ld	a0,48(s1)
    800039d4:	ffffe097          	auipc	ra,0xffffe
    800039d8:	f0c080e7          	jalr	-244(ra) # 800018e0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    800039dc:	0284b503          	ld	a0,40(s1)
    800039e0:	ffffe097          	auipc	ra,0xffffe
    800039e4:	f00080e7          	jalr	-256(ra) # 800018e0 <_Z10sem_signalP3Sem>

    return ret;
}
    800039e8:	00090513          	mv	a0,s2
    800039ec:	01813083          	ld	ra,24(sp)
    800039f0:	01013403          	ld	s0,16(sp)
    800039f4:	00813483          	ld	s1,8(sp)
    800039f8:	00013903          	ld	s2,0(sp)
    800039fc:	02010113          	addi	sp,sp,32
    80003a00:	00008067          	ret
        ret = cap - head + tail;
    80003a04:	0004a703          	lw	a4,0(s1)
    80003a08:	4127093b          	subw	s2,a4,s2
    80003a0c:	00f9093b          	addw	s2,s2,a5
    80003a10:	fc1ff06f          	j	800039d0 <_ZN6Buffer6getCntEv+0x44>

0000000080003a14 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003a14:	fe010113          	addi	sp,sp,-32
    80003a18:	00113c23          	sd	ra,24(sp)
    80003a1c:	00813823          	sd	s0,16(sp)
    80003a20:	00913423          	sd	s1,8(sp)
    80003a24:	02010413          	addi	s0,sp,32
    80003a28:	00050493          	mv	s1,a0
    putc('\n');
    80003a2c:	00a00513          	li	a0,10
    80003a30:	ffffe097          	auipc	ra,0xffffe
    80003a34:	ee0080e7          	jalr	-288(ra) # 80001910 <_Z4putcc>
    printString("Buffer deleted!\n");
    80003a38:	00002517          	auipc	a0,0x2
    80003a3c:	6c850513          	addi	a0,a0,1736 # 80006100 <CONSOLE_STATUS+0xf0>
    80003a40:	fffff097          	auipc	ra,0xfffff
    80003a44:	1d4080e7          	jalr	468(ra) # 80002c14 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003a48:	00048513          	mv	a0,s1
    80003a4c:	00000097          	auipc	ra,0x0
    80003a50:	f40080e7          	jalr	-192(ra) # 8000398c <_ZN6Buffer6getCntEv>
    80003a54:	02a05c63          	blez	a0,80003a8c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003a58:	0084b783          	ld	a5,8(s1)
    80003a5c:	0104a703          	lw	a4,16(s1)
    80003a60:	00271713          	slli	a4,a4,0x2
    80003a64:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003a68:	0007c503          	lbu	a0,0(a5)
    80003a6c:	ffffe097          	auipc	ra,0xffffe
    80003a70:	ea4080e7          	jalr	-348(ra) # 80001910 <_Z4putcc>
        head = (head + 1) % cap;
    80003a74:	0104a783          	lw	a5,16(s1)
    80003a78:	0017879b          	addiw	a5,a5,1
    80003a7c:	0004a703          	lw	a4,0(s1)
    80003a80:	02e7e7bb          	remw	a5,a5,a4
    80003a84:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003a88:	fc1ff06f          	j	80003a48 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003a8c:	02100513          	li	a0,33
    80003a90:	ffffe097          	auipc	ra,0xffffe
    80003a94:	e80080e7          	jalr	-384(ra) # 80001910 <_Z4putcc>
    putc('\n');
    80003a98:	00a00513          	li	a0,10
    80003a9c:	ffffe097          	auipc	ra,0xffffe
    80003aa0:	e74080e7          	jalr	-396(ra) # 80001910 <_Z4putcc>
    mem_free(buffer);
    80003aa4:	0084b503          	ld	a0,8(s1)
    80003aa8:	ffffe097          	auipc	ra,0xffffe
    80003aac:	c80080e7          	jalr	-896(ra) # 80001728 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80003ab0:	0204b503          	ld	a0,32(s1)
    80003ab4:	ffffe097          	auipc	ra,0xffffe
    80003ab8:	dcc080e7          	jalr	-564(ra) # 80001880 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80003abc:	0184b503          	ld	a0,24(s1)
    80003ac0:	ffffe097          	auipc	ra,0xffffe
    80003ac4:	dc0080e7          	jalr	-576(ra) # 80001880 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80003ac8:	0304b503          	ld	a0,48(s1)
    80003acc:	ffffe097          	auipc	ra,0xffffe
    80003ad0:	db4080e7          	jalr	-588(ra) # 80001880 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80003ad4:	0284b503          	ld	a0,40(s1)
    80003ad8:	ffffe097          	auipc	ra,0xffffe
    80003adc:	da8080e7          	jalr	-600(ra) # 80001880 <_Z9sem_closeP3Sem>
}
    80003ae0:	01813083          	ld	ra,24(sp)
    80003ae4:	01013403          	ld	s0,16(sp)
    80003ae8:	00813483          	ld	s1,8(sp)
    80003aec:	02010113          	addi	sp,sp,32
    80003af0:	00008067          	ret

0000000080003af4 <start>:
    80003af4:	ff010113          	addi	sp,sp,-16
    80003af8:	00813423          	sd	s0,8(sp)
    80003afc:	01010413          	addi	s0,sp,16
    80003b00:	300027f3          	csrr	a5,mstatus
    80003b04:	ffffe737          	lui	a4,0xffffe
    80003b08:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff619f>
    80003b0c:	00e7f7b3          	and	a5,a5,a4
    80003b10:	00001737          	lui	a4,0x1
    80003b14:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003b18:	00e7e7b3          	or	a5,a5,a4
    80003b1c:	30079073          	csrw	mstatus,a5
    80003b20:	00000797          	auipc	a5,0x0
    80003b24:	16078793          	addi	a5,a5,352 # 80003c80 <system_main>
    80003b28:	34179073          	csrw	mepc,a5
    80003b2c:	00000793          	li	a5,0
    80003b30:	18079073          	csrw	satp,a5
    80003b34:	000107b7          	lui	a5,0x10
    80003b38:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003b3c:	30279073          	csrw	medeleg,a5
    80003b40:	30379073          	csrw	mideleg,a5
    80003b44:	104027f3          	csrr	a5,sie
    80003b48:	2227e793          	ori	a5,a5,546
    80003b4c:	10479073          	csrw	sie,a5
    80003b50:	fff00793          	li	a5,-1
    80003b54:	00a7d793          	srli	a5,a5,0xa
    80003b58:	3b079073          	csrw	pmpaddr0,a5
    80003b5c:	00f00793          	li	a5,15
    80003b60:	3a079073          	csrw	pmpcfg0,a5
    80003b64:	f14027f3          	csrr	a5,mhartid
    80003b68:	0200c737          	lui	a4,0x200c
    80003b6c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003b70:	0007869b          	sext.w	a3,a5
    80003b74:	00269713          	slli	a4,a3,0x2
    80003b78:	000f4637          	lui	a2,0xf4
    80003b7c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003b80:	00d70733          	add	a4,a4,a3
    80003b84:	0037979b          	slliw	a5,a5,0x3
    80003b88:	020046b7          	lui	a3,0x2004
    80003b8c:	00d787b3          	add	a5,a5,a3
    80003b90:	00c585b3          	add	a1,a1,a2
    80003b94:	00371693          	slli	a3,a4,0x3
    80003b98:	00004717          	auipc	a4,0x4
    80003b9c:	86870713          	addi	a4,a4,-1944 # 80007400 <timer_scratch>
    80003ba0:	00b7b023          	sd	a1,0(a5)
    80003ba4:	00d70733          	add	a4,a4,a3
    80003ba8:	00f73c23          	sd	a5,24(a4)
    80003bac:	02c73023          	sd	a2,32(a4)
    80003bb0:	34071073          	csrw	mscratch,a4
    80003bb4:	00000797          	auipc	a5,0x0
    80003bb8:	6ec78793          	addi	a5,a5,1772 # 800042a0 <timervec>
    80003bbc:	30579073          	csrw	mtvec,a5
    80003bc0:	300027f3          	csrr	a5,mstatus
    80003bc4:	0087e793          	ori	a5,a5,8
    80003bc8:	30079073          	csrw	mstatus,a5
    80003bcc:	304027f3          	csrr	a5,mie
    80003bd0:	0807e793          	ori	a5,a5,128
    80003bd4:	30479073          	csrw	mie,a5
    80003bd8:	f14027f3          	csrr	a5,mhartid
    80003bdc:	0007879b          	sext.w	a5,a5
    80003be0:	00078213          	mv	tp,a5
    80003be4:	30200073          	mret
    80003be8:	00813403          	ld	s0,8(sp)
    80003bec:	01010113          	addi	sp,sp,16
    80003bf0:	00008067          	ret

0000000080003bf4 <timerinit>:
    80003bf4:	ff010113          	addi	sp,sp,-16
    80003bf8:	00813423          	sd	s0,8(sp)
    80003bfc:	01010413          	addi	s0,sp,16
    80003c00:	f14027f3          	csrr	a5,mhartid
    80003c04:	0200c737          	lui	a4,0x200c
    80003c08:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003c0c:	0007869b          	sext.w	a3,a5
    80003c10:	00269713          	slli	a4,a3,0x2
    80003c14:	000f4637          	lui	a2,0xf4
    80003c18:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003c1c:	00d70733          	add	a4,a4,a3
    80003c20:	0037979b          	slliw	a5,a5,0x3
    80003c24:	020046b7          	lui	a3,0x2004
    80003c28:	00d787b3          	add	a5,a5,a3
    80003c2c:	00c585b3          	add	a1,a1,a2
    80003c30:	00371693          	slli	a3,a4,0x3
    80003c34:	00003717          	auipc	a4,0x3
    80003c38:	7cc70713          	addi	a4,a4,1996 # 80007400 <timer_scratch>
    80003c3c:	00b7b023          	sd	a1,0(a5)
    80003c40:	00d70733          	add	a4,a4,a3
    80003c44:	00f73c23          	sd	a5,24(a4)
    80003c48:	02c73023          	sd	a2,32(a4)
    80003c4c:	34071073          	csrw	mscratch,a4
    80003c50:	00000797          	auipc	a5,0x0
    80003c54:	65078793          	addi	a5,a5,1616 # 800042a0 <timervec>
    80003c58:	30579073          	csrw	mtvec,a5
    80003c5c:	300027f3          	csrr	a5,mstatus
    80003c60:	0087e793          	ori	a5,a5,8
    80003c64:	30079073          	csrw	mstatus,a5
    80003c68:	304027f3          	csrr	a5,mie
    80003c6c:	0807e793          	ori	a5,a5,128
    80003c70:	30479073          	csrw	mie,a5
    80003c74:	00813403          	ld	s0,8(sp)
    80003c78:	01010113          	addi	sp,sp,16
    80003c7c:	00008067          	ret

0000000080003c80 <system_main>:
    80003c80:	fe010113          	addi	sp,sp,-32
    80003c84:	00813823          	sd	s0,16(sp)
    80003c88:	00913423          	sd	s1,8(sp)
    80003c8c:	00113c23          	sd	ra,24(sp)
    80003c90:	02010413          	addi	s0,sp,32
    80003c94:	00000097          	auipc	ra,0x0
    80003c98:	0c4080e7          	jalr	196(ra) # 80003d58 <cpuid>
    80003c9c:	00003497          	auipc	s1,0x3
    80003ca0:	6dc48493          	addi	s1,s1,1756 # 80007378 <started>
    80003ca4:	02050263          	beqz	a0,80003cc8 <system_main+0x48>
    80003ca8:	0004a783          	lw	a5,0(s1)
    80003cac:	0007879b          	sext.w	a5,a5
    80003cb0:	fe078ce3          	beqz	a5,80003ca8 <system_main+0x28>
    80003cb4:	0ff0000f          	fence
    80003cb8:	00002517          	auipc	a0,0x2
    80003cbc:	57850513          	addi	a0,a0,1400 # 80006230 <CONSOLE_STATUS+0x220>
    80003cc0:	00001097          	auipc	ra,0x1
    80003cc4:	a7c080e7          	jalr	-1412(ra) # 8000473c <panic>
    80003cc8:	00001097          	auipc	ra,0x1
    80003ccc:	9d0080e7          	jalr	-1584(ra) # 80004698 <consoleinit>
    80003cd0:	00001097          	auipc	ra,0x1
    80003cd4:	15c080e7          	jalr	348(ra) # 80004e2c <printfinit>
    80003cd8:	00002517          	auipc	a0,0x2
    80003cdc:	47850513          	addi	a0,a0,1144 # 80006150 <CONSOLE_STATUS+0x140>
    80003ce0:	00001097          	auipc	ra,0x1
    80003ce4:	ab8080e7          	jalr	-1352(ra) # 80004798 <__printf>
    80003ce8:	00002517          	auipc	a0,0x2
    80003cec:	51850513          	addi	a0,a0,1304 # 80006200 <CONSOLE_STATUS+0x1f0>
    80003cf0:	00001097          	auipc	ra,0x1
    80003cf4:	aa8080e7          	jalr	-1368(ra) # 80004798 <__printf>
    80003cf8:	00002517          	auipc	a0,0x2
    80003cfc:	45850513          	addi	a0,a0,1112 # 80006150 <CONSOLE_STATUS+0x140>
    80003d00:	00001097          	auipc	ra,0x1
    80003d04:	a98080e7          	jalr	-1384(ra) # 80004798 <__printf>
    80003d08:	00001097          	auipc	ra,0x1
    80003d0c:	4b0080e7          	jalr	1200(ra) # 800051b8 <kinit>
    80003d10:	00000097          	auipc	ra,0x0
    80003d14:	148080e7          	jalr	328(ra) # 80003e58 <trapinit>
    80003d18:	00000097          	auipc	ra,0x0
    80003d1c:	16c080e7          	jalr	364(ra) # 80003e84 <trapinithart>
    80003d20:	00000097          	auipc	ra,0x0
    80003d24:	5c0080e7          	jalr	1472(ra) # 800042e0 <plicinit>
    80003d28:	00000097          	auipc	ra,0x0
    80003d2c:	5e0080e7          	jalr	1504(ra) # 80004308 <plicinithart>
    80003d30:	00000097          	auipc	ra,0x0
    80003d34:	078080e7          	jalr	120(ra) # 80003da8 <userinit>
    80003d38:	0ff0000f          	fence
    80003d3c:	00100793          	li	a5,1
    80003d40:	00002517          	auipc	a0,0x2
    80003d44:	4d850513          	addi	a0,a0,1240 # 80006218 <CONSOLE_STATUS+0x208>
    80003d48:	00f4a023          	sw	a5,0(s1)
    80003d4c:	00001097          	auipc	ra,0x1
    80003d50:	a4c080e7          	jalr	-1460(ra) # 80004798 <__printf>
    80003d54:	0000006f          	j	80003d54 <system_main+0xd4>

0000000080003d58 <cpuid>:
    80003d58:	ff010113          	addi	sp,sp,-16
    80003d5c:	00813423          	sd	s0,8(sp)
    80003d60:	01010413          	addi	s0,sp,16
    80003d64:	00020513          	mv	a0,tp
    80003d68:	00813403          	ld	s0,8(sp)
    80003d6c:	0005051b          	sext.w	a0,a0
    80003d70:	01010113          	addi	sp,sp,16
    80003d74:	00008067          	ret

0000000080003d78 <mycpu>:
    80003d78:	ff010113          	addi	sp,sp,-16
    80003d7c:	00813423          	sd	s0,8(sp)
    80003d80:	01010413          	addi	s0,sp,16
    80003d84:	00020793          	mv	a5,tp
    80003d88:	00813403          	ld	s0,8(sp)
    80003d8c:	0007879b          	sext.w	a5,a5
    80003d90:	00779793          	slli	a5,a5,0x7
    80003d94:	00004517          	auipc	a0,0x4
    80003d98:	69c50513          	addi	a0,a0,1692 # 80008430 <cpus>
    80003d9c:	00f50533          	add	a0,a0,a5
    80003da0:	01010113          	addi	sp,sp,16
    80003da4:	00008067          	ret

0000000080003da8 <userinit>:
    80003da8:	ff010113          	addi	sp,sp,-16
    80003dac:	00813423          	sd	s0,8(sp)
    80003db0:	01010413          	addi	s0,sp,16
    80003db4:	00813403          	ld	s0,8(sp)
    80003db8:	01010113          	addi	sp,sp,16
    80003dbc:	ffffe317          	auipc	t1,0xffffe
    80003dc0:	19830067          	jr	408(t1) # 80001f54 <main>

0000000080003dc4 <either_copyout>:
    80003dc4:	ff010113          	addi	sp,sp,-16
    80003dc8:	00813023          	sd	s0,0(sp)
    80003dcc:	00113423          	sd	ra,8(sp)
    80003dd0:	01010413          	addi	s0,sp,16
    80003dd4:	02051663          	bnez	a0,80003e00 <either_copyout+0x3c>
    80003dd8:	00058513          	mv	a0,a1
    80003ddc:	00060593          	mv	a1,a2
    80003de0:	0006861b          	sext.w	a2,a3
    80003de4:	00002097          	auipc	ra,0x2
    80003de8:	c60080e7          	jalr	-928(ra) # 80005a44 <__memmove>
    80003dec:	00813083          	ld	ra,8(sp)
    80003df0:	00013403          	ld	s0,0(sp)
    80003df4:	00000513          	li	a0,0
    80003df8:	01010113          	addi	sp,sp,16
    80003dfc:	00008067          	ret
    80003e00:	00002517          	auipc	a0,0x2
    80003e04:	45850513          	addi	a0,a0,1112 # 80006258 <CONSOLE_STATUS+0x248>
    80003e08:	00001097          	auipc	ra,0x1
    80003e0c:	934080e7          	jalr	-1740(ra) # 8000473c <panic>

0000000080003e10 <either_copyin>:
    80003e10:	ff010113          	addi	sp,sp,-16
    80003e14:	00813023          	sd	s0,0(sp)
    80003e18:	00113423          	sd	ra,8(sp)
    80003e1c:	01010413          	addi	s0,sp,16
    80003e20:	02059463          	bnez	a1,80003e48 <either_copyin+0x38>
    80003e24:	00060593          	mv	a1,a2
    80003e28:	0006861b          	sext.w	a2,a3
    80003e2c:	00002097          	auipc	ra,0x2
    80003e30:	c18080e7          	jalr	-1000(ra) # 80005a44 <__memmove>
    80003e34:	00813083          	ld	ra,8(sp)
    80003e38:	00013403          	ld	s0,0(sp)
    80003e3c:	00000513          	li	a0,0
    80003e40:	01010113          	addi	sp,sp,16
    80003e44:	00008067          	ret
    80003e48:	00002517          	auipc	a0,0x2
    80003e4c:	43850513          	addi	a0,a0,1080 # 80006280 <CONSOLE_STATUS+0x270>
    80003e50:	00001097          	auipc	ra,0x1
    80003e54:	8ec080e7          	jalr	-1812(ra) # 8000473c <panic>

0000000080003e58 <trapinit>:
    80003e58:	ff010113          	addi	sp,sp,-16
    80003e5c:	00813423          	sd	s0,8(sp)
    80003e60:	01010413          	addi	s0,sp,16
    80003e64:	00813403          	ld	s0,8(sp)
    80003e68:	00002597          	auipc	a1,0x2
    80003e6c:	44058593          	addi	a1,a1,1088 # 800062a8 <CONSOLE_STATUS+0x298>
    80003e70:	00004517          	auipc	a0,0x4
    80003e74:	64050513          	addi	a0,a0,1600 # 800084b0 <tickslock>
    80003e78:	01010113          	addi	sp,sp,16
    80003e7c:	00001317          	auipc	t1,0x1
    80003e80:	5cc30067          	jr	1484(t1) # 80005448 <initlock>

0000000080003e84 <trapinithart>:
    80003e84:	ff010113          	addi	sp,sp,-16
    80003e88:	00813423          	sd	s0,8(sp)
    80003e8c:	01010413          	addi	s0,sp,16
    80003e90:	00000797          	auipc	a5,0x0
    80003e94:	30078793          	addi	a5,a5,768 # 80004190 <kernelvec>
    80003e98:	10579073          	csrw	stvec,a5
    80003e9c:	00813403          	ld	s0,8(sp)
    80003ea0:	01010113          	addi	sp,sp,16
    80003ea4:	00008067          	ret

0000000080003ea8 <usertrap>:
    80003ea8:	ff010113          	addi	sp,sp,-16
    80003eac:	00813423          	sd	s0,8(sp)
    80003eb0:	01010413          	addi	s0,sp,16
    80003eb4:	00813403          	ld	s0,8(sp)
    80003eb8:	01010113          	addi	sp,sp,16
    80003ebc:	00008067          	ret

0000000080003ec0 <usertrapret>:
    80003ec0:	ff010113          	addi	sp,sp,-16
    80003ec4:	00813423          	sd	s0,8(sp)
    80003ec8:	01010413          	addi	s0,sp,16
    80003ecc:	00813403          	ld	s0,8(sp)
    80003ed0:	01010113          	addi	sp,sp,16
    80003ed4:	00008067          	ret

0000000080003ed8 <kerneltrap>:
    80003ed8:	fe010113          	addi	sp,sp,-32
    80003edc:	00813823          	sd	s0,16(sp)
    80003ee0:	00113c23          	sd	ra,24(sp)
    80003ee4:	00913423          	sd	s1,8(sp)
    80003ee8:	02010413          	addi	s0,sp,32
    80003eec:	142025f3          	csrr	a1,scause
    80003ef0:	100027f3          	csrr	a5,sstatus
    80003ef4:	0027f793          	andi	a5,a5,2
    80003ef8:	10079c63          	bnez	a5,80004010 <kerneltrap+0x138>
    80003efc:	142027f3          	csrr	a5,scause
    80003f00:	0207ce63          	bltz	a5,80003f3c <kerneltrap+0x64>
    80003f04:	00002517          	auipc	a0,0x2
    80003f08:	3ec50513          	addi	a0,a0,1004 # 800062f0 <CONSOLE_STATUS+0x2e0>
    80003f0c:	00001097          	auipc	ra,0x1
    80003f10:	88c080e7          	jalr	-1908(ra) # 80004798 <__printf>
    80003f14:	141025f3          	csrr	a1,sepc
    80003f18:	14302673          	csrr	a2,stval
    80003f1c:	00002517          	auipc	a0,0x2
    80003f20:	3e450513          	addi	a0,a0,996 # 80006300 <CONSOLE_STATUS+0x2f0>
    80003f24:	00001097          	auipc	ra,0x1
    80003f28:	874080e7          	jalr	-1932(ra) # 80004798 <__printf>
    80003f2c:	00002517          	auipc	a0,0x2
    80003f30:	3ec50513          	addi	a0,a0,1004 # 80006318 <CONSOLE_STATUS+0x308>
    80003f34:	00001097          	auipc	ra,0x1
    80003f38:	808080e7          	jalr	-2040(ra) # 8000473c <panic>
    80003f3c:	0ff7f713          	andi	a4,a5,255
    80003f40:	00900693          	li	a3,9
    80003f44:	04d70063          	beq	a4,a3,80003f84 <kerneltrap+0xac>
    80003f48:	fff00713          	li	a4,-1
    80003f4c:	03f71713          	slli	a4,a4,0x3f
    80003f50:	00170713          	addi	a4,a4,1
    80003f54:	fae798e3          	bne	a5,a4,80003f04 <kerneltrap+0x2c>
    80003f58:	00000097          	auipc	ra,0x0
    80003f5c:	e00080e7          	jalr	-512(ra) # 80003d58 <cpuid>
    80003f60:	06050663          	beqz	a0,80003fcc <kerneltrap+0xf4>
    80003f64:	144027f3          	csrr	a5,sip
    80003f68:	ffd7f793          	andi	a5,a5,-3
    80003f6c:	14479073          	csrw	sip,a5
    80003f70:	01813083          	ld	ra,24(sp)
    80003f74:	01013403          	ld	s0,16(sp)
    80003f78:	00813483          	ld	s1,8(sp)
    80003f7c:	02010113          	addi	sp,sp,32
    80003f80:	00008067          	ret
    80003f84:	00000097          	auipc	ra,0x0
    80003f88:	3d0080e7          	jalr	976(ra) # 80004354 <plic_claim>
    80003f8c:	00a00793          	li	a5,10
    80003f90:	00050493          	mv	s1,a0
    80003f94:	06f50863          	beq	a0,a5,80004004 <kerneltrap+0x12c>
    80003f98:	fc050ce3          	beqz	a0,80003f70 <kerneltrap+0x98>
    80003f9c:	00050593          	mv	a1,a0
    80003fa0:	00002517          	auipc	a0,0x2
    80003fa4:	33050513          	addi	a0,a0,816 # 800062d0 <CONSOLE_STATUS+0x2c0>
    80003fa8:	00000097          	auipc	ra,0x0
    80003fac:	7f0080e7          	jalr	2032(ra) # 80004798 <__printf>
    80003fb0:	01013403          	ld	s0,16(sp)
    80003fb4:	01813083          	ld	ra,24(sp)
    80003fb8:	00048513          	mv	a0,s1
    80003fbc:	00813483          	ld	s1,8(sp)
    80003fc0:	02010113          	addi	sp,sp,32
    80003fc4:	00000317          	auipc	t1,0x0
    80003fc8:	3c830067          	jr	968(t1) # 8000438c <plic_complete>
    80003fcc:	00004517          	auipc	a0,0x4
    80003fd0:	4e450513          	addi	a0,a0,1252 # 800084b0 <tickslock>
    80003fd4:	00001097          	auipc	ra,0x1
    80003fd8:	498080e7          	jalr	1176(ra) # 8000546c <acquire>
    80003fdc:	00003717          	auipc	a4,0x3
    80003fe0:	3a070713          	addi	a4,a4,928 # 8000737c <ticks>
    80003fe4:	00072783          	lw	a5,0(a4)
    80003fe8:	00004517          	auipc	a0,0x4
    80003fec:	4c850513          	addi	a0,a0,1224 # 800084b0 <tickslock>
    80003ff0:	0017879b          	addiw	a5,a5,1
    80003ff4:	00f72023          	sw	a5,0(a4)
    80003ff8:	00001097          	auipc	ra,0x1
    80003ffc:	540080e7          	jalr	1344(ra) # 80005538 <release>
    80004000:	f65ff06f          	j	80003f64 <kerneltrap+0x8c>
    80004004:	00001097          	auipc	ra,0x1
    80004008:	09c080e7          	jalr	156(ra) # 800050a0 <uartintr>
    8000400c:	fa5ff06f          	j	80003fb0 <kerneltrap+0xd8>
    80004010:	00002517          	auipc	a0,0x2
    80004014:	2a050513          	addi	a0,a0,672 # 800062b0 <CONSOLE_STATUS+0x2a0>
    80004018:	00000097          	auipc	ra,0x0
    8000401c:	724080e7          	jalr	1828(ra) # 8000473c <panic>

0000000080004020 <clockintr>:
    80004020:	fe010113          	addi	sp,sp,-32
    80004024:	00813823          	sd	s0,16(sp)
    80004028:	00913423          	sd	s1,8(sp)
    8000402c:	00113c23          	sd	ra,24(sp)
    80004030:	02010413          	addi	s0,sp,32
    80004034:	00004497          	auipc	s1,0x4
    80004038:	47c48493          	addi	s1,s1,1148 # 800084b0 <tickslock>
    8000403c:	00048513          	mv	a0,s1
    80004040:	00001097          	auipc	ra,0x1
    80004044:	42c080e7          	jalr	1068(ra) # 8000546c <acquire>
    80004048:	00003717          	auipc	a4,0x3
    8000404c:	33470713          	addi	a4,a4,820 # 8000737c <ticks>
    80004050:	00072783          	lw	a5,0(a4)
    80004054:	01013403          	ld	s0,16(sp)
    80004058:	01813083          	ld	ra,24(sp)
    8000405c:	00048513          	mv	a0,s1
    80004060:	0017879b          	addiw	a5,a5,1
    80004064:	00813483          	ld	s1,8(sp)
    80004068:	00f72023          	sw	a5,0(a4)
    8000406c:	02010113          	addi	sp,sp,32
    80004070:	00001317          	auipc	t1,0x1
    80004074:	4c830067          	jr	1224(t1) # 80005538 <release>

0000000080004078 <devintr>:
    80004078:	142027f3          	csrr	a5,scause
    8000407c:	00000513          	li	a0,0
    80004080:	0007c463          	bltz	a5,80004088 <devintr+0x10>
    80004084:	00008067          	ret
    80004088:	fe010113          	addi	sp,sp,-32
    8000408c:	00813823          	sd	s0,16(sp)
    80004090:	00113c23          	sd	ra,24(sp)
    80004094:	00913423          	sd	s1,8(sp)
    80004098:	02010413          	addi	s0,sp,32
    8000409c:	0ff7f713          	andi	a4,a5,255
    800040a0:	00900693          	li	a3,9
    800040a4:	04d70c63          	beq	a4,a3,800040fc <devintr+0x84>
    800040a8:	fff00713          	li	a4,-1
    800040ac:	03f71713          	slli	a4,a4,0x3f
    800040b0:	00170713          	addi	a4,a4,1
    800040b4:	00e78c63          	beq	a5,a4,800040cc <devintr+0x54>
    800040b8:	01813083          	ld	ra,24(sp)
    800040bc:	01013403          	ld	s0,16(sp)
    800040c0:	00813483          	ld	s1,8(sp)
    800040c4:	02010113          	addi	sp,sp,32
    800040c8:	00008067          	ret
    800040cc:	00000097          	auipc	ra,0x0
    800040d0:	c8c080e7          	jalr	-884(ra) # 80003d58 <cpuid>
    800040d4:	06050663          	beqz	a0,80004140 <devintr+0xc8>
    800040d8:	144027f3          	csrr	a5,sip
    800040dc:	ffd7f793          	andi	a5,a5,-3
    800040e0:	14479073          	csrw	sip,a5
    800040e4:	01813083          	ld	ra,24(sp)
    800040e8:	01013403          	ld	s0,16(sp)
    800040ec:	00813483          	ld	s1,8(sp)
    800040f0:	00200513          	li	a0,2
    800040f4:	02010113          	addi	sp,sp,32
    800040f8:	00008067          	ret
    800040fc:	00000097          	auipc	ra,0x0
    80004100:	258080e7          	jalr	600(ra) # 80004354 <plic_claim>
    80004104:	00a00793          	li	a5,10
    80004108:	00050493          	mv	s1,a0
    8000410c:	06f50663          	beq	a0,a5,80004178 <devintr+0x100>
    80004110:	00100513          	li	a0,1
    80004114:	fa0482e3          	beqz	s1,800040b8 <devintr+0x40>
    80004118:	00048593          	mv	a1,s1
    8000411c:	00002517          	auipc	a0,0x2
    80004120:	1b450513          	addi	a0,a0,436 # 800062d0 <CONSOLE_STATUS+0x2c0>
    80004124:	00000097          	auipc	ra,0x0
    80004128:	674080e7          	jalr	1652(ra) # 80004798 <__printf>
    8000412c:	00048513          	mv	a0,s1
    80004130:	00000097          	auipc	ra,0x0
    80004134:	25c080e7          	jalr	604(ra) # 8000438c <plic_complete>
    80004138:	00100513          	li	a0,1
    8000413c:	f7dff06f          	j	800040b8 <devintr+0x40>
    80004140:	00004517          	auipc	a0,0x4
    80004144:	37050513          	addi	a0,a0,880 # 800084b0 <tickslock>
    80004148:	00001097          	auipc	ra,0x1
    8000414c:	324080e7          	jalr	804(ra) # 8000546c <acquire>
    80004150:	00003717          	auipc	a4,0x3
    80004154:	22c70713          	addi	a4,a4,556 # 8000737c <ticks>
    80004158:	00072783          	lw	a5,0(a4)
    8000415c:	00004517          	auipc	a0,0x4
    80004160:	35450513          	addi	a0,a0,852 # 800084b0 <tickslock>
    80004164:	0017879b          	addiw	a5,a5,1
    80004168:	00f72023          	sw	a5,0(a4)
    8000416c:	00001097          	auipc	ra,0x1
    80004170:	3cc080e7          	jalr	972(ra) # 80005538 <release>
    80004174:	f65ff06f          	j	800040d8 <devintr+0x60>
    80004178:	00001097          	auipc	ra,0x1
    8000417c:	f28080e7          	jalr	-216(ra) # 800050a0 <uartintr>
    80004180:	fadff06f          	j	8000412c <devintr+0xb4>
	...

0000000080004190 <kernelvec>:
    80004190:	f0010113          	addi	sp,sp,-256
    80004194:	00113023          	sd	ra,0(sp)
    80004198:	00213423          	sd	sp,8(sp)
    8000419c:	00313823          	sd	gp,16(sp)
    800041a0:	00413c23          	sd	tp,24(sp)
    800041a4:	02513023          	sd	t0,32(sp)
    800041a8:	02613423          	sd	t1,40(sp)
    800041ac:	02713823          	sd	t2,48(sp)
    800041b0:	02813c23          	sd	s0,56(sp)
    800041b4:	04913023          	sd	s1,64(sp)
    800041b8:	04a13423          	sd	a0,72(sp)
    800041bc:	04b13823          	sd	a1,80(sp)
    800041c0:	04c13c23          	sd	a2,88(sp)
    800041c4:	06d13023          	sd	a3,96(sp)
    800041c8:	06e13423          	sd	a4,104(sp)
    800041cc:	06f13823          	sd	a5,112(sp)
    800041d0:	07013c23          	sd	a6,120(sp)
    800041d4:	09113023          	sd	a7,128(sp)
    800041d8:	09213423          	sd	s2,136(sp)
    800041dc:	09313823          	sd	s3,144(sp)
    800041e0:	09413c23          	sd	s4,152(sp)
    800041e4:	0b513023          	sd	s5,160(sp)
    800041e8:	0b613423          	sd	s6,168(sp)
    800041ec:	0b713823          	sd	s7,176(sp)
    800041f0:	0b813c23          	sd	s8,184(sp)
    800041f4:	0d913023          	sd	s9,192(sp)
    800041f8:	0da13423          	sd	s10,200(sp)
    800041fc:	0db13823          	sd	s11,208(sp)
    80004200:	0dc13c23          	sd	t3,216(sp)
    80004204:	0fd13023          	sd	t4,224(sp)
    80004208:	0fe13423          	sd	t5,232(sp)
    8000420c:	0ff13823          	sd	t6,240(sp)
    80004210:	cc9ff0ef          	jal	ra,80003ed8 <kerneltrap>
    80004214:	00013083          	ld	ra,0(sp)
    80004218:	00813103          	ld	sp,8(sp)
    8000421c:	01013183          	ld	gp,16(sp)
    80004220:	02013283          	ld	t0,32(sp)
    80004224:	02813303          	ld	t1,40(sp)
    80004228:	03013383          	ld	t2,48(sp)
    8000422c:	03813403          	ld	s0,56(sp)
    80004230:	04013483          	ld	s1,64(sp)
    80004234:	04813503          	ld	a0,72(sp)
    80004238:	05013583          	ld	a1,80(sp)
    8000423c:	05813603          	ld	a2,88(sp)
    80004240:	06013683          	ld	a3,96(sp)
    80004244:	06813703          	ld	a4,104(sp)
    80004248:	07013783          	ld	a5,112(sp)
    8000424c:	07813803          	ld	a6,120(sp)
    80004250:	08013883          	ld	a7,128(sp)
    80004254:	08813903          	ld	s2,136(sp)
    80004258:	09013983          	ld	s3,144(sp)
    8000425c:	09813a03          	ld	s4,152(sp)
    80004260:	0a013a83          	ld	s5,160(sp)
    80004264:	0a813b03          	ld	s6,168(sp)
    80004268:	0b013b83          	ld	s7,176(sp)
    8000426c:	0b813c03          	ld	s8,184(sp)
    80004270:	0c013c83          	ld	s9,192(sp)
    80004274:	0c813d03          	ld	s10,200(sp)
    80004278:	0d013d83          	ld	s11,208(sp)
    8000427c:	0d813e03          	ld	t3,216(sp)
    80004280:	0e013e83          	ld	t4,224(sp)
    80004284:	0e813f03          	ld	t5,232(sp)
    80004288:	0f013f83          	ld	t6,240(sp)
    8000428c:	10010113          	addi	sp,sp,256
    80004290:	10200073          	sret
    80004294:	00000013          	nop
    80004298:	00000013          	nop
    8000429c:	00000013          	nop

00000000800042a0 <timervec>:
    800042a0:	34051573          	csrrw	a0,mscratch,a0
    800042a4:	00b53023          	sd	a1,0(a0)
    800042a8:	00c53423          	sd	a2,8(a0)
    800042ac:	00d53823          	sd	a3,16(a0)
    800042b0:	01853583          	ld	a1,24(a0)
    800042b4:	02053603          	ld	a2,32(a0)
    800042b8:	0005b683          	ld	a3,0(a1)
    800042bc:	00c686b3          	add	a3,a3,a2
    800042c0:	00d5b023          	sd	a3,0(a1)
    800042c4:	00200593          	li	a1,2
    800042c8:	14459073          	csrw	sip,a1
    800042cc:	01053683          	ld	a3,16(a0)
    800042d0:	00853603          	ld	a2,8(a0)
    800042d4:	00053583          	ld	a1,0(a0)
    800042d8:	34051573          	csrrw	a0,mscratch,a0
    800042dc:	30200073          	mret

00000000800042e0 <plicinit>:
    800042e0:	ff010113          	addi	sp,sp,-16
    800042e4:	00813423          	sd	s0,8(sp)
    800042e8:	01010413          	addi	s0,sp,16
    800042ec:	00813403          	ld	s0,8(sp)
    800042f0:	0c0007b7          	lui	a5,0xc000
    800042f4:	00100713          	li	a4,1
    800042f8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800042fc:	00e7a223          	sw	a4,4(a5)
    80004300:	01010113          	addi	sp,sp,16
    80004304:	00008067          	ret

0000000080004308 <plicinithart>:
    80004308:	ff010113          	addi	sp,sp,-16
    8000430c:	00813023          	sd	s0,0(sp)
    80004310:	00113423          	sd	ra,8(sp)
    80004314:	01010413          	addi	s0,sp,16
    80004318:	00000097          	auipc	ra,0x0
    8000431c:	a40080e7          	jalr	-1472(ra) # 80003d58 <cpuid>
    80004320:	0085171b          	slliw	a4,a0,0x8
    80004324:	0c0027b7          	lui	a5,0xc002
    80004328:	00e787b3          	add	a5,a5,a4
    8000432c:	40200713          	li	a4,1026
    80004330:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004334:	00813083          	ld	ra,8(sp)
    80004338:	00013403          	ld	s0,0(sp)
    8000433c:	00d5151b          	slliw	a0,a0,0xd
    80004340:	0c2017b7          	lui	a5,0xc201
    80004344:	00a78533          	add	a0,a5,a0
    80004348:	00052023          	sw	zero,0(a0)
    8000434c:	01010113          	addi	sp,sp,16
    80004350:	00008067          	ret

0000000080004354 <plic_claim>:
    80004354:	ff010113          	addi	sp,sp,-16
    80004358:	00813023          	sd	s0,0(sp)
    8000435c:	00113423          	sd	ra,8(sp)
    80004360:	01010413          	addi	s0,sp,16
    80004364:	00000097          	auipc	ra,0x0
    80004368:	9f4080e7          	jalr	-1548(ra) # 80003d58 <cpuid>
    8000436c:	00813083          	ld	ra,8(sp)
    80004370:	00013403          	ld	s0,0(sp)
    80004374:	00d5151b          	slliw	a0,a0,0xd
    80004378:	0c2017b7          	lui	a5,0xc201
    8000437c:	00a78533          	add	a0,a5,a0
    80004380:	00452503          	lw	a0,4(a0)
    80004384:	01010113          	addi	sp,sp,16
    80004388:	00008067          	ret

000000008000438c <plic_complete>:
    8000438c:	fe010113          	addi	sp,sp,-32
    80004390:	00813823          	sd	s0,16(sp)
    80004394:	00913423          	sd	s1,8(sp)
    80004398:	00113c23          	sd	ra,24(sp)
    8000439c:	02010413          	addi	s0,sp,32
    800043a0:	00050493          	mv	s1,a0
    800043a4:	00000097          	auipc	ra,0x0
    800043a8:	9b4080e7          	jalr	-1612(ra) # 80003d58 <cpuid>
    800043ac:	01813083          	ld	ra,24(sp)
    800043b0:	01013403          	ld	s0,16(sp)
    800043b4:	00d5179b          	slliw	a5,a0,0xd
    800043b8:	0c201737          	lui	a4,0xc201
    800043bc:	00f707b3          	add	a5,a4,a5
    800043c0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800043c4:	00813483          	ld	s1,8(sp)
    800043c8:	02010113          	addi	sp,sp,32
    800043cc:	00008067          	ret

00000000800043d0 <consolewrite>:
    800043d0:	fb010113          	addi	sp,sp,-80
    800043d4:	04813023          	sd	s0,64(sp)
    800043d8:	04113423          	sd	ra,72(sp)
    800043dc:	02913c23          	sd	s1,56(sp)
    800043e0:	03213823          	sd	s2,48(sp)
    800043e4:	03313423          	sd	s3,40(sp)
    800043e8:	03413023          	sd	s4,32(sp)
    800043ec:	01513c23          	sd	s5,24(sp)
    800043f0:	05010413          	addi	s0,sp,80
    800043f4:	06c05c63          	blez	a2,8000446c <consolewrite+0x9c>
    800043f8:	00060993          	mv	s3,a2
    800043fc:	00050a13          	mv	s4,a0
    80004400:	00058493          	mv	s1,a1
    80004404:	00000913          	li	s2,0
    80004408:	fff00a93          	li	s5,-1
    8000440c:	01c0006f          	j	80004428 <consolewrite+0x58>
    80004410:	fbf44503          	lbu	a0,-65(s0)
    80004414:	0019091b          	addiw	s2,s2,1
    80004418:	00148493          	addi	s1,s1,1
    8000441c:	00001097          	auipc	ra,0x1
    80004420:	a9c080e7          	jalr	-1380(ra) # 80004eb8 <uartputc>
    80004424:	03298063          	beq	s3,s2,80004444 <consolewrite+0x74>
    80004428:	00048613          	mv	a2,s1
    8000442c:	00100693          	li	a3,1
    80004430:	000a0593          	mv	a1,s4
    80004434:	fbf40513          	addi	a0,s0,-65
    80004438:	00000097          	auipc	ra,0x0
    8000443c:	9d8080e7          	jalr	-1576(ra) # 80003e10 <either_copyin>
    80004440:	fd5518e3          	bne	a0,s5,80004410 <consolewrite+0x40>
    80004444:	04813083          	ld	ra,72(sp)
    80004448:	04013403          	ld	s0,64(sp)
    8000444c:	03813483          	ld	s1,56(sp)
    80004450:	02813983          	ld	s3,40(sp)
    80004454:	02013a03          	ld	s4,32(sp)
    80004458:	01813a83          	ld	s5,24(sp)
    8000445c:	00090513          	mv	a0,s2
    80004460:	03013903          	ld	s2,48(sp)
    80004464:	05010113          	addi	sp,sp,80
    80004468:	00008067          	ret
    8000446c:	00000913          	li	s2,0
    80004470:	fd5ff06f          	j	80004444 <consolewrite+0x74>

0000000080004474 <consoleread>:
    80004474:	f9010113          	addi	sp,sp,-112
    80004478:	06813023          	sd	s0,96(sp)
    8000447c:	04913c23          	sd	s1,88(sp)
    80004480:	05213823          	sd	s2,80(sp)
    80004484:	05313423          	sd	s3,72(sp)
    80004488:	05413023          	sd	s4,64(sp)
    8000448c:	03513c23          	sd	s5,56(sp)
    80004490:	03613823          	sd	s6,48(sp)
    80004494:	03713423          	sd	s7,40(sp)
    80004498:	03813023          	sd	s8,32(sp)
    8000449c:	06113423          	sd	ra,104(sp)
    800044a0:	01913c23          	sd	s9,24(sp)
    800044a4:	07010413          	addi	s0,sp,112
    800044a8:	00060b93          	mv	s7,a2
    800044ac:	00050913          	mv	s2,a0
    800044b0:	00058c13          	mv	s8,a1
    800044b4:	00060b1b          	sext.w	s6,a2
    800044b8:	00004497          	auipc	s1,0x4
    800044bc:	02048493          	addi	s1,s1,32 # 800084d8 <cons>
    800044c0:	00400993          	li	s3,4
    800044c4:	fff00a13          	li	s4,-1
    800044c8:	00a00a93          	li	s5,10
    800044cc:	05705e63          	blez	s7,80004528 <consoleread+0xb4>
    800044d0:	09c4a703          	lw	a4,156(s1)
    800044d4:	0984a783          	lw	a5,152(s1)
    800044d8:	0007071b          	sext.w	a4,a4
    800044dc:	08e78463          	beq	a5,a4,80004564 <consoleread+0xf0>
    800044e0:	07f7f713          	andi	a4,a5,127
    800044e4:	00e48733          	add	a4,s1,a4
    800044e8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800044ec:	0017869b          	addiw	a3,a5,1
    800044f0:	08d4ac23          	sw	a3,152(s1)
    800044f4:	00070c9b          	sext.w	s9,a4
    800044f8:	0b370663          	beq	a4,s3,800045a4 <consoleread+0x130>
    800044fc:	00100693          	li	a3,1
    80004500:	f9f40613          	addi	a2,s0,-97
    80004504:	000c0593          	mv	a1,s8
    80004508:	00090513          	mv	a0,s2
    8000450c:	f8e40fa3          	sb	a4,-97(s0)
    80004510:	00000097          	auipc	ra,0x0
    80004514:	8b4080e7          	jalr	-1868(ra) # 80003dc4 <either_copyout>
    80004518:	01450863          	beq	a0,s4,80004528 <consoleread+0xb4>
    8000451c:	001c0c13          	addi	s8,s8,1
    80004520:	fffb8b9b          	addiw	s7,s7,-1
    80004524:	fb5c94e3          	bne	s9,s5,800044cc <consoleread+0x58>
    80004528:	000b851b          	sext.w	a0,s7
    8000452c:	06813083          	ld	ra,104(sp)
    80004530:	06013403          	ld	s0,96(sp)
    80004534:	05813483          	ld	s1,88(sp)
    80004538:	05013903          	ld	s2,80(sp)
    8000453c:	04813983          	ld	s3,72(sp)
    80004540:	04013a03          	ld	s4,64(sp)
    80004544:	03813a83          	ld	s5,56(sp)
    80004548:	02813b83          	ld	s7,40(sp)
    8000454c:	02013c03          	ld	s8,32(sp)
    80004550:	01813c83          	ld	s9,24(sp)
    80004554:	40ab053b          	subw	a0,s6,a0
    80004558:	03013b03          	ld	s6,48(sp)
    8000455c:	07010113          	addi	sp,sp,112
    80004560:	00008067          	ret
    80004564:	00001097          	auipc	ra,0x1
    80004568:	1d8080e7          	jalr	472(ra) # 8000573c <push_on>
    8000456c:	0984a703          	lw	a4,152(s1)
    80004570:	09c4a783          	lw	a5,156(s1)
    80004574:	0007879b          	sext.w	a5,a5
    80004578:	fef70ce3          	beq	a4,a5,80004570 <consoleread+0xfc>
    8000457c:	00001097          	auipc	ra,0x1
    80004580:	234080e7          	jalr	564(ra) # 800057b0 <pop_on>
    80004584:	0984a783          	lw	a5,152(s1)
    80004588:	07f7f713          	andi	a4,a5,127
    8000458c:	00e48733          	add	a4,s1,a4
    80004590:	01874703          	lbu	a4,24(a4)
    80004594:	0017869b          	addiw	a3,a5,1
    80004598:	08d4ac23          	sw	a3,152(s1)
    8000459c:	00070c9b          	sext.w	s9,a4
    800045a0:	f5371ee3          	bne	a4,s3,800044fc <consoleread+0x88>
    800045a4:	000b851b          	sext.w	a0,s7
    800045a8:	f96bf2e3          	bgeu	s7,s6,8000452c <consoleread+0xb8>
    800045ac:	08f4ac23          	sw	a5,152(s1)
    800045b0:	f7dff06f          	j	8000452c <consoleread+0xb8>

00000000800045b4 <consputc>:
    800045b4:	10000793          	li	a5,256
    800045b8:	00f50663          	beq	a0,a5,800045c4 <consputc+0x10>
    800045bc:	00001317          	auipc	t1,0x1
    800045c0:	9f430067          	jr	-1548(t1) # 80004fb0 <uartputc_sync>
    800045c4:	ff010113          	addi	sp,sp,-16
    800045c8:	00113423          	sd	ra,8(sp)
    800045cc:	00813023          	sd	s0,0(sp)
    800045d0:	01010413          	addi	s0,sp,16
    800045d4:	00800513          	li	a0,8
    800045d8:	00001097          	auipc	ra,0x1
    800045dc:	9d8080e7          	jalr	-1576(ra) # 80004fb0 <uartputc_sync>
    800045e0:	02000513          	li	a0,32
    800045e4:	00001097          	auipc	ra,0x1
    800045e8:	9cc080e7          	jalr	-1588(ra) # 80004fb0 <uartputc_sync>
    800045ec:	00013403          	ld	s0,0(sp)
    800045f0:	00813083          	ld	ra,8(sp)
    800045f4:	00800513          	li	a0,8
    800045f8:	01010113          	addi	sp,sp,16
    800045fc:	00001317          	auipc	t1,0x1
    80004600:	9b430067          	jr	-1612(t1) # 80004fb0 <uartputc_sync>

0000000080004604 <consoleintr>:
    80004604:	fe010113          	addi	sp,sp,-32
    80004608:	00813823          	sd	s0,16(sp)
    8000460c:	00913423          	sd	s1,8(sp)
    80004610:	01213023          	sd	s2,0(sp)
    80004614:	00113c23          	sd	ra,24(sp)
    80004618:	02010413          	addi	s0,sp,32
    8000461c:	00004917          	auipc	s2,0x4
    80004620:	ebc90913          	addi	s2,s2,-324 # 800084d8 <cons>
    80004624:	00050493          	mv	s1,a0
    80004628:	00090513          	mv	a0,s2
    8000462c:	00001097          	auipc	ra,0x1
    80004630:	e40080e7          	jalr	-448(ra) # 8000546c <acquire>
    80004634:	02048c63          	beqz	s1,8000466c <consoleintr+0x68>
    80004638:	0a092783          	lw	a5,160(s2)
    8000463c:	09892703          	lw	a4,152(s2)
    80004640:	07f00693          	li	a3,127
    80004644:	40e7873b          	subw	a4,a5,a4
    80004648:	02e6e263          	bltu	a3,a4,8000466c <consoleintr+0x68>
    8000464c:	00d00713          	li	a4,13
    80004650:	04e48063          	beq	s1,a4,80004690 <consoleintr+0x8c>
    80004654:	07f7f713          	andi	a4,a5,127
    80004658:	00e90733          	add	a4,s2,a4
    8000465c:	0017879b          	addiw	a5,a5,1
    80004660:	0af92023          	sw	a5,160(s2)
    80004664:	00970c23          	sb	s1,24(a4)
    80004668:	08f92e23          	sw	a5,156(s2)
    8000466c:	01013403          	ld	s0,16(sp)
    80004670:	01813083          	ld	ra,24(sp)
    80004674:	00813483          	ld	s1,8(sp)
    80004678:	00013903          	ld	s2,0(sp)
    8000467c:	00004517          	auipc	a0,0x4
    80004680:	e5c50513          	addi	a0,a0,-420 # 800084d8 <cons>
    80004684:	02010113          	addi	sp,sp,32
    80004688:	00001317          	auipc	t1,0x1
    8000468c:	eb030067          	jr	-336(t1) # 80005538 <release>
    80004690:	00a00493          	li	s1,10
    80004694:	fc1ff06f          	j	80004654 <consoleintr+0x50>

0000000080004698 <consoleinit>:
    80004698:	fe010113          	addi	sp,sp,-32
    8000469c:	00113c23          	sd	ra,24(sp)
    800046a0:	00813823          	sd	s0,16(sp)
    800046a4:	00913423          	sd	s1,8(sp)
    800046a8:	02010413          	addi	s0,sp,32
    800046ac:	00004497          	auipc	s1,0x4
    800046b0:	e2c48493          	addi	s1,s1,-468 # 800084d8 <cons>
    800046b4:	00048513          	mv	a0,s1
    800046b8:	00002597          	auipc	a1,0x2
    800046bc:	c7058593          	addi	a1,a1,-912 # 80006328 <CONSOLE_STATUS+0x318>
    800046c0:	00001097          	auipc	ra,0x1
    800046c4:	d88080e7          	jalr	-632(ra) # 80005448 <initlock>
    800046c8:	00000097          	auipc	ra,0x0
    800046cc:	7ac080e7          	jalr	1964(ra) # 80004e74 <uartinit>
    800046d0:	01813083          	ld	ra,24(sp)
    800046d4:	01013403          	ld	s0,16(sp)
    800046d8:	00000797          	auipc	a5,0x0
    800046dc:	d9c78793          	addi	a5,a5,-612 # 80004474 <consoleread>
    800046e0:	0af4bc23          	sd	a5,184(s1)
    800046e4:	00000797          	auipc	a5,0x0
    800046e8:	cec78793          	addi	a5,a5,-788 # 800043d0 <consolewrite>
    800046ec:	0cf4b023          	sd	a5,192(s1)
    800046f0:	00813483          	ld	s1,8(sp)
    800046f4:	02010113          	addi	sp,sp,32
    800046f8:	00008067          	ret

00000000800046fc <console_read>:
    800046fc:	ff010113          	addi	sp,sp,-16
    80004700:	00813423          	sd	s0,8(sp)
    80004704:	01010413          	addi	s0,sp,16
    80004708:	00813403          	ld	s0,8(sp)
    8000470c:	00004317          	auipc	t1,0x4
    80004710:	e8433303          	ld	t1,-380(t1) # 80008590 <devsw+0x10>
    80004714:	01010113          	addi	sp,sp,16
    80004718:	00030067          	jr	t1

000000008000471c <console_write>:
    8000471c:	ff010113          	addi	sp,sp,-16
    80004720:	00813423          	sd	s0,8(sp)
    80004724:	01010413          	addi	s0,sp,16
    80004728:	00813403          	ld	s0,8(sp)
    8000472c:	00004317          	auipc	t1,0x4
    80004730:	e6c33303          	ld	t1,-404(t1) # 80008598 <devsw+0x18>
    80004734:	01010113          	addi	sp,sp,16
    80004738:	00030067          	jr	t1

000000008000473c <panic>:
    8000473c:	fe010113          	addi	sp,sp,-32
    80004740:	00113c23          	sd	ra,24(sp)
    80004744:	00813823          	sd	s0,16(sp)
    80004748:	00913423          	sd	s1,8(sp)
    8000474c:	02010413          	addi	s0,sp,32
    80004750:	00050493          	mv	s1,a0
    80004754:	00002517          	auipc	a0,0x2
    80004758:	bdc50513          	addi	a0,a0,-1060 # 80006330 <CONSOLE_STATUS+0x320>
    8000475c:	00004797          	auipc	a5,0x4
    80004760:	ec07ae23          	sw	zero,-292(a5) # 80008638 <pr+0x18>
    80004764:	00000097          	auipc	ra,0x0
    80004768:	034080e7          	jalr	52(ra) # 80004798 <__printf>
    8000476c:	00048513          	mv	a0,s1
    80004770:	00000097          	auipc	ra,0x0
    80004774:	028080e7          	jalr	40(ra) # 80004798 <__printf>
    80004778:	00002517          	auipc	a0,0x2
    8000477c:	9d850513          	addi	a0,a0,-1576 # 80006150 <CONSOLE_STATUS+0x140>
    80004780:	00000097          	auipc	ra,0x0
    80004784:	018080e7          	jalr	24(ra) # 80004798 <__printf>
    80004788:	00100793          	li	a5,1
    8000478c:	00003717          	auipc	a4,0x3
    80004790:	bef72a23          	sw	a5,-1036(a4) # 80007380 <panicked>
    80004794:	0000006f          	j	80004794 <panic+0x58>

0000000080004798 <__printf>:
    80004798:	f3010113          	addi	sp,sp,-208
    8000479c:	08813023          	sd	s0,128(sp)
    800047a0:	07313423          	sd	s3,104(sp)
    800047a4:	09010413          	addi	s0,sp,144
    800047a8:	05813023          	sd	s8,64(sp)
    800047ac:	08113423          	sd	ra,136(sp)
    800047b0:	06913c23          	sd	s1,120(sp)
    800047b4:	07213823          	sd	s2,112(sp)
    800047b8:	07413023          	sd	s4,96(sp)
    800047bc:	05513c23          	sd	s5,88(sp)
    800047c0:	05613823          	sd	s6,80(sp)
    800047c4:	05713423          	sd	s7,72(sp)
    800047c8:	03913c23          	sd	s9,56(sp)
    800047cc:	03a13823          	sd	s10,48(sp)
    800047d0:	03b13423          	sd	s11,40(sp)
    800047d4:	00004317          	auipc	t1,0x4
    800047d8:	e4c30313          	addi	t1,t1,-436 # 80008620 <pr>
    800047dc:	01832c03          	lw	s8,24(t1)
    800047e0:	00b43423          	sd	a1,8(s0)
    800047e4:	00c43823          	sd	a2,16(s0)
    800047e8:	00d43c23          	sd	a3,24(s0)
    800047ec:	02e43023          	sd	a4,32(s0)
    800047f0:	02f43423          	sd	a5,40(s0)
    800047f4:	03043823          	sd	a6,48(s0)
    800047f8:	03143c23          	sd	a7,56(s0)
    800047fc:	00050993          	mv	s3,a0
    80004800:	4a0c1663          	bnez	s8,80004cac <__printf+0x514>
    80004804:	60098c63          	beqz	s3,80004e1c <__printf+0x684>
    80004808:	0009c503          	lbu	a0,0(s3)
    8000480c:	00840793          	addi	a5,s0,8
    80004810:	f6f43c23          	sd	a5,-136(s0)
    80004814:	00000493          	li	s1,0
    80004818:	22050063          	beqz	a0,80004a38 <__printf+0x2a0>
    8000481c:	00002a37          	lui	s4,0x2
    80004820:	00018ab7          	lui	s5,0x18
    80004824:	000f4b37          	lui	s6,0xf4
    80004828:	00989bb7          	lui	s7,0x989
    8000482c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004830:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004834:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004838:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000483c:	00148c9b          	addiw	s9,s1,1
    80004840:	02500793          	li	a5,37
    80004844:	01998933          	add	s2,s3,s9
    80004848:	38f51263          	bne	a0,a5,80004bcc <__printf+0x434>
    8000484c:	00094783          	lbu	a5,0(s2)
    80004850:	00078c9b          	sext.w	s9,a5
    80004854:	1e078263          	beqz	a5,80004a38 <__printf+0x2a0>
    80004858:	0024849b          	addiw	s1,s1,2
    8000485c:	07000713          	li	a4,112
    80004860:	00998933          	add	s2,s3,s1
    80004864:	38e78a63          	beq	a5,a4,80004bf8 <__printf+0x460>
    80004868:	20f76863          	bltu	a4,a5,80004a78 <__printf+0x2e0>
    8000486c:	42a78863          	beq	a5,a0,80004c9c <__printf+0x504>
    80004870:	06400713          	li	a4,100
    80004874:	40e79663          	bne	a5,a4,80004c80 <__printf+0x4e8>
    80004878:	f7843783          	ld	a5,-136(s0)
    8000487c:	0007a603          	lw	a2,0(a5)
    80004880:	00878793          	addi	a5,a5,8
    80004884:	f6f43c23          	sd	a5,-136(s0)
    80004888:	42064a63          	bltz	a2,80004cbc <__printf+0x524>
    8000488c:	00a00713          	li	a4,10
    80004890:	02e677bb          	remuw	a5,a2,a4
    80004894:	00002d97          	auipc	s11,0x2
    80004898:	ac4d8d93          	addi	s11,s11,-1340 # 80006358 <digits>
    8000489c:	00900593          	li	a1,9
    800048a0:	0006051b          	sext.w	a0,a2
    800048a4:	00000c93          	li	s9,0
    800048a8:	02079793          	slli	a5,a5,0x20
    800048ac:	0207d793          	srli	a5,a5,0x20
    800048b0:	00fd87b3          	add	a5,s11,a5
    800048b4:	0007c783          	lbu	a5,0(a5)
    800048b8:	02e656bb          	divuw	a3,a2,a4
    800048bc:	f8f40023          	sb	a5,-128(s0)
    800048c0:	14c5d863          	bge	a1,a2,80004a10 <__printf+0x278>
    800048c4:	06300593          	li	a1,99
    800048c8:	00100c93          	li	s9,1
    800048cc:	02e6f7bb          	remuw	a5,a3,a4
    800048d0:	02079793          	slli	a5,a5,0x20
    800048d4:	0207d793          	srli	a5,a5,0x20
    800048d8:	00fd87b3          	add	a5,s11,a5
    800048dc:	0007c783          	lbu	a5,0(a5)
    800048e0:	02e6d73b          	divuw	a4,a3,a4
    800048e4:	f8f400a3          	sb	a5,-127(s0)
    800048e8:	12a5f463          	bgeu	a1,a0,80004a10 <__printf+0x278>
    800048ec:	00a00693          	li	a3,10
    800048f0:	00900593          	li	a1,9
    800048f4:	02d777bb          	remuw	a5,a4,a3
    800048f8:	02079793          	slli	a5,a5,0x20
    800048fc:	0207d793          	srli	a5,a5,0x20
    80004900:	00fd87b3          	add	a5,s11,a5
    80004904:	0007c503          	lbu	a0,0(a5)
    80004908:	02d757bb          	divuw	a5,a4,a3
    8000490c:	f8a40123          	sb	a0,-126(s0)
    80004910:	48e5f263          	bgeu	a1,a4,80004d94 <__printf+0x5fc>
    80004914:	06300513          	li	a0,99
    80004918:	02d7f5bb          	remuw	a1,a5,a3
    8000491c:	02059593          	slli	a1,a1,0x20
    80004920:	0205d593          	srli	a1,a1,0x20
    80004924:	00bd85b3          	add	a1,s11,a1
    80004928:	0005c583          	lbu	a1,0(a1)
    8000492c:	02d7d7bb          	divuw	a5,a5,a3
    80004930:	f8b401a3          	sb	a1,-125(s0)
    80004934:	48e57263          	bgeu	a0,a4,80004db8 <__printf+0x620>
    80004938:	3e700513          	li	a0,999
    8000493c:	02d7f5bb          	remuw	a1,a5,a3
    80004940:	02059593          	slli	a1,a1,0x20
    80004944:	0205d593          	srli	a1,a1,0x20
    80004948:	00bd85b3          	add	a1,s11,a1
    8000494c:	0005c583          	lbu	a1,0(a1)
    80004950:	02d7d7bb          	divuw	a5,a5,a3
    80004954:	f8b40223          	sb	a1,-124(s0)
    80004958:	46e57663          	bgeu	a0,a4,80004dc4 <__printf+0x62c>
    8000495c:	02d7f5bb          	remuw	a1,a5,a3
    80004960:	02059593          	slli	a1,a1,0x20
    80004964:	0205d593          	srli	a1,a1,0x20
    80004968:	00bd85b3          	add	a1,s11,a1
    8000496c:	0005c583          	lbu	a1,0(a1)
    80004970:	02d7d7bb          	divuw	a5,a5,a3
    80004974:	f8b402a3          	sb	a1,-123(s0)
    80004978:	46ea7863          	bgeu	s4,a4,80004de8 <__printf+0x650>
    8000497c:	02d7f5bb          	remuw	a1,a5,a3
    80004980:	02059593          	slli	a1,a1,0x20
    80004984:	0205d593          	srli	a1,a1,0x20
    80004988:	00bd85b3          	add	a1,s11,a1
    8000498c:	0005c583          	lbu	a1,0(a1)
    80004990:	02d7d7bb          	divuw	a5,a5,a3
    80004994:	f8b40323          	sb	a1,-122(s0)
    80004998:	3eeaf863          	bgeu	s5,a4,80004d88 <__printf+0x5f0>
    8000499c:	02d7f5bb          	remuw	a1,a5,a3
    800049a0:	02059593          	slli	a1,a1,0x20
    800049a4:	0205d593          	srli	a1,a1,0x20
    800049a8:	00bd85b3          	add	a1,s11,a1
    800049ac:	0005c583          	lbu	a1,0(a1)
    800049b0:	02d7d7bb          	divuw	a5,a5,a3
    800049b4:	f8b403a3          	sb	a1,-121(s0)
    800049b8:	42eb7e63          	bgeu	s6,a4,80004df4 <__printf+0x65c>
    800049bc:	02d7f5bb          	remuw	a1,a5,a3
    800049c0:	02059593          	slli	a1,a1,0x20
    800049c4:	0205d593          	srli	a1,a1,0x20
    800049c8:	00bd85b3          	add	a1,s11,a1
    800049cc:	0005c583          	lbu	a1,0(a1)
    800049d0:	02d7d7bb          	divuw	a5,a5,a3
    800049d4:	f8b40423          	sb	a1,-120(s0)
    800049d8:	42ebfc63          	bgeu	s7,a4,80004e10 <__printf+0x678>
    800049dc:	02079793          	slli	a5,a5,0x20
    800049e0:	0207d793          	srli	a5,a5,0x20
    800049e4:	00fd8db3          	add	s11,s11,a5
    800049e8:	000dc703          	lbu	a4,0(s11)
    800049ec:	00a00793          	li	a5,10
    800049f0:	00900c93          	li	s9,9
    800049f4:	f8e404a3          	sb	a4,-119(s0)
    800049f8:	00065c63          	bgez	a2,80004a10 <__printf+0x278>
    800049fc:	f9040713          	addi	a4,s0,-112
    80004a00:	00f70733          	add	a4,a4,a5
    80004a04:	02d00693          	li	a3,45
    80004a08:	fed70823          	sb	a3,-16(a4)
    80004a0c:	00078c93          	mv	s9,a5
    80004a10:	f8040793          	addi	a5,s0,-128
    80004a14:	01978cb3          	add	s9,a5,s9
    80004a18:	f7f40d13          	addi	s10,s0,-129
    80004a1c:	000cc503          	lbu	a0,0(s9)
    80004a20:	fffc8c93          	addi	s9,s9,-1
    80004a24:	00000097          	auipc	ra,0x0
    80004a28:	b90080e7          	jalr	-1136(ra) # 800045b4 <consputc>
    80004a2c:	ffac98e3          	bne	s9,s10,80004a1c <__printf+0x284>
    80004a30:	00094503          	lbu	a0,0(s2)
    80004a34:	e00514e3          	bnez	a0,8000483c <__printf+0xa4>
    80004a38:	1a0c1663          	bnez	s8,80004be4 <__printf+0x44c>
    80004a3c:	08813083          	ld	ra,136(sp)
    80004a40:	08013403          	ld	s0,128(sp)
    80004a44:	07813483          	ld	s1,120(sp)
    80004a48:	07013903          	ld	s2,112(sp)
    80004a4c:	06813983          	ld	s3,104(sp)
    80004a50:	06013a03          	ld	s4,96(sp)
    80004a54:	05813a83          	ld	s5,88(sp)
    80004a58:	05013b03          	ld	s6,80(sp)
    80004a5c:	04813b83          	ld	s7,72(sp)
    80004a60:	04013c03          	ld	s8,64(sp)
    80004a64:	03813c83          	ld	s9,56(sp)
    80004a68:	03013d03          	ld	s10,48(sp)
    80004a6c:	02813d83          	ld	s11,40(sp)
    80004a70:	0d010113          	addi	sp,sp,208
    80004a74:	00008067          	ret
    80004a78:	07300713          	li	a4,115
    80004a7c:	1ce78a63          	beq	a5,a4,80004c50 <__printf+0x4b8>
    80004a80:	07800713          	li	a4,120
    80004a84:	1ee79e63          	bne	a5,a4,80004c80 <__printf+0x4e8>
    80004a88:	f7843783          	ld	a5,-136(s0)
    80004a8c:	0007a703          	lw	a4,0(a5)
    80004a90:	00878793          	addi	a5,a5,8
    80004a94:	f6f43c23          	sd	a5,-136(s0)
    80004a98:	28074263          	bltz	a4,80004d1c <__printf+0x584>
    80004a9c:	00002d97          	auipc	s11,0x2
    80004aa0:	8bcd8d93          	addi	s11,s11,-1860 # 80006358 <digits>
    80004aa4:	00f77793          	andi	a5,a4,15
    80004aa8:	00fd87b3          	add	a5,s11,a5
    80004aac:	0007c683          	lbu	a3,0(a5)
    80004ab0:	00f00613          	li	a2,15
    80004ab4:	0007079b          	sext.w	a5,a4
    80004ab8:	f8d40023          	sb	a3,-128(s0)
    80004abc:	0047559b          	srliw	a1,a4,0x4
    80004ac0:	0047569b          	srliw	a3,a4,0x4
    80004ac4:	00000c93          	li	s9,0
    80004ac8:	0ee65063          	bge	a2,a4,80004ba8 <__printf+0x410>
    80004acc:	00f6f693          	andi	a3,a3,15
    80004ad0:	00dd86b3          	add	a3,s11,a3
    80004ad4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004ad8:	0087d79b          	srliw	a5,a5,0x8
    80004adc:	00100c93          	li	s9,1
    80004ae0:	f8d400a3          	sb	a3,-127(s0)
    80004ae4:	0cb67263          	bgeu	a2,a1,80004ba8 <__printf+0x410>
    80004ae8:	00f7f693          	andi	a3,a5,15
    80004aec:	00dd86b3          	add	a3,s11,a3
    80004af0:	0006c583          	lbu	a1,0(a3)
    80004af4:	00f00613          	li	a2,15
    80004af8:	0047d69b          	srliw	a3,a5,0x4
    80004afc:	f8b40123          	sb	a1,-126(s0)
    80004b00:	0047d593          	srli	a1,a5,0x4
    80004b04:	28f67e63          	bgeu	a2,a5,80004da0 <__printf+0x608>
    80004b08:	00f6f693          	andi	a3,a3,15
    80004b0c:	00dd86b3          	add	a3,s11,a3
    80004b10:	0006c503          	lbu	a0,0(a3)
    80004b14:	0087d813          	srli	a6,a5,0x8
    80004b18:	0087d69b          	srliw	a3,a5,0x8
    80004b1c:	f8a401a3          	sb	a0,-125(s0)
    80004b20:	28b67663          	bgeu	a2,a1,80004dac <__printf+0x614>
    80004b24:	00f6f693          	andi	a3,a3,15
    80004b28:	00dd86b3          	add	a3,s11,a3
    80004b2c:	0006c583          	lbu	a1,0(a3)
    80004b30:	00c7d513          	srli	a0,a5,0xc
    80004b34:	00c7d69b          	srliw	a3,a5,0xc
    80004b38:	f8b40223          	sb	a1,-124(s0)
    80004b3c:	29067a63          	bgeu	a2,a6,80004dd0 <__printf+0x638>
    80004b40:	00f6f693          	andi	a3,a3,15
    80004b44:	00dd86b3          	add	a3,s11,a3
    80004b48:	0006c583          	lbu	a1,0(a3)
    80004b4c:	0107d813          	srli	a6,a5,0x10
    80004b50:	0107d69b          	srliw	a3,a5,0x10
    80004b54:	f8b402a3          	sb	a1,-123(s0)
    80004b58:	28a67263          	bgeu	a2,a0,80004ddc <__printf+0x644>
    80004b5c:	00f6f693          	andi	a3,a3,15
    80004b60:	00dd86b3          	add	a3,s11,a3
    80004b64:	0006c683          	lbu	a3,0(a3)
    80004b68:	0147d79b          	srliw	a5,a5,0x14
    80004b6c:	f8d40323          	sb	a3,-122(s0)
    80004b70:	21067663          	bgeu	a2,a6,80004d7c <__printf+0x5e4>
    80004b74:	02079793          	slli	a5,a5,0x20
    80004b78:	0207d793          	srli	a5,a5,0x20
    80004b7c:	00fd8db3          	add	s11,s11,a5
    80004b80:	000dc683          	lbu	a3,0(s11)
    80004b84:	00800793          	li	a5,8
    80004b88:	00700c93          	li	s9,7
    80004b8c:	f8d403a3          	sb	a3,-121(s0)
    80004b90:	00075c63          	bgez	a4,80004ba8 <__printf+0x410>
    80004b94:	f9040713          	addi	a4,s0,-112
    80004b98:	00f70733          	add	a4,a4,a5
    80004b9c:	02d00693          	li	a3,45
    80004ba0:	fed70823          	sb	a3,-16(a4)
    80004ba4:	00078c93          	mv	s9,a5
    80004ba8:	f8040793          	addi	a5,s0,-128
    80004bac:	01978cb3          	add	s9,a5,s9
    80004bb0:	f7f40d13          	addi	s10,s0,-129
    80004bb4:	000cc503          	lbu	a0,0(s9)
    80004bb8:	fffc8c93          	addi	s9,s9,-1
    80004bbc:	00000097          	auipc	ra,0x0
    80004bc0:	9f8080e7          	jalr	-1544(ra) # 800045b4 <consputc>
    80004bc4:	ff9d18e3          	bne	s10,s9,80004bb4 <__printf+0x41c>
    80004bc8:	0100006f          	j	80004bd8 <__printf+0x440>
    80004bcc:	00000097          	auipc	ra,0x0
    80004bd0:	9e8080e7          	jalr	-1560(ra) # 800045b4 <consputc>
    80004bd4:	000c8493          	mv	s1,s9
    80004bd8:	00094503          	lbu	a0,0(s2)
    80004bdc:	c60510e3          	bnez	a0,8000483c <__printf+0xa4>
    80004be0:	e40c0ee3          	beqz	s8,80004a3c <__printf+0x2a4>
    80004be4:	00004517          	auipc	a0,0x4
    80004be8:	a3c50513          	addi	a0,a0,-1476 # 80008620 <pr>
    80004bec:	00001097          	auipc	ra,0x1
    80004bf0:	94c080e7          	jalr	-1716(ra) # 80005538 <release>
    80004bf4:	e49ff06f          	j	80004a3c <__printf+0x2a4>
    80004bf8:	f7843783          	ld	a5,-136(s0)
    80004bfc:	03000513          	li	a0,48
    80004c00:	01000d13          	li	s10,16
    80004c04:	00878713          	addi	a4,a5,8
    80004c08:	0007bc83          	ld	s9,0(a5)
    80004c0c:	f6e43c23          	sd	a4,-136(s0)
    80004c10:	00000097          	auipc	ra,0x0
    80004c14:	9a4080e7          	jalr	-1628(ra) # 800045b4 <consputc>
    80004c18:	07800513          	li	a0,120
    80004c1c:	00000097          	auipc	ra,0x0
    80004c20:	998080e7          	jalr	-1640(ra) # 800045b4 <consputc>
    80004c24:	00001d97          	auipc	s11,0x1
    80004c28:	734d8d93          	addi	s11,s11,1844 # 80006358 <digits>
    80004c2c:	03ccd793          	srli	a5,s9,0x3c
    80004c30:	00fd87b3          	add	a5,s11,a5
    80004c34:	0007c503          	lbu	a0,0(a5)
    80004c38:	fffd0d1b          	addiw	s10,s10,-1
    80004c3c:	004c9c93          	slli	s9,s9,0x4
    80004c40:	00000097          	auipc	ra,0x0
    80004c44:	974080e7          	jalr	-1676(ra) # 800045b4 <consputc>
    80004c48:	fe0d12e3          	bnez	s10,80004c2c <__printf+0x494>
    80004c4c:	f8dff06f          	j	80004bd8 <__printf+0x440>
    80004c50:	f7843783          	ld	a5,-136(s0)
    80004c54:	0007bc83          	ld	s9,0(a5)
    80004c58:	00878793          	addi	a5,a5,8
    80004c5c:	f6f43c23          	sd	a5,-136(s0)
    80004c60:	000c9a63          	bnez	s9,80004c74 <__printf+0x4dc>
    80004c64:	1080006f          	j	80004d6c <__printf+0x5d4>
    80004c68:	001c8c93          	addi	s9,s9,1
    80004c6c:	00000097          	auipc	ra,0x0
    80004c70:	948080e7          	jalr	-1720(ra) # 800045b4 <consputc>
    80004c74:	000cc503          	lbu	a0,0(s9)
    80004c78:	fe0518e3          	bnez	a0,80004c68 <__printf+0x4d0>
    80004c7c:	f5dff06f          	j	80004bd8 <__printf+0x440>
    80004c80:	02500513          	li	a0,37
    80004c84:	00000097          	auipc	ra,0x0
    80004c88:	930080e7          	jalr	-1744(ra) # 800045b4 <consputc>
    80004c8c:	000c8513          	mv	a0,s9
    80004c90:	00000097          	auipc	ra,0x0
    80004c94:	924080e7          	jalr	-1756(ra) # 800045b4 <consputc>
    80004c98:	f41ff06f          	j	80004bd8 <__printf+0x440>
    80004c9c:	02500513          	li	a0,37
    80004ca0:	00000097          	auipc	ra,0x0
    80004ca4:	914080e7          	jalr	-1772(ra) # 800045b4 <consputc>
    80004ca8:	f31ff06f          	j	80004bd8 <__printf+0x440>
    80004cac:	00030513          	mv	a0,t1
    80004cb0:	00000097          	auipc	ra,0x0
    80004cb4:	7bc080e7          	jalr	1980(ra) # 8000546c <acquire>
    80004cb8:	b4dff06f          	j	80004804 <__printf+0x6c>
    80004cbc:	40c0053b          	negw	a0,a2
    80004cc0:	00a00713          	li	a4,10
    80004cc4:	02e576bb          	remuw	a3,a0,a4
    80004cc8:	00001d97          	auipc	s11,0x1
    80004ccc:	690d8d93          	addi	s11,s11,1680 # 80006358 <digits>
    80004cd0:	ff700593          	li	a1,-9
    80004cd4:	02069693          	slli	a3,a3,0x20
    80004cd8:	0206d693          	srli	a3,a3,0x20
    80004cdc:	00dd86b3          	add	a3,s11,a3
    80004ce0:	0006c683          	lbu	a3,0(a3)
    80004ce4:	02e557bb          	divuw	a5,a0,a4
    80004ce8:	f8d40023          	sb	a3,-128(s0)
    80004cec:	10b65e63          	bge	a2,a1,80004e08 <__printf+0x670>
    80004cf0:	06300593          	li	a1,99
    80004cf4:	02e7f6bb          	remuw	a3,a5,a4
    80004cf8:	02069693          	slli	a3,a3,0x20
    80004cfc:	0206d693          	srli	a3,a3,0x20
    80004d00:	00dd86b3          	add	a3,s11,a3
    80004d04:	0006c683          	lbu	a3,0(a3)
    80004d08:	02e7d73b          	divuw	a4,a5,a4
    80004d0c:	00200793          	li	a5,2
    80004d10:	f8d400a3          	sb	a3,-127(s0)
    80004d14:	bca5ece3          	bltu	a1,a0,800048ec <__printf+0x154>
    80004d18:	ce5ff06f          	j	800049fc <__printf+0x264>
    80004d1c:	40e007bb          	negw	a5,a4
    80004d20:	00001d97          	auipc	s11,0x1
    80004d24:	638d8d93          	addi	s11,s11,1592 # 80006358 <digits>
    80004d28:	00f7f693          	andi	a3,a5,15
    80004d2c:	00dd86b3          	add	a3,s11,a3
    80004d30:	0006c583          	lbu	a1,0(a3)
    80004d34:	ff100613          	li	a2,-15
    80004d38:	0047d69b          	srliw	a3,a5,0x4
    80004d3c:	f8b40023          	sb	a1,-128(s0)
    80004d40:	0047d59b          	srliw	a1,a5,0x4
    80004d44:	0ac75e63          	bge	a4,a2,80004e00 <__printf+0x668>
    80004d48:	00f6f693          	andi	a3,a3,15
    80004d4c:	00dd86b3          	add	a3,s11,a3
    80004d50:	0006c603          	lbu	a2,0(a3)
    80004d54:	00f00693          	li	a3,15
    80004d58:	0087d79b          	srliw	a5,a5,0x8
    80004d5c:	f8c400a3          	sb	a2,-127(s0)
    80004d60:	d8b6e4e3          	bltu	a3,a1,80004ae8 <__printf+0x350>
    80004d64:	00200793          	li	a5,2
    80004d68:	e2dff06f          	j	80004b94 <__printf+0x3fc>
    80004d6c:	00001c97          	auipc	s9,0x1
    80004d70:	5ccc8c93          	addi	s9,s9,1484 # 80006338 <CONSOLE_STATUS+0x328>
    80004d74:	02800513          	li	a0,40
    80004d78:	ef1ff06f          	j	80004c68 <__printf+0x4d0>
    80004d7c:	00700793          	li	a5,7
    80004d80:	00600c93          	li	s9,6
    80004d84:	e0dff06f          	j	80004b90 <__printf+0x3f8>
    80004d88:	00700793          	li	a5,7
    80004d8c:	00600c93          	li	s9,6
    80004d90:	c69ff06f          	j	800049f8 <__printf+0x260>
    80004d94:	00300793          	li	a5,3
    80004d98:	00200c93          	li	s9,2
    80004d9c:	c5dff06f          	j	800049f8 <__printf+0x260>
    80004da0:	00300793          	li	a5,3
    80004da4:	00200c93          	li	s9,2
    80004da8:	de9ff06f          	j	80004b90 <__printf+0x3f8>
    80004dac:	00400793          	li	a5,4
    80004db0:	00300c93          	li	s9,3
    80004db4:	dddff06f          	j	80004b90 <__printf+0x3f8>
    80004db8:	00400793          	li	a5,4
    80004dbc:	00300c93          	li	s9,3
    80004dc0:	c39ff06f          	j	800049f8 <__printf+0x260>
    80004dc4:	00500793          	li	a5,5
    80004dc8:	00400c93          	li	s9,4
    80004dcc:	c2dff06f          	j	800049f8 <__printf+0x260>
    80004dd0:	00500793          	li	a5,5
    80004dd4:	00400c93          	li	s9,4
    80004dd8:	db9ff06f          	j	80004b90 <__printf+0x3f8>
    80004ddc:	00600793          	li	a5,6
    80004de0:	00500c93          	li	s9,5
    80004de4:	dadff06f          	j	80004b90 <__printf+0x3f8>
    80004de8:	00600793          	li	a5,6
    80004dec:	00500c93          	li	s9,5
    80004df0:	c09ff06f          	j	800049f8 <__printf+0x260>
    80004df4:	00800793          	li	a5,8
    80004df8:	00700c93          	li	s9,7
    80004dfc:	bfdff06f          	j	800049f8 <__printf+0x260>
    80004e00:	00100793          	li	a5,1
    80004e04:	d91ff06f          	j	80004b94 <__printf+0x3fc>
    80004e08:	00100793          	li	a5,1
    80004e0c:	bf1ff06f          	j	800049fc <__printf+0x264>
    80004e10:	00900793          	li	a5,9
    80004e14:	00800c93          	li	s9,8
    80004e18:	be1ff06f          	j	800049f8 <__printf+0x260>
    80004e1c:	00001517          	auipc	a0,0x1
    80004e20:	52450513          	addi	a0,a0,1316 # 80006340 <CONSOLE_STATUS+0x330>
    80004e24:	00000097          	auipc	ra,0x0
    80004e28:	918080e7          	jalr	-1768(ra) # 8000473c <panic>

0000000080004e2c <printfinit>:
    80004e2c:	fe010113          	addi	sp,sp,-32
    80004e30:	00813823          	sd	s0,16(sp)
    80004e34:	00913423          	sd	s1,8(sp)
    80004e38:	00113c23          	sd	ra,24(sp)
    80004e3c:	02010413          	addi	s0,sp,32
    80004e40:	00003497          	auipc	s1,0x3
    80004e44:	7e048493          	addi	s1,s1,2016 # 80008620 <pr>
    80004e48:	00048513          	mv	a0,s1
    80004e4c:	00001597          	auipc	a1,0x1
    80004e50:	50458593          	addi	a1,a1,1284 # 80006350 <CONSOLE_STATUS+0x340>
    80004e54:	00000097          	auipc	ra,0x0
    80004e58:	5f4080e7          	jalr	1524(ra) # 80005448 <initlock>
    80004e5c:	01813083          	ld	ra,24(sp)
    80004e60:	01013403          	ld	s0,16(sp)
    80004e64:	0004ac23          	sw	zero,24(s1)
    80004e68:	00813483          	ld	s1,8(sp)
    80004e6c:	02010113          	addi	sp,sp,32
    80004e70:	00008067          	ret

0000000080004e74 <uartinit>:
    80004e74:	ff010113          	addi	sp,sp,-16
    80004e78:	00813423          	sd	s0,8(sp)
    80004e7c:	01010413          	addi	s0,sp,16
    80004e80:	100007b7          	lui	a5,0x10000
    80004e84:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004e88:	f8000713          	li	a4,-128
    80004e8c:	00e781a3          	sb	a4,3(a5)
    80004e90:	00300713          	li	a4,3
    80004e94:	00e78023          	sb	a4,0(a5)
    80004e98:	000780a3          	sb	zero,1(a5)
    80004e9c:	00e781a3          	sb	a4,3(a5)
    80004ea0:	00700693          	li	a3,7
    80004ea4:	00d78123          	sb	a3,2(a5)
    80004ea8:	00e780a3          	sb	a4,1(a5)
    80004eac:	00813403          	ld	s0,8(sp)
    80004eb0:	01010113          	addi	sp,sp,16
    80004eb4:	00008067          	ret

0000000080004eb8 <uartputc>:
    80004eb8:	00002797          	auipc	a5,0x2
    80004ebc:	4c87a783          	lw	a5,1224(a5) # 80007380 <panicked>
    80004ec0:	00078463          	beqz	a5,80004ec8 <uartputc+0x10>
    80004ec4:	0000006f          	j	80004ec4 <uartputc+0xc>
    80004ec8:	fd010113          	addi	sp,sp,-48
    80004ecc:	02813023          	sd	s0,32(sp)
    80004ed0:	00913c23          	sd	s1,24(sp)
    80004ed4:	01213823          	sd	s2,16(sp)
    80004ed8:	01313423          	sd	s3,8(sp)
    80004edc:	02113423          	sd	ra,40(sp)
    80004ee0:	03010413          	addi	s0,sp,48
    80004ee4:	00002917          	auipc	s2,0x2
    80004ee8:	4a490913          	addi	s2,s2,1188 # 80007388 <uart_tx_r>
    80004eec:	00093783          	ld	a5,0(s2)
    80004ef0:	00002497          	auipc	s1,0x2
    80004ef4:	4a048493          	addi	s1,s1,1184 # 80007390 <uart_tx_w>
    80004ef8:	0004b703          	ld	a4,0(s1)
    80004efc:	02078693          	addi	a3,a5,32
    80004f00:	00050993          	mv	s3,a0
    80004f04:	02e69c63          	bne	a3,a4,80004f3c <uartputc+0x84>
    80004f08:	00001097          	auipc	ra,0x1
    80004f0c:	834080e7          	jalr	-1996(ra) # 8000573c <push_on>
    80004f10:	00093783          	ld	a5,0(s2)
    80004f14:	0004b703          	ld	a4,0(s1)
    80004f18:	02078793          	addi	a5,a5,32
    80004f1c:	00e79463          	bne	a5,a4,80004f24 <uartputc+0x6c>
    80004f20:	0000006f          	j	80004f20 <uartputc+0x68>
    80004f24:	00001097          	auipc	ra,0x1
    80004f28:	88c080e7          	jalr	-1908(ra) # 800057b0 <pop_on>
    80004f2c:	00093783          	ld	a5,0(s2)
    80004f30:	0004b703          	ld	a4,0(s1)
    80004f34:	02078693          	addi	a3,a5,32
    80004f38:	fce688e3          	beq	a3,a4,80004f08 <uartputc+0x50>
    80004f3c:	01f77693          	andi	a3,a4,31
    80004f40:	00003597          	auipc	a1,0x3
    80004f44:	70058593          	addi	a1,a1,1792 # 80008640 <uart_tx_buf>
    80004f48:	00d586b3          	add	a3,a1,a3
    80004f4c:	00170713          	addi	a4,a4,1
    80004f50:	01368023          	sb	s3,0(a3)
    80004f54:	00e4b023          	sd	a4,0(s1)
    80004f58:	10000637          	lui	a2,0x10000
    80004f5c:	02f71063          	bne	a4,a5,80004f7c <uartputc+0xc4>
    80004f60:	0340006f          	j	80004f94 <uartputc+0xdc>
    80004f64:	00074703          	lbu	a4,0(a4)
    80004f68:	00f93023          	sd	a5,0(s2)
    80004f6c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004f70:	00093783          	ld	a5,0(s2)
    80004f74:	0004b703          	ld	a4,0(s1)
    80004f78:	00f70e63          	beq	a4,a5,80004f94 <uartputc+0xdc>
    80004f7c:	00564683          	lbu	a3,5(a2)
    80004f80:	01f7f713          	andi	a4,a5,31
    80004f84:	00e58733          	add	a4,a1,a4
    80004f88:	0206f693          	andi	a3,a3,32
    80004f8c:	00178793          	addi	a5,a5,1
    80004f90:	fc069ae3          	bnez	a3,80004f64 <uartputc+0xac>
    80004f94:	02813083          	ld	ra,40(sp)
    80004f98:	02013403          	ld	s0,32(sp)
    80004f9c:	01813483          	ld	s1,24(sp)
    80004fa0:	01013903          	ld	s2,16(sp)
    80004fa4:	00813983          	ld	s3,8(sp)
    80004fa8:	03010113          	addi	sp,sp,48
    80004fac:	00008067          	ret

0000000080004fb0 <uartputc_sync>:
    80004fb0:	ff010113          	addi	sp,sp,-16
    80004fb4:	00813423          	sd	s0,8(sp)
    80004fb8:	01010413          	addi	s0,sp,16
    80004fbc:	00002717          	auipc	a4,0x2
    80004fc0:	3c472703          	lw	a4,964(a4) # 80007380 <panicked>
    80004fc4:	02071663          	bnez	a4,80004ff0 <uartputc_sync+0x40>
    80004fc8:	00050793          	mv	a5,a0
    80004fcc:	100006b7          	lui	a3,0x10000
    80004fd0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004fd4:	02077713          	andi	a4,a4,32
    80004fd8:	fe070ce3          	beqz	a4,80004fd0 <uartputc_sync+0x20>
    80004fdc:	0ff7f793          	andi	a5,a5,255
    80004fe0:	00f68023          	sb	a5,0(a3)
    80004fe4:	00813403          	ld	s0,8(sp)
    80004fe8:	01010113          	addi	sp,sp,16
    80004fec:	00008067          	ret
    80004ff0:	0000006f          	j	80004ff0 <uartputc_sync+0x40>

0000000080004ff4 <uartstart>:
    80004ff4:	ff010113          	addi	sp,sp,-16
    80004ff8:	00813423          	sd	s0,8(sp)
    80004ffc:	01010413          	addi	s0,sp,16
    80005000:	00002617          	auipc	a2,0x2
    80005004:	38860613          	addi	a2,a2,904 # 80007388 <uart_tx_r>
    80005008:	00002517          	auipc	a0,0x2
    8000500c:	38850513          	addi	a0,a0,904 # 80007390 <uart_tx_w>
    80005010:	00063783          	ld	a5,0(a2)
    80005014:	00053703          	ld	a4,0(a0)
    80005018:	04f70263          	beq	a4,a5,8000505c <uartstart+0x68>
    8000501c:	100005b7          	lui	a1,0x10000
    80005020:	00003817          	auipc	a6,0x3
    80005024:	62080813          	addi	a6,a6,1568 # 80008640 <uart_tx_buf>
    80005028:	01c0006f          	j	80005044 <uartstart+0x50>
    8000502c:	0006c703          	lbu	a4,0(a3)
    80005030:	00f63023          	sd	a5,0(a2)
    80005034:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005038:	00063783          	ld	a5,0(a2)
    8000503c:	00053703          	ld	a4,0(a0)
    80005040:	00f70e63          	beq	a4,a5,8000505c <uartstart+0x68>
    80005044:	01f7f713          	andi	a4,a5,31
    80005048:	00e806b3          	add	a3,a6,a4
    8000504c:	0055c703          	lbu	a4,5(a1)
    80005050:	00178793          	addi	a5,a5,1
    80005054:	02077713          	andi	a4,a4,32
    80005058:	fc071ae3          	bnez	a4,8000502c <uartstart+0x38>
    8000505c:	00813403          	ld	s0,8(sp)
    80005060:	01010113          	addi	sp,sp,16
    80005064:	00008067          	ret

0000000080005068 <uartgetc>:
    80005068:	ff010113          	addi	sp,sp,-16
    8000506c:	00813423          	sd	s0,8(sp)
    80005070:	01010413          	addi	s0,sp,16
    80005074:	10000737          	lui	a4,0x10000
    80005078:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000507c:	0017f793          	andi	a5,a5,1
    80005080:	00078c63          	beqz	a5,80005098 <uartgetc+0x30>
    80005084:	00074503          	lbu	a0,0(a4)
    80005088:	0ff57513          	andi	a0,a0,255
    8000508c:	00813403          	ld	s0,8(sp)
    80005090:	01010113          	addi	sp,sp,16
    80005094:	00008067          	ret
    80005098:	fff00513          	li	a0,-1
    8000509c:	ff1ff06f          	j	8000508c <uartgetc+0x24>

00000000800050a0 <uartintr>:
    800050a0:	100007b7          	lui	a5,0x10000
    800050a4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800050a8:	0017f793          	andi	a5,a5,1
    800050ac:	0a078463          	beqz	a5,80005154 <uartintr+0xb4>
    800050b0:	fe010113          	addi	sp,sp,-32
    800050b4:	00813823          	sd	s0,16(sp)
    800050b8:	00913423          	sd	s1,8(sp)
    800050bc:	00113c23          	sd	ra,24(sp)
    800050c0:	02010413          	addi	s0,sp,32
    800050c4:	100004b7          	lui	s1,0x10000
    800050c8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800050cc:	0ff57513          	andi	a0,a0,255
    800050d0:	fffff097          	auipc	ra,0xfffff
    800050d4:	534080e7          	jalr	1332(ra) # 80004604 <consoleintr>
    800050d8:	0054c783          	lbu	a5,5(s1)
    800050dc:	0017f793          	andi	a5,a5,1
    800050e0:	fe0794e3          	bnez	a5,800050c8 <uartintr+0x28>
    800050e4:	00002617          	auipc	a2,0x2
    800050e8:	2a460613          	addi	a2,a2,676 # 80007388 <uart_tx_r>
    800050ec:	00002517          	auipc	a0,0x2
    800050f0:	2a450513          	addi	a0,a0,676 # 80007390 <uart_tx_w>
    800050f4:	00063783          	ld	a5,0(a2)
    800050f8:	00053703          	ld	a4,0(a0)
    800050fc:	04f70263          	beq	a4,a5,80005140 <uartintr+0xa0>
    80005100:	100005b7          	lui	a1,0x10000
    80005104:	00003817          	auipc	a6,0x3
    80005108:	53c80813          	addi	a6,a6,1340 # 80008640 <uart_tx_buf>
    8000510c:	01c0006f          	j	80005128 <uartintr+0x88>
    80005110:	0006c703          	lbu	a4,0(a3)
    80005114:	00f63023          	sd	a5,0(a2)
    80005118:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000511c:	00063783          	ld	a5,0(a2)
    80005120:	00053703          	ld	a4,0(a0)
    80005124:	00f70e63          	beq	a4,a5,80005140 <uartintr+0xa0>
    80005128:	01f7f713          	andi	a4,a5,31
    8000512c:	00e806b3          	add	a3,a6,a4
    80005130:	0055c703          	lbu	a4,5(a1)
    80005134:	00178793          	addi	a5,a5,1
    80005138:	02077713          	andi	a4,a4,32
    8000513c:	fc071ae3          	bnez	a4,80005110 <uartintr+0x70>
    80005140:	01813083          	ld	ra,24(sp)
    80005144:	01013403          	ld	s0,16(sp)
    80005148:	00813483          	ld	s1,8(sp)
    8000514c:	02010113          	addi	sp,sp,32
    80005150:	00008067          	ret
    80005154:	00002617          	auipc	a2,0x2
    80005158:	23460613          	addi	a2,a2,564 # 80007388 <uart_tx_r>
    8000515c:	00002517          	auipc	a0,0x2
    80005160:	23450513          	addi	a0,a0,564 # 80007390 <uart_tx_w>
    80005164:	00063783          	ld	a5,0(a2)
    80005168:	00053703          	ld	a4,0(a0)
    8000516c:	04f70263          	beq	a4,a5,800051b0 <uartintr+0x110>
    80005170:	100005b7          	lui	a1,0x10000
    80005174:	00003817          	auipc	a6,0x3
    80005178:	4cc80813          	addi	a6,a6,1228 # 80008640 <uart_tx_buf>
    8000517c:	01c0006f          	j	80005198 <uartintr+0xf8>
    80005180:	0006c703          	lbu	a4,0(a3)
    80005184:	00f63023          	sd	a5,0(a2)
    80005188:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000518c:	00063783          	ld	a5,0(a2)
    80005190:	00053703          	ld	a4,0(a0)
    80005194:	02f70063          	beq	a4,a5,800051b4 <uartintr+0x114>
    80005198:	01f7f713          	andi	a4,a5,31
    8000519c:	00e806b3          	add	a3,a6,a4
    800051a0:	0055c703          	lbu	a4,5(a1)
    800051a4:	00178793          	addi	a5,a5,1
    800051a8:	02077713          	andi	a4,a4,32
    800051ac:	fc071ae3          	bnez	a4,80005180 <uartintr+0xe0>
    800051b0:	00008067          	ret
    800051b4:	00008067          	ret

00000000800051b8 <kinit>:
    800051b8:	fc010113          	addi	sp,sp,-64
    800051bc:	02913423          	sd	s1,40(sp)
    800051c0:	fffff7b7          	lui	a5,0xfffff
    800051c4:	00004497          	auipc	s1,0x4
    800051c8:	49b48493          	addi	s1,s1,1179 # 8000965f <end+0xfff>
    800051cc:	02813823          	sd	s0,48(sp)
    800051d0:	01313c23          	sd	s3,24(sp)
    800051d4:	00f4f4b3          	and	s1,s1,a5
    800051d8:	02113c23          	sd	ra,56(sp)
    800051dc:	03213023          	sd	s2,32(sp)
    800051e0:	01413823          	sd	s4,16(sp)
    800051e4:	01513423          	sd	s5,8(sp)
    800051e8:	04010413          	addi	s0,sp,64
    800051ec:	000017b7          	lui	a5,0x1
    800051f0:	01100993          	li	s3,17
    800051f4:	00f487b3          	add	a5,s1,a5
    800051f8:	01b99993          	slli	s3,s3,0x1b
    800051fc:	06f9e063          	bltu	s3,a5,8000525c <kinit+0xa4>
    80005200:	00003a97          	auipc	s5,0x3
    80005204:	460a8a93          	addi	s5,s5,1120 # 80008660 <end>
    80005208:	0754ec63          	bltu	s1,s5,80005280 <kinit+0xc8>
    8000520c:	0734fa63          	bgeu	s1,s3,80005280 <kinit+0xc8>
    80005210:	00088a37          	lui	s4,0x88
    80005214:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005218:	00002917          	auipc	s2,0x2
    8000521c:	18090913          	addi	s2,s2,384 # 80007398 <kmem>
    80005220:	00ca1a13          	slli	s4,s4,0xc
    80005224:	0140006f          	j	80005238 <kinit+0x80>
    80005228:	000017b7          	lui	a5,0x1
    8000522c:	00f484b3          	add	s1,s1,a5
    80005230:	0554e863          	bltu	s1,s5,80005280 <kinit+0xc8>
    80005234:	0534f663          	bgeu	s1,s3,80005280 <kinit+0xc8>
    80005238:	00001637          	lui	a2,0x1
    8000523c:	00100593          	li	a1,1
    80005240:	00048513          	mv	a0,s1
    80005244:	00000097          	auipc	ra,0x0
    80005248:	5e4080e7          	jalr	1508(ra) # 80005828 <__memset>
    8000524c:	00093783          	ld	a5,0(s2)
    80005250:	00f4b023          	sd	a5,0(s1)
    80005254:	00993023          	sd	s1,0(s2)
    80005258:	fd4498e3          	bne	s1,s4,80005228 <kinit+0x70>
    8000525c:	03813083          	ld	ra,56(sp)
    80005260:	03013403          	ld	s0,48(sp)
    80005264:	02813483          	ld	s1,40(sp)
    80005268:	02013903          	ld	s2,32(sp)
    8000526c:	01813983          	ld	s3,24(sp)
    80005270:	01013a03          	ld	s4,16(sp)
    80005274:	00813a83          	ld	s5,8(sp)
    80005278:	04010113          	addi	sp,sp,64
    8000527c:	00008067          	ret
    80005280:	00001517          	auipc	a0,0x1
    80005284:	0f050513          	addi	a0,a0,240 # 80006370 <digits+0x18>
    80005288:	fffff097          	auipc	ra,0xfffff
    8000528c:	4b4080e7          	jalr	1204(ra) # 8000473c <panic>

0000000080005290 <freerange>:
    80005290:	fc010113          	addi	sp,sp,-64
    80005294:	000017b7          	lui	a5,0x1
    80005298:	02913423          	sd	s1,40(sp)
    8000529c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800052a0:	009504b3          	add	s1,a0,s1
    800052a4:	fffff537          	lui	a0,0xfffff
    800052a8:	02813823          	sd	s0,48(sp)
    800052ac:	02113c23          	sd	ra,56(sp)
    800052b0:	03213023          	sd	s2,32(sp)
    800052b4:	01313c23          	sd	s3,24(sp)
    800052b8:	01413823          	sd	s4,16(sp)
    800052bc:	01513423          	sd	s5,8(sp)
    800052c0:	01613023          	sd	s6,0(sp)
    800052c4:	04010413          	addi	s0,sp,64
    800052c8:	00a4f4b3          	and	s1,s1,a0
    800052cc:	00f487b3          	add	a5,s1,a5
    800052d0:	06f5e463          	bltu	a1,a5,80005338 <freerange+0xa8>
    800052d4:	00003a97          	auipc	s5,0x3
    800052d8:	38ca8a93          	addi	s5,s5,908 # 80008660 <end>
    800052dc:	0954e263          	bltu	s1,s5,80005360 <freerange+0xd0>
    800052e0:	01100993          	li	s3,17
    800052e4:	01b99993          	slli	s3,s3,0x1b
    800052e8:	0734fc63          	bgeu	s1,s3,80005360 <freerange+0xd0>
    800052ec:	00058a13          	mv	s4,a1
    800052f0:	00002917          	auipc	s2,0x2
    800052f4:	0a890913          	addi	s2,s2,168 # 80007398 <kmem>
    800052f8:	00002b37          	lui	s6,0x2
    800052fc:	0140006f          	j	80005310 <freerange+0x80>
    80005300:	000017b7          	lui	a5,0x1
    80005304:	00f484b3          	add	s1,s1,a5
    80005308:	0554ec63          	bltu	s1,s5,80005360 <freerange+0xd0>
    8000530c:	0534fa63          	bgeu	s1,s3,80005360 <freerange+0xd0>
    80005310:	00001637          	lui	a2,0x1
    80005314:	00100593          	li	a1,1
    80005318:	00048513          	mv	a0,s1
    8000531c:	00000097          	auipc	ra,0x0
    80005320:	50c080e7          	jalr	1292(ra) # 80005828 <__memset>
    80005324:	00093703          	ld	a4,0(s2)
    80005328:	016487b3          	add	a5,s1,s6
    8000532c:	00e4b023          	sd	a4,0(s1)
    80005330:	00993023          	sd	s1,0(s2)
    80005334:	fcfa76e3          	bgeu	s4,a5,80005300 <freerange+0x70>
    80005338:	03813083          	ld	ra,56(sp)
    8000533c:	03013403          	ld	s0,48(sp)
    80005340:	02813483          	ld	s1,40(sp)
    80005344:	02013903          	ld	s2,32(sp)
    80005348:	01813983          	ld	s3,24(sp)
    8000534c:	01013a03          	ld	s4,16(sp)
    80005350:	00813a83          	ld	s5,8(sp)
    80005354:	00013b03          	ld	s6,0(sp)
    80005358:	04010113          	addi	sp,sp,64
    8000535c:	00008067          	ret
    80005360:	00001517          	auipc	a0,0x1
    80005364:	01050513          	addi	a0,a0,16 # 80006370 <digits+0x18>
    80005368:	fffff097          	auipc	ra,0xfffff
    8000536c:	3d4080e7          	jalr	980(ra) # 8000473c <panic>

0000000080005370 <kfree>:
    80005370:	fe010113          	addi	sp,sp,-32
    80005374:	00813823          	sd	s0,16(sp)
    80005378:	00113c23          	sd	ra,24(sp)
    8000537c:	00913423          	sd	s1,8(sp)
    80005380:	02010413          	addi	s0,sp,32
    80005384:	03451793          	slli	a5,a0,0x34
    80005388:	04079c63          	bnez	a5,800053e0 <kfree+0x70>
    8000538c:	00003797          	auipc	a5,0x3
    80005390:	2d478793          	addi	a5,a5,724 # 80008660 <end>
    80005394:	00050493          	mv	s1,a0
    80005398:	04f56463          	bltu	a0,a5,800053e0 <kfree+0x70>
    8000539c:	01100793          	li	a5,17
    800053a0:	01b79793          	slli	a5,a5,0x1b
    800053a4:	02f57e63          	bgeu	a0,a5,800053e0 <kfree+0x70>
    800053a8:	00001637          	lui	a2,0x1
    800053ac:	00100593          	li	a1,1
    800053b0:	00000097          	auipc	ra,0x0
    800053b4:	478080e7          	jalr	1144(ra) # 80005828 <__memset>
    800053b8:	00002797          	auipc	a5,0x2
    800053bc:	fe078793          	addi	a5,a5,-32 # 80007398 <kmem>
    800053c0:	0007b703          	ld	a4,0(a5)
    800053c4:	01813083          	ld	ra,24(sp)
    800053c8:	01013403          	ld	s0,16(sp)
    800053cc:	00e4b023          	sd	a4,0(s1)
    800053d0:	0097b023          	sd	s1,0(a5)
    800053d4:	00813483          	ld	s1,8(sp)
    800053d8:	02010113          	addi	sp,sp,32
    800053dc:	00008067          	ret
    800053e0:	00001517          	auipc	a0,0x1
    800053e4:	f9050513          	addi	a0,a0,-112 # 80006370 <digits+0x18>
    800053e8:	fffff097          	auipc	ra,0xfffff
    800053ec:	354080e7          	jalr	852(ra) # 8000473c <panic>

00000000800053f0 <kalloc>:
    800053f0:	fe010113          	addi	sp,sp,-32
    800053f4:	00813823          	sd	s0,16(sp)
    800053f8:	00913423          	sd	s1,8(sp)
    800053fc:	00113c23          	sd	ra,24(sp)
    80005400:	02010413          	addi	s0,sp,32
    80005404:	00002797          	auipc	a5,0x2
    80005408:	f9478793          	addi	a5,a5,-108 # 80007398 <kmem>
    8000540c:	0007b483          	ld	s1,0(a5)
    80005410:	02048063          	beqz	s1,80005430 <kalloc+0x40>
    80005414:	0004b703          	ld	a4,0(s1)
    80005418:	00001637          	lui	a2,0x1
    8000541c:	00500593          	li	a1,5
    80005420:	00048513          	mv	a0,s1
    80005424:	00e7b023          	sd	a4,0(a5)
    80005428:	00000097          	auipc	ra,0x0
    8000542c:	400080e7          	jalr	1024(ra) # 80005828 <__memset>
    80005430:	01813083          	ld	ra,24(sp)
    80005434:	01013403          	ld	s0,16(sp)
    80005438:	00048513          	mv	a0,s1
    8000543c:	00813483          	ld	s1,8(sp)
    80005440:	02010113          	addi	sp,sp,32
    80005444:	00008067          	ret

0000000080005448 <initlock>:
    80005448:	ff010113          	addi	sp,sp,-16
    8000544c:	00813423          	sd	s0,8(sp)
    80005450:	01010413          	addi	s0,sp,16
    80005454:	00813403          	ld	s0,8(sp)
    80005458:	00b53423          	sd	a1,8(a0)
    8000545c:	00052023          	sw	zero,0(a0)
    80005460:	00053823          	sd	zero,16(a0)
    80005464:	01010113          	addi	sp,sp,16
    80005468:	00008067          	ret

000000008000546c <acquire>:
    8000546c:	fe010113          	addi	sp,sp,-32
    80005470:	00813823          	sd	s0,16(sp)
    80005474:	00913423          	sd	s1,8(sp)
    80005478:	00113c23          	sd	ra,24(sp)
    8000547c:	01213023          	sd	s2,0(sp)
    80005480:	02010413          	addi	s0,sp,32
    80005484:	00050493          	mv	s1,a0
    80005488:	10002973          	csrr	s2,sstatus
    8000548c:	100027f3          	csrr	a5,sstatus
    80005490:	ffd7f793          	andi	a5,a5,-3
    80005494:	10079073          	csrw	sstatus,a5
    80005498:	fffff097          	auipc	ra,0xfffff
    8000549c:	8e0080e7          	jalr	-1824(ra) # 80003d78 <mycpu>
    800054a0:	07852783          	lw	a5,120(a0)
    800054a4:	06078e63          	beqz	a5,80005520 <acquire+0xb4>
    800054a8:	fffff097          	auipc	ra,0xfffff
    800054ac:	8d0080e7          	jalr	-1840(ra) # 80003d78 <mycpu>
    800054b0:	07852783          	lw	a5,120(a0)
    800054b4:	0004a703          	lw	a4,0(s1)
    800054b8:	0017879b          	addiw	a5,a5,1
    800054bc:	06f52c23          	sw	a5,120(a0)
    800054c0:	04071063          	bnez	a4,80005500 <acquire+0x94>
    800054c4:	00100713          	li	a4,1
    800054c8:	00070793          	mv	a5,a4
    800054cc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800054d0:	0007879b          	sext.w	a5,a5
    800054d4:	fe079ae3          	bnez	a5,800054c8 <acquire+0x5c>
    800054d8:	0ff0000f          	fence
    800054dc:	fffff097          	auipc	ra,0xfffff
    800054e0:	89c080e7          	jalr	-1892(ra) # 80003d78 <mycpu>
    800054e4:	01813083          	ld	ra,24(sp)
    800054e8:	01013403          	ld	s0,16(sp)
    800054ec:	00a4b823          	sd	a0,16(s1)
    800054f0:	00013903          	ld	s2,0(sp)
    800054f4:	00813483          	ld	s1,8(sp)
    800054f8:	02010113          	addi	sp,sp,32
    800054fc:	00008067          	ret
    80005500:	0104b903          	ld	s2,16(s1)
    80005504:	fffff097          	auipc	ra,0xfffff
    80005508:	874080e7          	jalr	-1932(ra) # 80003d78 <mycpu>
    8000550c:	faa91ce3          	bne	s2,a0,800054c4 <acquire+0x58>
    80005510:	00001517          	auipc	a0,0x1
    80005514:	e6850513          	addi	a0,a0,-408 # 80006378 <digits+0x20>
    80005518:	fffff097          	auipc	ra,0xfffff
    8000551c:	224080e7          	jalr	548(ra) # 8000473c <panic>
    80005520:	00195913          	srli	s2,s2,0x1
    80005524:	fffff097          	auipc	ra,0xfffff
    80005528:	854080e7          	jalr	-1964(ra) # 80003d78 <mycpu>
    8000552c:	00197913          	andi	s2,s2,1
    80005530:	07252e23          	sw	s2,124(a0)
    80005534:	f75ff06f          	j	800054a8 <acquire+0x3c>

0000000080005538 <release>:
    80005538:	fe010113          	addi	sp,sp,-32
    8000553c:	00813823          	sd	s0,16(sp)
    80005540:	00113c23          	sd	ra,24(sp)
    80005544:	00913423          	sd	s1,8(sp)
    80005548:	01213023          	sd	s2,0(sp)
    8000554c:	02010413          	addi	s0,sp,32
    80005550:	00052783          	lw	a5,0(a0)
    80005554:	00079a63          	bnez	a5,80005568 <release+0x30>
    80005558:	00001517          	auipc	a0,0x1
    8000555c:	e2850513          	addi	a0,a0,-472 # 80006380 <digits+0x28>
    80005560:	fffff097          	auipc	ra,0xfffff
    80005564:	1dc080e7          	jalr	476(ra) # 8000473c <panic>
    80005568:	01053903          	ld	s2,16(a0)
    8000556c:	00050493          	mv	s1,a0
    80005570:	fffff097          	auipc	ra,0xfffff
    80005574:	808080e7          	jalr	-2040(ra) # 80003d78 <mycpu>
    80005578:	fea910e3          	bne	s2,a0,80005558 <release+0x20>
    8000557c:	0004b823          	sd	zero,16(s1)
    80005580:	0ff0000f          	fence
    80005584:	0f50000f          	fence	iorw,ow
    80005588:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000558c:	ffffe097          	auipc	ra,0xffffe
    80005590:	7ec080e7          	jalr	2028(ra) # 80003d78 <mycpu>
    80005594:	100027f3          	csrr	a5,sstatus
    80005598:	0027f793          	andi	a5,a5,2
    8000559c:	04079a63          	bnez	a5,800055f0 <release+0xb8>
    800055a0:	07852783          	lw	a5,120(a0)
    800055a4:	02f05e63          	blez	a5,800055e0 <release+0xa8>
    800055a8:	fff7871b          	addiw	a4,a5,-1
    800055ac:	06e52c23          	sw	a4,120(a0)
    800055b0:	00071c63          	bnez	a4,800055c8 <release+0x90>
    800055b4:	07c52783          	lw	a5,124(a0)
    800055b8:	00078863          	beqz	a5,800055c8 <release+0x90>
    800055bc:	100027f3          	csrr	a5,sstatus
    800055c0:	0027e793          	ori	a5,a5,2
    800055c4:	10079073          	csrw	sstatus,a5
    800055c8:	01813083          	ld	ra,24(sp)
    800055cc:	01013403          	ld	s0,16(sp)
    800055d0:	00813483          	ld	s1,8(sp)
    800055d4:	00013903          	ld	s2,0(sp)
    800055d8:	02010113          	addi	sp,sp,32
    800055dc:	00008067          	ret
    800055e0:	00001517          	auipc	a0,0x1
    800055e4:	dc050513          	addi	a0,a0,-576 # 800063a0 <digits+0x48>
    800055e8:	fffff097          	auipc	ra,0xfffff
    800055ec:	154080e7          	jalr	340(ra) # 8000473c <panic>
    800055f0:	00001517          	auipc	a0,0x1
    800055f4:	d9850513          	addi	a0,a0,-616 # 80006388 <digits+0x30>
    800055f8:	fffff097          	auipc	ra,0xfffff
    800055fc:	144080e7          	jalr	324(ra) # 8000473c <panic>

0000000080005600 <holding>:
    80005600:	00052783          	lw	a5,0(a0)
    80005604:	00079663          	bnez	a5,80005610 <holding+0x10>
    80005608:	00000513          	li	a0,0
    8000560c:	00008067          	ret
    80005610:	fe010113          	addi	sp,sp,-32
    80005614:	00813823          	sd	s0,16(sp)
    80005618:	00913423          	sd	s1,8(sp)
    8000561c:	00113c23          	sd	ra,24(sp)
    80005620:	02010413          	addi	s0,sp,32
    80005624:	01053483          	ld	s1,16(a0)
    80005628:	ffffe097          	auipc	ra,0xffffe
    8000562c:	750080e7          	jalr	1872(ra) # 80003d78 <mycpu>
    80005630:	01813083          	ld	ra,24(sp)
    80005634:	01013403          	ld	s0,16(sp)
    80005638:	40a48533          	sub	a0,s1,a0
    8000563c:	00153513          	seqz	a0,a0
    80005640:	00813483          	ld	s1,8(sp)
    80005644:	02010113          	addi	sp,sp,32
    80005648:	00008067          	ret

000000008000564c <push_off>:
    8000564c:	fe010113          	addi	sp,sp,-32
    80005650:	00813823          	sd	s0,16(sp)
    80005654:	00113c23          	sd	ra,24(sp)
    80005658:	00913423          	sd	s1,8(sp)
    8000565c:	02010413          	addi	s0,sp,32
    80005660:	100024f3          	csrr	s1,sstatus
    80005664:	100027f3          	csrr	a5,sstatus
    80005668:	ffd7f793          	andi	a5,a5,-3
    8000566c:	10079073          	csrw	sstatus,a5
    80005670:	ffffe097          	auipc	ra,0xffffe
    80005674:	708080e7          	jalr	1800(ra) # 80003d78 <mycpu>
    80005678:	07852783          	lw	a5,120(a0)
    8000567c:	02078663          	beqz	a5,800056a8 <push_off+0x5c>
    80005680:	ffffe097          	auipc	ra,0xffffe
    80005684:	6f8080e7          	jalr	1784(ra) # 80003d78 <mycpu>
    80005688:	07852783          	lw	a5,120(a0)
    8000568c:	01813083          	ld	ra,24(sp)
    80005690:	01013403          	ld	s0,16(sp)
    80005694:	0017879b          	addiw	a5,a5,1
    80005698:	06f52c23          	sw	a5,120(a0)
    8000569c:	00813483          	ld	s1,8(sp)
    800056a0:	02010113          	addi	sp,sp,32
    800056a4:	00008067          	ret
    800056a8:	0014d493          	srli	s1,s1,0x1
    800056ac:	ffffe097          	auipc	ra,0xffffe
    800056b0:	6cc080e7          	jalr	1740(ra) # 80003d78 <mycpu>
    800056b4:	0014f493          	andi	s1,s1,1
    800056b8:	06952e23          	sw	s1,124(a0)
    800056bc:	fc5ff06f          	j	80005680 <push_off+0x34>

00000000800056c0 <pop_off>:
    800056c0:	ff010113          	addi	sp,sp,-16
    800056c4:	00813023          	sd	s0,0(sp)
    800056c8:	00113423          	sd	ra,8(sp)
    800056cc:	01010413          	addi	s0,sp,16
    800056d0:	ffffe097          	auipc	ra,0xffffe
    800056d4:	6a8080e7          	jalr	1704(ra) # 80003d78 <mycpu>
    800056d8:	100027f3          	csrr	a5,sstatus
    800056dc:	0027f793          	andi	a5,a5,2
    800056e0:	04079663          	bnez	a5,8000572c <pop_off+0x6c>
    800056e4:	07852783          	lw	a5,120(a0)
    800056e8:	02f05a63          	blez	a5,8000571c <pop_off+0x5c>
    800056ec:	fff7871b          	addiw	a4,a5,-1
    800056f0:	06e52c23          	sw	a4,120(a0)
    800056f4:	00071c63          	bnez	a4,8000570c <pop_off+0x4c>
    800056f8:	07c52783          	lw	a5,124(a0)
    800056fc:	00078863          	beqz	a5,8000570c <pop_off+0x4c>
    80005700:	100027f3          	csrr	a5,sstatus
    80005704:	0027e793          	ori	a5,a5,2
    80005708:	10079073          	csrw	sstatus,a5
    8000570c:	00813083          	ld	ra,8(sp)
    80005710:	00013403          	ld	s0,0(sp)
    80005714:	01010113          	addi	sp,sp,16
    80005718:	00008067          	ret
    8000571c:	00001517          	auipc	a0,0x1
    80005720:	c8450513          	addi	a0,a0,-892 # 800063a0 <digits+0x48>
    80005724:	fffff097          	auipc	ra,0xfffff
    80005728:	018080e7          	jalr	24(ra) # 8000473c <panic>
    8000572c:	00001517          	auipc	a0,0x1
    80005730:	c5c50513          	addi	a0,a0,-932 # 80006388 <digits+0x30>
    80005734:	fffff097          	auipc	ra,0xfffff
    80005738:	008080e7          	jalr	8(ra) # 8000473c <panic>

000000008000573c <push_on>:
    8000573c:	fe010113          	addi	sp,sp,-32
    80005740:	00813823          	sd	s0,16(sp)
    80005744:	00113c23          	sd	ra,24(sp)
    80005748:	00913423          	sd	s1,8(sp)
    8000574c:	02010413          	addi	s0,sp,32
    80005750:	100024f3          	csrr	s1,sstatus
    80005754:	100027f3          	csrr	a5,sstatus
    80005758:	0027e793          	ori	a5,a5,2
    8000575c:	10079073          	csrw	sstatus,a5
    80005760:	ffffe097          	auipc	ra,0xffffe
    80005764:	618080e7          	jalr	1560(ra) # 80003d78 <mycpu>
    80005768:	07852783          	lw	a5,120(a0)
    8000576c:	02078663          	beqz	a5,80005798 <push_on+0x5c>
    80005770:	ffffe097          	auipc	ra,0xffffe
    80005774:	608080e7          	jalr	1544(ra) # 80003d78 <mycpu>
    80005778:	07852783          	lw	a5,120(a0)
    8000577c:	01813083          	ld	ra,24(sp)
    80005780:	01013403          	ld	s0,16(sp)
    80005784:	0017879b          	addiw	a5,a5,1
    80005788:	06f52c23          	sw	a5,120(a0)
    8000578c:	00813483          	ld	s1,8(sp)
    80005790:	02010113          	addi	sp,sp,32
    80005794:	00008067          	ret
    80005798:	0014d493          	srli	s1,s1,0x1
    8000579c:	ffffe097          	auipc	ra,0xffffe
    800057a0:	5dc080e7          	jalr	1500(ra) # 80003d78 <mycpu>
    800057a4:	0014f493          	andi	s1,s1,1
    800057a8:	06952e23          	sw	s1,124(a0)
    800057ac:	fc5ff06f          	j	80005770 <push_on+0x34>

00000000800057b0 <pop_on>:
    800057b0:	ff010113          	addi	sp,sp,-16
    800057b4:	00813023          	sd	s0,0(sp)
    800057b8:	00113423          	sd	ra,8(sp)
    800057bc:	01010413          	addi	s0,sp,16
    800057c0:	ffffe097          	auipc	ra,0xffffe
    800057c4:	5b8080e7          	jalr	1464(ra) # 80003d78 <mycpu>
    800057c8:	100027f3          	csrr	a5,sstatus
    800057cc:	0027f793          	andi	a5,a5,2
    800057d0:	04078463          	beqz	a5,80005818 <pop_on+0x68>
    800057d4:	07852783          	lw	a5,120(a0)
    800057d8:	02f05863          	blez	a5,80005808 <pop_on+0x58>
    800057dc:	fff7879b          	addiw	a5,a5,-1
    800057e0:	06f52c23          	sw	a5,120(a0)
    800057e4:	07853783          	ld	a5,120(a0)
    800057e8:	00079863          	bnez	a5,800057f8 <pop_on+0x48>
    800057ec:	100027f3          	csrr	a5,sstatus
    800057f0:	ffd7f793          	andi	a5,a5,-3
    800057f4:	10079073          	csrw	sstatus,a5
    800057f8:	00813083          	ld	ra,8(sp)
    800057fc:	00013403          	ld	s0,0(sp)
    80005800:	01010113          	addi	sp,sp,16
    80005804:	00008067          	ret
    80005808:	00001517          	auipc	a0,0x1
    8000580c:	bc050513          	addi	a0,a0,-1088 # 800063c8 <digits+0x70>
    80005810:	fffff097          	auipc	ra,0xfffff
    80005814:	f2c080e7          	jalr	-212(ra) # 8000473c <panic>
    80005818:	00001517          	auipc	a0,0x1
    8000581c:	b9050513          	addi	a0,a0,-1136 # 800063a8 <digits+0x50>
    80005820:	fffff097          	auipc	ra,0xfffff
    80005824:	f1c080e7          	jalr	-228(ra) # 8000473c <panic>

0000000080005828 <__memset>:
    80005828:	ff010113          	addi	sp,sp,-16
    8000582c:	00813423          	sd	s0,8(sp)
    80005830:	01010413          	addi	s0,sp,16
    80005834:	1a060e63          	beqz	a2,800059f0 <__memset+0x1c8>
    80005838:	40a007b3          	neg	a5,a0
    8000583c:	0077f793          	andi	a5,a5,7
    80005840:	00778693          	addi	a3,a5,7
    80005844:	00b00813          	li	a6,11
    80005848:	0ff5f593          	andi	a1,a1,255
    8000584c:	fff6071b          	addiw	a4,a2,-1
    80005850:	1b06e663          	bltu	a3,a6,800059fc <__memset+0x1d4>
    80005854:	1cd76463          	bltu	a4,a3,80005a1c <__memset+0x1f4>
    80005858:	1a078e63          	beqz	a5,80005a14 <__memset+0x1ec>
    8000585c:	00b50023          	sb	a1,0(a0)
    80005860:	00100713          	li	a4,1
    80005864:	1ae78463          	beq	a5,a4,80005a0c <__memset+0x1e4>
    80005868:	00b500a3          	sb	a1,1(a0)
    8000586c:	00200713          	li	a4,2
    80005870:	1ae78a63          	beq	a5,a4,80005a24 <__memset+0x1fc>
    80005874:	00b50123          	sb	a1,2(a0)
    80005878:	00300713          	li	a4,3
    8000587c:	18e78463          	beq	a5,a4,80005a04 <__memset+0x1dc>
    80005880:	00b501a3          	sb	a1,3(a0)
    80005884:	00400713          	li	a4,4
    80005888:	1ae78263          	beq	a5,a4,80005a2c <__memset+0x204>
    8000588c:	00b50223          	sb	a1,4(a0)
    80005890:	00500713          	li	a4,5
    80005894:	1ae78063          	beq	a5,a4,80005a34 <__memset+0x20c>
    80005898:	00b502a3          	sb	a1,5(a0)
    8000589c:	00700713          	li	a4,7
    800058a0:	18e79e63          	bne	a5,a4,80005a3c <__memset+0x214>
    800058a4:	00b50323          	sb	a1,6(a0)
    800058a8:	00700e93          	li	t4,7
    800058ac:	00859713          	slli	a4,a1,0x8
    800058b0:	00e5e733          	or	a4,a1,a4
    800058b4:	01059e13          	slli	t3,a1,0x10
    800058b8:	01c76e33          	or	t3,a4,t3
    800058bc:	01859313          	slli	t1,a1,0x18
    800058c0:	006e6333          	or	t1,t3,t1
    800058c4:	02059893          	slli	a7,a1,0x20
    800058c8:	40f60e3b          	subw	t3,a2,a5
    800058cc:	011368b3          	or	a7,t1,a7
    800058d0:	02859813          	slli	a6,a1,0x28
    800058d4:	0108e833          	or	a6,a7,a6
    800058d8:	03059693          	slli	a3,a1,0x30
    800058dc:	003e589b          	srliw	a7,t3,0x3
    800058e0:	00d866b3          	or	a3,a6,a3
    800058e4:	03859713          	slli	a4,a1,0x38
    800058e8:	00389813          	slli	a6,a7,0x3
    800058ec:	00f507b3          	add	a5,a0,a5
    800058f0:	00e6e733          	or	a4,a3,a4
    800058f4:	000e089b          	sext.w	a7,t3
    800058f8:	00f806b3          	add	a3,a6,a5
    800058fc:	00e7b023          	sd	a4,0(a5)
    80005900:	00878793          	addi	a5,a5,8
    80005904:	fed79ce3          	bne	a5,a3,800058fc <__memset+0xd4>
    80005908:	ff8e7793          	andi	a5,t3,-8
    8000590c:	0007871b          	sext.w	a4,a5
    80005910:	01d787bb          	addw	a5,a5,t4
    80005914:	0ce88e63          	beq	a7,a4,800059f0 <__memset+0x1c8>
    80005918:	00f50733          	add	a4,a0,a5
    8000591c:	00b70023          	sb	a1,0(a4)
    80005920:	0017871b          	addiw	a4,a5,1
    80005924:	0cc77663          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    80005928:	00e50733          	add	a4,a0,a4
    8000592c:	00b70023          	sb	a1,0(a4)
    80005930:	0027871b          	addiw	a4,a5,2
    80005934:	0ac77e63          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    80005938:	00e50733          	add	a4,a0,a4
    8000593c:	00b70023          	sb	a1,0(a4)
    80005940:	0037871b          	addiw	a4,a5,3
    80005944:	0ac77663          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    80005948:	00e50733          	add	a4,a0,a4
    8000594c:	00b70023          	sb	a1,0(a4)
    80005950:	0047871b          	addiw	a4,a5,4
    80005954:	08c77e63          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    80005958:	00e50733          	add	a4,a0,a4
    8000595c:	00b70023          	sb	a1,0(a4)
    80005960:	0057871b          	addiw	a4,a5,5
    80005964:	08c77663          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    80005968:	00e50733          	add	a4,a0,a4
    8000596c:	00b70023          	sb	a1,0(a4)
    80005970:	0067871b          	addiw	a4,a5,6
    80005974:	06c77e63          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    80005978:	00e50733          	add	a4,a0,a4
    8000597c:	00b70023          	sb	a1,0(a4)
    80005980:	0077871b          	addiw	a4,a5,7
    80005984:	06c77663          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    80005988:	00e50733          	add	a4,a0,a4
    8000598c:	00b70023          	sb	a1,0(a4)
    80005990:	0087871b          	addiw	a4,a5,8
    80005994:	04c77e63          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    80005998:	00e50733          	add	a4,a0,a4
    8000599c:	00b70023          	sb	a1,0(a4)
    800059a0:	0097871b          	addiw	a4,a5,9
    800059a4:	04c77663          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    800059a8:	00e50733          	add	a4,a0,a4
    800059ac:	00b70023          	sb	a1,0(a4)
    800059b0:	00a7871b          	addiw	a4,a5,10
    800059b4:	02c77e63          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    800059b8:	00e50733          	add	a4,a0,a4
    800059bc:	00b70023          	sb	a1,0(a4)
    800059c0:	00b7871b          	addiw	a4,a5,11
    800059c4:	02c77663          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    800059c8:	00e50733          	add	a4,a0,a4
    800059cc:	00b70023          	sb	a1,0(a4)
    800059d0:	00c7871b          	addiw	a4,a5,12
    800059d4:	00c77e63          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    800059d8:	00e50733          	add	a4,a0,a4
    800059dc:	00b70023          	sb	a1,0(a4)
    800059e0:	00d7879b          	addiw	a5,a5,13
    800059e4:	00c7f663          	bgeu	a5,a2,800059f0 <__memset+0x1c8>
    800059e8:	00f507b3          	add	a5,a0,a5
    800059ec:	00b78023          	sb	a1,0(a5)
    800059f0:	00813403          	ld	s0,8(sp)
    800059f4:	01010113          	addi	sp,sp,16
    800059f8:	00008067          	ret
    800059fc:	00b00693          	li	a3,11
    80005a00:	e55ff06f          	j	80005854 <__memset+0x2c>
    80005a04:	00300e93          	li	t4,3
    80005a08:	ea5ff06f          	j	800058ac <__memset+0x84>
    80005a0c:	00100e93          	li	t4,1
    80005a10:	e9dff06f          	j	800058ac <__memset+0x84>
    80005a14:	00000e93          	li	t4,0
    80005a18:	e95ff06f          	j	800058ac <__memset+0x84>
    80005a1c:	00000793          	li	a5,0
    80005a20:	ef9ff06f          	j	80005918 <__memset+0xf0>
    80005a24:	00200e93          	li	t4,2
    80005a28:	e85ff06f          	j	800058ac <__memset+0x84>
    80005a2c:	00400e93          	li	t4,4
    80005a30:	e7dff06f          	j	800058ac <__memset+0x84>
    80005a34:	00500e93          	li	t4,5
    80005a38:	e75ff06f          	j	800058ac <__memset+0x84>
    80005a3c:	00600e93          	li	t4,6
    80005a40:	e6dff06f          	j	800058ac <__memset+0x84>

0000000080005a44 <__memmove>:
    80005a44:	ff010113          	addi	sp,sp,-16
    80005a48:	00813423          	sd	s0,8(sp)
    80005a4c:	01010413          	addi	s0,sp,16
    80005a50:	0e060863          	beqz	a2,80005b40 <__memmove+0xfc>
    80005a54:	fff6069b          	addiw	a3,a2,-1
    80005a58:	0006881b          	sext.w	a6,a3
    80005a5c:	0ea5e863          	bltu	a1,a0,80005b4c <__memmove+0x108>
    80005a60:	00758713          	addi	a4,a1,7
    80005a64:	00a5e7b3          	or	a5,a1,a0
    80005a68:	40a70733          	sub	a4,a4,a0
    80005a6c:	0077f793          	andi	a5,a5,7
    80005a70:	00f73713          	sltiu	a4,a4,15
    80005a74:	00174713          	xori	a4,a4,1
    80005a78:	0017b793          	seqz	a5,a5
    80005a7c:	00e7f7b3          	and	a5,a5,a4
    80005a80:	10078863          	beqz	a5,80005b90 <__memmove+0x14c>
    80005a84:	00900793          	li	a5,9
    80005a88:	1107f463          	bgeu	a5,a6,80005b90 <__memmove+0x14c>
    80005a8c:	0036581b          	srliw	a6,a2,0x3
    80005a90:	fff8081b          	addiw	a6,a6,-1
    80005a94:	02081813          	slli	a6,a6,0x20
    80005a98:	01d85893          	srli	a7,a6,0x1d
    80005a9c:	00858813          	addi	a6,a1,8
    80005aa0:	00058793          	mv	a5,a1
    80005aa4:	00050713          	mv	a4,a0
    80005aa8:	01088833          	add	a6,a7,a6
    80005aac:	0007b883          	ld	a7,0(a5)
    80005ab0:	00878793          	addi	a5,a5,8
    80005ab4:	00870713          	addi	a4,a4,8
    80005ab8:	ff173c23          	sd	a7,-8(a4)
    80005abc:	ff0798e3          	bne	a5,a6,80005aac <__memmove+0x68>
    80005ac0:	ff867713          	andi	a4,a2,-8
    80005ac4:	02071793          	slli	a5,a4,0x20
    80005ac8:	0207d793          	srli	a5,a5,0x20
    80005acc:	00f585b3          	add	a1,a1,a5
    80005ad0:	40e686bb          	subw	a3,a3,a4
    80005ad4:	00f507b3          	add	a5,a0,a5
    80005ad8:	06e60463          	beq	a2,a4,80005b40 <__memmove+0xfc>
    80005adc:	0005c703          	lbu	a4,0(a1)
    80005ae0:	00e78023          	sb	a4,0(a5)
    80005ae4:	04068e63          	beqz	a3,80005b40 <__memmove+0xfc>
    80005ae8:	0015c603          	lbu	a2,1(a1)
    80005aec:	00100713          	li	a4,1
    80005af0:	00c780a3          	sb	a2,1(a5)
    80005af4:	04e68663          	beq	a3,a4,80005b40 <__memmove+0xfc>
    80005af8:	0025c603          	lbu	a2,2(a1)
    80005afc:	00200713          	li	a4,2
    80005b00:	00c78123          	sb	a2,2(a5)
    80005b04:	02e68e63          	beq	a3,a4,80005b40 <__memmove+0xfc>
    80005b08:	0035c603          	lbu	a2,3(a1)
    80005b0c:	00300713          	li	a4,3
    80005b10:	00c781a3          	sb	a2,3(a5)
    80005b14:	02e68663          	beq	a3,a4,80005b40 <__memmove+0xfc>
    80005b18:	0045c603          	lbu	a2,4(a1)
    80005b1c:	00400713          	li	a4,4
    80005b20:	00c78223          	sb	a2,4(a5)
    80005b24:	00e68e63          	beq	a3,a4,80005b40 <__memmove+0xfc>
    80005b28:	0055c603          	lbu	a2,5(a1)
    80005b2c:	00500713          	li	a4,5
    80005b30:	00c782a3          	sb	a2,5(a5)
    80005b34:	00e68663          	beq	a3,a4,80005b40 <__memmove+0xfc>
    80005b38:	0065c703          	lbu	a4,6(a1)
    80005b3c:	00e78323          	sb	a4,6(a5)
    80005b40:	00813403          	ld	s0,8(sp)
    80005b44:	01010113          	addi	sp,sp,16
    80005b48:	00008067          	ret
    80005b4c:	02061713          	slli	a4,a2,0x20
    80005b50:	02075713          	srli	a4,a4,0x20
    80005b54:	00e587b3          	add	a5,a1,a4
    80005b58:	f0f574e3          	bgeu	a0,a5,80005a60 <__memmove+0x1c>
    80005b5c:	02069613          	slli	a2,a3,0x20
    80005b60:	02065613          	srli	a2,a2,0x20
    80005b64:	fff64613          	not	a2,a2
    80005b68:	00e50733          	add	a4,a0,a4
    80005b6c:	00c78633          	add	a2,a5,a2
    80005b70:	fff7c683          	lbu	a3,-1(a5)
    80005b74:	fff78793          	addi	a5,a5,-1
    80005b78:	fff70713          	addi	a4,a4,-1
    80005b7c:	00d70023          	sb	a3,0(a4)
    80005b80:	fec798e3          	bne	a5,a2,80005b70 <__memmove+0x12c>
    80005b84:	00813403          	ld	s0,8(sp)
    80005b88:	01010113          	addi	sp,sp,16
    80005b8c:	00008067          	ret
    80005b90:	02069713          	slli	a4,a3,0x20
    80005b94:	02075713          	srli	a4,a4,0x20
    80005b98:	00170713          	addi	a4,a4,1
    80005b9c:	00e50733          	add	a4,a0,a4
    80005ba0:	00050793          	mv	a5,a0
    80005ba4:	0005c683          	lbu	a3,0(a1)
    80005ba8:	00178793          	addi	a5,a5,1
    80005bac:	00158593          	addi	a1,a1,1
    80005bb0:	fed78fa3          	sb	a3,-1(a5)
    80005bb4:	fee798e3          	bne	a5,a4,80005ba4 <__memmove+0x160>
    80005bb8:	f89ff06f          	j	80005b40 <__memmove+0xfc>

0000000080005bbc <__putc>:
    80005bbc:	fe010113          	addi	sp,sp,-32
    80005bc0:	00813823          	sd	s0,16(sp)
    80005bc4:	00113c23          	sd	ra,24(sp)
    80005bc8:	02010413          	addi	s0,sp,32
    80005bcc:	00050793          	mv	a5,a0
    80005bd0:	fef40593          	addi	a1,s0,-17
    80005bd4:	00100613          	li	a2,1
    80005bd8:	00000513          	li	a0,0
    80005bdc:	fef407a3          	sb	a5,-17(s0)
    80005be0:	fffff097          	auipc	ra,0xfffff
    80005be4:	b3c080e7          	jalr	-1220(ra) # 8000471c <console_write>
    80005be8:	01813083          	ld	ra,24(sp)
    80005bec:	01013403          	ld	s0,16(sp)
    80005bf0:	02010113          	addi	sp,sp,32
    80005bf4:	00008067          	ret

0000000080005bf8 <__getc>:
    80005bf8:	fe010113          	addi	sp,sp,-32
    80005bfc:	00813823          	sd	s0,16(sp)
    80005c00:	00113c23          	sd	ra,24(sp)
    80005c04:	02010413          	addi	s0,sp,32
    80005c08:	fe840593          	addi	a1,s0,-24
    80005c0c:	00100613          	li	a2,1
    80005c10:	00000513          	li	a0,0
    80005c14:	fffff097          	auipc	ra,0xfffff
    80005c18:	ae8080e7          	jalr	-1304(ra) # 800046fc <console_read>
    80005c1c:	fe844503          	lbu	a0,-24(s0)
    80005c20:	01813083          	ld	ra,24(sp)
    80005c24:	01013403          	ld	s0,16(sp)
    80005c28:	02010113          	addi	sp,sp,32
    80005c2c:	00008067          	ret

0000000080005c30 <console_handler>:
    80005c30:	fe010113          	addi	sp,sp,-32
    80005c34:	00813823          	sd	s0,16(sp)
    80005c38:	00113c23          	sd	ra,24(sp)
    80005c3c:	00913423          	sd	s1,8(sp)
    80005c40:	02010413          	addi	s0,sp,32
    80005c44:	14202773          	csrr	a4,scause
    80005c48:	100027f3          	csrr	a5,sstatus
    80005c4c:	0027f793          	andi	a5,a5,2
    80005c50:	06079e63          	bnez	a5,80005ccc <console_handler+0x9c>
    80005c54:	00074c63          	bltz	a4,80005c6c <console_handler+0x3c>
    80005c58:	01813083          	ld	ra,24(sp)
    80005c5c:	01013403          	ld	s0,16(sp)
    80005c60:	00813483          	ld	s1,8(sp)
    80005c64:	02010113          	addi	sp,sp,32
    80005c68:	00008067          	ret
    80005c6c:	0ff77713          	andi	a4,a4,255
    80005c70:	00900793          	li	a5,9
    80005c74:	fef712e3          	bne	a4,a5,80005c58 <console_handler+0x28>
    80005c78:	ffffe097          	auipc	ra,0xffffe
    80005c7c:	6dc080e7          	jalr	1756(ra) # 80004354 <plic_claim>
    80005c80:	00a00793          	li	a5,10
    80005c84:	00050493          	mv	s1,a0
    80005c88:	02f50c63          	beq	a0,a5,80005cc0 <console_handler+0x90>
    80005c8c:	fc0506e3          	beqz	a0,80005c58 <console_handler+0x28>
    80005c90:	00050593          	mv	a1,a0
    80005c94:	00000517          	auipc	a0,0x0
    80005c98:	63c50513          	addi	a0,a0,1596 # 800062d0 <CONSOLE_STATUS+0x2c0>
    80005c9c:	fffff097          	auipc	ra,0xfffff
    80005ca0:	afc080e7          	jalr	-1284(ra) # 80004798 <__printf>
    80005ca4:	01013403          	ld	s0,16(sp)
    80005ca8:	01813083          	ld	ra,24(sp)
    80005cac:	00048513          	mv	a0,s1
    80005cb0:	00813483          	ld	s1,8(sp)
    80005cb4:	02010113          	addi	sp,sp,32
    80005cb8:	ffffe317          	auipc	t1,0xffffe
    80005cbc:	6d430067          	jr	1748(t1) # 8000438c <plic_complete>
    80005cc0:	fffff097          	auipc	ra,0xfffff
    80005cc4:	3e0080e7          	jalr	992(ra) # 800050a0 <uartintr>
    80005cc8:	fddff06f          	j	80005ca4 <console_handler+0x74>
    80005ccc:	00000517          	auipc	a0,0x0
    80005cd0:	70450513          	addi	a0,a0,1796 # 800063d0 <digits+0x78>
    80005cd4:	fffff097          	auipc	ra,0xfffff
    80005cd8:	a68080e7          	jalr	-1432(ra) # 8000473c <panic>
	...
