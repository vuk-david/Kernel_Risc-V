//
// Created by os on 2/11/23.
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/print.hpp"

TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

//TCB* TCB::createThread(Body body)
//{
//    if (body == nullptr)
//        printString("\n\t========== MAIN =============\n");
//    else
//        printString("\n\t########## NIJE MAIN =============\n");
//
//    return new TCB(body, TIME_SLICE);
//}

TCB* TCB::createThread(Body body, void* arg, void* stack_space, bool start_immediately)
{

    return new TCB(body, arg, stack_space, start_immediately);
}


void TCB::yield()
{
    printString("\n\t--- YIELD \n");
    __asm__ volatile("ecall");
}

void TCB::dispatch()
{
    printString("\n\t--- DISPECTH \n");
    TCB *old = running;

    if (!old->isFinished())
        Scheduler::put(old);

    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    printString("\n\tWrapper\n");

    Riscv::popSppSpie();
    running->body(running->arg);
    running->setFinished(true);
    //TCB::yield();
    TCB::dispatch();
}