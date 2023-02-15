#include "../h/syscall_c.h"
#include "../h/print.hpp"


//void *mem_alloc(size_t size)
//{
//    uint64 a0 = 1;
//    size_t blocks = (size % MEM_BLOCK_SIZE > 0) ? (size / MEM_BLOCK_SIZE + 1) : (size / MEM_BLOCK_SIZE);
//    __asm__ volatile ("mv a1, %[a1]" : : [a1] "r"(blocks));
//    __asm__ volatile ("mv a0, %[a0]" : : [a0] "r"(a0));
//    __asm__ volatile ("ecall");
//
//    uint64 address = 0;
//    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(address));
//
//    return (uint64*)address;
//}


int thread_create(thread_t *handle, void(*start_routine)(void*), void *arg)
{
//    if (handle == 0)
//        return -1;
//    else if (!start_routine == 0)
//        return -2;

    uint64 number = 0x11;

    __asm__ volatile("mv a3, %0" : : "r" (arg));
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a0, %0" : : "r" (number));

    __asm__ volatile("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));

    printString("--------------------------------------------- CREATE THREAD RET: ");
    printInteger(ret);
    printString("\n");

    return (int)ret;

}

void thread_dispatch()
{
    int number = 0x13;
    __asm__ volatile("mv a0, %0" : : "r" (number));

    __asm__ volatile("ecall");
}