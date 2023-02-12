//
// Created by os on 2/11/23.
//

#include "../h/ccb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"

int main()
{
    CCB* coroutines[3];

    coroutines[0] = CCB::createCoroutine(nullptr);
    CCB::running = coroutines[0];

    coroutines[1] = CCB::createCoroutine(workerBodyA);
    printString("Created Coroutine A\n");

    coroutines[2] = CCB::createCoroutine(workerBodyB);
    printString("Created Coroutine B\n");

    while (!(coroutines[1]->isFinished() && coroutines[2]->isFinished()))
        CCB::yield();

    for(auto& c : coroutines)
        delete c;

    printString("Finished\n");

    return 0;
}