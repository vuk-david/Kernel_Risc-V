

#include "../lib/console.h"
#include "../h/my_mem.h"

int main()
{
    // TEST MEM ALLOC
    int* buffer  = (int*) __mem_alloc(1);
    buffer[0] = 0;
    buffer[1] = 1;
    buffer[2] = 2;
    buffer[3] = 3;
    buffer[4] = 4;
    buffer[5] = 5;
    buffer[6] = 6;
    buffer[7] = 7;
    buffer[8] = 8;
    buffer[9] = 9;
    buffer[15] = 15;
    // buffer[16] = 16; // scause = 0x0000000000000007, sepc = 0x00000000000015b4, stval = 0x0, panic: kerneltrap


    int* ime = (int*) __mem_alloc(5);
    ime[0] = 8;
    ime[2] = 9;

    if (__mem_free(buffer) < 0)
        __putc('G');

    if (__mem_free(ime) < 0)
        __putc('g');

    int* nesto = 0;
    if (__mem_free(nesto) < 0) // We wanted -1
        __putc('f');

    if (__mem_free(ime) < 0) // We wanted -1
        __putc('g');


    int* buffer1  = (int*) __mem_alloc(1);
    buffer1[0] = 0;
    buffer1[1] = 1;
    buffer1[2] = 2;
    buffer1[3] = 3;
    buffer1[4] = 4;
    buffer1[5] = 5;
    buffer1[6] = 6;
    buffer1[7] = 7;
    buffer1[8] = 8;
    buffer1[9] = 9;
    buffer1[15] = 15;

    int cnt = 0;
    while (buffer1 != 0)
    {
        buffer1 = __mem_alloc(1000);
        cnt++;
    }

    // Possible to alocate 1000 blocks 2096 times + 1block and then we're left with size=1584 B
    buffer1  = (int*) __mem_alloc(1000);
    // buffer1[5] = 9 + cnt;

    // __putc(cnt);
    __putc('k');


    return 0;
}

/*
// Primer sa snimka
#include "../lib/console.h"

int
main()
{
    __putc('o');
    __putc('s');
    __putc('1');
    __putc('\n');
    __putc('\n');

    while(1)
    {
        char character = __getc();
        __putc(character + 30);
    }
}
*/
