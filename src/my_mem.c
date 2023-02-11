// mem treba ja da implementiram, ovo njihovo samo treba da izbrisem i da ne koristim
// uopste

#include "../h/my_mem.h"

#define NULL 0


static struct mem_block* free_mem_head = NULL;
static struct mem_block* used_mem_head = NULL;
static int beginning = 0;

void* __mem_alloc(size_t blocks)
{
    // Sta ako alociramo svaki blok? Onda ce ponovo da kaze da ima mesta. Ovo mora negde gore.
    if (free_mem_head == NULL && beginning == 0)
    {
        beginning = 1;
        free_mem_head = (struct mem_block*) HEAP_START_ADDR;
        free_mem_head->size = ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR) - sizeof(struct mem_block);

        free_mem_head->next = NULL;
        free_mem_head->prev = NULL;
    }

    size_t allocate = blocks * MEM_BLOCK_SIZE; // Now this is in bytes

    // I'm not a sure I have to check for this other case in the for loop:  || ((char*) curr + allocate) < HEAP_END_ADDR
    for (struct mem_block* curr = free_mem_head; curr != NULL; curr = curr->next)
    {
        /* FIRST FIT */
        if (curr->size < allocate)        // ========== Less ============
            continue;
        else if (curr->size == allocate)  // ========== Equals ==========
        {
            if (curr->prev != NULL)
                curr->prev->next = curr->next;
            else
                free_mem_head = curr->next;

            if (curr->next != NULL)
                curr->next->prev = curr->prev;

            curr->prev = NULL;
            curr->next = NULL;

            // Put it in used_mem Linked List
            if (used_mem_head == NULL)
            {
                used_mem_head = curr;

                return (void*)((char*) curr + sizeof(struct mem_block));
            }
            else
            {
                if ((char*)curr < (char*)used_mem_head) // Should be first in the list
                {
                    used_mem_head->prev = curr;
                    curr->next = used_mem_head;
                    used_mem_head = curr;

                    return (void*)((char*) curr + sizeof(struct mem_block));
                }
                else // Should be somewhere in the list
                {
                    struct mem_block* tmp      = used_mem_head;
                    struct mem_block* prev_tmp = NULL;

                    while (tmp != NULL && (char*)tmp < (char*)curr)
                    {
                        prev_tmp = tmp;
                        tmp = tmp->next;
                    }


                    prev_tmp->next = curr;
                    curr->prev = prev_tmp;

                    if (tmp != NULL)
                    {
                        tmp->prev = curr;
                        curr->next = tmp;
                    }

                    return (void*)((char*) curr + sizeof(struct mem_block));
                }
            }
        }
        else // curr->size > allocate     // ========== Greater =========
        {
            size_t leftover_allocatable_size = 0;

            leftover_allocatable_size = curr->size - allocate; // That is the leftover part
            leftover_allocatable_size -= sizeof(struct mem_block);

            if (leftover_allocatable_size < MEM_BLOCK_SIZE)
            {
                // Unlink current block
                if (curr->prev != NULL)
                    curr->prev->next = curr->next;
                else
                    free_mem_head = curr->next;

                if (curr->next != NULL)
                    curr->next->prev = curr->prev;

                curr->prev = NULL;
                curr->next = NULL;

                // Put curr in "used_mem" Linked List
                // You already wrote it
                // ========== Equals ==========
                if (used_mem_head == NULL)
                {
                    used_mem_head = curr;
                }
                else
                {
                    if ((char*)curr < (char*) used_mem_head)
                    {
                        used_mem_head->prev = curr;
                        curr->next = used_mem_head;
                        used_mem_head = curr;
                    }
                    else
                    {
                        struct mem_block* tmp      = used_mem_head;
                        struct mem_block* prev_tmp = NULL;

                        while (tmp && (char*)tmp < (char*)curr)
                        {
                            prev_tmp = tmp;
                            tmp = tmp->next;
                        }

                        prev_tmp->next = curr;
                        curr->prev = prev_tmp;

                        if (tmp != NULL)
                        {
                            tmp->prev = curr;
                            curr->next = tmp;
                        }
                    }
                }

                return (void*)((char*)curr + sizeof(struct mem_block));
            }
            else
            {
                // Unlink curr from free_mem Linked List
                if (curr->prev != NULL)
                    curr->prev->next = curr->next;
                else
                    free_mem_head = curr->next;

                if (curr->next != NULL)
                    curr->next->prev = curr->prev;

                // Remember where the block was
                struct mem_block* prev_curr = curr->prev;
                struct mem_block* next_curr = curr->next;

                // Unlink free_mem Linked List from curr
                curr->prev = NULL;
                curr->next = NULL;

                // Update the size
                curr->size = allocate;

                // Put curr in "used_mem" Linked List
                if (used_mem_head == NULL)
                {
                    used_mem_head = curr;
                }
                else
                {
                    if ((char*)curr < (char*) used_mem_head)
                    {
                        used_mem_head->prev = curr;
                        curr->next = used_mem_head;
                        used_mem_head = curr;
                    }
                    else
                    {
                        struct mem_block* tmp = used_mem_head;
                        struct mem_block* prev_tmp = NULL;

                        while (tmp != NULL && (char*)tmp < (char*)curr)
                        {
                            prev_tmp = tmp;
                            tmp = tmp->next;
                        }

                        prev_tmp->next = curr;
                        curr->prev = prev_tmp; // Because tmp could be NULL, that's why we can't tmp->prev

                        if (tmp != NULL)
                        {
                            tmp->prev = curr;
                            curr->next = tmp;
                        }
                    }
                }

                // Put the leftover back in free_mem_list
                struct mem_block* leftover = (struct mem_block*) ((char*)curr + sizeof(struct mem_block) + allocate);
                leftover->size = leftover_allocatable_size;

                // Re-Link with "free_mem" Linked List
                if (prev_curr == NULL) // If it's the head that is divided
                {
                    free_mem_head = leftover;
                    leftover->prev = NULL;
                }
                else
                    leftover->prev = prev_curr;

                leftover->next = next_curr;


                return (void*)((char*) curr + sizeof(struct mem_block));
            }
        }
    }

    // There is not enough space
    return NULL;
}




int __mem_free(void* allocated_address)
{
    if (allocated_address == NULL)
        return -1;

    // Nothing to free
    if (used_mem_head == NULL && (char*)allocated_address < (char*)used_mem_head)
        return -1;

    struct mem_block* block_to_free = (struct mem_block*) ((char*)allocated_address - sizeof(struct mem_block));

    if ((char*)block_to_free == (char*)used_mem_head)
    {
        used_mem_head = block_to_free->next;
        if (used_mem_head)
            used_mem_head->prev = NULL;

        block_to_free->next = NULL;





        // What if free_mem_head is Empty?
        if (free_mem_head == NULL)
        {
            free_mem_head = block_to_free;

            return 0;
        }
        else
        {
            struct mem_block* prev_tmp = NULL;
            struct mem_block* tmp = free_mem_head;

            while (tmp && (char*)tmp < (char*)block_to_free)
            {
                prev_tmp = tmp;
                tmp = tmp->next;
            }

            if (prev_tmp)
                prev_tmp->next = block_to_free;
            else
                free_mem_head = block_to_free;

            block_to_free->prev = prev_tmp;

            if (tmp != NULL)
            {
                tmp->prev = block_to_free;
                block_to_free->next = tmp;
            }

            /* Merging */

            // Merge with "the previous" and potentially with "the next" as well
            if (prev_tmp != NULL && (char*)prev_tmp + sizeof(struct mem_block) + prev_tmp->size == (char*)block_to_free)
            {
                // Merge previous with the current "block_to_free"
                // We add "sizeof(struct mem_block) because that header no longer exists and is ready for overwrite"
                prev_tmp->size = prev_tmp->size + (block_to_free->size + sizeof(struct mem_block));
                prev_tmp->next = block_to_free->next;


                if (block_to_free->next)
                {
                    block_to_free->next->prev = prev_tmp;

                    // Now check if we can merge with the next one(that would be maximally possible)
                    if ((char*)prev_tmp + sizeof(struct mem_block) + prev_tmp->size == (char*)prev_tmp->next)
                    {
                        prev_tmp->size = prev_tmp->size + (prev_tmp->next->size + sizeof(struct mem_block));
                        prev_tmp->next = prev_tmp->next->next;
                    }
                }

                return 0;
            }
            // Merge only with "the next"
            else if (block_to_free->next && (char*)block_to_free + sizeof(struct mem_block) + block_to_free->size == (char*)block_to_free->next)
            {
                block_to_free->size = block_to_free->size + (block_to_free->next->size + sizeof(struct mem_block) + block_to_free->next->size);
                block_to_free->next = block_to_free->next->next;

                if (block_to_free->next)
                    block_to_free->next->prev = block_to_free;

                return 0;
            }
        }
    }
    else
    {
        struct mem_block* iter_used = used_mem_head;

        while (iter_used != NULL)
        {
            if ((char*)iter_used == (char*)block_to_free)
                break;
        }

        // No such block was allocated.
        if (iter_used == NULL)
            return -1;

        struct mem_block* prev_used = block_to_free->prev;
        struct mem_block* next_used = block_to_free->next;

        prev_used->next = next_used;
        if (next_used)
            next_used->prev = prev_used;

        block_to_free->prev = NULL;
        block_to_free->next = NULL;


        // What if free_mem_head is Empty?
        if (free_mem_head == NULL)
        {
            free_mem_head = block_to_free;

            return 0;
        }
        else
        {

            // Put back "free_mem" Linked List with a potential of merging
            struct mem_block* prev_tmp = NULL;
            struct mem_block* tmp = free_mem_head;

            while (tmp && (char*)tmp < (char*)block_to_free)
            {
                prev_tmp = tmp;
                tmp = tmp->next;
            }

            prev_tmp->next = block_to_free;
            block_to_free->prev = prev_tmp;

            if (tmp != NULL)
            {
                tmp->prev = block_to_free;
                block_to_free->next = tmp;
            }

            /* Merging */ // Make a function

            // Merge with "the previous" and potentially with "the next" one, as well
            if ((char*)prev_tmp + sizeof(struct mem_block) + prev_tmp->size == (char*)block_to_free)
            {
                prev_tmp->size = prev_tmp->size + (block_to_free->size + sizeof(struct mem_block));
                prev_tmp->next = block_to_free->next;

                if (block_to_free->next)
                {
                    block_to_free->next->prev = prev_tmp;

                    if ((char*)prev_tmp + sizeof(struct mem_block) + prev_tmp->size == (char*)block_to_free->next)
                    {
                        prev_tmp->size = prev_tmp->size + (block_to_free->next->size + sizeof(struct mem_block));
                        prev_tmp->next = block_to_free->next->next;

                        if (block_to_free->next->next)
                            block_to_free->next->next->prev = prev_tmp;

                        return 0;
                    }
                }
            }
            else if ((char*)block_to_free + sizeof(struct mem_block) + block_to_free->size == (char*)block_to_free->next)
            {
                block_to_free->size = block_to_free->size + (block_to_free->next->size + sizeof(struct mem_block));
                block_to_free->next = block_to_free->next->next;

                if (block_to_free->next->next)
                    block_to_free->next->next->prev = block_to_free;

                return 0;
            }

            return 0;
        }
    }
    return 0;
}
