//
// Created by os on 2/11/23.
//

#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"

int main()
{
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    TCB* threads[5];

    thread_create(&threads[0], nullptr, nullptr);
    // threads[0] = TCB::createThread(nullptr);
    TCB::running = threads[0];

//    threads[1] = TCB::createThread(workerBodyA);
//    printString("ThreadA Created\n");
//
//    threads[2] = TCB::createThread(workerBodyB);
//    printString("ThreadB Created\n");

//    threads[3] = TCB::createThread(workerBodyC);
    thread_create(&threads[3], workerBodyC, nullptr);
    printString("ThreadC Created\n");
//
//    threads[4] = TCB::createThread(workerBodyD);
    thread_create(&threads[4], workerBodyD, nullptr);
    printString("ThreadD Created\n");


    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!(
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        printString("OVDE SAM--------\n");
        //TCB::yield();
        thread_dispatch();
    }


    for(auto& thread : threads)
        delete thread;

    printString("Finished\n");

    return 0;
}