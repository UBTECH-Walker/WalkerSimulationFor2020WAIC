#ifndef __SERVOECATIN_H__
#define __SERVOECATIN_H__

#include "common.hpp"
#include "shmman.hpp"
#include <boost/shared_ptr.hpp>
#include <boost/thread.hpp>
#include <boost/thread/mutex.hpp>
#include <vector>

using namespace std;
using namespace boost;

class ServoEcatIn {
public:
    ServoEcatIn(ServoGroup group, ServoRawInfoMap *map, bool force_init = false);
    ~ServoEcatIn();

    ServoCtrlErrCode RouterWrite(const EcatServoItem *items, const int count);
    ServoCtrlErrCode ClientRead(std::vector<EcatServoItemPtr> &servos, bool no_wait = false);
    ServoCtrlErrCode ClientRead(std::vector<ServoInfoPtr> &servos, bool no_wait = false);

private:
    const ServoRawInfoMap *servo_map;
    const int SERVO_CNT;
    const int SHM_SIZE;
    ShmMan *shm;
    EcatServoItem *servos;
    ServoGroup group_id;
    /* mutex for protecting internal read cache 'servos' */
    boost::mutex mlock;
};
typedef boost::shared_ptr<ServoEcatIn> ServoEcatInPtr;

#endif // __SERVOECATIN_H__
