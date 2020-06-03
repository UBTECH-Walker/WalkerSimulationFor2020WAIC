#ifndef __SERVOECATOUT_H__
#define __SERVOECATOUT_H__

#include "common.hpp"
#include "shmman.hpp"
#include "servoctrl_if.hpp"
#include <boost/shared_ptr.hpp>
#include <boost/thread.hpp>
#include <boost/thread/mutex.hpp>
#include <vector>

using namespace std;
using namespace boost;

class ServoEcatOut {
public:
    ServoEcatOut(ServoGroup group, ServoRawInfoMap *map, bool force_init = false);
    ~ServoEcatOut();

    ServoCtrlErrCode ClientWrite(const std::vector<ServoInfoPtr> &servo_vec);
    ServoCtrlErrCode RouterRead(EcatServoItem *buf, const int buf_cnt, uint8_t *ret_cnt, bool no_wait = false);

private:
    const ServoRawInfoMap *servo_map;
    const int SERVO_CNT;
    const int SHM_SIZE;
    ShmMan *shm;
    EcatServoItem *servos;
    ServoGroup group_id;
    boost::mutex mlock;

    bool MkEcatItem(const ServoInfoPtr sip, EcatServoItem *servo, const struct timespec &tv, int dir);
};
typedef boost::shared_ptr<ServoEcatOut> ServoEcatOutPtr;

#endif // __SERVOECATOUT_H__
