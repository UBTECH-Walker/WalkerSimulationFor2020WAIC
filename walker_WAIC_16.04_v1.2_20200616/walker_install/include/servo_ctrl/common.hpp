#ifndef __COMMON_H__
#define __COMMON_H__

#include <stdint.h>
#include <sys/types.h>
#include <time.h>
#include <map>
#include <list>
#include <math.h>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>
#include "servoctrl_if.hpp"
#include "ubteccom.h"

using namespace std;

#define TIMESPEC_ID         CLOCK_MONOTONIC_RAW
#define OFFLINE_TIMEOUT_MS  50
#define OFFLINE_TIMEOUT_FACTOR  30

#define ARRAY_SIZE(x)   (sizeof(x)/sizeof(x[0]))

#define ACCESS_ONCE(x)  \
    *((volatile typeof(x) *)(&x))

#define DBG_MSG(fmt, args...)    \
    printf("%s() LINE:%d " fmt, __func__, __LINE__, ##args)

#define WARN_MSG(fmt, args...)   \
    printf("%s() LINE:%d " fmt, __func__, __LINE__, ##args)

#define ERR_MSG(fmt, args...)    \
    printf("%s() LINE:%d " fmt, __func__, __LINE__, ##args)

static const double PI __attribute__ ((unused)) = acos(-1);

#pragma pack(1)
typedef struct
{
    union HEAD{
        struct ID{
            uint32_t  channel:16;
            uint32_t  index:8;
            uint32_t  end:1;
            uint32_t  can:1;
            uint32_t  mode:3;
            uint32_t  size:3;
        }id;
        uint32_t h32;
    }head;
    uint8_t   data[8];
} CAN_PACKAGE;
typedef boost::shared_ptr<CAN_PACKAGE> CAN_PACKAGE_PTR;
typedef std::list<CAN_PACKAGE*> CAN_PACKAGE_LIST;
typedef std::map<uint16_t, CAN_PACKAGE_PTR> CAN_PACKAGE_MAP;

typedef enum {
	MODE_CSP = 0x0C,
	MODE_CSV = 0x0B,
	MODE_CST = 0x0D,
} CtrlMode;

typedef struct
{
    uint8_t      index;
    uint8_t      packageNum;
    CAN_PACKAGE package[40];
} UDP_PACKAGE;

typedef enum {
    SERVO_CMD_NONE      = 0x00,
    SERVO_CMD_VPOS      = 0x01,
    SERVO_CMD_TPOS      = 0x03,
    SERVO_CMD_LOCK      = 0x05,
    SERVO_CMD_DELTAPOS  = 0x06,
    SERVO_CMD_PWM       = 0x07,
    SERVO_CMD_STANDBY   = 0x08,
    SERVO_CMD_VELMODE   = 0x0B,
    SERVO_CMD_POSMODE   = 0x0C,
    SERVO_CMD_TRQMODE   = 0x0D,
    SERVO_CMD_HOME      = 0x0E,
    SERVO_CMD_FINDPOLE  = 0x0F,
    SERVO_CMD_TEACH     = 0x10,

    SERVO_CMD_FACTORY   = 0x30,
    SERVO_CMD_SETID     = 0x31,
    SERVO_CMD_GETID     = 0x32,
    SERVO_CMD_SETHOME   = 0x35,
    SERVO_CMD_GETHOME   = 0x36,
    SERVO_CMD_STATUS    = 0x38,
    SERVO_CMD_SETPID    = 0x39,
    SERVO_CMD_GETPID    = 0x3A,
    SERVO_CMD_SETMAXPOS = 0x45,
    SERVO_CMD_GETMAXPOS = 0x46,
    SERVO_CMD_SETMINPOS = 0x47,
    SERVO_CMD_GETMINPOS = 0x48,
    SERVO_CMD_SETMAXVEL = 0x49,
    SERVO_CMD_GETMAXVEL = 0x4A,
    SERVO_CMD_SETMINVEL = 0x4B,
    SERVO_CMD_GETMINVEL = 0x4C,
    SERVO_CMD_SETMAXTRQ = 0x4D,
    SERVO_CMD_GETMAXTRQ = 0x4E,
    SERVO_CMD_SETMINTRQ = 0x4F,
    SERVO_CMD_GETMINTRQ = 0x50,
    SERVO_CMD_GETTEMP   = 0x51,

    SERVO_CMD_GETPROTECT    = 0x70,
    SERVO_CMD_CLEARPROTECT  = 0x71,
    SERVO_CMD_SILENT    = 0x72,
    SERVO_CMD_ENABLESID = 0x73,
    SERVO_CMD_SETPROTECT    = 0x74,
    SERVO_CMD_SETSN1    = 0x7A,
    SERVO_CMD_SETSN2    = 0x7B,
    SERVO_CMD_SETSN3    = 0x7C,
    SERVO_CMD_SETSN4    = 0x7D,
    SERVO_CMD_GETSN1    = 0x7E,
    SERVO_CMD_GETSN2    = 0x7F,
    SERVO_CMD_GETSN3    = 0x80,
    SERVO_CMD_GETSN4    = 0x81,
    SERVO_CMD_POSPLAN   = 0x82,
    SERVO_CMD_GETUPTIME = 0x83,

    SERVO_CMD_GETVERSION    = 0xFE,
    SERVO_CMD_ENABLEUPGRADE = 0xCA,
    SERVO_CMD_GETDEVCODE    = 0xCE,
    SERVO_CMD_STARTUPGRADE  = 0xBE,
    SERVO_CMD_PROGRAM       = 0xBC,
    SERVO_CMD_ENDUPGRADE    = 0xBA,
} CanServoCmd;

typedef struct {
    uint16_t servo_id;
    uint8_t  group_id;
    struct timespec timestamp;

    struct {
        uint8_t     seq;
        int16_t     pos;
        int16_t     vel;
        int16_t     trq;
        uint8_t     state;
    } status;

    struct {
        uint8_t     seq;
        uint8_t     state;//servo state
        uint8_t     ok;
    } cmd_fixvel;

    struct {
        uint8_t     seq;
        uint8_t     state;//servo state
        uint8_t     ok;
    } cmd_fixtime;

    struct {
        uint8_t     seq;
    } cmd_lock;

    struct {
        uint8_t     seq;
    } cmd_standby;

    struct {
        uint8_t     seq;
        uint8_t     ok;
    } cmd_home;

    struct {
        uint8_t     seq;
        uint8_t     normal;
    } cmd_silent;

    struct {
        uint8_t     seq;
        uint8_t     state;
    } cmd_cleanerr;

    /* cmd_velmode/cmd_posmode/cmd_trqmode redirect to 'status'
    struct {
        uint8_t     seq;
        uint16_t    pos;
        int16_t     vel;
        int16_t     trq;
        uint8_t     state; // servo state
    } cmd_velmode;
    struct {
        uint8_t     seq;
        uint16_t    pos;
        int16_t     vel;
        int16_t     trq;
        uint8_t     state; // servo state
    } cmd_posmode;
    struct {
        uint8_t     seq;
        uint16_t    pos;
        int16_t     vel;
        int16_t     trq;
        uint8_t     state; // servo state
    } cmd_trqmode; */
} CanInServoItem;
typedef boost::shared_ptr<CanInServoItem> CanInServoItemPtr;

typedef struct {
    uint16_t        servo_id;
    uint8_t         group_id;
    struct timespec timestamp;
    uint8_t         can_bus;
    uint8_t         size;
    uint8_t         data[8];
} CanOutServoItem;
typedef boost::shared_ptr<CanOutServoItem> CanOutServoItemPtr;

typedef struct {
    uint16_t    servo_id;
    uint8_t     group_id;
    uint8_t     mode;
    uint16_t    state;
    int16_t     torque;
    int16_t     velocity;
    int16_t     position;
    union {
        uint16_t    status_word;
        uint16_t    ctrl_word;
    };
    struct timespec timestamp;
} EcatServoItem;
typedef boost::shared_ptr<EcatServoItem> EcatServoItemPtr;
#pragma pack()

static inline long GetTimeIntervalMs(const struct timespec &cur, const struct timespec &last)
{
    return (cur.tv_sec - last.tv_sec)*1000 + (cur.tv_nsec - last.tv_nsec)/1000000;
}


#define SERVO_SHM_FILE  "/dev/shm/ubt_shm"
#define SHM_OUT_OFFSET   100
#define SHM_SIGNAL_OFFSET 200

typedef enum {
    SERVO_CAN = 0,
    SERVO_ETHERCAT
} ServoType;

typedef enum {
    SERVOG_HEAD = 0,
    SERVOG_LEFTARM,
    SERVOG_LEFTFINGER,
    SERVOG_RIGHTARM,
    SERVOG_RIGHTFINGER,
    SERVOG_LEGS
} ServoGroup;

typedef struct {
	uint16_t id;
	uint8_t type; /* 0 for can servo, 1 for etherCAT servo */
    int dir;
	uint8_t group;
	uint8_t shm_index;
	uint8_t can_bus;
	uint16_t period_ms;
	string name;
	string model;
//    uint16_t rated_cur;
} ServoRawInfo;
typedef std::map<uint16_t, ServoRawInfo> ServoRawInfoMap;

#define SERVO_CONF_FILE   "/home/servo_config.json"
static inline bool LoadServoConfig(const string &file,
    ServoGroup group,
    ServoRawInfoMap *map)
{
	try {
		boost::property_tree::ptree root, child;
		read_json(file, root);

		switch(group) {
            case SERVOG_HEAD:
                child = root.get_child("head");
                break;
            case SERVOG_LEFTARM:
                child = root.get_child("leftarm");
                break;
            case SERVOG_LEFTFINGER:
                child = root.get_child("leftfinger");
                break;
            case SERVOG_RIGHTARM:
                child = root.get_child("rightarm");
                break;
            case SERVOG_RIGHTFINGER:
                child = root.get_child("rightfinger");
                break;
            case SERVOG_LEGS:
                child = root.get_child("legs");
                break;
            default:
                ERR_MSG("Unknown servo group: %d\n", group);
                return false;
		}
		map->clear();
		for (boost::property_tree::ptree::iterator i = child.begin(); i != child.end(); i++) {
            boost::property_tree::ptree item = i->second;
            ServoRawInfo info;
            info.id = item.get<uint16_t>("id");
            info.type = item.get<uint8_t>("type");
            info.dir = item.get<int>("dir");
            info.group = item.get<uint16_t>("group");
            info.shm_index = 0;//item.get<uint8_t>("index");
            info.can_bus = item.get<uint8_t>("canbus");
            info.period_ms = item.get<uint16_t>("period");
            info.name = item.get<string>("name");
            info.model = item.get<string>("model");
//            info.rated_cur = item.get<uint16_t>("ratedcur");
            map->insert(make_pair(info.id, info));
		}
		if (map->empty()) {
            ERR_MSG("Can not find servo info with group %d in file %s\n",
                    group,
                    file.c_str());
            return false;
		}
	} catch (boost::property_tree::ptree_error & e) {
		cout << e.what() << endl;
		return false;
	}
	return true;
}

#define UNUSED(x)   (void)(x)

#endif // __COMMON_H__
