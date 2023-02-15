#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.h"

//void* operator new (size_t n)
//{
//    return mem_alloc(n);
//}
//
//void* operator new[](size_t n)
//{
//    return mem_alloc(n);
//}
//
//void operator delete(void *ptr)
//{
//    mem_free(ptr);
//}
//
//void operator delete[](void *ptr)
//{
//    mem_free(ptr);
//}

void Thread::wrapper(void *handle)
{
    if(handle)
        ((Thread*)handle)->run();
}

Thread::Thread(void (*body)(void *), void *arg)
{
    myHandle = nullptr;
    thread_create_wo_start(&myHandle, body, arg);
}

Thread::Thread()
{
    myHandle = nullptr;
    thread_create_wo_start(&myHandle, Thread::wrapper, this);
}

Thread::~Thread()
{
    myHandle = nullptr;
    delete myHandle;
}

int Thread::start()
{
    int ret = -3;

    if(myHandle)
        ret = thread_start(myHandle);

    return ret;
}

void Thread::dispatch()
{
    thread_dispatch();
}