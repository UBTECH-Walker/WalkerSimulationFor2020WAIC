#ifndef __SHMMAN_HPP__
#define __SHMMAN_HPP__
#include <stdint.h>
#include <stdio.h>
#include <pthread.h>
#include <time.h>

#define MAX_NAME_SIZE	256

typedef struct {
    pthread_mutex_t wlock;
    struct timespec stamp;
	volatile uint8_t data[0];
} RawShmType;

class ShmMan {
public:
	ShmMan(const char *filename, const int sub_index, const int size, bool force_init = false);
	~ShmMan();

	bool IsValid();
	int GetSize();
	int GetId();

    int Read(char *out, int size, bool no_wait = false);
	int Write(char *in, int size);

private:
	char name[MAX_NAME_SIZE];
	int shm_id;
	int shm_size;
	int data_size;
	RawShmType *raw_data;

    bool Init(const char *key_file, int sub_index, int size, bool force_init);
    bool InitMutex(void);
    int Doflock(const char *file);
    void Dofunlock(const int fd);
};

#endif
