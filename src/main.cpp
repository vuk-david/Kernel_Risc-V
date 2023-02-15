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
    TCB* threads[3];

    thread_create(&threads[0], nullptr, nullptr);
    TCB::running = threads[0];

    thread_create(&threads[1], workerBodyC, nullptr);
    printString("ThreadC Created\n");

    thread_create(&threads[2], workerBodyD, nullptr);
    printString("ThreadD Created\n");


    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!(
             threads[1]->isFinished() &&
             threads[2]->isFinished()))
    {
        thread_dispatch();
    }


    for(auto& thread : threads)
        delete thread;

    printString("Finished\n");

    return 0;
}