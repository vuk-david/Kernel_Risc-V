//
// Created by os on 2/11/23.
//

#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"

int main()
{
    TCB* threads[5];

    threads[0] = TCB::createThread(nullptr);
    TCB::running = threads[0];

    threads[1] = TCB::createThread(workerBodyA);
    printString("ThreadA Created\n");

    threads[2] = TCB::createThread(workerBodyB);
    printString("ThreadB Created\n");

    threads[3] = TCB::createThread(workerBodyC);
    printString("ThreadC Created\n");

    threads[4] = TCB::createThread(workerBodyD);
    printString("ThreadD Created\n");

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
        TCB::yield();

    for(auto& thread : threads)
        delete thread;

    printString("Finished\n");

    return 0;
}