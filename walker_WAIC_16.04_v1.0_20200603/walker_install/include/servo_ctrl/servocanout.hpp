#ifndef __SERVOCANOUT_H__
#define __SERVOCANOUT_H__

#include "common.hpp"
#include "shmman.hpp"
#include "servoctrl_if.hpp"
#include <boost/shared_ptr.hpp>
#include <boost/thread.hpp>
#include <boost/thread/mutex.hpp>
#include <vector>

using namespace std;
using namespace boost;

class ServoCanOut {
public:
    ServoCanOut(ServoGroup group, ServoRawInfoMap *map, bool force_init = false);
    ~ServoCanOut();

    ServoCtrlErrCode ClientWrite(const std::vector<ServoInfoPtr> &servo_vec);
    ServoCtrlErrCode RouterRead(CAN_PACKAGE *buf, const int buf_cnt, uint8_t *ret_cnt, bool no_wait = false);

private:
    const ServoRawInfoMap *servo_map;
    const int SERVO_CNT;
    const int SHM_SIZE;
    ShmMan *shm;
    CanOutServoItem *servos;
    ServoGroup group_id;
    boost::mutex mlock;

    bool MkCanOutItem(const ServoInfoPtr sip, CanOutServoItem *servo, uint8_t can_bus, uint16_t period_ms, const struct timespec &tv, int dir);
};
typedef boost::shared_ptr<ServoCanOut> ServoCanOutPtr;

#endif // __SERVOCANOUT_H__
