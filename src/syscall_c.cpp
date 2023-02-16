#include "../h/syscall_c.h"
#include "../h/print.hpp"


void*
mem_alloc(size_t size)
{
    uint64 number = 0x01;
    size_t bytes = size;

    __asm__ volatile("mv a1, %0" : : "r" (bytes));
    __asm__ volatile("mv a0, %0" : : "r" (number));
    __asm__ volatile ("ecall");

    uint64 allocated_address = 0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(allocated_address));

    return (uint64*)allocated_address;
}


int
mem_free(void* allocated_address)
{
    uint64 number = 0x02;
    __asm__ volatile("mv a1, %0" : : "r" (allocated_address));
    __asm__ volatile("mv a0, %0" : : "r" (number));
    __asm__ volatile ("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));

    return ret;
}


int
thread_create(thread_t *handle, void(*start_routine)(void*), void *arg)
{
    uint64 number = 0x11;

    __asm__ volatile("mv a3, %0" : : "r" (arg));
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a0, %0" : : "r" (number));

    __asm__ volatile("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));

    return (int)ret;

}

int
thread_exit()
{
    int number = 0x12;
    __asm__ volatile("mv a0, %0" : : "r" (number));
    __asm__ volatile("ecall");

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));

    return ret;
}

void
thread_dispatch()
{
    int number = 0x13;
    __asm__ volatile("mv a0, %0" : : "r" (number));

    __asm__ volatile("ecall");
}


int
thread_create_wo_start(thread_t *handle, void(*start_routine)(void*), void *arg)
{
    uint64 number = 0x14;

    __asm__ volatile("mv a6, %0" : : "r" (arg));
    __asm__ volatile("mv a5, %0" : : "r" (arg));
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a0, %0" : : "r" (number));

    __asm__ volatile("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));

    return (int)ret;
}


int
thread_start(thread_t handle)
{
    int number = 0x15;
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a0, %0" : : "r" (number));

    __asm__ volatile("ecall");

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));

    return ret;
}