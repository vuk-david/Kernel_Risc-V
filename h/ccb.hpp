//
// Created by os on 2/11/23.
//

#ifndef PROJECT_BASE_CCB_HPP
#define PROJECT_BASE_CCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"

class CCB{
public:
    ~CCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    void setFinished(bool value) { CCB::finished = value; }

    using Body = void (*)();
    static CCB* createCoroutine(Body body);

    static void yield();
    static CCB *running;

private:
    explicit CCB(Body body)
        : body(body),
        stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
        context({ body != nullptr ? (uint64)body : 0,
                  stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                }),
        finished(false)
    {
        if (body != nullptr)
            Scheduler::put(this);
    }
    struct Context{
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint64 *stack;
    Context context;
    bool finished;

    static void contextSwitch(Context *oldContext, Context *runningContext);
    static void dispatch();

    static uint64 constexpr STACK_SIZE = 1024;
};


#endif //PROJECT_BASE_CCB_HPP
