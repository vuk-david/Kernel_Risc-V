#include "../h/syscall_c.h"



void *mem_alloc(size_t size)
{
    uint64 a0 = 1;
    size_t blocks = (size % MEM_BLOCK_SIZE > 0) ? (size / MEM_BLOCK_SIZE + 1) : (size / MEM_BLOCK_SIZE);
    __asm__ volatile ("mv a1, %[a1]" : : [a1] "r"(blocks));
    __asm__ volatile ("mv a0, %[a0]" : : [a0] "r"(a0));
    __asm__ volatile ("ecall");

    uint64 address = 0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(address));

    return (uint64*)address;
}