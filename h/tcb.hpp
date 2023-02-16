//
// Created by os on 2/11/23.
//

#ifndef PROJECT_BASE_TCB_HPP
#define PROJECT_BASE_TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"

#include "../h/my_mem.h"

// Thread Control Block
class TCB {
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const      { return finished;  }
    void setFinished(bool value) { finished = value; }
    uint64 getTimeSlice() const  { return timeSlice; }

    void *operator new(size_t size) { return __mem_alloc(size); }
    void operator delete(void *ptr) { __mem_free(ptr); }

    using Body = void (*)(void*);

    // static TCB *createThread(Body body);
    static TCB *createThread(Body body, void* arg, void* stack_space, bool start_immediately);
//  static void yield();

    static TCB *running;

private:
//    explicit TCB(Body body, uint64 timeSlice) :
//            body(body),
//            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
//            context({(uint64)&threadWrapper,
//                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
//                    }),
//            timeSlice(timeSlice),
//            finished(false) {
//        if (body != nullptr)
//            Scheduler::put(this);
//    }
    explicit TCB(Body body, void* arg, void* stack_space, bool start_immediately) :
            body(body),
            arg(arg),
            stack(body != nullptr ? (uint64*)stack_space : nullptr),
            context({(uint64)&threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            timeSlice(DEFAULT_TIME_SLICE),
            finished(false),
            start_immediately(start_immediately){
        if (body != nullptr && start_immediately == true)
            Scheduler::put(this);
    }

    struct Context {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    void* arg = nullptr;
    uint64 *stack;
    Context context;
    uint64 timeSlice;
    bool finished;
    bool start_immediately;

    friend class Riscv;

    static void threadWrapper();
    static void contextSwitch(Context *oldContext, Context *runningContext);
    static void dispatch();
    static int threadExit();
    static int threadStart(TCB* handle);

    static uint64 timeSliceCounter;

    static uint64 constexpr STACK_SIZE = 1024;
    static uint64 constexpr TIME_SLICE = 2;
};


#endif //PROJECT_BASE_TCB_HPP
