#ifndef _syscall_c
#define _syscall_c
#include "../lib/hw.h"

#define NULL 0

//static uint64* address_counter = NULL;

//// Ovo mora da bude u nitima kao pokazivac jer bi inace
//// za svaki slobodan blok morao da alociram memoriju sa mem_alloc
//// i time bih imao ogromnu eksternu fragmentaciju
//struct block_metadata{
//    FreeBlocks* prev;
//    FreeBlocks* next;
//    size_t size;
//    size_t starting_address;
//}FreeBlocks;

void* mem_alloc (size_t size);
void* mem_alloc_proba(size_t size);
int mem_free (void*);

/*


class _thread;
typedef _thread* thread_t;

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg);
int thread_exit ();
void thread_dispatch ();

class _sem;
typedef _sem* sem_t;

int sem_open (sem_t* handle, unsigned init);
int sem_close (sem_t handle);
int sem_wait (sem_t id);
int sem_signal (sem_t id);

typedef unsigned long time_t;
int time_sleep (time_t);

const int EOF = -1;
char getc ();
void putc (char);
*/


#endif
