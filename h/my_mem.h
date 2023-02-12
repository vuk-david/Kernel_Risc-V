#ifndef MY_MEM
#define MY_MEM

#include "../lib/hw.h"


struct mem_block{
    size_t size;
    struct mem_block* prev;
    struct mem_block* next;
};

void* _mem_alloc(size_t blocks);

int _mem_free(void* allocated_address);


#endif // MY_MEM