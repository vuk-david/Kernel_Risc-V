//
// Created by os on 2/11/23.
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"

TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

//TCB* TCB::createThread(Body body)
//{
//    return new TCB(body, TIME_SLICE);
//}

TCB*
TCB::createThread(Body body, void* arg, void* stack_space, bool start_immediately)
{
    return new TCB(body, arg, stack_space, start_immediately);
}

//void TCB::yield()
//{
//    __asm__ volatile("ecall");
//}


int
TCB::threadExit()
{

    if (running->isFinished())
        return -1;

    running->setFinished(true);
    TCB::dispatch();

    return 0;
}


void
TCB::dispatch()
{
    TCB *old = running;

    if (!old->isFinished())
        Scheduler::put(old);

    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}


void
TCB::threadWrapper()
{
    Riscv::popSppSpie();
    running->body(running->arg);
    running->setFinished(true);

    TCB::dispatch();
}


int
TCB::threadStart(TCB *handle)
{
    if (handle)
    {
        handle->setFinished(false);
        Scheduler::put(handle);
        return 0;
    }
    return -1;
}
