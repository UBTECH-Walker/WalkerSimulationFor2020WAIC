#ifndef SYNCSIGNAL_H
#define SYNCSIGNAL_H
#include "common.hpp"
#include <time.h>

typedef struct
{
    pthread_mutex_t lock;
    pthread_cond_t cond;
    struct timespec stamp;
} SyncSignalType;

class SyncSignal
{
public:
    SyncSignal(const ServoGroup group);
    ~SyncSignal();

    bool wait(long *delay_ns = NULL);
    // timeout_ms = 0: no wait; -1: wait forevery
    bool timedWait(long timeout_ns = -1, long *delay_ns = NULL);
    bool signal(void);
    bool broadcast(void);

private:
    int shm_id;
    SyncSignalType *sync_data;

    bool init(const char *key_file, int sub_index, int size);
    bool initMutex(pthread_mutex_t *pmutex);
    bool initCond(pthread_cond_t *pcond);
    int doflock(const char *file);
    void dofunlock(const int fd);
};

#endif // SYNCSIGNAL_H
