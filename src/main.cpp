//
// Created by os on 2/11/23.
//

#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"


extern void userMain();



bool done = false;

void
helper(void *arg)
{
    userMain();
    done = true;
}


int
main()
{
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);

    thread_t main, user_main;

    thread_create(&main, nullptr, nullptr);
    printString("Main Created\n");
    TCB::running = main;

    thread_create(&user_main, helper, nullptr);
    printString("UserMain Created\n");

    // Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!done)
        thread_dispatch();

    printString("Finished\n");

    return 0;
}

/*int
main()
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

    printString("Startujem D\n"); // thread_exit-om smo ugasili bas D nit unutar workspace.cpp
    thread_start(threads[2]);
    thread_dispatch();

    while (!threads[2]->isFinished())
        thread_dispatch();


    for(auto& thread : threads)
        delete thread;

    printString("Finished\n");

    return 0;
}*/
