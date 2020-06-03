#ifndef __SERVOCANIN_H__
#define __SERVOCANIN_H__

#include "common.hpp"
#include "shmman.hpp"
#include <boost/shared_ptr.hpp>
#include <boost/thread.hpp>
#include <boost/thread/mutex.hpp>
#include <vector>

using namespace std;
using namespace boost;

class ServoCanIn {
public:
    ServoCanIn(ServoGroup group, ServoRawInfoMap *map, bool force_init = false);
    ~ServoCanIn();

    //ServoCtrlErrCode RouterWrite(const CAN_PACKAGE *package, const int count);
    ServoCtrlErrCode RouterWrite(CAN_PACKAGE_LIST &pkg_list);
    //ServoCtrlErrCode ClientRead(CanInServoItemPtr package, bool no_wait = false);
    ServoCtrlErrCode ClientRead(std::vector<CanInServoItemPtr> &servos, bool no_wait = false);
    ServoCtrlErrCode ClientRead(std::vector<ServoInfoPtr> &servos, bool no_wait = false);

private:
    const ServoRawInfoMap *servo_map;
    const int SERVO_CNT;
    const int SHM_SIZE;
    ShmMan *shm;
    CanInServoItem *servos;
    ServoGroup group_id;
    /* mutex for protecting internal read cache 'servos' */
    boost::mutex mlock;

    bool ParseCanPackage(const CAN_PACKAGE *package, CanInServoItem *servo, const struct timespec &tv, int dir);
};
typedef boost::shared_ptr<ServoCanIn> ServoCanInPtr;

#endif // __SERVOCANIN_H__
