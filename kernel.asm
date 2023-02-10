
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	20813103          	ld	sp,520(sp) # 80004208 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	0c0010ef          	jal	ra,800010dc <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <main>:
#include "../h/syscall_c.h"
#include "../lib/console.h"

int main()
{
    80001000:	ff010113          	addi	sp,sp,-16
    80001004:	00113423          	sd	ra,8(sp)
    80001008:	00813023          	sd	s0,0(sp)
    8000100c:	01010413          	addi	s0,sp,16
    // programa, a zatim treba da pokrene nit nad funkcijom userMain().

    // Ako se testira treba da se pozove userMain();

    size_t ss = 202; // Bajta
    mem_alloc_proba(ss);
    80001010:	0ca00513          	li	a0,202
    80001014:	00000097          	auipc	ra,0x0
    80001018:	064080e7          	jalr	100(ra) # 80001078 <mem_alloc_proba>

    //void* b = a + 0x4;
    char  x = 'v';
    __putc(x);
    8000101c:	07600513          	li	a0,118
    80001020:	00002097          	auipc	ra,0x2
    80001024:	17c080e7          	jalr	380(ra) # 8000319c <__putc>
    char new_line = '\n';
    __putc(new_line);
    80001028:	00a00513          	li	a0,10
    8000102c:	00002097          	auipc	ra,0x2
    80001030:	170080e7          	jalr	368(ra) # 8000319c <__putc>

    return 0;
}
    80001034:	00000513          	li	a0,0
    80001038:	00813083          	ld	ra,8(sp)
    8000103c:	00013403          	ld	s0,0(sp)
    80001040:	01010113          	addi	sp,sp,16
    80001044:	00008067          	ret

0000000080001048 <mem_alloc>:
//    return i;
//}

void*
mem_alloc(size_t size)
{
    80001048:	ff010113          	addi	sp,sp,-16
    8000104c:	00813423          	sd	s0,8(sp)
    80001050:	01010413          	addi	s0,sp,16
    size_t blocks = 1;
    80001054:	00100793          	li	a5,1

    // Nalazimo koliko nam blokova treba da 'pokrijemo' size bajtova
    do{
        if (blocks * MEM_BLOCK_SIZE >= size)
    80001058:	00679713          	slli	a4,a5,0x6
    8000105c:	00a77663          	bgeu	a4,a0,80001068 <mem_alloc+0x20>
            break;

        blocks++;
    80001060:	00178793          	addi	a5,a5,1
        if (blocks * MEM_BLOCK_SIZE >= size)
    80001064:	ff5ff06f          	j	80001058 <mem_alloc+0x10>
    } while (1);

    //void* result = (void*) (blocks * MEM_BLOCK_SIZE);

    return NULL;
}
    80001068:	00000513          	li	a0,0
    8000106c:	00813403          	ld	s0,8(sp)
    80001070:	01010113          	addi	sp,sp,16
    80001074:	00008067          	ret

0000000080001078 <mem_alloc_proba>:

void* mem_alloc_proba(size_t size)
{
    80001078:	ff010113          	addi	sp,sp,-16
    8000107c:	00113423          	sd	ra,8(sp)
    80001080:	00813023          	sd	s0,0(sp)
    80001084:	01010413          	addi	s0,sp,16
    size_t blocks = 1;
    80001088:	00100793          	li	a5,1

// Nalazimo koliko nam blokova treba da 'pokrijemo' size bajtova
    do{
        if (blocks * MEM_BLOCK_SIZE >= size)
    8000108c:	00679713          	slli	a4,a5,0x6
    80001090:	00a77663          	bgeu	a4,a0,8000109c <mem_alloc_proba+0x24>
            break;

        blocks++;
    80001094:	00178793          	addi	a5,a5,1
        if (blocks * MEM_BLOCK_SIZE >= size)
    80001098:	ff5ff06f          	j	8000108c <mem_alloc_proba+0x14>
   // KAKO JE OVO Error: offset too large kad bukvalno pre
   // Nego sto se izvrsi instrukcija, adresa iste velicine po pitanju
   // bitova se vec nalazi tu. Znaci koji KURAC!!!!!
   // asm volatile ("ld ra,  0x80001710"); Ilegalna instrukcija - MAJMUNE
   long long int ovo = 0;
   asm volatile ("li ra,  0x80001710");
    8000109c:	000800b7          	lui	ra,0x80
    800010a0:	0010809b          	addiw	ra,ra,1
    800010a4:	00c09093          	slli	ra,ra,0xc
    800010a8:	71008093          	addi	ra,ra,1808 # 80710 <_entry-0x7ff7f8f0>
   asm volatile ("mv %0, ra" : "=r" (ovo));
    800010ac:	00008793          	mv	a5,ra

   long long int rem = ovo;
   ovo++;

   ovo = ovo - rem;
   __putc(ovo);
    800010b0:	00100513          	li	a0,1
    800010b4:	00002097          	auipc	ra,0x2
    800010b8:	0e8080e7          	jalr	232(ra) # 8000319c <__putc>
   __putc('\n');
    800010bc:	00a00513          	li	a0,10
    800010c0:	00002097          	auipc	ra,0x2
    800010c4:	0dc080e7          	jalr	220(ra) # 8000319c <__putc>
        program izvršava u sistemskom režimu i bit SIE u registru sstatus ima vrednost 0,
        vrednost registra sie se ignoriše.
     */

    return NULL;
    800010c8:	00000513          	li	a0,0
    800010cc:	00813083          	ld	ra,8(sp)
    800010d0:	00013403          	ld	s0,0(sp)
    800010d4:	01010113          	addi	sp,sp,16
    800010d8:	00008067          	ret

00000000800010dc <start>:
    800010dc:	ff010113          	addi	sp,sp,-16
    800010e0:	00813423          	sd	s0,8(sp)
    800010e4:	01010413          	addi	s0,sp,16
    800010e8:	300027f3          	csrr	a5,mstatus
    800010ec:	ffffe737          	lui	a4,0xffffe
    800010f0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff935f>
    800010f4:	00e7f7b3          	and	a5,a5,a4
    800010f8:	00001737          	lui	a4,0x1
    800010fc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001100:	00e7e7b3          	or	a5,a5,a4
    80001104:	30079073          	csrw	mstatus,a5
    80001108:	00000797          	auipc	a5,0x0
    8000110c:	16078793          	addi	a5,a5,352 # 80001268 <system_main>
    80001110:	34179073          	csrw	mepc,a5
    80001114:	00000793          	li	a5,0
    80001118:	18079073          	csrw	satp,a5
    8000111c:	000107b7          	lui	a5,0x10
    80001120:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001124:	30279073          	csrw	medeleg,a5
    80001128:	30379073          	csrw	mideleg,a5
    8000112c:	104027f3          	csrr	a5,sie
    80001130:	2227e793          	ori	a5,a5,546
    80001134:	10479073          	csrw	sie,a5
    80001138:	fff00793          	li	a5,-1
    8000113c:	00a7d793          	srli	a5,a5,0xa
    80001140:	3b079073          	csrw	pmpaddr0,a5
    80001144:	00f00793          	li	a5,15
    80001148:	3a079073          	csrw	pmpcfg0,a5
    8000114c:	f14027f3          	csrr	a5,mhartid
    80001150:	0200c737          	lui	a4,0x200c
    80001154:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001158:	0007869b          	sext.w	a3,a5
    8000115c:	00269713          	slli	a4,a3,0x2
    80001160:	000f4637          	lui	a2,0xf4
    80001164:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001168:	00d70733          	add	a4,a4,a3
    8000116c:	0037979b          	slliw	a5,a5,0x3
    80001170:	020046b7          	lui	a3,0x2004
    80001174:	00d787b3          	add	a5,a5,a3
    80001178:	00c585b3          	add	a1,a1,a2
    8000117c:	00371693          	slli	a3,a4,0x3
    80001180:	00003717          	auipc	a4,0x3
    80001184:	0d070713          	addi	a4,a4,208 # 80004250 <timer_scratch>
    80001188:	00b7b023          	sd	a1,0(a5)
    8000118c:	00d70733          	add	a4,a4,a3
    80001190:	00f73c23          	sd	a5,24(a4)
    80001194:	02c73023          	sd	a2,32(a4)
    80001198:	34071073          	csrw	mscratch,a4
    8000119c:	00000797          	auipc	a5,0x0
    800011a0:	6e478793          	addi	a5,a5,1764 # 80001880 <timervec>
    800011a4:	30579073          	csrw	mtvec,a5
    800011a8:	300027f3          	csrr	a5,mstatus
    800011ac:	0087e793          	ori	a5,a5,8
    800011b0:	30079073          	csrw	mstatus,a5
    800011b4:	304027f3          	csrr	a5,mie
    800011b8:	0807e793          	ori	a5,a5,128
    800011bc:	30479073          	csrw	mie,a5
    800011c0:	f14027f3          	csrr	a5,mhartid
    800011c4:	0007879b          	sext.w	a5,a5
    800011c8:	00078213          	mv	tp,a5
    800011cc:	30200073          	mret
    800011d0:	00813403          	ld	s0,8(sp)
    800011d4:	01010113          	addi	sp,sp,16
    800011d8:	00008067          	ret

00000000800011dc <timerinit>:
    800011dc:	ff010113          	addi	sp,sp,-16
    800011e0:	00813423          	sd	s0,8(sp)
    800011e4:	01010413          	addi	s0,sp,16
    800011e8:	f14027f3          	csrr	a5,mhartid
    800011ec:	0200c737          	lui	a4,0x200c
    800011f0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800011f4:	0007869b          	sext.w	a3,a5
    800011f8:	00269713          	slli	a4,a3,0x2
    800011fc:	000f4637          	lui	a2,0xf4
    80001200:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001204:	00d70733          	add	a4,a4,a3
    80001208:	0037979b          	slliw	a5,a5,0x3
    8000120c:	020046b7          	lui	a3,0x2004
    80001210:	00d787b3          	add	a5,a5,a3
    80001214:	00c585b3          	add	a1,a1,a2
    80001218:	00371693          	slli	a3,a4,0x3
    8000121c:	00003717          	auipc	a4,0x3
    80001220:	03470713          	addi	a4,a4,52 # 80004250 <timer_scratch>
    80001224:	00b7b023          	sd	a1,0(a5)
    80001228:	00d70733          	add	a4,a4,a3
    8000122c:	00f73c23          	sd	a5,24(a4)
    80001230:	02c73023          	sd	a2,32(a4)
    80001234:	34071073          	csrw	mscratch,a4
    80001238:	00000797          	auipc	a5,0x0
    8000123c:	64878793          	addi	a5,a5,1608 # 80001880 <timervec>
    80001240:	30579073          	csrw	mtvec,a5
    80001244:	300027f3          	csrr	a5,mstatus
    80001248:	0087e793          	ori	a5,a5,8
    8000124c:	30079073          	csrw	mstatus,a5
    80001250:	304027f3          	csrr	a5,mie
    80001254:	0807e793          	ori	a5,a5,128
    80001258:	30479073          	csrw	mie,a5
    8000125c:	00813403          	ld	s0,8(sp)
    80001260:	01010113          	addi	sp,sp,16
    80001264:	00008067          	ret

0000000080001268 <system_main>:
    80001268:	fe010113          	addi	sp,sp,-32
    8000126c:	00813823          	sd	s0,16(sp)
    80001270:	00913423          	sd	s1,8(sp)
    80001274:	00113c23          	sd	ra,24(sp)
    80001278:	02010413          	addi	s0,sp,32
    8000127c:	00000097          	auipc	ra,0x0
    80001280:	0c4080e7          	jalr	196(ra) # 80001340 <cpuid>
    80001284:	00003497          	auipc	s1,0x3
    80001288:	f9c48493          	addi	s1,s1,-100 # 80004220 <started>
    8000128c:	02050263          	beqz	a0,800012b0 <system_main+0x48>
    80001290:	0004a783          	lw	a5,0(s1)
    80001294:	0007879b          	sext.w	a5,a5
    80001298:	fe078ce3          	beqz	a5,80001290 <system_main+0x28>
    8000129c:	0ff0000f          	fence
    800012a0:	00003517          	auipc	a0,0x3
    800012a4:	d9050513          	addi	a0,a0,-624 # 80004030 <console_handler+0xe20>
    800012a8:	00001097          	auipc	ra,0x1
    800012ac:	a74080e7          	jalr	-1420(ra) # 80001d1c <panic>
    800012b0:	00001097          	auipc	ra,0x1
    800012b4:	9c8080e7          	jalr	-1592(ra) # 80001c78 <consoleinit>
    800012b8:	00001097          	auipc	ra,0x1
    800012bc:	154080e7          	jalr	340(ra) # 8000240c <printfinit>
    800012c0:	00003517          	auipc	a0,0x3
    800012c4:	e5050513          	addi	a0,a0,-432 # 80004110 <console_handler+0xf00>
    800012c8:	00001097          	auipc	ra,0x1
    800012cc:	ab0080e7          	jalr	-1360(ra) # 80001d78 <__printf>
    800012d0:	00003517          	auipc	a0,0x3
    800012d4:	d3050513          	addi	a0,a0,-720 # 80004000 <console_handler+0xdf0>
    800012d8:	00001097          	auipc	ra,0x1
    800012dc:	aa0080e7          	jalr	-1376(ra) # 80001d78 <__printf>
    800012e0:	00003517          	auipc	a0,0x3
    800012e4:	e3050513          	addi	a0,a0,-464 # 80004110 <console_handler+0xf00>
    800012e8:	00001097          	auipc	ra,0x1
    800012ec:	a90080e7          	jalr	-1392(ra) # 80001d78 <__printf>
    800012f0:	00001097          	auipc	ra,0x1
    800012f4:	4a8080e7          	jalr	1192(ra) # 80002798 <kinit>
    800012f8:	00000097          	auipc	ra,0x0
    800012fc:	148080e7          	jalr	328(ra) # 80001440 <trapinit>
    80001300:	00000097          	auipc	ra,0x0
    80001304:	16c080e7          	jalr	364(ra) # 8000146c <trapinithart>
    80001308:	00000097          	auipc	ra,0x0
    8000130c:	5b8080e7          	jalr	1464(ra) # 800018c0 <plicinit>
    80001310:	00000097          	auipc	ra,0x0
    80001314:	5d8080e7          	jalr	1496(ra) # 800018e8 <plicinithart>
    80001318:	00000097          	auipc	ra,0x0
    8000131c:	078080e7          	jalr	120(ra) # 80001390 <userinit>
    80001320:	0ff0000f          	fence
    80001324:	00100793          	li	a5,1
    80001328:	00003517          	auipc	a0,0x3
    8000132c:	cf050513          	addi	a0,a0,-784 # 80004018 <console_handler+0xe08>
    80001330:	00f4a023          	sw	a5,0(s1)
    80001334:	00001097          	auipc	ra,0x1
    80001338:	a44080e7          	jalr	-1468(ra) # 80001d78 <__printf>
    8000133c:	0000006f          	j	8000133c <system_main+0xd4>

0000000080001340 <cpuid>:
    80001340:	ff010113          	addi	sp,sp,-16
    80001344:	00813423          	sd	s0,8(sp)
    80001348:	01010413          	addi	s0,sp,16
    8000134c:	00020513          	mv	a0,tp
    80001350:	00813403          	ld	s0,8(sp)
    80001354:	0005051b          	sext.w	a0,a0
    80001358:	01010113          	addi	sp,sp,16
    8000135c:	00008067          	ret

0000000080001360 <mycpu>:
    80001360:	ff010113          	addi	sp,sp,-16
    80001364:	00813423          	sd	s0,8(sp)
    80001368:	01010413          	addi	s0,sp,16
    8000136c:	00020793          	mv	a5,tp
    80001370:	00813403          	ld	s0,8(sp)
    80001374:	0007879b          	sext.w	a5,a5
    80001378:	00779793          	slli	a5,a5,0x7
    8000137c:	00004517          	auipc	a0,0x4
    80001380:	f0450513          	addi	a0,a0,-252 # 80005280 <cpus>
    80001384:	00f50533          	add	a0,a0,a5
    80001388:	01010113          	addi	sp,sp,16
    8000138c:	00008067          	ret

0000000080001390 <userinit>:
    80001390:	ff010113          	addi	sp,sp,-16
    80001394:	00813423          	sd	s0,8(sp)
    80001398:	01010413          	addi	s0,sp,16
    8000139c:	00813403          	ld	s0,8(sp)
    800013a0:	01010113          	addi	sp,sp,16
    800013a4:	00000317          	auipc	t1,0x0
    800013a8:	c5c30067          	jr	-932(t1) # 80001000 <main>

00000000800013ac <either_copyout>:
    800013ac:	ff010113          	addi	sp,sp,-16
    800013b0:	00813023          	sd	s0,0(sp)
    800013b4:	00113423          	sd	ra,8(sp)
    800013b8:	01010413          	addi	s0,sp,16
    800013bc:	02051663          	bnez	a0,800013e8 <either_copyout+0x3c>
    800013c0:	00058513          	mv	a0,a1
    800013c4:	00060593          	mv	a1,a2
    800013c8:	0006861b          	sext.w	a2,a3
    800013cc:	00002097          	auipc	ra,0x2
    800013d0:	c58080e7          	jalr	-936(ra) # 80003024 <__memmove>
    800013d4:	00813083          	ld	ra,8(sp)
    800013d8:	00013403          	ld	s0,0(sp)
    800013dc:	00000513          	li	a0,0
    800013e0:	01010113          	addi	sp,sp,16
    800013e4:	00008067          	ret
    800013e8:	00003517          	auipc	a0,0x3
    800013ec:	c7050513          	addi	a0,a0,-912 # 80004058 <console_handler+0xe48>
    800013f0:	00001097          	auipc	ra,0x1
    800013f4:	92c080e7          	jalr	-1748(ra) # 80001d1c <panic>

00000000800013f8 <either_copyin>:
    800013f8:	ff010113          	addi	sp,sp,-16
    800013fc:	00813023          	sd	s0,0(sp)
    80001400:	00113423          	sd	ra,8(sp)
    80001404:	01010413          	addi	s0,sp,16
    80001408:	02059463          	bnez	a1,80001430 <either_copyin+0x38>
    8000140c:	00060593          	mv	a1,a2
    80001410:	0006861b          	sext.w	a2,a3
    80001414:	00002097          	auipc	ra,0x2
    80001418:	c10080e7          	jalr	-1008(ra) # 80003024 <__memmove>
    8000141c:	00813083          	ld	ra,8(sp)
    80001420:	00013403          	ld	s0,0(sp)
    80001424:	00000513          	li	a0,0
    80001428:	01010113          	addi	sp,sp,16
    8000142c:	00008067          	ret
    80001430:	00003517          	auipc	a0,0x3
    80001434:	c5050513          	addi	a0,a0,-944 # 80004080 <console_handler+0xe70>
    80001438:	00001097          	auipc	ra,0x1
    8000143c:	8e4080e7          	jalr	-1820(ra) # 80001d1c <panic>

0000000080001440 <trapinit>:
    80001440:	ff010113          	addi	sp,sp,-16
    80001444:	00813423          	sd	s0,8(sp)
    80001448:	01010413          	addi	s0,sp,16
    8000144c:	00813403          	ld	s0,8(sp)
    80001450:	00003597          	auipc	a1,0x3
    80001454:	c5858593          	addi	a1,a1,-936 # 800040a8 <console_handler+0xe98>
    80001458:	00004517          	auipc	a0,0x4
    8000145c:	ea850513          	addi	a0,a0,-344 # 80005300 <tickslock>
    80001460:	01010113          	addi	sp,sp,16
    80001464:	00001317          	auipc	t1,0x1
    80001468:	5c430067          	jr	1476(t1) # 80002a28 <initlock>

000000008000146c <trapinithart>:
    8000146c:	ff010113          	addi	sp,sp,-16
    80001470:	00813423          	sd	s0,8(sp)
    80001474:	01010413          	addi	s0,sp,16
    80001478:	00000797          	auipc	a5,0x0
    8000147c:	2f878793          	addi	a5,a5,760 # 80001770 <kernelvec>
    80001480:	10579073          	csrw	stvec,a5
    80001484:	00813403          	ld	s0,8(sp)
    80001488:	01010113          	addi	sp,sp,16
    8000148c:	00008067          	ret

0000000080001490 <usertrap>:
    80001490:	ff010113          	addi	sp,sp,-16
    80001494:	00813423          	sd	s0,8(sp)
    80001498:	01010413          	addi	s0,sp,16
    8000149c:	00813403          	ld	s0,8(sp)
    800014a0:	01010113          	addi	sp,sp,16
    800014a4:	00008067          	ret

00000000800014a8 <usertrapret>:
    800014a8:	ff010113          	addi	sp,sp,-16
    800014ac:	00813423          	sd	s0,8(sp)
    800014b0:	01010413          	addi	s0,sp,16
    800014b4:	00813403          	ld	s0,8(sp)
    800014b8:	01010113          	addi	sp,sp,16
    800014bc:	00008067          	ret

00000000800014c0 <kerneltrap>:
    800014c0:	fe010113          	addi	sp,sp,-32
    800014c4:	00813823          	sd	s0,16(sp)
    800014c8:	00113c23          	sd	ra,24(sp)
    800014cc:	00913423          	sd	s1,8(sp)
    800014d0:	02010413          	addi	s0,sp,32
    800014d4:	142025f3          	csrr	a1,scause
    800014d8:	100027f3          	csrr	a5,sstatus
    800014dc:	0027f793          	andi	a5,a5,2
    800014e0:	10079c63          	bnez	a5,800015f8 <kerneltrap+0x138>
    800014e4:	142027f3          	csrr	a5,scause
    800014e8:	0207ce63          	bltz	a5,80001524 <kerneltrap+0x64>
    800014ec:	00003517          	auipc	a0,0x3
    800014f0:	c0450513          	addi	a0,a0,-1020 # 800040f0 <console_handler+0xee0>
    800014f4:	00001097          	auipc	ra,0x1
    800014f8:	884080e7          	jalr	-1916(ra) # 80001d78 <__printf>
    800014fc:	141025f3          	csrr	a1,sepc
    80001500:	14302673          	csrr	a2,stval
    80001504:	00003517          	auipc	a0,0x3
    80001508:	bfc50513          	addi	a0,a0,-1028 # 80004100 <console_handler+0xef0>
    8000150c:	00001097          	auipc	ra,0x1
    80001510:	86c080e7          	jalr	-1940(ra) # 80001d78 <__printf>
    80001514:	00003517          	auipc	a0,0x3
    80001518:	c0450513          	addi	a0,a0,-1020 # 80004118 <console_handler+0xf08>
    8000151c:	00001097          	auipc	ra,0x1
    80001520:	800080e7          	jalr	-2048(ra) # 80001d1c <panic>
    80001524:	0ff7f713          	andi	a4,a5,255
    80001528:	00900693          	li	a3,9
    8000152c:	04d70063          	beq	a4,a3,8000156c <kerneltrap+0xac>
    80001530:	fff00713          	li	a4,-1
    80001534:	03f71713          	slli	a4,a4,0x3f
    80001538:	00170713          	addi	a4,a4,1
    8000153c:	fae798e3          	bne	a5,a4,800014ec <kerneltrap+0x2c>
    80001540:	00000097          	auipc	ra,0x0
    80001544:	e00080e7          	jalr	-512(ra) # 80001340 <cpuid>
    80001548:	06050663          	beqz	a0,800015b4 <kerneltrap+0xf4>
    8000154c:	144027f3          	csrr	a5,sip
    80001550:	ffd7f793          	andi	a5,a5,-3
    80001554:	14479073          	csrw	sip,a5
    80001558:	01813083          	ld	ra,24(sp)
    8000155c:	01013403          	ld	s0,16(sp)
    80001560:	00813483          	ld	s1,8(sp)
    80001564:	02010113          	addi	sp,sp,32
    80001568:	00008067          	ret
    8000156c:	00000097          	auipc	ra,0x0
    80001570:	3c8080e7          	jalr	968(ra) # 80001934 <plic_claim>
    80001574:	00a00793          	li	a5,10
    80001578:	00050493          	mv	s1,a0
    8000157c:	06f50863          	beq	a0,a5,800015ec <kerneltrap+0x12c>
    80001580:	fc050ce3          	beqz	a0,80001558 <kerneltrap+0x98>
    80001584:	00050593          	mv	a1,a0
    80001588:	00003517          	auipc	a0,0x3
    8000158c:	b4850513          	addi	a0,a0,-1208 # 800040d0 <console_handler+0xec0>
    80001590:	00000097          	auipc	ra,0x0
    80001594:	7e8080e7          	jalr	2024(ra) # 80001d78 <__printf>
    80001598:	01013403          	ld	s0,16(sp)
    8000159c:	01813083          	ld	ra,24(sp)
    800015a0:	00048513          	mv	a0,s1
    800015a4:	00813483          	ld	s1,8(sp)
    800015a8:	02010113          	addi	sp,sp,32
    800015ac:	00000317          	auipc	t1,0x0
    800015b0:	3c030067          	jr	960(t1) # 8000196c <plic_complete>
    800015b4:	00004517          	auipc	a0,0x4
    800015b8:	d4c50513          	addi	a0,a0,-692 # 80005300 <tickslock>
    800015bc:	00001097          	auipc	ra,0x1
    800015c0:	490080e7          	jalr	1168(ra) # 80002a4c <acquire>
    800015c4:	00003717          	auipc	a4,0x3
    800015c8:	c6070713          	addi	a4,a4,-928 # 80004224 <ticks>
    800015cc:	00072783          	lw	a5,0(a4)
    800015d0:	00004517          	auipc	a0,0x4
    800015d4:	d3050513          	addi	a0,a0,-720 # 80005300 <tickslock>
    800015d8:	0017879b          	addiw	a5,a5,1
    800015dc:	00f72023          	sw	a5,0(a4)
    800015e0:	00001097          	auipc	ra,0x1
    800015e4:	538080e7          	jalr	1336(ra) # 80002b18 <release>
    800015e8:	f65ff06f          	j	8000154c <kerneltrap+0x8c>
    800015ec:	00001097          	auipc	ra,0x1
    800015f0:	094080e7          	jalr	148(ra) # 80002680 <uartintr>
    800015f4:	fa5ff06f          	j	80001598 <kerneltrap+0xd8>
    800015f8:	00003517          	auipc	a0,0x3
    800015fc:	ab850513          	addi	a0,a0,-1352 # 800040b0 <console_handler+0xea0>
    80001600:	00000097          	auipc	ra,0x0
    80001604:	71c080e7          	jalr	1820(ra) # 80001d1c <panic>

0000000080001608 <clockintr>:
    80001608:	fe010113          	addi	sp,sp,-32
    8000160c:	00813823          	sd	s0,16(sp)
    80001610:	00913423          	sd	s1,8(sp)
    80001614:	00113c23          	sd	ra,24(sp)
    80001618:	02010413          	addi	s0,sp,32
    8000161c:	00004497          	auipc	s1,0x4
    80001620:	ce448493          	addi	s1,s1,-796 # 80005300 <tickslock>
    80001624:	00048513          	mv	a0,s1
    80001628:	00001097          	auipc	ra,0x1
    8000162c:	424080e7          	jalr	1060(ra) # 80002a4c <acquire>
    80001630:	00003717          	auipc	a4,0x3
    80001634:	bf470713          	addi	a4,a4,-1036 # 80004224 <ticks>
    80001638:	00072783          	lw	a5,0(a4)
    8000163c:	01013403          	ld	s0,16(sp)
    80001640:	01813083          	ld	ra,24(sp)
    80001644:	00048513          	mv	a0,s1
    80001648:	0017879b          	addiw	a5,a5,1
    8000164c:	00813483          	ld	s1,8(sp)
    80001650:	00f72023          	sw	a5,0(a4)
    80001654:	02010113          	addi	sp,sp,32
    80001658:	00001317          	auipc	t1,0x1
    8000165c:	4c030067          	jr	1216(t1) # 80002b18 <release>

0000000080001660 <devintr>:
    80001660:	142027f3          	csrr	a5,scause
    80001664:	00000513          	li	a0,0
    80001668:	0007c463          	bltz	a5,80001670 <devintr+0x10>
    8000166c:	00008067          	ret
    80001670:	fe010113          	addi	sp,sp,-32
    80001674:	00813823          	sd	s0,16(sp)
    80001678:	00113c23          	sd	ra,24(sp)
    8000167c:	00913423          	sd	s1,8(sp)
    80001680:	02010413          	addi	s0,sp,32
    80001684:	0ff7f713          	andi	a4,a5,255
    80001688:	00900693          	li	a3,9
    8000168c:	04d70c63          	beq	a4,a3,800016e4 <devintr+0x84>
    80001690:	fff00713          	li	a4,-1
    80001694:	03f71713          	slli	a4,a4,0x3f
    80001698:	00170713          	addi	a4,a4,1
    8000169c:	00e78c63          	beq	a5,a4,800016b4 <devintr+0x54>
    800016a0:	01813083          	ld	ra,24(sp)
    800016a4:	01013403          	ld	s0,16(sp)
    800016a8:	00813483          	ld	s1,8(sp)
    800016ac:	02010113          	addi	sp,sp,32
    800016b0:	00008067          	ret
    800016b4:	00000097          	auipc	ra,0x0
    800016b8:	c8c080e7          	jalr	-884(ra) # 80001340 <cpuid>
    800016bc:	06050663          	beqz	a0,80001728 <devintr+0xc8>
    800016c0:	144027f3          	csrr	a5,sip
    800016c4:	ffd7f793          	andi	a5,a5,-3
    800016c8:	14479073          	csrw	sip,a5
    800016cc:	01813083          	ld	ra,24(sp)
    800016d0:	01013403          	ld	s0,16(sp)
    800016d4:	00813483          	ld	s1,8(sp)
    800016d8:	00200513          	li	a0,2
    800016dc:	02010113          	addi	sp,sp,32
    800016e0:	00008067          	ret
    800016e4:	00000097          	auipc	ra,0x0
    800016e8:	250080e7          	jalr	592(ra) # 80001934 <plic_claim>
    800016ec:	00a00793          	li	a5,10
    800016f0:	00050493          	mv	s1,a0
    800016f4:	06f50663          	beq	a0,a5,80001760 <devintr+0x100>
    800016f8:	00100513          	li	a0,1
    800016fc:	fa0482e3          	beqz	s1,800016a0 <devintr+0x40>
    80001700:	00048593          	mv	a1,s1
    80001704:	00003517          	auipc	a0,0x3
    80001708:	9cc50513          	addi	a0,a0,-1588 # 800040d0 <console_handler+0xec0>
    8000170c:	00000097          	auipc	ra,0x0
    80001710:	66c080e7          	jalr	1644(ra) # 80001d78 <__printf>
    80001714:	00048513          	mv	a0,s1
    80001718:	00000097          	auipc	ra,0x0
    8000171c:	254080e7          	jalr	596(ra) # 8000196c <plic_complete>
    80001720:	00100513          	li	a0,1
    80001724:	f7dff06f          	j	800016a0 <devintr+0x40>
    80001728:	00004517          	auipc	a0,0x4
    8000172c:	bd850513          	addi	a0,a0,-1064 # 80005300 <tickslock>
    80001730:	00001097          	auipc	ra,0x1
    80001734:	31c080e7          	jalr	796(ra) # 80002a4c <acquire>
    80001738:	00003717          	auipc	a4,0x3
    8000173c:	aec70713          	addi	a4,a4,-1300 # 80004224 <ticks>
    80001740:	00072783          	lw	a5,0(a4)
    80001744:	00004517          	auipc	a0,0x4
    80001748:	bbc50513          	addi	a0,a0,-1092 # 80005300 <tickslock>
    8000174c:	0017879b          	addiw	a5,a5,1
    80001750:	00f72023          	sw	a5,0(a4)
    80001754:	00001097          	auipc	ra,0x1
    80001758:	3c4080e7          	jalr	964(ra) # 80002b18 <release>
    8000175c:	f65ff06f          	j	800016c0 <devintr+0x60>
    80001760:	00001097          	auipc	ra,0x1
    80001764:	f20080e7          	jalr	-224(ra) # 80002680 <uartintr>
    80001768:	fadff06f          	j	80001714 <devintr+0xb4>
    8000176c:	0000                	unimp
	...

0000000080001770 <kernelvec>:
    80001770:	f0010113          	addi	sp,sp,-256
    80001774:	00113023          	sd	ra,0(sp)
    80001778:	00213423          	sd	sp,8(sp)
    8000177c:	00313823          	sd	gp,16(sp)
    80001780:	00413c23          	sd	tp,24(sp)
    80001784:	02513023          	sd	t0,32(sp)
    80001788:	02613423          	sd	t1,40(sp)
    8000178c:	02713823          	sd	t2,48(sp)
    80001790:	02813c23          	sd	s0,56(sp)
    80001794:	04913023          	sd	s1,64(sp)
    80001798:	04a13423          	sd	a0,72(sp)
    8000179c:	04b13823          	sd	a1,80(sp)
    800017a0:	04c13c23          	sd	a2,88(sp)
    800017a4:	06d13023          	sd	a3,96(sp)
    800017a8:	06e13423          	sd	a4,104(sp)
    800017ac:	06f13823          	sd	a5,112(sp)
    800017b0:	07013c23          	sd	a6,120(sp)
    800017b4:	09113023          	sd	a7,128(sp)
    800017b8:	09213423          	sd	s2,136(sp)
    800017bc:	09313823          	sd	s3,144(sp)
    800017c0:	09413c23          	sd	s4,152(sp)
    800017c4:	0b513023          	sd	s5,160(sp)
    800017c8:	0b613423          	sd	s6,168(sp)
    800017cc:	0b713823          	sd	s7,176(sp)
    800017d0:	0b813c23          	sd	s8,184(sp)
    800017d4:	0d913023          	sd	s9,192(sp)
    800017d8:	0da13423          	sd	s10,200(sp)
    800017dc:	0db13823          	sd	s11,208(sp)
    800017e0:	0dc13c23          	sd	t3,216(sp)
    800017e4:	0fd13023          	sd	t4,224(sp)
    800017e8:	0fe13423          	sd	t5,232(sp)
    800017ec:	0ff13823          	sd	t6,240(sp)
    800017f0:	cd1ff0ef          	jal	ra,800014c0 <kerneltrap>
    800017f4:	00013083          	ld	ra,0(sp)
    800017f8:	00813103          	ld	sp,8(sp)
    800017fc:	01013183          	ld	gp,16(sp)
    80001800:	02013283          	ld	t0,32(sp)
    80001804:	02813303          	ld	t1,40(sp)
    80001808:	03013383          	ld	t2,48(sp)
    8000180c:	03813403          	ld	s0,56(sp)
    80001810:	04013483          	ld	s1,64(sp)
    80001814:	04813503          	ld	a0,72(sp)
    80001818:	05013583          	ld	a1,80(sp)
    8000181c:	05813603          	ld	a2,88(sp)
    80001820:	06013683          	ld	a3,96(sp)
    80001824:	06813703          	ld	a4,104(sp)
    80001828:	07013783          	ld	a5,112(sp)
    8000182c:	07813803          	ld	a6,120(sp)
    80001830:	08013883          	ld	a7,128(sp)
    80001834:	08813903          	ld	s2,136(sp)
    80001838:	09013983          	ld	s3,144(sp)
    8000183c:	09813a03          	ld	s4,152(sp)
    80001840:	0a013a83          	ld	s5,160(sp)
    80001844:	0a813b03          	ld	s6,168(sp)
    80001848:	0b013b83          	ld	s7,176(sp)
    8000184c:	0b813c03          	ld	s8,184(sp)
    80001850:	0c013c83          	ld	s9,192(sp)
    80001854:	0c813d03          	ld	s10,200(sp)
    80001858:	0d013d83          	ld	s11,208(sp)
    8000185c:	0d813e03          	ld	t3,216(sp)
    80001860:	0e013e83          	ld	t4,224(sp)
    80001864:	0e813f03          	ld	t5,232(sp)
    80001868:	0f013f83          	ld	t6,240(sp)
    8000186c:	10010113          	addi	sp,sp,256
    80001870:	10200073          	sret
    80001874:	00000013          	nop
    80001878:	00000013          	nop
    8000187c:	00000013          	nop

0000000080001880 <timervec>:
    80001880:	34051573          	csrrw	a0,mscratch,a0
    80001884:	00b53023          	sd	a1,0(a0)
    80001888:	00c53423          	sd	a2,8(a0)
    8000188c:	00d53823          	sd	a3,16(a0)
    80001890:	01853583          	ld	a1,24(a0)
    80001894:	02053603          	ld	a2,32(a0)
    80001898:	0005b683          	ld	a3,0(a1)
    8000189c:	00c686b3          	add	a3,a3,a2
    800018a0:	00d5b023          	sd	a3,0(a1)
    800018a4:	00200593          	li	a1,2
    800018a8:	14459073          	csrw	sip,a1
    800018ac:	01053683          	ld	a3,16(a0)
    800018b0:	00853603          	ld	a2,8(a0)
    800018b4:	00053583          	ld	a1,0(a0)
    800018b8:	34051573          	csrrw	a0,mscratch,a0
    800018bc:	30200073          	mret

00000000800018c0 <plicinit>:
    800018c0:	ff010113          	addi	sp,sp,-16
    800018c4:	00813423          	sd	s0,8(sp)
    800018c8:	01010413          	addi	s0,sp,16
    800018cc:	00813403          	ld	s0,8(sp)
    800018d0:	0c0007b7          	lui	a5,0xc000
    800018d4:	00100713          	li	a4,1
    800018d8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800018dc:	00e7a223          	sw	a4,4(a5)
    800018e0:	01010113          	addi	sp,sp,16
    800018e4:	00008067          	ret

00000000800018e8 <plicinithart>:
    800018e8:	ff010113          	addi	sp,sp,-16
    800018ec:	00813023          	sd	s0,0(sp)
    800018f0:	00113423          	sd	ra,8(sp)
    800018f4:	01010413          	addi	s0,sp,16
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	a48080e7          	jalr	-1464(ra) # 80001340 <cpuid>
    80001900:	0085171b          	slliw	a4,a0,0x8
    80001904:	0c0027b7          	lui	a5,0xc002
    80001908:	00e787b3          	add	a5,a5,a4
    8000190c:	40200713          	li	a4,1026
    80001910:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80001914:	00813083          	ld	ra,8(sp)
    80001918:	00013403          	ld	s0,0(sp)
    8000191c:	00d5151b          	slliw	a0,a0,0xd
    80001920:	0c2017b7          	lui	a5,0xc201
    80001924:	00a78533          	add	a0,a5,a0
    80001928:	00052023          	sw	zero,0(a0)
    8000192c:	01010113          	addi	sp,sp,16
    80001930:	00008067          	ret

0000000080001934 <plic_claim>:
    80001934:	ff010113          	addi	sp,sp,-16
    80001938:	00813023          	sd	s0,0(sp)
    8000193c:	00113423          	sd	ra,8(sp)
    80001940:	01010413          	addi	s0,sp,16
    80001944:	00000097          	auipc	ra,0x0
    80001948:	9fc080e7          	jalr	-1540(ra) # 80001340 <cpuid>
    8000194c:	00813083          	ld	ra,8(sp)
    80001950:	00013403          	ld	s0,0(sp)
    80001954:	00d5151b          	slliw	a0,a0,0xd
    80001958:	0c2017b7          	lui	a5,0xc201
    8000195c:	00a78533          	add	a0,a5,a0
    80001960:	00452503          	lw	a0,4(a0)
    80001964:	01010113          	addi	sp,sp,16
    80001968:	00008067          	ret

000000008000196c <plic_complete>:
    8000196c:	fe010113          	addi	sp,sp,-32
    80001970:	00813823          	sd	s0,16(sp)
    80001974:	00913423          	sd	s1,8(sp)
    80001978:	00113c23          	sd	ra,24(sp)
    8000197c:	02010413          	addi	s0,sp,32
    80001980:	00050493          	mv	s1,a0
    80001984:	00000097          	auipc	ra,0x0
    80001988:	9bc080e7          	jalr	-1604(ra) # 80001340 <cpuid>
    8000198c:	01813083          	ld	ra,24(sp)
    80001990:	01013403          	ld	s0,16(sp)
    80001994:	00d5179b          	slliw	a5,a0,0xd
    80001998:	0c201737          	lui	a4,0xc201
    8000199c:	00f707b3          	add	a5,a4,a5
    800019a0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800019a4:	00813483          	ld	s1,8(sp)
    800019a8:	02010113          	addi	sp,sp,32
    800019ac:	00008067          	ret

00000000800019b0 <consolewrite>:
    800019b0:	fb010113          	addi	sp,sp,-80
    800019b4:	04813023          	sd	s0,64(sp)
    800019b8:	04113423          	sd	ra,72(sp)
    800019bc:	02913c23          	sd	s1,56(sp)
    800019c0:	03213823          	sd	s2,48(sp)
    800019c4:	03313423          	sd	s3,40(sp)
    800019c8:	03413023          	sd	s4,32(sp)
    800019cc:	01513c23          	sd	s5,24(sp)
    800019d0:	05010413          	addi	s0,sp,80
    800019d4:	06c05c63          	blez	a2,80001a4c <consolewrite+0x9c>
    800019d8:	00060993          	mv	s3,a2
    800019dc:	00050a13          	mv	s4,a0
    800019e0:	00058493          	mv	s1,a1
    800019e4:	00000913          	li	s2,0
    800019e8:	fff00a93          	li	s5,-1
    800019ec:	01c0006f          	j	80001a08 <consolewrite+0x58>
    800019f0:	fbf44503          	lbu	a0,-65(s0)
    800019f4:	0019091b          	addiw	s2,s2,1
    800019f8:	00148493          	addi	s1,s1,1
    800019fc:	00001097          	auipc	ra,0x1
    80001a00:	a9c080e7          	jalr	-1380(ra) # 80002498 <uartputc>
    80001a04:	03298063          	beq	s3,s2,80001a24 <consolewrite+0x74>
    80001a08:	00048613          	mv	a2,s1
    80001a0c:	00100693          	li	a3,1
    80001a10:	000a0593          	mv	a1,s4
    80001a14:	fbf40513          	addi	a0,s0,-65
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	9e0080e7          	jalr	-1568(ra) # 800013f8 <either_copyin>
    80001a20:	fd5518e3          	bne	a0,s5,800019f0 <consolewrite+0x40>
    80001a24:	04813083          	ld	ra,72(sp)
    80001a28:	04013403          	ld	s0,64(sp)
    80001a2c:	03813483          	ld	s1,56(sp)
    80001a30:	02813983          	ld	s3,40(sp)
    80001a34:	02013a03          	ld	s4,32(sp)
    80001a38:	01813a83          	ld	s5,24(sp)
    80001a3c:	00090513          	mv	a0,s2
    80001a40:	03013903          	ld	s2,48(sp)
    80001a44:	05010113          	addi	sp,sp,80
    80001a48:	00008067          	ret
    80001a4c:	00000913          	li	s2,0
    80001a50:	fd5ff06f          	j	80001a24 <consolewrite+0x74>

0000000080001a54 <consoleread>:
    80001a54:	f9010113          	addi	sp,sp,-112
    80001a58:	06813023          	sd	s0,96(sp)
    80001a5c:	04913c23          	sd	s1,88(sp)
    80001a60:	05213823          	sd	s2,80(sp)
    80001a64:	05313423          	sd	s3,72(sp)
    80001a68:	05413023          	sd	s4,64(sp)
    80001a6c:	03513c23          	sd	s5,56(sp)
    80001a70:	03613823          	sd	s6,48(sp)
    80001a74:	03713423          	sd	s7,40(sp)
    80001a78:	03813023          	sd	s8,32(sp)
    80001a7c:	06113423          	sd	ra,104(sp)
    80001a80:	01913c23          	sd	s9,24(sp)
    80001a84:	07010413          	addi	s0,sp,112
    80001a88:	00060b93          	mv	s7,a2
    80001a8c:	00050913          	mv	s2,a0
    80001a90:	00058c13          	mv	s8,a1
    80001a94:	00060b1b          	sext.w	s6,a2
    80001a98:	00004497          	auipc	s1,0x4
    80001a9c:	88048493          	addi	s1,s1,-1920 # 80005318 <cons>
    80001aa0:	00400993          	li	s3,4
    80001aa4:	fff00a13          	li	s4,-1
    80001aa8:	00a00a93          	li	s5,10
    80001aac:	05705e63          	blez	s7,80001b08 <consoleread+0xb4>
    80001ab0:	09c4a703          	lw	a4,156(s1)
    80001ab4:	0984a783          	lw	a5,152(s1)
    80001ab8:	0007071b          	sext.w	a4,a4
    80001abc:	08e78463          	beq	a5,a4,80001b44 <consoleread+0xf0>
    80001ac0:	07f7f713          	andi	a4,a5,127
    80001ac4:	00e48733          	add	a4,s1,a4
    80001ac8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80001acc:	0017869b          	addiw	a3,a5,1
    80001ad0:	08d4ac23          	sw	a3,152(s1)
    80001ad4:	00070c9b          	sext.w	s9,a4
    80001ad8:	0b370663          	beq	a4,s3,80001b84 <consoleread+0x130>
    80001adc:	00100693          	li	a3,1
    80001ae0:	f9f40613          	addi	a2,s0,-97
    80001ae4:	000c0593          	mv	a1,s8
    80001ae8:	00090513          	mv	a0,s2
    80001aec:	f8e40fa3          	sb	a4,-97(s0)
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	8bc080e7          	jalr	-1860(ra) # 800013ac <either_copyout>
    80001af8:	01450863          	beq	a0,s4,80001b08 <consoleread+0xb4>
    80001afc:	001c0c13          	addi	s8,s8,1
    80001b00:	fffb8b9b          	addiw	s7,s7,-1
    80001b04:	fb5c94e3          	bne	s9,s5,80001aac <consoleread+0x58>
    80001b08:	000b851b          	sext.w	a0,s7
    80001b0c:	06813083          	ld	ra,104(sp)
    80001b10:	06013403          	ld	s0,96(sp)
    80001b14:	05813483          	ld	s1,88(sp)
    80001b18:	05013903          	ld	s2,80(sp)
    80001b1c:	04813983          	ld	s3,72(sp)
    80001b20:	04013a03          	ld	s4,64(sp)
    80001b24:	03813a83          	ld	s5,56(sp)
    80001b28:	02813b83          	ld	s7,40(sp)
    80001b2c:	02013c03          	ld	s8,32(sp)
    80001b30:	01813c83          	ld	s9,24(sp)
    80001b34:	40ab053b          	subw	a0,s6,a0
    80001b38:	03013b03          	ld	s6,48(sp)
    80001b3c:	07010113          	addi	sp,sp,112
    80001b40:	00008067          	ret
    80001b44:	00001097          	auipc	ra,0x1
    80001b48:	1d8080e7          	jalr	472(ra) # 80002d1c <push_on>
    80001b4c:	0984a703          	lw	a4,152(s1)
    80001b50:	09c4a783          	lw	a5,156(s1)
    80001b54:	0007879b          	sext.w	a5,a5
    80001b58:	fef70ce3          	beq	a4,a5,80001b50 <consoleread+0xfc>
    80001b5c:	00001097          	auipc	ra,0x1
    80001b60:	234080e7          	jalr	564(ra) # 80002d90 <pop_on>
    80001b64:	0984a783          	lw	a5,152(s1)
    80001b68:	07f7f713          	andi	a4,a5,127
    80001b6c:	00e48733          	add	a4,s1,a4
    80001b70:	01874703          	lbu	a4,24(a4)
    80001b74:	0017869b          	addiw	a3,a5,1
    80001b78:	08d4ac23          	sw	a3,152(s1)
    80001b7c:	00070c9b          	sext.w	s9,a4
    80001b80:	f5371ee3          	bne	a4,s3,80001adc <consoleread+0x88>
    80001b84:	000b851b          	sext.w	a0,s7
    80001b88:	f96bf2e3          	bgeu	s7,s6,80001b0c <consoleread+0xb8>
    80001b8c:	08f4ac23          	sw	a5,152(s1)
    80001b90:	f7dff06f          	j	80001b0c <consoleread+0xb8>

0000000080001b94 <consputc>:
    80001b94:	10000793          	li	a5,256
    80001b98:	00f50663          	beq	a0,a5,80001ba4 <consputc+0x10>
    80001b9c:	00001317          	auipc	t1,0x1
    80001ba0:	9f430067          	jr	-1548(t1) # 80002590 <uartputc_sync>
    80001ba4:	ff010113          	addi	sp,sp,-16
    80001ba8:	00113423          	sd	ra,8(sp)
    80001bac:	00813023          	sd	s0,0(sp)
    80001bb0:	01010413          	addi	s0,sp,16
    80001bb4:	00800513          	li	a0,8
    80001bb8:	00001097          	auipc	ra,0x1
    80001bbc:	9d8080e7          	jalr	-1576(ra) # 80002590 <uartputc_sync>
    80001bc0:	02000513          	li	a0,32
    80001bc4:	00001097          	auipc	ra,0x1
    80001bc8:	9cc080e7          	jalr	-1588(ra) # 80002590 <uartputc_sync>
    80001bcc:	00013403          	ld	s0,0(sp)
    80001bd0:	00813083          	ld	ra,8(sp)
    80001bd4:	00800513          	li	a0,8
    80001bd8:	01010113          	addi	sp,sp,16
    80001bdc:	00001317          	auipc	t1,0x1
    80001be0:	9b430067          	jr	-1612(t1) # 80002590 <uartputc_sync>

0000000080001be4 <consoleintr>:
    80001be4:	fe010113          	addi	sp,sp,-32
    80001be8:	00813823          	sd	s0,16(sp)
    80001bec:	00913423          	sd	s1,8(sp)
    80001bf0:	01213023          	sd	s2,0(sp)
    80001bf4:	00113c23          	sd	ra,24(sp)
    80001bf8:	02010413          	addi	s0,sp,32
    80001bfc:	00003917          	auipc	s2,0x3
    80001c00:	71c90913          	addi	s2,s2,1820 # 80005318 <cons>
    80001c04:	00050493          	mv	s1,a0
    80001c08:	00090513          	mv	a0,s2
    80001c0c:	00001097          	auipc	ra,0x1
    80001c10:	e40080e7          	jalr	-448(ra) # 80002a4c <acquire>
    80001c14:	02048c63          	beqz	s1,80001c4c <consoleintr+0x68>
    80001c18:	0a092783          	lw	a5,160(s2)
    80001c1c:	09892703          	lw	a4,152(s2)
    80001c20:	07f00693          	li	a3,127
    80001c24:	40e7873b          	subw	a4,a5,a4
    80001c28:	02e6e263          	bltu	a3,a4,80001c4c <consoleintr+0x68>
    80001c2c:	00d00713          	li	a4,13
    80001c30:	04e48063          	beq	s1,a4,80001c70 <consoleintr+0x8c>
    80001c34:	07f7f713          	andi	a4,a5,127
    80001c38:	00e90733          	add	a4,s2,a4
    80001c3c:	0017879b          	addiw	a5,a5,1
    80001c40:	0af92023          	sw	a5,160(s2)
    80001c44:	00970c23          	sb	s1,24(a4)
    80001c48:	08f92e23          	sw	a5,156(s2)
    80001c4c:	01013403          	ld	s0,16(sp)
    80001c50:	01813083          	ld	ra,24(sp)
    80001c54:	00813483          	ld	s1,8(sp)
    80001c58:	00013903          	ld	s2,0(sp)
    80001c5c:	00003517          	auipc	a0,0x3
    80001c60:	6bc50513          	addi	a0,a0,1724 # 80005318 <cons>
    80001c64:	02010113          	addi	sp,sp,32
    80001c68:	00001317          	auipc	t1,0x1
    80001c6c:	eb030067          	jr	-336(t1) # 80002b18 <release>
    80001c70:	00a00493          	li	s1,10
    80001c74:	fc1ff06f          	j	80001c34 <consoleintr+0x50>

0000000080001c78 <consoleinit>:
    80001c78:	fe010113          	addi	sp,sp,-32
    80001c7c:	00113c23          	sd	ra,24(sp)
    80001c80:	00813823          	sd	s0,16(sp)
    80001c84:	00913423          	sd	s1,8(sp)
    80001c88:	02010413          	addi	s0,sp,32
    80001c8c:	00003497          	auipc	s1,0x3
    80001c90:	68c48493          	addi	s1,s1,1676 # 80005318 <cons>
    80001c94:	00048513          	mv	a0,s1
    80001c98:	00002597          	auipc	a1,0x2
    80001c9c:	49058593          	addi	a1,a1,1168 # 80004128 <console_handler+0xf18>
    80001ca0:	00001097          	auipc	ra,0x1
    80001ca4:	d88080e7          	jalr	-632(ra) # 80002a28 <initlock>
    80001ca8:	00000097          	auipc	ra,0x0
    80001cac:	7ac080e7          	jalr	1964(ra) # 80002454 <uartinit>
    80001cb0:	01813083          	ld	ra,24(sp)
    80001cb4:	01013403          	ld	s0,16(sp)
    80001cb8:	00000797          	auipc	a5,0x0
    80001cbc:	d9c78793          	addi	a5,a5,-612 # 80001a54 <consoleread>
    80001cc0:	0af4bc23          	sd	a5,184(s1)
    80001cc4:	00000797          	auipc	a5,0x0
    80001cc8:	cec78793          	addi	a5,a5,-788 # 800019b0 <consolewrite>
    80001ccc:	0cf4b023          	sd	a5,192(s1)
    80001cd0:	00813483          	ld	s1,8(sp)
    80001cd4:	02010113          	addi	sp,sp,32
    80001cd8:	00008067          	ret

0000000080001cdc <console_read>:
    80001cdc:	ff010113          	addi	sp,sp,-16
    80001ce0:	00813423          	sd	s0,8(sp)
    80001ce4:	01010413          	addi	s0,sp,16
    80001ce8:	00813403          	ld	s0,8(sp)
    80001cec:	00003317          	auipc	t1,0x3
    80001cf0:	6e433303          	ld	t1,1764(t1) # 800053d0 <devsw+0x10>
    80001cf4:	01010113          	addi	sp,sp,16
    80001cf8:	00030067          	jr	t1

0000000080001cfc <console_write>:
    80001cfc:	ff010113          	addi	sp,sp,-16
    80001d00:	00813423          	sd	s0,8(sp)
    80001d04:	01010413          	addi	s0,sp,16
    80001d08:	00813403          	ld	s0,8(sp)
    80001d0c:	00003317          	auipc	t1,0x3
    80001d10:	6cc33303          	ld	t1,1740(t1) # 800053d8 <devsw+0x18>
    80001d14:	01010113          	addi	sp,sp,16
    80001d18:	00030067          	jr	t1

0000000080001d1c <panic>:
    80001d1c:	fe010113          	addi	sp,sp,-32
    80001d20:	00113c23          	sd	ra,24(sp)
    80001d24:	00813823          	sd	s0,16(sp)
    80001d28:	00913423          	sd	s1,8(sp)
    80001d2c:	02010413          	addi	s0,sp,32
    80001d30:	00050493          	mv	s1,a0
    80001d34:	00002517          	auipc	a0,0x2
    80001d38:	3fc50513          	addi	a0,a0,1020 # 80004130 <console_handler+0xf20>
    80001d3c:	00003797          	auipc	a5,0x3
    80001d40:	7207ae23          	sw	zero,1852(a5) # 80005478 <pr+0x18>
    80001d44:	00000097          	auipc	ra,0x0
    80001d48:	034080e7          	jalr	52(ra) # 80001d78 <__printf>
    80001d4c:	00048513          	mv	a0,s1
    80001d50:	00000097          	auipc	ra,0x0
    80001d54:	028080e7          	jalr	40(ra) # 80001d78 <__printf>
    80001d58:	00002517          	auipc	a0,0x2
    80001d5c:	3b850513          	addi	a0,a0,952 # 80004110 <console_handler+0xf00>
    80001d60:	00000097          	auipc	ra,0x0
    80001d64:	018080e7          	jalr	24(ra) # 80001d78 <__printf>
    80001d68:	00100793          	li	a5,1
    80001d6c:	00002717          	auipc	a4,0x2
    80001d70:	4af72e23          	sw	a5,1212(a4) # 80004228 <panicked>
    80001d74:	0000006f          	j	80001d74 <panic+0x58>

0000000080001d78 <__printf>:
    80001d78:	f3010113          	addi	sp,sp,-208
    80001d7c:	08813023          	sd	s0,128(sp)
    80001d80:	07313423          	sd	s3,104(sp)
    80001d84:	09010413          	addi	s0,sp,144
    80001d88:	05813023          	sd	s8,64(sp)
    80001d8c:	08113423          	sd	ra,136(sp)
    80001d90:	06913c23          	sd	s1,120(sp)
    80001d94:	07213823          	sd	s2,112(sp)
    80001d98:	07413023          	sd	s4,96(sp)
    80001d9c:	05513c23          	sd	s5,88(sp)
    80001da0:	05613823          	sd	s6,80(sp)
    80001da4:	05713423          	sd	s7,72(sp)
    80001da8:	03913c23          	sd	s9,56(sp)
    80001dac:	03a13823          	sd	s10,48(sp)
    80001db0:	03b13423          	sd	s11,40(sp)
    80001db4:	00003317          	auipc	t1,0x3
    80001db8:	6ac30313          	addi	t1,t1,1708 # 80005460 <pr>
    80001dbc:	01832c03          	lw	s8,24(t1)
    80001dc0:	00b43423          	sd	a1,8(s0)
    80001dc4:	00c43823          	sd	a2,16(s0)
    80001dc8:	00d43c23          	sd	a3,24(s0)
    80001dcc:	02e43023          	sd	a4,32(s0)
    80001dd0:	02f43423          	sd	a5,40(s0)
    80001dd4:	03043823          	sd	a6,48(s0)
    80001dd8:	03143c23          	sd	a7,56(s0)
    80001ddc:	00050993          	mv	s3,a0
    80001de0:	4a0c1663          	bnez	s8,8000228c <__printf+0x514>
    80001de4:	60098c63          	beqz	s3,800023fc <__printf+0x684>
    80001de8:	0009c503          	lbu	a0,0(s3)
    80001dec:	00840793          	addi	a5,s0,8
    80001df0:	f6f43c23          	sd	a5,-136(s0)
    80001df4:	00000493          	li	s1,0
    80001df8:	22050063          	beqz	a0,80002018 <__printf+0x2a0>
    80001dfc:	00002a37          	lui	s4,0x2
    80001e00:	00018ab7          	lui	s5,0x18
    80001e04:	000f4b37          	lui	s6,0xf4
    80001e08:	00989bb7          	lui	s7,0x989
    80001e0c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80001e10:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80001e14:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80001e18:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80001e1c:	00148c9b          	addiw	s9,s1,1
    80001e20:	02500793          	li	a5,37
    80001e24:	01998933          	add	s2,s3,s9
    80001e28:	38f51263          	bne	a0,a5,800021ac <__printf+0x434>
    80001e2c:	00094783          	lbu	a5,0(s2)
    80001e30:	00078c9b          	sext.w	s9,a5
    80001e34:	1e078263          	beqz	a5,80002018 <__printf+0x2a0>
    80001e38:	0024849b          	addiw	s1,s1,2
    80001e3c:	07000713          	li	a4,112
    80001e40:	00998933          	add	s2,s3,s1
    80001e44:	38e78a63          	beq	a5,a4,800021d8 <__printf+0x460>
    80001e48:	20f76863          	bltu	a4,a5,80002058 <__printf+0x2e0>
    80001e4c:	42a78863          	beq	a5,a0,8000227c <__printf+0x504>
    80001e50:	06400713          	li	a4,100
    80001e54:	40e79663          	bne	a5,a4,80002260 <__printf+0x4e8>
    80001e58:	f7843783          	ld	a5,-136(s0)
    80001e5c:	0007a603          	lw	a2,0(a5)
    80001e60:	00878793          	addi	a5,a5,8
    80001e64:	f6f43c23          	sd	a5,-136(s0)
    80001e68:	42064a63          	bltz	a2,8000229c <__printf+0x524>
    80001e6c:	00a00713          	li	a4,10
    80001e70:	02e677bb          	remuw	a5,a2,a4
    80001e74:	00002d97          	auipc	s11,0x2
    80001e78:	2e4d8d93          	addi	s11,s11,740 # 80004158 <digits>
    80001e7c:	00900593          	li	a1,9
    80001e80:	0006051b          	sext.w	a0,a2
    80001e84:	00000c93          	li	s9,0
    80001e88:	02079793          	slli	a5,a5,0x20
    80001e8c:	0207d793          	srli	a5,a5,0x20
    80001e90:	00fd87b3          	add	a5,s11,a5
    80001e94:	0007c783          	lbu	a5,0(a5)
    80001e98:	02e656bb          	divuw	a3,a2,a4
    80001e9c:	f8f40023          	sb	a5,-128(s0)
    80001ea0:	14c5d863          	bge	a1,a2,80001ff0 <__printf+0x278>
    80001ea4:	06300593          	li	a1,99
    80001ea8:	00100c93          	li	s9,1
    80001eac:	02e6f7bb          	remuw	a5,a3,a4
    80001eb0:	02079793          	slli	a5,a5,0x20
    80001eb4:	0207d793          	srli	a5,a5,0x20
    80001eb8:	00fd87b3          	add	a5,s11,a5
    80001ebc:	0007c783          	lbu	a5,0(a5)
    80001ec0:	02e6d73b          	divuw	a4,a3,a4
    80001ec4:	f8f400a3          	sb	a5,-127(s0)
    80001ec8:	12a5f463          	bgeu	a1,a0,80001ff0 <__printf+0x278>
    80001ecc:	00a00693          	li	a3,10
    80001ed0:	00900593          	li	a1,9
    80001ed4:	02d777bb          	remuw	a5,a4,a3
    80001ed8:	02079793          	slli	a5,a5,0x20
    80001edc:	0207d793          	srli	a5,a5,0x20
    80001ee0:	00fd87b3          	add	a5,s11,a5
    80001ee4:	0007c503          	lbu	a0,0(a5)
    80001ee8:	02d757bb          	divuw	a5,a4,a3
    80001eec:	f8a40123          	sb	a0,-126(s0)
    80001ef0:	48e5f263          	bgeu	a1,a4,80002374 <__printf+0x5fc>
    80001ef4:	06300513          	li	a0,99
    80001ef8:	02d7f5bb          	remuw	a1,a5,a3
    80001efc:	02059593          	slli	a1,a1,0x20
    80001f00:	0205d593          	srli	a1,a1,0x20
    80001f04:	00bd85b3          	add	a1,s11,a1
    80001f08:	0005c583          	lbu	a1,0(a1)
    80001f0c:	02d7d7bb          	divuw	a5,a5,a3
    80001f10:	f8b401a3          	sb	a1,-125(s0)
    80001f14:	48e57263          	bgeu	a0,a4,80002398 <__printf+0x620>
    80001f18:	3e700513          	li	a0,999
    80001f1c:	02d7f5bb          	remuw	a1,a5,a3
    80001f20:	02059593          	slli	a1,a1,0x20
    80001f24:	0205d593          	srli	a1,a1,0x20
    80001f28:	00bd85b3          	add	a1,s11,a1
    80001f2c:	0005c583          	lbu	a1,0(a1)
    80001f30:	02d7d7bb          	divuw	a5,a5,a3
    80001f34:	f8b40223          	sb	a1,-124(s0)
    80001f38:	46e57663          	bgeu	a0,a4,800023a4 <__printf+0x62c>
    80001f3c:	02d7f5bb          	remuw	a1,a5,a3
    80001f40:	02059593          	slli	a1,a1,0x20
    80001f44:	0205d593          	srli	a1,a1,0x20
    80001f48:	00bd85b3          	add	a1,s11,a1
    80001f4c:	0005c583          	lbu	a1,0(a1)
    80001f50:	02d7d7bb          	divuw	a5,a5,a3
    80001f54:	f8b402a3          	sb	a1,-123(s0)
    80001f58:	46ea7863          	bgeu	s4,a4,800023c8 <__printf+0x650>
    80001f5c:	02d7f5bb          	remuw	a1,a5,a3
    80001f60:	02059593          	slli	a1,a1,0x20
    80001f64:	0205d593          	srli	a1,a1,0x20
    80001f68:	00bd85b3          	add	a1,s11,a1
    80001f6c:	0005c583          	lbu	a1,0(a1)
    80001f70:	02d7d7bb          	divuw	a5,a5,a3
    80001f74:	f8b40323          	sb	a1,-122(s0)
    80001f78:	3eeaf863          	bgeu	s5,a4,80002368 <__printf+0x5f0>
    80001f7c:	02d7f5bb          	remuw	a1,a5,a3
    80001f80:	02059593          	slli	a1,a1,0x20
    80001f84:	0205d593          	srli	a1,a1,0x20
    80001f88:	00bd85b3          	add	a1,s11,a1
    80001f8c:	0005c583          	lbu	a1,0(a1)
    80001f90:	02d7d7bb          	divuw	a5,a5,a3
    80001f94:	f8b403a3          	sb	a1,-121(s0)
    80001f98:	42eb7e63          	bgeu	s6,a4,800023d4 <__printf+0x65c>
    80001f9c:	02d7f5bb          	remuw	a1,a5,a3
    80001fa0:	02059593          	slli	a1,a1,0x20
    80001fa4:	0205d593          	srli	a1,a1,0x20
    80001fa8:	00bd85b3          	add	a1,s11,a1
    80001fac:	0005c583          	lbu	a1,0(a1)
    80001fb0:	02d7d7bb          	divuw	a5,a5,a3
    80001fb4:	f8b40423          	sb	a1,-120(s0)
    80001fb8:	42ebfc63          	bgeu	s7,a4,800023f0 <__printf+0x678>
    80001fbc:	02079793          	slli	a5,a5,0x20
    80001fc0:	0207d793          	srli	a5,a5,0x20
    80001fc4:	00fd8db3          	add	s11,s11,a5
    80001fc8:	000dc703          	lbu	a4,0(s11)
    80001fcc:	00a00793          	li	a5,10
    80001fd0:	00900c93          	li	s9,9
    80001fd4:	f8e404a3          	sb	a4,-119(s0)
    80001fd8:	00065c63          	bgez	a2,80001ff0 <__printf+0x278>
    80001fdc:	f9040713          	addi	a4,s0,-112
    80001fe0:	00f70733          	add	a4,a4,a5
    80001fe4:	02d00693          	li	a3,45
    80001fe8:	fed70823          	sb	a3,-16(a4)
    80001fec:	00078c93          	mv	s9,a5
    80001ff0:	f8040793          	addi	a5,s0,-128
    80001ff4:	01978cb3          	add	s9,a5,s9
    80001ff8:	f7f40d13          	addi	s10,s0,-129
    80001ffc:	000cc503          	lbu	a0,0(s9)
    80002000:	fffc8c93          	addi	s9,s9,-1
    80002004:	00000097          	auipc	ra,0x0
    80002008:	b90080e7          	jalr	-1136(ra) # 80001b94 <consputc>
    8000200c:	ffac98e3          	bne	s9,s10,80001ffc <__printf+0x284>
    80002010:	00094503          	lbu	a0,0(s2)
    80002014:	e00514e3          	bnez	a0,80001e1c <__printf+0xa4>
    80002018:	1a0c1663          	bnez	s8,800021c4 <__printf+0x44c>
    8000201c:	08813083          	ld	ra,136(sp)
    80002020:	08013403          	ld	s0,128(sp)
    80002024:	07813483          	ld	s1,120(sp)
    80002028:	07013903          	ld	s2,112(sp)
    8000202c:	06813983          	ld	s3,104(sp)
    80002030:	06013a03          	ld	s4,96(sp)
    80002034:	05813a83          	ld	s5,88(sp)
    80002038:	05013b03          	ld	s6,80(sp)
    8000203c:	04813b83          	ld	s7,72(sp)
    80002040:	04013c03          	ld	s8,64(sp)
    80002044:	03813c83          	ld	s9,56(sp)
    80002048:	03013d03          	ld	s10,48(sp)
    8000204c:	02813d83          	ld	s11,40(sp)
    80002050:	0d010113          	addi	sp,sp,208
    80002054:	00008067          	ret
    80002058:	07300713          	li	a4,115
    8000205c:	1ce78a63          	beq	a5,a4,80002230 <__printf+0x4b8>
    80002060:	07800713          	li	a4,120
    80002064:	1ee79e63          	bne	a5,a4,80002260 <__printf+0x4e8>
    80002068:	f7843783          	ld	a5,-136(s0)
    8000206c:	0007a703          	lw	a4,0(a5)
    80002070:	00878793          	addi	a5,a5,8
    80002074:	f6f43c23          	sd	a5,-136(s0)
    80002078:	28074263          	bltz	a4,800022fc <__printf+0x584>
    8000207c:	00002d97          	auipc	s11,0x2
    80002080:	0dcd8d93          	addi	s11,s11,220 # 80004158 <digits>
    80002084:	00f77793          	andi	a5,a4,15
    80002088:	00fd87b3          	add	a5,s11,a5
    8000208c:	0007c683          	lbu	a3,0(a5)
    80002090:	00f00613          	li	a2,15
    80002094:	0007079b          	sext.w	a5,a4
    80002098:	f8d40023          	sb	a3,-128(s0)
    8000209c:	0047559b          	srliw	a1,a4,0x4
    800020a0:	0047569b          	srliw	a3,a4,0x4
    800020a4:	00000c93          	li	s9,0
    800020a8:	0ee65063          	bge	a2,a4,80002188 <__printf+0x410>
    800020ac:	00f6f693          	andi	a3,a3,15
    800020b0:	00dd86b3          	add	a3,s11,a3
    800020b4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800020b8:	0087d79b          	srliw	a5,a5,0x8
    800020bc:	00100c93          	li	s9,1
    800020c0:	f8d400a3          	sb	a3,-127(s0)
    800020c4:	0cb67263          	bgeu	a2,a1,80002188 <__printf+0x410>
    800020c8:	00f7f693          	andi	a3,a5,15
    800020cc:	00dd86b3          	add	a3,s11,a3
    800020d0:	0006c583          	lbu	a1,0(a3)
    800020d4:	00f00613          	li	a2,15
    800020d8:	0047d69b          	srliw	a3,a5,0x4
    800020dc:	f8b40123          	sb	a1,-126(s0)
    800020e0:	0047d593          	srli	a1,a5,0x4
    800020e4:	28f67e63          	bgeu	a2,a5,80002380 <__printf+0x608>
    800020e8:	00f6f693          	andi	a3,a3,15
    800020ec:	00dd86b3          	add	a3,s11,a3
    800020f0:	0006c503          	lbu	a0,0(a3)
    800020f4:	0087d813          	srli	a6,a5,0x8
    800020f8:	0087d69b          	srliw	a3,a5,0x8
    800020fc:	f8a401a3          	sb	a0,-125(s0)
    80002100:	28b67663          	bgeu	a2,a1,8000238c <__printf+0x614>
    80002104:	00f6f693          	andi	a3,a3,15
    80002108:	00dd86b3          	add	a3,s11,a3
    8000210c:	0006c583          	lbu	a1,0(a3)
    80002110:	00c7d513          	srli	a0,a5,0xc
    80002114:	00c7d69b          	srliw	a3,a5,0xc
    80002118:	f8b40223          	sb	a1,-124(s0)
    8000211c:	29067a63          	bgeu	a2,a6,800023b0 <__printf+0x638>
    80002120:	00f6f693          	andi	a3,a3,15
    80002124:	00dd86b3          	add	a3,s11,a3
    80002128:	0006c583          	lbu	a1,0(a3)
    8000212c:	0107d813          	srli	a6,a5,0x10
    80002130:	0107d69b          	srliw	a3,a5,0x10
    80002134:	f8b402a3          	sb	a1,-123(s0)
    80002138:	28a67263          	bgeu	a2,a0,800023bc <__printf+0x644>
    8000213c:	00f6f693          	andi	a3,a3,15
    80002140:	00dd86b3          	add	a3,s11,a3
    80002144:	0006c683          	lbu	a3,0(a3)
    80002148:	0147d79b          	srliw	a5,a5,0x14
    8000214c:	f8d40323          	sb	a3,-122(s0)
    80002150:	21067663          	bgeu	a2,a6,8000235c <__printf+0x5e4>
    80002154:	02079793          	slli	a5,a5,0x20
    80002158:	0207d793          	srli	a5,a5,0x20
    8000215c:	00fd8db3          	add	s11,s11,a5
    80002160:	000dc683          	lbu	a3,0(s11)
    80002164:	00800793          	li	a5,8
    80002168:	00700c93          	li	s9,7
    8000216c:	f8d403a3          	sb	a3,-121(s0)
    80002170:	00075c63          	bgez	a4,80002188 <__printf+0x410>
    80002174:	f9040713          	addi	a4,s0,-112
    80002178:	00f70733          	add	a4,a4,a5
    8000217c:	02d00693          	li	a3,45
    80002180:	fed70823          	sb	a3,-16(a4)
    80002184:	00078c93          	mv	s9,a5
    80002188:	f8040793          	addi	a5,s0,-128
    8000218c:	01978cb3          	add	s9,a5,s9
    80002190:	f7f40d13          	addi	s10,s0,-129
    80002194:	000cc503          	lbu	a0,0(s9)
    80002198:	fffc8c93          	addi	s9,s9,-1
    8000219c:	00000097          	auipc	ra,0x0
    800021a0:	9f8080e7          	jalr	-1544(ra) # 80001b94 <consputc>
    800021a4:	ff9d18e3          	bne	s10,s9,80002194 <__printf+0x41c>
    800021a8:	0100006f          	j	800021b8 <__printf+0x440>
    800021ac:	00000097          	auipc	ra,0x0
    800021b0:	9e8080e7          	jalr	-1560(ra) # 80001b94 <consputc>
    800021b4:	000c8493          	mv	s1,s9
    800021b8:	00094503          	lbu	a0,0(s2)
    800021bc:	c60510e3          	bnez	a0,80001e1c <__printf+0xa4>
    800021c0:	e40c0ee3          	beqz	s8,8000201c <__printf+0x2a4>
    800021c4:	00003517          	auipc	a0,0x3
    800021c8:	29c50513          	addi	a0,a0,668 # 80005460 <pr>
    800021cc:	00001097          	auipc	ra,0x1
    800021d0:	94c080e7          	jalr	-1716(ra) # 80002b18 <release>
    800021d4:	e49ff06f          	j	8000201c <__printf+0x2a4>
    800021d8:	f7843783          	ld	a5,-136(s0)
    800021dc:	03000513          	li	a0,48
    800021e0:	01000d13          	li	s10,16
    800021e4:	00878713          	addi	a4,a5,8
    800021e8:	0007bc83          	ld	s9,0(a5)
    800021ec:	f6e43c23          	sd	a4,-136(s0)
    800021f0:	00000097          	auipc	ra,0x0
    800021f4:	9a4080e7          	jalr	-1628(ra) # 80001b94 <consputc>
    800021f8:	07800513          	li	a0,120
    800021fc:	00000097          	auipc	ra,0x0
    80002200:	998080e7          	jalr	-1640(ra) # 80001b94 <consputc>
    80002204:	00002d97          	auipc	s11,0x2
    80002208:	f54d8d93          	addi	s11,s11,-172 # 80004158 <digits>
    8000220c:	03ccd793          	srli	a5,s9,0x3c
    80002210:	00fd87b3          	add	a5,s11,a5
    80002214:	0007c503          	lbu	a0,0(a5)
    80002218:	fffd0d1b          	addiw	s10,s10,-1
    8000221c:	004c9c93          	slli	s9,s9,0x4
    80002220:	00000097          	auipc	ra,0x0
    80002224:	974080e7          	jalr	-1676(ra) # 80001b94 <consputc>
    80002228:	fe0d12e3          	bnez	s10,8000220c <__printf+0x494>
    8000222c:	f8dff06f          	j	800021b8 <__printf+0x440>
    80002230:	f7843783          	ld	a5,-136(s0)
    80002234:	0007bc83          	ld	s9,0(a5)
    80002238:	00878793          	addi	a5,a5,8
    8000223c:	f6f43c23          	sd	a5,-136(s0)
    80002240:	000c9a63          	bnez	s9,80002254 <__printf+0x4dc>
    80002244:	1080006f          	j	8000234c <__printf+0x5d4>
    80002248:	001c8c93          	addi	s9,s9,1
    8000224c:	00000097          	auipc	ra,0x0
    80002250:	948080e7          	jalr	-1720(ra) # 80001b94 <consputc>
    80002254:	000cc503          	lbu	a0,0(s9)
    80002258:	fe0518e3          	bnez	a0,80002248 <__printf+0x4d0>
    8000225c:	f5dff06f          	j	800021b8 <__printf+0x440>
    80002260:	02500513          	li	a0,37
    80002264:	00000097          	auipc	ra,0x0
    80002268:	930080e7          	jalr	-1744(ra) # 80001b94 <consputc>
    8000226c:	000c8513          	mv	a0,s9
    80002270:	00000097          	auipc	ra,0x0
    80002274:	924080e7          	jalr	-1756(ra) # 80001b94 <consputc>
    80002278:	f41ff06f          	j	800021b8 <__printf+0x440>
    8000227c:	02500513          	li	a0,37
    80002280:	00000097          	auipc	ra,0x0
    80002284:	914080e7          	jalr	-1772(ra) # 80001b94 <consputc>
    80002288:	f31ff06f          	j	800021b8 <__printf+0x440>
    8000228c:	00030513          	mv	a0,t1
    80002290:	00000097          	auipc	ra,0x0
    80002294:	7bc080e7          	jalr	1980(ra) # 80002a4c <acquire>
    80002298:	b4dff06f          	j	80001de4 <__printf+0x6c>
    8000229c:	40c0053b          	negw	a0,a2
    800022a0:	00a00713          	li	a4,10
    800022a4:	02e576bb          	remuw	a3,a0,a4
    800022a8:	00002d97          	auipc	s11,0x2
    800022ac:	eb0d8d93          	addi	s11,s11,-336 # 80004158 <digits>
    800022b0:	ff700593          	li	a1,-9
    800022b4:	02069693          	slli	a3,a3,0x20
    800022b8:	0206d693          	srli	a3,a3,0x20
    800022bc:	00dd86b3          	add	a3,s11,a3
    800022c0:	0006c683          	lbu	a3,0(a3)
    800022c4:	02e557bb          	divuw	a5,a0,a4
    800022c8:	f8d40023          	sb	a3,-128(s0)
    800022cc:	10b65e63          	bge	a2,a1,800023e8 <__printf+0x670>
    800022d0:	06300593          	li	a1,99
    800022d4:	02e7f6bb          	remuw	a3,a5,a4
    800022d8:	02069693          	slli	a3,a3,0x20
    800022dc:	0206d693          	srli	a3,a3,0x20
    800022e0:	00dd86b3          	add	a3,s11,a3
    800022e4:	0006c683          	lbu	a3,0(a3)
    800022e8:	02e7d73b          	divuw	a4,a5,a4
    800022ec:	00200793          	li	a5,2
    800022f0:	f8d400a3          	sb	a3,-127(s0)
    800022f4:	bca5ece3          	bltu	a1,a0,80001ecc <__printf+0x154>
    800022f8:	ce5ff06f          	j	80001fdc <__printf+0x264>
    800022fc:	40e007bb          	negw	a5,a4
    80002300:	00002d97          	auipc	s11,0x2
    80002304:	e58d8d93          	addi	s11,s11,-424 # 80004158 <digits>
    80002308:	00f7f693          	andi	a3,a5,15
    8000230c:	00dd86b3          	add	a3,s11,a3
    80002310:	0006c583          	lbu	a1,0(a3)
    80002314:	ff100613          	li	a2,-15
    80002318:	0047d69b          	srliw	a3,a5,0x4
    8000231c:	f8b40023          	sb	a1,-128(s0)
    80002320:	0047d59b          	srliw	a1,a5,0x4
    80002324:	0ac75e63          	bge	a4,a2,800023e0 <__printf+0x668>
    80002328:	00f6f693          	andi	a3,a3,15
    8000232c:	00dd86b3          	add	a3,s11,a3
    80002330:	0006c603          	lbu	a2,0(a3)
    80002334:	00f00693          	li	a3,15
    80002338:	0087d79b          	srliw	a5,a5,0x8
    8000233c:	f8c400a3          	sb	a2,-127(s0)
    80002340:	d8b6e4e3          	bltu	a3,a1,800020c8 <__printf+0x350>
    80002344:	00200793          	li	a5,2
    80002348:	e2dff06f          	j	80002174 <__printf+0x3fc>
    8000234c:	00002c97          	auipc	s9,0x2
    80002350:	decc8c93          	addi	s9,s9,-532 # 80004138 <console_handler+0xf28>
    80002354:	02800513          	li	a0,40
    80002358:	ef1ff06f          	j	80002248 <__printf+0x4d0>
    8000235c:	00700793          	li	a5,7
    80002360:	00600c93          	li	s9,6
    80002364:	e0dff06f          	j	80002170 <__printf+0x3f8>
    80002368:	00700793          	li	a5,7
    8000236c:	00600c93          	li	s9,6
    80002370:	c69ff06f          	j	80001fd8 <__printf+0x260>
    80002374:	00300793          	li	a5,3
    80002378:	00200c93          	li	s9,2
    8000237c:	c5dff06f          	j	80001fd8 <__printf+0x260>
    80002380:	00300793          	li	a5,3
    80002384:	00200c93          	li	s9,2
    80002388:	de9ff06f          	j	80002170 <__printf+0x3f8>
    8000238c:	00400793          	li	a5,4
    80002390:	00300c93          	li	s9,3
    80002394:	dddff06f          	j	80002170 <__printf+0x3f8>
    80002398:	00400793          	li	a5,4
    8000239c:	00300c93          	li	s9,3
    800023a0:	c39ff06f          	j	80001fd8 <__printf+0x260>
    800023a4:	00500793          	li	a5,5
    800023a8:	00400c93          	li	s9,4
    800023ac:	c2dff06f          	j	80001fd8 <__printf+0x260>
    800023b0:	00500793          	li	a5,5
    800023b4:	00400c93          	li	s9,4
    800023b8:	db9ff06f          	j	80002170 <__printf+0x3f8>
    800023bc:	00600793          	li	a5,6
    800023c0:	00500c93          	li	s9,5
    800023c4:	dadff06f          	j	80002170 <__printf+0x3f8>
    800023c8:	00600793          	li	a5,6
    800023cc:	00500c93          	li	s9,5
    800023d0:	c09ff06f          	j	80001fd8 <__printf+0x260>
    800023d4:	00800793          	li	a5,8
    800023d8:	00700c93          	li	s9,7
    800023dc:	bfdff06f          	j	80001fd8 <__printf+0x260>
    800023e0:	00100793          	li	a5,1
    800023e4:	d91ff06f          	j	80002174 <__printf+0x3fc>
    800023e8:	00100793          	li	a5,1
    800023ec:	bf1ff06f          	j	80001fdc <__printf+0x264>
    800023f0:	00900793          	li	a5,9
    800023f4:	00800c93          	li	s9,8
    800023f8:	be1ff06f          	j	80001fd8 <__printf+0x260>
    800023fc:	00002517          	auipc	a0,0x2
    80002400:	d4450513          	addi	a0,a0,-700 # 80004140 <console_handler+0xf30>
    80002404:	00000097          	auipc	ra,0x0
    80002408:	918080e7          	jalr	-1768(ra) # 80001d1c <panic>

000000008000240c <printfinit>:
    8000240c:	fe010113          	addi	sp,sp,-32
    80002410:	00813823          	sd	s0,16(sp)
    80002414:	00913423          	sd	s1,8(sp)
    80002418:	00113c23          	sd	ra,24(sp)
    8000241c:	02010413          	addi	s0,sp,32
    80002420:	00003497          	auipc	s1,0x3
    80002424:	04048493          	addi	s1,s1,64 # 80005460 <pr>
    80002428:	00048513          	mv	a0,s1
    8000242c:	00002597          	auipc	a1,0x2
    80002430:	d2458593          	addi	a1,a1,-732 # 80004150 <console_handler+0xf40>
    80002434:	00000097          	auipc	ra,0x0
    80002438:	5f4080e7          	jalr	1524(ra) # 80002a28 <initlock>
    8000243c:	01813083          	ld	ra,24(sp)
    80002440:	01013403          	ld	s0,16(sp)
    80002444:	0004ac23          	sw	zero,24(s1)
    80002448:	00813483          	ld	s1,8(sp)
    8000244c:	02010113          	addi	sp,sp,32
    80002450:	00008067          	ret

0000000080002454 <uartinit>:
    80002454:	ff010113          	addi	sp,sp,-16
    80002458:	00813423          	sd	s0,8(sp)
    8000245c:	01010413          	addi	s0,sp,16
    80002460:	100007b7          	lui	a5,0x10000
    80002464:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002468:	f8000713          	li	a4,-128
    8000246c:	00e781a3          	sb	a4,3(a5)
    80002470:	00300713          	li	a4,3
    80002474:	00e78023          	sb	a4,0(a5)
    80002478:	000780a3          	sb	zero,1(a5)
    8000247c:	00e781a3          	sb	a4,3(a5)
    80002480:	00700693          	li	a3,7
    80002484:	00d78123          	sb	a3,2(a5)
    80002488:	00e780a3          	sb	a4,1(a5)
    8000248c:	00813403          	ld	s0,8(sp)
    80002490:	01010113          	addi	sp,sp,16
    80002494:	00008067          	ret

0000000080002498 <uartputc>:
    80002498:	00002797          	auipc	a5,0x2
    8000249c:	d907a783          	lw	a5,-624(a5) # 80004228 <panicked>
    800024a0:	00078463          	beqz	a5,800024a8 <uartputc+0x10>
    800024a4:	0000006f          	j	800024a4 <uartputc+0xc>
    800024a8:	fd010113          	addi	sp,sp,-48
    800024ac:	02813023          	sd	s0,32(sp)
    800024b0:	00913c23          	sd	s1,24(sp)
    800024b4:	01213823          	sd	s2,16(sp)
    800024b8:	01313423          	sd	s3,8(sp)
    800024bc:	02113423          	sd	ra,40(sp)
    800024c0:	03010413          	addi	s0,sp,48
    800024c4:	00002917          	auipc	s2,0x2
    800024c8:	d6c90913          	addi	s2,s2,-660 # 80004230 <uart_tx_r>
    800024cc:	00093783          	ld	a5,0(s2)
    800024d0:	00002497          	auipc	s1,0x2
    800024d4:	d6848493          	addi	s1,s1,-664 # 80004238 <uart_tx_w>
    800024d8:	0004b703          	ld	a4,0(s1)
    800024dc:	02078693          	addi	a3,a5,32
    800024e0:	00050993          	mv	s3,a0
    800024e4:	02e69c63          	bne	a3,a4,8000251c <uartputc+0x84>
    800024e8:	00001097          	auipc	ra,0x1
    800024ec:	834080e7          	jalr	-1996(ra) # 80002d1c <push_on>
    800024f0:	00093783          	ld	a5,0(s2)
    800024f4:	0004b703          	ld	a4,0(s1)
    800024f8:	02078793          	addi	a5,a5,32
    800024fc:	00e79463          	bne	a5,a4,80002504 <uartputc+0x6c>
    80002500:	0000006f          	j	80002500 <uartputc+0x68>
    80002504:	00001097          	auipc	ra,0x1
    80002508:	88c080e7          	jalr	-1908(ra) # 80002d90 <pop_on>
    8000250c:	00093783          	ld	a5,0(s2)
    80002510:	0004b703          	ld	a4,0(s1)
    80002514:	02078693          	addi	a3,a5,32
    80002518:	fce688e3          	beq	a3,a4,800024e8 <uartputc+0x50>
    8000251c:	01f77693          	andi	a3,a4,31
    80002520:	00003597          	auipc	a1,0x3
    80002524:	f6058593          	addi	a1,a1,-160 # 80005480 <uart_tx_buf>
    80002528:	00d586b3          	add	a3,a1,a3
    8000252c:	00170713          	addi	a4,a4,1
    80002530:	01368023          	sb	s3,0(a3)
    80002534:	00e4b023          	sd	a4,0(s1)
    80002538:	10000637          	lui	a2,0x10000
    8000253c:	02f71063          	bne	a4,a5,8000255c <uartputc+0xc4>
    80002540:	0340006f          	j	80002574 <uartputc+0xdc>
    80002544:	00074703          	lbu	a4,0(a4)
    80002548:	00f93023          	sd	a5,0(s2)
    8000254c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002550:	00093783          	ld	a5,0(s2)
    80002554:	0004b703          	ld	a4,0(s1)
    80002558:	00f70e63          	beq	a4,a5,80002574 <uartputc+0xdc>
    8000255c:	00564683          	lbu	a3,5(a2)
    80002560:	01f7f713          	andi	a4,a5,31
    80002564:	00e58733          	add	a4,a1,a4
    80002568:	0206f693          	andi	a3,a3,32
    8000256c:	00178793          	addi	a5,a5,1
    80002570:	fc069ae3          	bnez	a3,80002544 <uartputc+0xac>
    80002574:	02813083          	ld	ra,40(sp)
    80002578:	02013403          	ld	s0,32(sp)
    8000257c:	01813483          	ld	s1,24(sp)
    80002580:	01013903          	ld	s2,16(sp)
    80002584:	00813983          	ld	s3,8(sp)
    80002588:	03010113          	addi	sp,sp,48
    8000258c:	00008067          	ret

0000000080002590 <uartputc_sync>:
    80002590:	ff010113          	addi	sp,sp,-16
    80002594:	00813423          	sd	s0,8(sp)
    80002598:	01010413          	addi	s0,sp,16
    8000259c:	00002717          	auipc	a4,0x2
    800025a0:	c8c72703          	lw	a4,-884(a4) # 80004228 <panicked>
    800025a4:	02071663          	bnez	a4,800025d0 <uartputc_sync+0x40>
    800025a8:	00050793          	mv	a5,a0
    800025ac:	100006b7          	lui	a3,0x10000
    800025b0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800025b4:	02077713          	andi	a4,a4,32
    800025b8:	fe070ce3          	beqz	a4,800025b0 <uartputc_sync+0x20>
    800025bc:	0ff7f793          	andi	a5,a5,255
    800025c0:	00f68023          	sb	a5,0(a3)
    800025c4:	00813403          	ld	s0,8(sp)
    800025c8:	01010113          	addi	sp,sp,16
    800025cc:	00008067          	ret
    800025d0:	0000006f          	j	800025d0 <uartputc_sync+0x40>

00000000800025d4 <uartstart>:
    800025d4:	ff010113          	addi	sp,sp,-16
    800025d8:	00813423          	sd	s0,8(sp)
    800025dc:	01010413          	addi	s0,sp,16
    800025e0:	00002617          	auipc	a2,0x2
    800025e4:	c5060613          	addi	a2,a2,-944 # 80004230 <uart_tx_r>
    800025e8:	00002517          	auipc	a0,0x2
    800025ec:	c5050513          	addi	a0,a0,-944 # 80004238 <uart_tx_w>
    800025f0:	00063783          	ld	a5,0(a2)
    800025f4:	00053703          	ld	a4,0(a0)
    800025f8:	04f70263          	beq	a4,a5,8000263c <uartstart+0x68>
    800025fc:	100005b7          	lui	a1,0x10000
    80002600:	00003817          	auipc	a6,0x3
    80002604:	e8080813          	addi	a6,a6,-384 # 80005480 <uart_tx_buf>
    80002608:	01c0006f          	j	80002624 <uartstart+0x50>
    8000260c:	0006c703          	lbu	a4,0(a3)
    80002610:	00f63023          	sd	a5,0(a2)
    80002614:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002618:	00063783          	ld	a5,0(a2)
    8000261c:	00053703          	ld	a4,0(a0)
    80002620:	00f70e63          	beq	a4,a5,8000263c <uartstart+0x68>
    80002624:	01f7f713          	andi	a4,a5,31
    80002628:	00e806b3          	add	a3,a6,a4
    8000262c:	0055c703          	lbu	a4,5(a1)
    80002630:	00178793          	addi	a5,a5,1
    80002634:	02077713          	andi	a4,a4,32
    80002638:	fc071ae3          	bnez	a4,8000260c <uartstart+0x38>
    8000263c:	00813403          	ld	s0,8(sp)
    80002640:	01010113          	addi	sp,sp,16
    80002644:	00008067          	ret

0000000080002648 <uartgetc>:
    80002648:	ff010113          	addi	sp,sp,-16
    8000264c:	00813423          	sd	s0,8(sp)
    80002650:	01010413          	addi	s0,sp,16
    80002654:	10000737          	lui	a4,0x10000
    80002658:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000265c:	0017f793          	andi	a5,a5,1
    80002660:	00078c63          	beqz	a5,80002678 <uartgetc+0x30>
    80002664:	00074503          	lbu	a0,0(a4)
    80002668:	0ff57513          	andi	a0,a0,255
    8000266c:	00813403          	ld	s0,8(sp)
    80002670:	01010113          	addi	sp,sp,16
    80002674:	00008067          	ret
    80002678:	fff00513          	li	a0,-1
    8000267c:	ff1ff06f          	j	8000266c <uartgetc+0x24>

0000000080002680 <uartintr>:
    80002680:	100007b7          	lui	a5,0x10000
    80002684:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002688:	0017f793          	andi	a5,a5,1
    8000268c:	0a078463          	beqz	a5,80002734 <uartintr+0xb4>
    80002690:	fe010113          	addi	sp,sp,-32
    80002694:	00813823          	sd	s0,16(sp)
    80002698:	00913423          	sd	s1,8(sp)
    8000269c:	00113c23          	sd	ra,24(sp)
    800026a0:	02010413          	addi	s0,sp,32
    800026a4:	100004b7          	lui	s1,0x10000
    800026a8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800026ac:	0ff57513          	andi	a0,a0,255
    800026b0:	fffff097          	auipc	ra,0xfffff
    800026b4:	534080e7          	jalr	1332(ra) # 80001be4 <consoleintr>
    800026b8:	0054c783          	lbu	a5,5(s1)
    800026bc:	0017f793          	andi	a5,a5,1
    800026c0:	fe0794e3          	bnez	a5,800026a8 <uartintr+0x28>
    800026c4:	00002617          	auipc	a2,0x2
    800026c8:	b6c60613          	addi	a2,a2,-1172 # 80004230 <uart_tx_r>
    800026cc:	00002517          	auipc	a0,0x2
    800026d0:	b6c50513          	addi	a0,a0,-1172 # 80004238 <uart_tx_w>
    800026d4:	00063783          	ld	a5,0(a2)
    800026d8:	00053703          	ld	a4,0(a0)
    800026dc:	04f70263          	beq	a4,a5,80002720 <uartintr+0xa0>
    800026e0:	100005b7          	lui	a1,0x10000
    800026e4:	00003817          	auipc	a6,0x3
    800026e8:	d9c80813          	addi	a6,a6,-612 # 80005480 <uart_tx_buf>
    800026ec:	01c0006f          	j	80002708 <uartintr+0x88>
    800026f0:	0006c703          	lbu	a4,0(a3)
    800026f4:	00f63023          	sd	a5,0(a2)
    800026f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800026fc:	00063783          	ld	a5,0(a2)
    80002700:	00053703          	ld	a4,0(a0)
    80002704:	00f70e63          	beq	a4,a5,80002720 <uartintr+0xa0>
    80002708:	01f7f713          	andi	a4,a5,31
    8000270c:	00e806b3          	add	a3,a6,a4
    80002710:	0055c703          	lbu	a4,5(a1)
    80002714:	00178793          	addi	a5,a5,1
    80002718:	02077713          	andi	a4,a4,32
    8000271c:	fc071ae3          	bnez	a4,800026f0 <uartintr+0x70>
    80002720:	01813083          	ld	ra,24(sp)
    80002724:	01013403          	ld	s0,16(sp)
    80002728:	00813483          	ld	s1,8(sp)
    8000272c:	02010113          	addi	sp,sp,32
    80002730:	00008067          	ret
    80002734:	00002617          	auipc	a2,0x2
    80002738:	afc60613          	addi	a2,a2,-1284 # 80004230 <uart_tx_r>
    8000273c:	00002517          	auipc	a0,0x2
    80002740:	afc50513          	addi	a0,a0,-1284 # 80004238 <uart_tx_w>
    80002744:	00063783          	ld	a5,0(a2)
    80002748:	00053703          	ld	a4,0(a0)
    8000274c:	04f70263          	beq	a4,a5,80002790 <uartintr+0x110>
    80002750:	100005b7          	lui	a1,0x10000
    80002754:	00003817          	auipc	a6,0x3
    80002758:	d2c80813          	addi	a6,a6,-724 # 80005480 <uart_tx_buf>
    8000275c:	01c0006f          	j	80002778 <uartintr+0xf8>
    80002760:	0006c703          	lbu	a4,0(a3)
    80002764:	00f63023          	sd	a5,0(a2)
    80002768:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000276c:	00063783          	ld	a5,0(a2)
    80002770:	00053703          	ld	a4,0(a0)
    80002774:	02f70063          	beq	a4,a5,80002794 <uartintr+0x114>
    80002778:	01f7f713          	andi	a4,a5,31
    8000277c:	00e806b3          	add	a3,a6,a4
    80002780:	0055c703          	lbu	a4,5(a1)
    80002784:	00178793          	addi	a5,a5,1
    80002788:	02077713          	andi	a4,a4,32
    8000278c:	fc071ae3          	bnez	a4,80002760 <uartintr+0xe0>
    80002790:	00008067          	ret
    80002794:	00008067          	ret

0000000080002798 <kinit>:
    80002798:	fc010113          	addi	sp,sp,-64
    8000279c:	02913423          	sd	s1,40(sp)
    800027a0:	fffff7b7          	lui	a5,0xfffff
    800027a4:	00004497          	auipc	s1,0x4
    800027a8:	cfb48493          	addi	s1,s1,-773 # 8000649f <end+0xfff>
    800027ac:	02813823          	sd	s0,48(sp)
    800027b0:	01313c23          	sd	s3,24(sp)
    800027b4:	00f4f4b3          	and	s1,s1,a5
    800027b8:	02113c23          	sd	ra,56(sp)
    800027bc:	03213023          	sd	s2,32(sp)
    800027c0:	01413823          	sd	s4,16(sp)
    800027c4:	01513423          	sd	s5,8(sp)
    800027c8:	04010413          	addi	s0,sp,64
    800027cc:	000017b7          	lui	a5,0x1
    800027d0:	01100993          	li	s3,17
    800027d4:	00f487b3          	add	a5,s1,a5
    800027d8:	01b99993          	slli	s3,s3,0x1b
    800027dc:	06f9e063          	bltu	s3,a5,8000283c <kinit+0xa4>
    800027e0:	00003a97          	auipc	s5,0x3
    800027e4:	cc0a8a93          	addi	s5,s5,-832 # 800054a0 <end>
    800027e8:	0754ec63          	bltu	s1,s5,80002860 <kinit+0xc8>
    800027ec:	0734fa63          	bgeu	s1,s3,80002860 <kinit+0xc8>
    800027f0:	00088a37          	lui	s4,0x88
    800027f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800027f8:	00002917          	auipc	s2,0x2
    800027fc:	a4890913          	addi	s2,s2,-1464 # 80004240 <kmem>
    80002800:	00ca1a13          	slli	s4,s4,0xc
    80002804:	0140006f          	j	80002818 <kinit+0x80>
    80002808:	000017b7          	lui	a5,0x1
    8000280c:	00f484b3          	add	s1,s1,a5
    80002810:	0554e863          	bltu	s1,s5,80002860 <kinit+0xc8>
    80002814:	0534f663          	bgeu	s1,s3,80002860 <kinit+0xc8>
    80002818:	00001637          	lui	a2,0x1
    8000281c:	00100593          	li	a1,1
    80002820:	00048513          	mv	a0,s1
    80002824:	00000097          	auipc	ra,0x0
    80002828:	5e4080e7          	jalr	1508(ra) # 80002e08 <__memset>
    8000282c:	00093783          	ld	a5,0(s2)
    80002830:	00f4b023          	sd	a5,0(s1)
    80002834:	00993023          	sd	s1,0(s2)
    80002838:	fd4498e3          	bne	s1,s4,80002808 <kinit+0x70>
    8000283c:	03813083          	ld	ra,56(sp)
    80002840:	03013403          	ld	s0,48(sp)
    80002844:	02813483          	ld	s1,40(sp)
    80002848:	02013903          	ld	s2,32(sp)
    8000284c:	01813983          	ld	s3,24(sp)
    80002850:	01013a03          	ld	s4,16(sp)
    80002854:	00813a83          	ld	s5,8(sp)
    80002858:	04010113          	addi	sp,sp,64
    8000285c:	00008067          	ret
    80002860:	00002517          	auipc	a0,0x2
    80002864:	91050513          	addi	a0,a0,-1776 # 80004170 <digits+0x18>
    80002868:	fffff097          	auipc	ra,0xfffff
    8000286c:	4b4080e7          	jalr	1204(ra) # 80001d1c <panic>

0000000080002870 <freerange>:
    80002870:	fc010113          	addi	sp,sp,-64
    80002874:	000017b7          	lui	a5,0x1
    80002878:	02913423          	sd	s1,40(sp)
    8000287c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002880:	009504b3          	add	s1,a0,s1
    80002884:	fffff537          	lui	a0,0xfffff
    80002888:	02813823          	sd	s0,48(sp)
    8000288c:	02113c23          	sd	ra,56(sp)
    80002890:	03213023          	sd	s2,32(sp)
    80002894:	01313c23          	sd	s3,24(sp)
    80002898:	01413823          	sd	s4,16(sp)
    8000289c:	01513423          	sd	s5,8(sp)
    800028a0:	01613023          	sd	s6,0(sp)
    800028a4:	04010413          	addi	s0,sp,64
    800028a8:	00a4f4b3          	and	s1,s1,a0
    800028ac:	00f487b3          	add	a5,s1,a5
    800028b0:	06f5e463          	bltu	a1,a5,80002918 <freerange+0xa8>
    800028b4:	00003a97          	auipc	s5,0x3
    800028b8:	beca8a93          	addi	s5,s5,-1044 # 800054a0 <end>
    800028bc:	0954e263          	bltu	s1,s5,80002940 <freerange+0xd0>
    800028c0:	01100993          	li	s3,17
    800028c4:	01b99993          	slli	s3,s3,0x1b
    800028c8:	0734fc63          	bgeu	s1,s3,80002940 <freerange+0xd0>
    800028cc:	00058a13          	mv	s4,a1
    800028d0:	00002917          	auipc	s2,0x2
    800028d4:	97090913          	addi	s2,s2,-1680 # 80004240 <kmem>
    800028d8:	00002b37          	lui	s6,0x2
    800028dc:	0140006f          	j	800028f0 <freerange+0x80>
    800028e0:	000017b7          	lui	a5,0x1
    800028e4:	00f484b3          	add	s1,s1,a5
    800028e8:	0554ec63          	bltu	s1,s5,80002940 <freerange+0xd0>
    800028ec:	0534fa63          	bgeu	s1,s3,80002940 <freerange+0xd0>
    800028f0:	00001637          	lui	a2,0x1
    800028f4:	00100593          	li	a1,1
    800028f8:	00048513          	mv	a0,s1
    800028fc:	00000097          	auipc	ra,0x0
    80002900:	50c080e7          	jalr	1292(ra) # 80002e08 <__memset>
    80002904:	00093703          	ld	a4,0(s2)
    80002908:	016487b3          	add	a5,s1,s6
    8000290c:	00e4b023          	sd	a4,0(s1)
    80002910:	00993023          	sd	s1,0(s2)
    80002914:	fcfa76e3          	bgeu	s4,a5,800028e0 <freerange+0x70>
    80002918:	03813083          	ld	ra,56(sp)
    8000291c:	03013403          	ld	s0,48(sp)
    80002920:	02813483          	ld	s1,40(sp)
    80002924:	02013903          	ld	s2,32(sp)
    80002928:	01813983          	ld	s3,24(sp)
    8000292c:	01013a03          	ld	s4,16(sp)
    80002930:	00813a83          	ld	s5,8(sp)
    80002934:	00013b03          	ld	s6,0(sp)
    80002938:	04010113          	addi	sp,sp,64
    8000293c:	00008067          	ret
    80002940:	00002517          	auipc	a0,0x2
    80002944:	83050513          	addi	a0,a0,-2000 # 80004170 <digits+0x18>
    80002948:	fffff097          	auipc	ra,0xfffff
    8000294c:	3d4080e7          	jalr	980(ra) # 80001d1c <panic>

0000000080002950 <kfree>:
    80002950:	fe010113          	addi	sp,sp,-32
    80002954:	00813823          	sd	s0,16(sp)
    80002958:	00113c23          	sd	ra,24(sp)
    8000295c:	00913423          	sd	s1,8(sp)
    80002960:	02010413          	addi	s0,sp,32
    80002964:	03451793          	slli	a5,a0,0x34
    80002968:	04079c63          	bnez	a5,800029c0 <kfree+0x70>
    8000296c:	00003797          	auipc	a5,0x3
    80002970:	b3478793          	addi	a5,a5,-1228 # 800054a0 <end>
    80002974:	00050493          	mv	s1,a0
    80002978:	04f56463          	bltu	a0,a5,800029c0 <kfree+0x70>
    8000297c:	01100793          	li	a5,17
    80002980:	01b79793          	slli	a5,a5,0x1b
    80002984:	02f57e63          	bgeu	a0,a5,800029c0 <kfree+0x70>
    80002988:	00001637          	lui	a2,0x1
    8000298c:	00100593          	li	a1,1
    80002990:	00000097          	auipc	ra,0x0
    80002994:	478080e7          	jalr	1144(ra) # 80002e08 <__memset>
    80002998:	00002797          	auipc	a5,0x2
    8000299c:	8a878793          	addi	a5,a5,-1880 # 80004240 <kmem>
    800029a0:	0007b703          	ld	a4,0(a5)
    800029a4:	01813083          	ld	ra,24(sp)
    800029a8:	01013403          	ld	s0,16(sp)
    800029ac:	00e4b023          	sd	a4,0(s1)
    800029b0:	0097b023          	sd	s1,0(a5)
    800029b4:	00813483          	ld	s1,8(sp)
    800029b8:	02010113          	addi	sp,sp,32
    800029bc:	00008067          	ret
    800029c0:	00001517          	auipc	a0,0x1
    800029c4:	7b050513          	addi	a0,a0,1968 # 80004170 <digits+0x18>
    800029c8:	fffff097          	auipc	ra,0xfffff
    800029cc:	354080e7          	jalr	852(ra) # 80001d1c <panic>

00000000800029d0 <kalloc>:
    800029d0:	fe010113          	addi	sp,sp,-32
    800029d4:	00813823          	sd	s0,16(sp)
    800029d8:	00913423          	sd	s1,8(sp)
    800029dc:	00113c23          	sd	ra,24(sp)
    800029e0:	02010413          	addi	s0,sp,32
    800029e4:	00002797          	auipc	a5,0x2
    800029e8:	85c78793          	addi	a5,a5,-1956 # 80004240 <kmem>
    800029ec:	0007b483          	ld	s1,0(a5)
    800029f0:	02048063          	beqz	s1,80002a10 <kalloc+0x40>
    800029f4:	0004b703          	ld	a4,0(s1)
    800029f8:	00001637          	lui	a2,0x1
    800029fc:	00500593          	li	a1,5
    80002a00:	00048513          	mv	a0,s1
    80002a04:	00e7b023          	sd	a4,0(a5)
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	400080e7          	jalr	1024(ra) # 80002e08 <__memset>
    80002a10:	01813083          	ld	ra,24(sp)
    80002a14:	01013403          	ld	s0,16(sp)
    80002a18:	00048513          	mv	a0,s1
    80002a1c:	00813483          	ld	s1,8(sp)
    80002a20:	02010113          	addi	sp,sp,32
    80002a24:	00008067          	ret

0000000080002a28 <initlock>:
    80002a28:	ff010113          	addi	sp,sp,-16
    80002a2c:	00813423          	sd	s0,8(sp)
    80002a30:	01010413          	addi	s0,sp,16
    80002a34:	00813403          	ld	s0,8(sp)
    80002a38:	00b53423          	sd	a1,8(a0)
    80002a3c:	00052023          	sw	zero,0(a0)
    80002a40:	00053823          	sd	zero,16(a0)
    80002a44:	01010113          	addi	sp,sp,16
    80002a48:	00008067          	ret

0000000080002a4c <acquire>:
    80002a4c:	fe010113          	addi	sp,sp,-32
    80002a50:	00813823          	sd	s0,16(sp)
    80002a54:	00913423          	sd	s1,8(sp)
    80002a58:	00113c23          	sd	ra,24(sp)
    80002a5c:	01213023          	sd	s2,0(sp)
    80002a60:	02010413          	addi	s0,sp,32
    80002a64:	00050493          	mv	s1,a0
    80002a68:	10002973          	csrr	s2,sstatus
    80002a6c:	100027f3          	csrr	a5,sstatus
    80002a70:	ffd7f793          	andi	a5,a5,-3
    80002a74:	10079073          	csrw	sstatus,a5
    80002a78:	fffff097          	auipc	ra,0xfffff
    80002a7c:	8e8080e7          	jalr	-1816(ra) # 80001360 <mycpu>
    80002a80:	07852783          	lw	a5,120(a0)
    80002a84:	06078e63          	beqz	a5,80002b00 <acquire+0xb4>
    80002a88:	fffff097          	auipc	ra,0xfffff
    80002a8c:	8d8080e7          	jalr	-1832(ra) # 80001360 <mycpu>
    80002a90:	07852783          	lw	a5,120(a0)
    80002a94:	0004a703          	lw	a4,0(s1)
    80002a98:	0017879b          	addiw	a5,a5,1
    80002a9c:	06f52c23          	sw	a5,120(a0)
    80002aa0:	04071063          	bnez	a4,80002ae0 <acquire+0x94>
    80002aa4:	00100713          	li	a4,1
    80002aa8:	00070793          	mv	a5,a4
    80002aac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80002ab0:	0007879b          	sext.w	a5,a5
    80002ab4:	fe079ae3          	bnez	a5,80002aa8 <acquire+0x5c>
    80002ab8:	0ff0000f          	fence
    80002abc:	fffff097          	auipc	ra,0xfffff
    80002ac0:	8a4080e7          	jalr	-1884(ra) # 80001360 <mycpu>
    80002ac4:	01813083          	ld	ra,24(sp)
    80002ac8:	01013403          	ld	s0,16(sp)
    80002acc:	00a4b823          	sd	a0,16(s1)
    80002ad0:	00013903          	ld	s2,0(sp)
    80002ad4:	00813483          	ld	s1,8(sp)
    80002ad8:	02010113          	addi	sp,sp,32
    80002adc:	00008067          	ret
    80002ae0:	0104b903          	ld	s2,16(s1)
    80002ae4:	fffff097          	auipc	ra,0xfffff
    80002ae8:	87c080e7          	jalr	-1924(ra) # 80001360 <mycpu>
    80002aec:	faa91ce3          	bne	s2,a0,80002aa4 <acquire+0x58>
    80002af0:	00001517          	auipc	a0,0x1
    80002af4:	68850513          	addi	a0,a0,1672 # 80004178 <digits+0x20>
    80002af8:	fffff097          	auipc	ra,0xfffff
    80002afc:	224080e7          	jalr	548(ra) # 80001d1c <panic>
    80002b00:	00195913          	srli	s2,s2,0x1
    80002b04:	fffff097          	auipc	ra,0xfffff
    80002b08:	85c080e7          	jalr	-1956(ra) # 80001360 <mycpu>
    80002b0c:	00197913          	andi	s2,s2,1
    80002b10:	07252e23          	sw	s2,124(a0)
    80002b14:	f75ff06f          	j	80002a88 <acquire+0x3c>

0000000080002b18 <release>:
    80002b18:	fe010113          	addi	sp,sp,-32
    80002b1c:	00813823          	sd	s0,16(sp)
    80002b20:	00113c23          	sd	ra,24(sp)
    80002b24:	00913423          	sd	s1,8(sp)
    80002b28:	01213023          	sd	s2,0(sp)
    80002b2c:	02010413          	addi	s0,sp,32
    80002b30:	00052783          	lw	a5,0(a0)
    80002b34:	00079a63          	bnez	a5,80002b48 <release+0x30>
    80002b38:	00001517          	auipc	a0,0x1
    80002b3c:	64850513          	addi	a0,a0,1608 # 80004180 <digits+0x28>
    80002b40:	fffff097          	auipc	ra,0xfffff
    80002b44:	1dc080e7          	jalr	476(ra) # 80001d1c <panic>
    80002b48:	01053903          	ld	s2,16(a0)
    80002b4c:	00050493          	mv	s1,a0
    80002b50:	fffff097          	auipc	ra,0xfffff
    80002b54:	810080e7          	jalr	-2032(ra) # 80001360 <mycpu>
    80002b58:	fea910e3          	bne	s2,a0,80002b38 <release+0x20>
    80002b5c:	0004b823          	sd	zero,16(s1)
    80002b60:	0ff0000f          	fence
    80002b64:	0f50000f          	fence	iorw,ow
    80002b68:	0804a02f          	amoswap.w	zero,zero,(s1)
    80002b6c:	ffffe097          	auipc	ra,0xffffe
    80002b70:	7f4080e7          	jalr	2036(ra) # 80001360 <mycpu>
    80002b74:	100027f3          	csrr	a5,sstatus
    80002b78:	0027f793          	andi	a5,a5,2
    80002b7c:	04079a63          	bnez	a5,80002bd0 <release+0xb8>
    80002b80:	07852783          	lw	a5,120(a0)
    80002b84:	02f05e63          	blez	a5,80002bc0 <release+0xa8>
    80002b88:	fff7871b          	addiw	a4,a5,-1
    80002b8c:	06e52c23          	sw	a4,120(a0)
    80002b90:	00071c63          	bnez	a4,80002ba8 <release+0x90>
    80002b94:	07c52783          	lw	a5,124(a0)
    80002b98:	00078863          	beqz	a5,80002ba8 <release+0x90>
    80002b9c:	100027f3          	csrr	a5,sstatus
    80002ba0:	0027e793          	ori	a5,a5,2
    80002ba4:	10079073          	csrw	sstatus,a5
    80002ba8:	01813083          	ld	ra,24(sp)
    80002bac:	01013403          	ld	s0,16(sp)
    80002bb0:	00813483          	ld	s1,8(sp)
    80002bb4:	00013903          	ld	s2,0(sp)
    80002bb8:	02010113          	addi	sp,sp,32
    80002bbc:	00008067          	ret
    80002bc0:	00001517          	auipc	a0,0x1
    80002bc4:	5e050513          	addi	a0,a0,1504 # 800041a0 <digits+0x48>
    80002bc8:	fffff097          	auipc	ra,0xfffff
    80002bcc:	154080e7          	jalr	340(ra) # 80001d1c <panic>
    80002bd0:	00001517          	auipc	a0,0x1
    80002bd4:	5b850513          	addi	a0,a0,1464 # 80004188 <digits+0x30>
    80002bd8:	fffff097          	auipc	ra,0xfffff
    80002bdc:	144080e7          	jalr	324(ra) # 80001d1c <panic>

0000000080002be0 <holding>:
    80002be0:	00052783          	lw	a5,0(a0)
    80002be4:	00079663          	bnez	a5,80002bf0 <holding+0x10>
    80002be8:	00000513          	li	a0,0
    80002bec:	00008067          	ret
    80002bf0:	fe010113          	addi	sp,sp,-32
    80002bf4:	00813823          	sd	s0,16(sp)
    80002bf8:	00913423          	sd	s1,8(sp)
    80002bfc:	00113c23          	sd	ra,24(sp)
    80002c00:	02010413          	addi	s0,sp,32
    80002c04:	01053483          	ld	s1,16(a0)
    80002c08:	ffffe097          	auipc	ra,0xffffe
    80002c0c:	758080e7          	jalr	1880(ra) # 80001360 <mycpu>
    80002c10:	01813083          	ld	ra,24(sp)
    80002c14:	01013403          	ld	s0,16(sp)
    80002c18:	40a48533          	sub	a0,s1,a0
    80002c1c:	00153513          	seqz	a0,a0
    80002c20:	00813483          	ld	s1,8(sp)
    80002c24:	02010113          	addi	sp,sp,32
    80002c28:	00008067          	ret

0000000080002c2c <push_off>:
    80002c2c:	fe010113          	addi	sp,sp,-32
    80002c30:	00813823          	sd	s0,16(sp)
    80002c34:	00113c23          	sd	ra,24(sp)
    80002c38:	00913423          	sd	s1,8(sp)
    80002c3c:	02010413          	addi	s0,sp,32
    80002c40:	100024f3          	csrr	s1,sstatus
    80002c44:	100027f3          	csrr	a5,sstatus
    80002c48:	ffd7f793          	andi	a5,a5,-3
    80002c4c:	10079073          	csrw	sstatus,a5
    80002c50:	ffffe097          	auipc	ra,0xffffe
    80002c54:	710080e7          	jalr	1808(ra) # 80001360 <mycpu>
    80002c58:	07852783          	lw	a5,120(a0)
    80002c5c:	02078663          	beqz	a5,80002c88 <push_off+0x5c>
    80002c60:	ffffe097          	auipc	ra,0xffffe
    80002c64:	700080e7          	jalr	1792(ra) # 80001360 <mycpu>
    80002c68:	07852783          	lw	a5,120(a0)
    80002c6c:	01813083          	ld	ra,24(sp)
    80002c70:	01013403          	ld	s0,16(sp)
    80002c74:	0017879b          	addiw	a5,a5,1
    80002c78:	06f52c23          	sw	a5,120(a0)
    80002c7c:	00813483          	ld	s1,8(sp)
    80002c80:	02010113          	addi	sp,sp,32
    80002c84:	00008067          	ret
    80002c88:	0014d493          	srli	s1,s1,0x1
    80002c8c:	ffffe097          	auipc	ra,0xffffe
    80002c90:	6d4080e7          	jalr	1748(ra) # 80001360 <mycpu>
    80002c94:	0014f493          	andi	s1,s1,1
    80002c98:	06952e23          	sw	s1,124(a0)
    80002c9c:	fc5ff06f          	j	80002c60 <push_off+0x34>

0000000080002ca0 <pop_off>:
    80002ca0:	ff010113          	addi	sp,sp,-16
    80002ca4:	00813023          	sd	s0,0(sp)
    80002ca8:	00113423          	sd	ra,8(sp)
    80002cac:	01010413          	addi	s0,sp,16
    80002cb0:	ffffe097          	auipc	ra,0xffffe
    80002cb4:	6b0080e7          	jalr	1712(ra) # 80001360 <mycpu>
    80002cb8:	100027f3          	csrr	a5,sstatus
    80002cbc:	0027f793          	andi	a5,a5,2
    80002cc0:	04079663          	bnez	a5,80002d0c <pop_off+0x6c>
    80002cc4:	07852783          	lw	a5,120(a0)
    80002cc8:	02f05a63          	blez	a5,80002cfc <pop_off+0x5c>
    80002ccc:	fff7871b          	addiw	a4,a5,-1
    80002cd0:	06e52c23          	sw	a4,120(a0)
    80002cd4:	00071c63          	bnez	a4,80002cec <pop_off+0x4c>
    80002cd8:	07c52783          	lw	a5,124(a0)
    80002cdc:	00078863          	beqz	a5,80002cec <pop_off+0x4c>
    80002ce0:	100027f3          	csrr	a5,sstatus
    80002ce4:	0027e793          	ori	a5,a5,2
    80002ce8:	10079073          	csrw	sstatus,a5
    80002cec:	00813083          	ld	ra,8(sp)
    80002cf0:	00013403          	ld	s0,0(sp)
    80002cf4:	01010113          	addi	sp,sp,16
    80002cf8:	00008067          	ret
    80002cfc:	00001517          	auipc	a0,0x1
    80002d00:	4a450513          	addi	a0,a0,1188 # 800041a0 <digits+0x48>
    80002d04:	fffff097          	auipc	ra,0xfffff
    80002d08:	018080e7          	jalr	24(ra) # 80001d1c <panic>
    80002d0c:	00001517          	auipc	a0,0x1
    80002d10:	47c50513          	addi	a0,a0,1148 # 80004188 <digits+0x30>
    80002d14:	fffff097          	auipc	ra,0xfffff
    80002d18:	008080e7          	jalr	8(ra) # 80001d1c <panic>

0000000080002d1c <push_on>:
    80002d1c:	fe010113          	addi	sp,sp,-32
    80002d20:	00813823          	sd	s0,16(sp)
    80002d24:	00113c23          	sd	ra,24(sp)
    80002d28:	00913423          	sd	s1,8(sp)
    80002d2c:	02010413          	addi	s0,sp,32
    80002d30:	100024f3          	csrr	s1,sstatus
    80002d34:	100027f3          	csrr	a5,sstatus
    80002d38:	0027e793          	ori	a5,a5,2
    80002d3c:	10079073          	csrw	sstatus,a5
    80002d40:	ffffe097          	auipc	ra,0xffffe
    80002d44:	620080e7          	jalr	1568(ra) # 80001360 <mycpu>
    80002d48:	07852783          	lw	a5,120(a0)
    80002d4c:	02078663          	beqz	a5,80002d78 <push_on+0x5c>
    80002d50:	ffffe097          	auipc	ra,0xffffe
    80002d54:	610080e7          	jalr	1552(ra) # 80001360 <mycpu>
    80002d58:	07852783          	lw	a5,120(a0)
    80002d5c:	01813083          	ld	ra,24(sp)
    80002d60:	01013403          	ld	s0,16(sp)
    80002d64:	0017879b          	addiw	a5,a5,1
    80002d68:	06f52c23          	sw	a5,120(a0)
    80002d6c:	00813483          	ld	s1,8(sp)
    80002d70:	02010113          	addi	sp,sp,32
    80002d74:	00008067          	ret
    80002d78:	0014d493          	srli	s1,s1,0x1
    80002d7c:	ffffe097          	auipc	ra,0xffffe
    80002d80:	5e4080e7          	jalr	1508(ra) # 80001360 <mycpu>
    80002d84:	0014f493          	andi	s1,s1,1
    80002d88:	06952e23          	sw	s1,124(a0)
    80002d8c:	fc5ff06f          	j	80002d50 <push_on+0x34>

0000000080002d90 <pop_on>:
    80002d90:	ff010113          	addi	sp,sp,-16
    80002d94:	00813023          	sd	s0,0(sp)
    80002d98:	00113423          	sd	ra,8(sp)
    80002d9c:	01010413          	addi	s0,sp,16
    80002da0:	ffffe097          	auipc	ra,0xffffe
    80002da4:	5c0080e7          	jalr	1472(ra) # 80001360 <mycpu>
    80002da8:	100027f3          	csrr	a5,sstatus
    80002dac:	0027f793          	andi	a5,a5,2
    80002db0:	04078463          	beqz	a5,80002df8 <pop_on+0x68>
    80002db4:	07852783          	lw	a5,120(a0)
    80002db8:	02f05863          	blez	a5,80002de8 <pop_on+0x58>
    80002dbc:	fff7879b          	addiw	a5,a5,-1
    80002dc0:	06f52c23          	sw	a5,120(a0)
    80002dc4:	07853783          	ld	a5,120(a0)
    80002dc8:	00079863          	bnez	a5,80002dd8 <pop_on+0x48>
    80002dcc:	100027f3          	csrr	a5,sstatus
    80002dd0:	ffd7f793          	andi	a5,a5,-3
    80002dd4:	10079073          	csrw	sstatus,a5
    80002dd8:	00813083          	ld	ra,8(sp)
    80002ddc:	00013403          	ld	s0,0(sp)
    80002de0:	01010113          	addi	sp,sp,16
    80002de4:	00008067          	ret
    80002de8:	00001517          	auipc	a0,0x1
    80002dec:	3e050513          	addi	a0,a0,992 # 800041c8 <digits+0x70>
    80002df0:	fffff097          	auipc	ra,0xfffff
    80002df4:	f2c080e7          	jalr	-212(ra) # 80001d1c <panic>
    80002df8:	00001517          	auipc	a0,0x1
    80002dfc:	3b050513          	addi	a0,a0,944 # 800041a8 <digits+0x50>
    80002e00:	fffff097          	auipc	ra,0xfffff
    80002e04:	f1c080e7          	jalr	-228(ra) # 80001d1c <panic>

0000000080002e08 <__memset>:
    80002e08:	ff010113          	addi	sp,sp,-16
    80002e0c:	00813423          	sd	s0,8(sp)
    80002e10:	01010413          	addi	s0,sp,16
    80002e14:	1a060e63          	beqz	a2,80002fd0 <__memset+0x1c8>
    80002e18:	40a007b3          	neg	a5,a0
    80002e1c:	0077f793          	andi	a5,a5,7
    80002e20:	00778693          	addi	a3,a5,7
    80002e24:	00b00813          	li	a6,11
    80002e28:	0ff5f593          	andi	a1,a1,255
    80002e2c:	fff6071b          	addiw	a4,a2,-1
    80002e30:	1b06e663          	bltu	a3,a6,80002fdc <__memset+0x1d4>
    80002e34:	1cd76463          	bltu	a4,a3,80002ffc <__memset+0x1f4>
    80002e38:	1a078e63          	beqz	a5,80002ff4 <__memset+0x1ec>
    80002e3c:	00b50023          	sb	a1,0(a0)
    80002e40:	00100713          	li	a4,1
    80002e44:	1ae78463          	beq	a5,a4,80002fec <__memset+0x1e4>
    80002e48:	00b500a3          	sb	a1,1(a0)
    80002e4c:	00200713          	li	a4,2
    80002e50:	1ae78a63          	beq	a5,a4,80003004 <__memset+0x1fc>
    80002e54:	00b50123          	sb	a1,2(a0)
    80002e58:	00300713          	li	a4,3
    80002e5c:	18e78463          	beq	a5,a4,80002fe4 <__memset+0x1dc>
    80002e60:	00b501a3          	sb	a1,3(a0)
    80002e64:	00400713          	li	a4,4
    80002e68:	1ae78263          	beq	a5,a4,8000300c <__memset+0x204>
    80002e6c:	00b50223          	sb	a1,4(a0)
    80002e70:	00500713          	li	a4,5
    80002e74:	1ae78063          	beq	a5,a4,80003014 <__memset+0x20c>
    80002e78:	00b502a3          	sb	a1,5(a0)
    80002e7c:	00700713          	li	a4,7
    80002e80:	18e79e63          	bne	a5,a4,8000301c <__memset+0x214>
    80002e84:	00b50323          	sb	a1,6(a0)
    80002e88:	00700e93          	li	t4,7
    80002e8c:	00859713          	slli	a4,a1,0x8
    80002e90:	00e5e733          	or	a4,a1,a4
    80002e94:	01059e13          	slli	t3,a1,0x10
    80002e98:	01c76e33          	or	t3,a4,t3
    80002e9c:	01859313          	slli	t1,a1,0x18
    80002ea0:	006e6333          	or	t1,t3,t1
    80002ea4:	02059893          	slli	a7,a1,0x20
    80002ea8:	40f60e3b          	subw	t3,a2,a5
    80002eac:	011368b3          	or	a7,t1,a7
    80002eb0:	02859813          	slli	a6,a1,0x28
    80002eb4:	0108e833          	or	a6,a7,a6
    80002eb8:	03059693          	slli	a3,a1,0x30
    80002ebc:	003e589b          	srliw	a7,t3,0x3
    80002ec0:	00d866b3          	or	a3,a6,a3
    80002ec4:	03859713          	slli	a4,a1,0x38
    80002ec8:	00389813          	slli	a6,a7,0x3
    80002ecc:	00f507b3          	add	a5,a0,a5
    80002ed0:	00e6e733          	or	a4,a3,a4
    80002ed4:	000e089b          	sext.w	a7,t3
    80002ed8:	00f806b3          	add	a3,a6,a5
    80002edc:	00e7b023          	sd	a4,0(a5)
    80002ee0:	00878793          	addi	a5,a5,8
    80002ee4:	fed79ce3          	bne	a5,a3,80002edc <__memset+0xd4>
    80002ee8:	ff8e7793          	andi	a5,t3,-8
    80002eec:	0007871b          	sext.w	a4,a5
    80002ef0:	01d787bb          	addw	a5,a5,t4
    80002ef4:	0ce88e63          	beq	a7,a4,80002fd0 <__memset+0x1c8>
    80002ef8:	00f50733          	add	a4,a0,a5
    80002efc:	00b70023          	sb	a1,0(a4)
    80002f00:	0017871b          	addiw	a4,a5,1
    80002f04:	0cc77663          	bgeu	a4,a2,80002fd0 <__memset+0x1c8>
    80002f08:	00e50733          	add	a4,a0,a4
    80002f0c:	00b70023          	sb	a1,0(a4)
    80002f10:	0027871b          	addiw	a4,a5,2
    80002f14:	0ac77e63          	bgeu	a4,a2,80002fd0 <__memset+0x1c8>
    80002f18:	00e50733          	add	a4,a0,a4
    80002f1c:	00b70023          	sb	a1,0(a4)
    80002f20:	0037871b          	addiw	a4,a5,3
    80002f24:	0ac77663          	bgeu	a4,a2,80002fd0 <__memset+0x1c8>
    80002f28:	00e50733          	add	a4,a0,a4
    80002f2c:	00b70023          	sb	a1,0(a4)
    80002f30:	0047871b          	addiw	a4,a5,4
    80002f34:	08c77e63          	bgeu	a4,a2,80002fd0 <__memset+0x1c8>
    80002f38:	00e50733          	add	a4,a0,a4
    80002f3c:	00b70023          	sb	a1,0(a4)
    80002f40:	0057871b          	addiw	a4,a5,5
    80002f44:	08c77663          	bgeu	a4,a2,80002fd0 <__memset+0x1c8>
    80002f48:	00e50733          	add	a4,a0,a4
    80002f4c:	00b70023          	sb	a1,0(a4)
    80002f50:	0067871b          	addiw	a4,a5,6
    80002f54:	06c77e63          	bgeu	a4,a2,80002fd0 <__memset+0x1c8>
    80002f58:	00e50733          	add	a4,a0,a4
    80002f5c:	00b70023          	sb	a1,0(a4)
    80002f60:	0077871b          	addiw	a4,a5,7
    80002f64:	06c77663          	bgeu	a4,a2,80002fd0 <__memset+0x1c8>
    80002f68:	00e50733          	add	a4,a0,a4
    80002f6c:	00b70023          	sb	a1,0(a4)
    80002f70:	0087871b          	addiw	a4,a5,8
    80002f74:	04c77e63          	bgeu	a4,a2,80002fd0 <__memset+0x1c8>
    80002f78:	00e50733          	add	a4,a0,a4
    80002f7c:	00b70023          	sb	a1,0(a4)
    80002f80:	0097871b          	addiw	a4,a5,9
    80002f84:	04c77663          	bgeu	a4,a2,80002fd0 <__memset+0x1c8>
    80002f88:	00e50733          	add	a4,a0,a4
    80002f8c:	00b70023          	sb	a1,0(a4)
    80002f90:	00a7871b          	addiw	a4,a5,10
    80002f94:	02c77e63          	bgeu	a4,a2,80002fd0 <__memset+0x1c8>
    80002f98:	00e50733          	add	a4,a0,a4
    80002f9c:	00b70023          	sb	a1,0(a4)
    80002fa0:	00b7871b          	addiw	a4,a5,11
    80002fa4:	02c77663          	bgeu	a4,a2,80002fd0 <__memset+0x1c8>
    80002fa8:	00e50733          	add	a4,a0,a4
    80002fac:	00b70023          	sb	a1,0(a4)
    80002fb0:	00c7871b          	addiw	a4,a5,12
    80002fb4:	00c77e63          	bgeu	a4,a2,80002fd0 <__memset+0x1c8>
    80002fb8:	00e50733          	add	a4,a0,a4
    80002fbc:	00b70023          	sb	a1,0(a4)
    80002fc0:	00d7879b          	addiw	a5,a5,13
    80002fc4:	00c7f663          	bgeu	a5,a2,80002fd0 <__memset+0x1c8>
    80002fc8:	00f507b3          	add	a5,a0,a5
    80002fcc:	00b78023          	sb	a1,0(a5)
    80002fd0:	00813403          	ld	s0,8(sp)
    80002fd4:	01010113          	addi	sp,sp,16
    80002fd8:	00008067          	ret
    80002fdc:	00b00693          	li	a3,11
    80002fe0:	e55ff06f          	j	80002e34 <__memset+0x2c>
    80002fe4:	00300e93          	li	t4,3
    80002fe8:	ea5ff06f          	j	80002e8c <__memset+0x84>
    80002fec:	00100e93          	li	t4,1
    80002ff0:	e9dff06f          	j	80002e8c <__memset+0x84>
    80002ff4:	00000e93          	li	t4,0
    80002ff8:	e95ff06f          	j	80002e8c <__memset+0x84>
    80002ffc:	00000793          	li	a5,0
    80003000:	ef9ff06f          	j	80002ef8 <__memset+0xf0>
    80003004:	00200e93          	li	t4,2
    80003008:	e85ff06f          	j	80002e8c <__memset+0x84>
    8000300c:	00400e93          	li	t4,4
    80003010:	e7dff06f          	j	80002e8c <__memset+0x84>
    80003014:	00500e93          	li	t4,5
    80003018:	e75ff06f          	j	80002e8c <__memset+0x84>
    8000301c:	00600e93          	li	t4,6
    80003020:	e6dff06f          	j	80002e8c <__memset+0x84>

0000000080003024 <__memmove>:
    80003024:	ff010113          	addi	sp,sp,-16
    80003028:	00813423          	sd	s0,8(sp)
    8000302c:	01010413          	addi	s0,sp,16
    80003030:	0e060863          	beqz	a2,80003120 <__memmove+0xfc>
    80003034:	fff6069b          	addiw	a3,a2,-1
    80003038:	0006881b          	sext.w	a6,a3
    8000303c:	0ea5e863          	bltu	a1,a0,8000312c <__memmove+0x108>
    80003040:	00758713          	addi	a4,a1,7
    80003044:	00a5e7b3          	or	a5,a1,a0
    80003048:	40a70733          	sub	a4,a4,a0
    8000304c:	0077f793          	andi	a5,a5,7
    80003050:	00f73713          	sltiu	a4,a4,15
    80003054:	00174713          	xori	a4,a4,1
    80003058:	0017b793          	seqz	a5,a5
    8000305c:	00e7f7b3          	and	a5,a5,a4
    80003060:	10078863          	beqz	a5,80003170 <__memmove+0x14c>
    80003064:	00900793          	li	a5,9
    80003068:	1107f463          	bgeu	a5,a6,80003170 <__memmove+0x14c>
    8000306c:	0036581b          	srliw	a6,a2,0x3
    80003070:	fff8081b          	addiw	a6,a6,-1
    80003074:	02081813          	slli	a6,a6,0x20
    80003078:	01d85893          	srli	a7,a6,0x1d
    8000307c:	00858813          	addi	a6,a1,8
    80003080:	00058793          	mv	a5,a1
    80003084:	00050713          	mv	a4,a0
    80003088:	01088833          	add	a6,a7,a6
    8000308c:	0007b883          	ld	a7,0(a5)
    80003090:	00878793          	addi	a5,a5,8
    80003094:	00870713          	addi	a4,a4,8
    80003098:	ff173c23          	sd	a7,-8(a4)
    8000309c:	ff0798e3          	bne	a5,a6,8000308c <__memmove+0x68>
    800030a0:	ff867713          	andi	a4,a2,-8
    800030a4:	02071793          	slli	a5,a4,0x20
    800030a8:	0207d793          	srli	a5,a5,0x20
    800030ac:	00f585b3          	add	a1,a1,a5
    800030b0:	40e686bb          	subw	a3,a3,a4
    800030b4:	00f507b3          	add	a5,a0,a5
    800030b8:	06e60463          	beq	a2,a4,80003120 <__memmove+0xfc>
    800030bc:	0005c703          	lbu	a4,0(a1)
    800030c0:	00e78023          	sb	a4,0(a5)
    800030c4:	04068e63          	beqz	a3,80003120 <__memmove+0xfc>
    800030c8:	0015c603          	lbu	a2,1(a1)
    800030cc:	00100713          	li	a4,1
    800030d0:	00c780a3          	sb	a2,1(a5)
    800030d4:	04e68663          	beq	a3,a4,80003120 <__memmove+0xfc>
    800030d8:	0025c603          	lbu	a2,2(a1)
    800030dc:	00200713          	li	a4,2
    800030e0:	00c78123          	sb	a2,2(a5)
    800030e4:	02e68e63          	beq	a3,a4,80003120 <__memmove+0xfc>
    800030e8:	0035c603          	lbu	a2,3(a1)
    800030ec:	00300713          	li	a4,3
    800030f0:	00c781a3          	sb	a2,3(a5)
    800030f4:	02e68663          	beq	a3,a4,80003120 <__memmove+0xfc>
    800030f8:	0045c603          	lbu	a2,4(a1)
    800030fc:	00400713          	li	a4,4
    80003100:	00c78223          	sb	a2,4(a5)
    80003104:	00e68e63          	beq	a3,a4,80003120 <__memmove+0xfc>
    80003108:	0055c603          	lbu	a2,5(a1)
    8000310c:	00500713          	li	a4,5
    80003110:	00c782a3          	sb	a2,5(a5)
    80003114:	00e68663          	beq	a3,a4,80003120 <__memmove+0xfc>
    80003118:	0065c703          	lbu	a4,6(a1)
    8000311c:	00e78323          	sb	a4,6(a5)
    80003120:	00813403          	ld	s0,8(sp)
    80003124:	01010113          	addi	sp,sp,16
    80003128:	00008067          	ret
    8000312c:	02061713          	slli	a4,a2,0x20
    80003130:	02075713          	srli	a4,a4,0x20
    80003134:	00e587b3          	add	a5,a1,a4
    80003138:	f0f574e3          	bgeu	a0,a5,80003040 <__memmove+0x1c>
    8000313c:	02069613          	slli	a2,a3,0x20
    80003140:	02065613          	srli	a2,a2,0x20
    80003144:	fff64613          	not	a2,a2
    80003148:	00e50733          	add	a4,a0,a4
    8000314c:	00c78633          	add	a2,a5,a2
    80003150:	fff7c683          	lbu	a3,-1(a5)
    80003154:	fff78793          	addi	a5,a5,-1
    80003158:	fff70713          	addi	a4,a4,-1
    8000315c:	00d70023          	sb	a3,0(a4)
    80003160:	fec798e3          	bne	a5,a2,80003150 <__memmove+0x12c>
    80003164:	00813403          	ld	s0,8(sp)
    80003168:	01010113          	addi	sp,sp,16
    8000316c:	00008067          	ret
    80003170:	02069713          	slli	a4,a3,0x20
    80003174:	02075713          	srli	a4,a4,0x20
    80003178:	00170713          	addi	a4,a4,1
    8000317c:	00e50733          	add	a4,a0,a4
    80003180:	00050793          	mv	a5,a0
    80003184:	0005c683          	lbu	a3,0(a1)
    80003188:	00178793          	addi	a5,a5,1
    8000318c:	00158593          	addi	a1,a1,1
    80003190:	fed78fa3          	sb	a3,-1(a5)
    80003194:	fee798e3          	bne	a5,a4,80003184 <__memmove+0x160>
    80003198:	f89ff06f          	j	80003120 <__memmove+0xfc>

000000008000319c <__putc>:
    8000319c:	fe010113          	addi	sp,sp,-32
    800031a0:	00813823          	sd	s0,16(sp)
    800031a4:	00113c23          	sd	ra,24(sp)
    800031a8:	02010413          	addi	s0,sp,32
    800031ac:	00050793          	mv	a5,a0
    800031b0:	fef40593          	addi	a1,s0,-17
    800031b4:	00100613          	li	a2,1
    800031b8:	00000513          	li	a0,0
    800031bc:	fef407a3          	sb	a5,-17(s0)
    800031c0:	fffff097          	auipc	ra,0xfffff
    800031c4:	b3c080e7          	jalr	-1220(ra) # 80001cfc <console_write>
    800031c8:	01813083          	ld	ra,24(sp)
    800031cc:	01013403          	ld	s0,16(sp)
    800031d0:	02010113          	addi	sp,sp,32
    800031d4:	00008067          	ret

00000000800031d8 <__getc>:
    800031d8:	fe010113          	addi	sp,sp,-32
    800031dc:	00813823          	sd	s0,16(sp)
    800031e0:	00113c23          	sd	ra,24(sp)
    800031e4:	02010413          	addi	s0,sp,32
    800031e8:	fe840593          	addi	a1,s0,-24
    800031ec:	00100613          	li	a2,1
    800031f0:	00000513          	li	a0,0
    800031f4:	fffff097          	auipc	ra,0xfffff
    800031f8:	ae8080e7          	jalr	-1304(ra) # 80001cdc <console_read>
    800031fc:	fe844503          	lbu	a0,-24(s0)
    80003200:	01813083          	ld	ra,24(sp)
    80003204:	01013403          	ld	s0,16(sp)
    80003208:	02010113          	addi	sp,sp,32
    8000320c:	00008067          	ret

0000000080003210 <console_handler>:
    80003210:	fe010113          	addi	sp,sp,-32
    80003214:	00813823          	sd	s0,16(sp)
    80003218:	00113c23          	sd	ra,24(sp)
    8000321c:	00913423          	sd	s1,8(sp)
    80003220:	02010413          	addi	s0,sp,32
    80003224:	14202773          	csrr	a4,scause
    80003228:	100027f3          	csrr	a5,sstatus
    8000322c:	0027f793          	andi	a5,a5,2
    80003230:	06079e63          	bnez	a5,800032ac <console_handler+0x9c>
    80003234:	00074c63          	bltz	a4,8000324c <console_handler+0x3c>
    80003238:	01813083          	ld	ra,24(sp)
    8000323c:	01013403          	ld	s0,16(sp)
    80003240:	00813483          	ld	s1,8(sp)
    80003244:	02010113          	addi	sp,sp,32
    80003248:	00008067          	ret
    8000324c:	0ff77713          	andi	a4,a4,255
    80003250:	00900793          	li	a5,9
    80003254:	fef712e3          	bne	a4,a5,80003238 <console_handler+0x28>
    80003258:	ffffe097          	auipc	ra,0xffffe
    8000325c:	6dc080e7          	jalr	1756(ra) # 80001934 <plic_claim>
    80003260:	00a00793          	li	a5,10
    80003264:	00050493          	mv	s1,a0
    80003268:	02f50c63          	beq	a0,a5,800032a0 <console_handler+0x90>
    8000326c:	fc0506e3          	beqz	a0,80003238 <console_handler+0x28>
    80003270:	00050593          	mv	a1,a0
    80003274:	00001517          	auipc	a0,0x1
    80003278:	e5c50513          	addi	a0,a0,-420 # 800040d0 <console_handler+0xec0>
    8000327c:	fffff097          	auipc	ra,0xfffff
    80003280:	afc080e7          	jalr	-1284(ra) # 80001d78 <__printf>
    80003284:	01013403          	ld	s0,16(sp)
    80003288:	01813083          	ld	ra,24(sp)
    8000328c:	00048513          	mv	a0,s1
    80003290:	00813483          	ld	s1,8(sp)
    80003294:	02010113          	addi	sp,sp,32
    80003298:	ffffe317          	auipc	t1,0xffffe
    8000329c:	6d430067          	jr	1748(t1) # 8000196c <plic_complete>
    800032a0:	fffff097          	auipc	ra,0xfffff
    800032a4:	3e0080e7          	jalr	992(ra) # 80002680 <uartintr>
    800032a8:	fddff06f          	j	80003284 <console_handler+0x74>
    800032ac:	00001517          	auipc	a0,0x1
    800032b0:	f2450513          	addi	a0,a0,-220 # 800041d0 <digits+0x78>
    800032b4:	fffff097          	auipc	ra,0xfffff
    800032b8:	a68080e7          	jalr	-1432(ra) # 80001d1c <panic>
	...
