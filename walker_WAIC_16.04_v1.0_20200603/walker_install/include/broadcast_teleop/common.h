#ifndef __BROADCAST_TELEOP_COMMON_H__
#define __BROADCAST_TELEOP_COMMON_H__

#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <iostream>
#include <iomanip>
#include <math.h>
#include <sstream>
#include "ros/ros.h"
#include <boost/asio.hpp>
#include <boost/bind/bind.hpp>
#include <boost/thread/mutex.hpp>
#include <boost/thread/thread.hpp>
#include <boost/system/system_error.hpp>
#include <boost/date_time/posix_time/posix_time.hpp>

namespace broadcast_teleop {

#define REPEAT_MDELAY   50
#define IDLE_MDELAY     1000
#define MAX_BUF_LEN     256
#define MSG_HEADER      0x77077708
#define BROADCAST_SHELL_DIR "/home/walker2/broadcast_shell/"

//static const char *BROADCAST_GROUP_IP = "239.255.0.1";
static const char *BROADCAST_ETH_IP = "192.168.12.255";
static const char *BROADCAST_WLAN_IP = "192.168.3.255";
static const int16_t BROADCAST_PORT = 7707;
static const int16_t FEEDBACK_PORT = 7708;
static const int PENDING_MS = 3000;
static const int REPLY_TIMEOUT = 5;

typedef enum {
    B_MESSAGE_SYNC,
    B_MESSAGE_SHELL
} message_type;

typedef enum {
    SYNC_ABSOLUTE,
    SYNC_RELATIVE
} sync_method;

typedef struct {
    uint32_t header;
    message_type type;
    sync_method method;
    int32_t downcnt_ms;
    uint32_t data_len;
    char data[0];
} broadcast_message;

typedef struct {
    uint32_t header;
    message_type type;
    int32_t err_code;
    uint32_t msg_len;
    char message[0];
} broadcast_reply;

}


#endif // __BROADCAST_TELEOP_COMMON_H__
