#include "../h/syscall_c.h"
#include "../lib/console.h"

int main()
{
    // Realizacija jezgra može da pod svojom kontrolom ima radnje
    // koje će se izvršiti pri pokretanju
    // programa, a zatim treba da pokrene nit nad funkcijom userMain().

    // Ako se testira treba da se pozove userMain();

    size_t ss = 202; // Bajta
    mem_alloc_proba(ss);

    //void* b = a + 0x4;
    char  x = 'v';
    __putc(x);
    char new_line = '\n';
    __putc(new_line);

    return 0;
}

/* Primer sa snimka
 * #include "../lib/console.h"
 *
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

 */