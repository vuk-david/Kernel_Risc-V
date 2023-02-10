#include "../h/syscall_c.h"
#include "../lib/console.h"


#define FIRST_FREE_ADDRESS HEAP_START_ADDR
#define LAST_FREE_ADDRESS ((HEAP_END_ADDR)-(1))

// zasto ovo kad mogu sam oda ukljucim hw.h? Ukljucena je hw.h implicitno kroz syscall_c.h
//extern const void* HEAP_START_ADDR;
//extern const void* HEAP_END_ADDR;



//unsigned int total_size_of_level(int i)
//{
//    return (0x1 << i) * MEM_BLOCK_SIZE;
//}
//
//// Nothing to do with best-fit algorithm
//unsigned int level_of_best_fit_block(size_t req)
//{
//    unsigned int total = req + sizeof(FreeBlocks);
//    unsigned int i = 0x1;
//
//    while (i < total)
//        i <<= 1;
//
//    return i;
//}

void*
mem_alloc(size_t size)
{
    size_t blocks = 1;

    // Nalazimo koliko nam blokova treba da 'pokrijemo' size bajtova
    do{
        if (blocks * MEM_BLOCK_SIZE >= size)
            break;

        blocks++;
    } while (1);

    //void* result = (void*) (blocks * MEM_BLOCK_SIZE);

    return NULL;
}

void* mem_alloc_proba(size_t size)
{
    size_t blocks = 1;

// Nalazimo koliko nam blokova treba da 'pokrijemo' size bajtova
    do{
        if (blocks * MEM_BLOCK_SIZE >= size)
            break;

        blocks++;
    } while (1);

//    void* result = (void*) (blocks * MEM_BLOCK_SIZE);
//    result++;


   // Priprema za sistemski poziv. Izgleda da moram da napravim prekidnu
   // rutinu da bi ovo moglo da radi
/*
   asm volatile ("xor a0, a0, a0");
   asm volatile ("addiw a0, x0, 1");
   asm volatile("ecall"); // Why does this terminates the program?
*/

   // KAKO JE OVO Error: offset too large kad bukvalno pre
   // Nego sto se izvrsi instrukcija, adresa iste velicine po pitanju
   // bitova se vec nalazi tu. Znaci koji KURAC!!!!!
   // asm volatile ("ld ra,  0x80001710"); Ilegalna instrukcija - MAJMUNE
   long long int ovo = 0;
   asm volatile ("li ra,  0x80001710");
   asm volatile ("mv %0, ra" : "=r" (ovo));
   // asm volatile("mv %0, s0" : "=r" (x) );
   // asm volatile("ld s0, 8(sp)");

   long long int rem = ovo;
   ovo++;

   ovo = ovo - rem;
   __putc(ovo);
   __putc('\n');



    // Ulazimo u sistemski rezim procesora i pozivamo funkciju na poziciji 0x01 tj. mem_alloc;
    // ecall(0x01);

    // Pitanje - kako se ovde poziva mrtvi __mem_alloc iz mem.c koji bi trebalo da je ABI.
    // Ili je zapravo __mem_alloc zapravo C API i ne bi trebalo da imam dva?

    // Prilikom obrade sistemskog poziva, izuzetka ili prekida, procesor radi sledeće:
    //   vrednost registra pc upisuje u registar sepc (adresa instrukcije ecall ili adresa
    //   prve neizvršene/prekinute instrukcije);
    // Ovo se valjda radi impliticno pozivanjem funkcije ecall

    // Znaci ecall pozivamo ovako:
    // ecall 0x01

    // I onda se PC upisuje u
    // sepc(sačuvana vrednost registra pc u korisničkom režimu)
    //

    // U registar sstatus upisuje sledeće vrednosti:
    //   u bit SPP (bit 8) vrednost koja pokazuje iz kog režima se dogodio skok
    // ( vrednost 0 – korisnički režim, vrednost 1 – sistemski režim);

    //   u bit SIE (bit 1) nulu, čime se maskiraju spoljašnji prekidi; u korisničkom
    // režimu se ovaj bit ignoriše – prekidi su podrazumevano dozvoljeni;

    //   u bit SPIE (bit 5) prethodnu vrednost bita SIE.

    // skače na prekidnu rutinu čija je adresa zapisana u registru stvec.
    // To znači da ovaj procesor ima jednu jedinstvenu prekidnu rutinu za sve vrste prekida.

    // Ostali registri se ne čuvaju hardverski, već je to odgovornost prekidne rutine.

    //   Registar sip sadrži informaciju o tome koji zahtevi za prekid su trenutno aktivni. Bit
    // SSIP (bit 1) označava da postoji zahtev za softverski prekid. U SSIP bit može da se
    // upiše vrednost. Upis jedinice postavlja zahtev za softverskim prekidom, dok upis nule
    // označava da se softverski prekid obradio (ovo svakako treba uraditi nakon obrade
    // prekida). Bit SEIP (bit 9) označava da postoji zahtev za spoljašnji hardverski prekid.


    /*
    * Registar sie je registar za maskiranje prekida, pa sadrži informaciju o tome koji prekidi
        su dozvoljeni. Vrednost ovog registra se uzima u obzir i prilikom izvršavanja u
        korisničkom režimu. Bit SSIE (bit 1) označava da li su dozvoljeni softverski prekidi. Bit
        SEIE (bit 9) označava da li su dozvoljeni spoljašnji hardverski prekidi. Ukoliko se
        program izvršava u sistemskom režimu i bit SIE u registru sstatus ima vrednost 0,
        vrednost registra sie se ignoriše.
     */

    return NULL;
}