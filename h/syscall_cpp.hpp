#ifndef _syscall_cpp
#define _syscall_cpp
#include "syscall_c.h"

typedef TCB* thread_t;

//void* operator new (size_t);
//void operator delete (void*);

class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();

    int start ();

    static void dispatch ();
    static void wrapper(void *handle);
protected:
    Thread ();
    virtual void run () {}
private:
    thread_t myHandle;
};



#endif