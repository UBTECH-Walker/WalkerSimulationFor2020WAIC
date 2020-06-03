/*****************************************************************************
 * Copyright UBTECH, all rights reserved.
 *        File: servoctrl_if.hpp
 *      Author: Kevin Su <xianwei.su@ubtrobot.com>
 * Description: Servo control interface definition.
 *        Date: 2018-07-05
 *****************************************************************************/
#ifndef __SERVOCTRL_IF_HPP__
#define __SERVOCTRL_IF_HPP__

#include <stdint.h>
#include <string.h>
#include <time.h>
#include <vector>
#include <iostream>
#include <iomanip>
#include <map>
#include <boost/shared_ptr.hpp>

using namespace std;

/*
 * Servo ID definition, use the real ID of CAN and EtherCAT servos
 * If a servo ID less than 255, it should be connected on CAN bus.
 */
typedef enum {
	SERVO_LShoulderPitch	= 21,
	SERVO_RShoulderPitch	= 22,
	SERVO_LShoulderRoll		= 23,
	SERVO_RShoulderRoll		= 24,
	SERVO_LShoulderYaw		= 25,
	SERVO_RShoulderYaw		= 26,

	SERVO_LElbowRoll		= 27,
	SERVO_RElbowRoll		= 28,

	SERVO_LWristYaw			= 29,
	SERVO_RWristYaw			= 30,
	SERVO_LWristPitch		= 31,
	SERVO_RWristPitch		= 32,
	SERVO_LWristRoll		= 33,
	SERVO_RWristRoll		= 34,

	SERVO_HeadYaw			= 51,
	SERVO_HeadPitch			= 52,

	SERVO_LFingerThumb		= 63,
	SERVO_RFingerThumb		= 64,
	SERVO_LFingerIndex		= 65,
	SERVO_RFingerIndex		= 66,
	SERVO_LFingerMiddle		= 67,
	SERVO_RFingerMiddle		= 68,
	SERVO_LFingerRingLittle	= 69,
	SERVO_RFingerRingLittle	= 70,

	SERVO_LHipYaw			= 1002,
	SERVO_LHipRoll			= 1003,
	SERVO_LHipPitch			= 1004,

	SERVO_LKneePitch		= 1005,

	SERVO_LAnklePitch		= 1006,
	SERVO_LAnkleRoll		= 1007,

	SERVO_RHipYaw			= 1008,
	SERVO_RHipRoll			= 1009,
	SERVO_RHipPitch			= 1010,

	SERVO_RKneePitch		= 1011,

	SERVO_RAnklePitch		= 1012,
	SERVO_RAnkleRoll		= 1013,
} ServoIDs;

#define CAN_SERVO_NUM	24
#define EC_SERVO_NUM	12
#define TOTAL_SERVO_NUM	(CAN_SERVO_NUM + EC_SERVO_NUM)
#define MIN_CANSERVO_ID	SERVO_LShoulderPitch
#define MAX_CANSERVO_ID SERVO_RFingerRingLittle
#define MIN_ECSERVO_ID	SERVO_LHipYaw
#define MAX_ECSERVO_ID	SERVO_RAnkleRoll

/*
 * Servo states, TBD
 */
typedef enum {
	enServo_OK = 0,				//舵机响应函数操作成功
	enServo_Fail,				//舵机未响应函数操作或响应超时 1
	enServo_ParamErr,			//舵机响应数据出错 2
	enServo_LibInitErr,			//舵机组群结构体读写函数未初始化或失败 3
	enServo_TempratureLowErr,	//舵机温度低保护 4
	enServo_TempratureLowWarn,	//舵机温度低告警 5
	enServo_TempratureHighErr,	//舵机过温保护 6
	enServo_TempratureHighWarn,	//舵机过温告警 7
	enServo_VoltageLowErr,		//舵机低压保护 8
	enServo_VoltageLowWarn,		//舵机低压告警 9
	enServo_VoltageHighErr,		//舵机过压保护 10
	enServo_VoltageHighWarn,	//舵机过压告警 11
	enServo_CurrentOverErr,		//舵机过流保护 12
	enServo_CurrentOverWarn,	//舵机过流告警 13
	enServo_TorqueOverErr,		//舵机力矩保护 14
	enServo_TorqueOverWarn,		//舵机力矩告警 15
	enServo_FuseErr,			//舵机熔丝位错保护 16
	enServo_FuseWarn,			//舵机熔丝位错告警 17
	enServo_PwmErr,				//舵机堵转保护 18
	enServo_PwmWarn,			//舵机堵转告警 19
	enServo_SpeedErr,			//舵机速度偏差故障 20
	enServo_SpeedWarn,			//舵机速度偏差告警 21
	enServo_CommuErr,			//舵机通讯断线保护 22
	enServo_CommuWarn,			//舵机通讯断线告警 23
	enServo_BrokenErr,			//舵机损坏故障 24
	enServo_BrokenWarn,			//舵机损坏告警 25
	enServo_AmbTempratureErr,	//舵机环境温度故障 26
	enServo_AmbTempratureWarn,	//舵机环境温度告警 27
	enServo_PosLimUpWarn, 		//舵机位置超限告警 28
	enServo_PosLimDownWarn, 	//舵机位置超限告警 29
	enServo_SpdLimWarn, 		//舵机速度超限告警 30
	enServo_TorqLimWarn, 		//舵机电流超限告警 31
	enServoStatus_Bottom,
} ServoState;

static const char * ServoStateString[] __attribute__ ((unused)) = {
	(const char *)"enServo_OK",
	(const char *)"enServo_Fail",
	(const char *)"enServo_ParamErr",
	(const char *)"enServo_LibInitErr",
	(const char *)"enServo_TempratureLowErr",
	(const char *)"enServo_TempratureLowWarn",
	(const char *)"enServo_TempratureHighErr",
	(const char *)"enServo_TempratureHighWarn",
	(const char *)"enServo_VoltageLowErr",
	(const char *)"enServo_VoltageLowWarn",
	(const char *)"enServo_VoltageHighErr",
	(const char *)"enServo_VoltageHighWarn",
	(const char *)"enServo_CurrentOverErr",
	(const char *)"enServo_CurrentOverWarn",
	(const char *)"enServo_TorqueOverErr",
	(const char *)"enServo_TorqueOverWarn",
	(const char *)"enServo_FuseErr",
	(const char *)"enServo_FuseWarn",
	(const char *)"enServo_PwmErr",
	(const char *)"enServo_PwmWarn",
	(const char *)"enServo_SpeedErr",
	(const char *)"enServo_SpeedWarn",
	(const char *)"enServo_CommuErr",
	(const char *)"enServo_CommuWarn",
	(const char *)"enServo_BrokenErr",
	(const char *)"enServo_BrokenWarn",
	(const char *)"enServo_AmbTempratureErr",
	(const char *)"enServo_AmbTempratureWarn",
	(const char *)"enServo_PosLimUpWarn",
	(const char *)"enServo_PosLimDownWarn",
	(const char *)"enServo_SpdLimWarn",
	(const char *)"enServo_TorqLimWarn",
	(const char *)"enServoStatus_Bottom"
};

/*
 * Servo controll modes
 */
typedef enum {
    SERVO_MODE_INIT = 0, // Not ready
	SERVO_MODE_HOME, // Initialize
	SERVO_MODE_STAY,     // Keep current state
	SERVO_MODE_STOP,     // Quick stop
	SERVO_MODE_VPOS,     // Move to target position with giving velocity
	SERVO_MODE_CSP,      // CSP mode
	SERVO_MODE_CSV,      // CSV mode
	SERVO_MODE_CST,      // CST mode
    SERVO_MODE_SILENT,   // Enable/disable silent
    SERVO_MODE_CLEANERR  // Clean error status
} ServoCtrlMode;

/*
 * Servo info
 */
typedef struct _ServoInfo
{
public:
	const ServoIDs 		id;
	ServoState 		state;
	ServoCtrlMode 	mode;
	double position;   // Unit: radian
	double velocity;   // Unit: radian/sec
	double torque;     // Unit: TBD?
    bool silent;
	struct timespec stamp; // Time stamp

	_ServoInfo(ServoIDs _id, ServoCtrlMode _mode): id(_id)
	{
		state = enServo_OK;
		mode = _mode;
		position = 0.0;
		velocity = 0.0;
		torque = 0.0;
        silent = false;
		memset(&stamp, 0, sizeof(stamp));
	}

	friend ostream & operator << (ostream &out, _ServoInfo &self) {
		out << "id: " << self.id << ", state: " << self.state << ", mode: " << self.mode
			<< "position: " << self.position << ", velocity: " << self.velocity << ", torque: " << self.torque
			<< "time: [" << self.stamp.tv_sec << setfill('0') << setw(9) << self.stamp.tv_nsec << "]"<< endl;
        return out;
	}
} ServoInfo;
typedef boost::shared_ptr<ServoInfo> ServoInfoPtr;
typedef std::map<uint16_t, ServoInfoPtr> ServoInfoPtrMap;
typedef std::vector<ServoInfoPtr> ServoInfoPtrVec;

/*
 * Firmware infomation, TBD?
 */
typedef struct _ServoFirmware {
	uint8_t		version[3];     // Firmware version
	std::vector<uint8_t> data;  // Firmware data
} ServoFirmware;


typedef enum {
	SERVO_ERR_OK = 0,
	SERVO_ERR_NOTINIT,  	// Not yet initialized
	SERVO_ERR_INVPARAM, 	// Invalid parameter
	SERVO_ERR_TIMEOUT,  	// Operation timeout
	SERVO_ERR_OFFLINE,      // servo already off-line
	SERVO_ERR_SYSCALL,  	// System call return error
	SERVO_ERR_NOTFOUND,     // Not found the corresponding servo
	SERVO_ERR_UNSUPPORTED,	// Operation unsupported
	SERVO_ERR_OTHER,		// Other unknown error
} ServoCtrlErrCode;

static const char *ServoErrCodeString[] __attribute__ ((unused)) = {
	(const char *)"SERVO_ERR_OK",
	(const char *)"SERVO_ERR_NOTINIT",  	// Not yet initialized
	(const char *)"SERVO_ERR_INVPARAM", 	// Invalid parameter
	(const char *)"SERVO_ERR_TIMEOUT",  	// Operation timeout
	(const char *)"SERVO_ERR_OFFLINE",      // servo already off-line
	(const char *)"SERVO_ERR_SYSCALL",  	// System call return error
	(const char *)"SERVO_ERR_NOTFOUND",     // Not found the corresponding servo
	(const char *)"SERVO_ERR_UNSUPPORTED",	// Operation unsupported
	(const char *)"SERVO_ERR_OTHER",		// Other unknown error
};

/*
 * Servo controll interface.
 */
class ServoCtrlIf
{
public:
    ServoCtrlIf(){}
    virtual ~ServoCtrlIf(){}

	/**
	 * @brief     Write a single servo real time control data
	 * @param[in] servo target servo
	 * @return    SERVO_ERR_OK on success, otherwise failed.
	 */
	virtual ServoCtrlErrCode WriteCtrl(const ServoInfo &servo) = 0;

	/**
	 * @brief     Write a set of servos real time control data with the given control mode.
	 * @param[in] servo_array, target servos vector(ServoInfoPtr, boost::shared_ptr)
	 * @return    SERVO_ERR_OK on success, otherwise failed.
	 */
	virtual ServoCtrlErrCode WriteCtrl(const std::vector<ServoInfoPtr> &servo_array) = 0;

	/**
	 * @brief     Write a set of servos real time control data with the given control mode.
	 * @param[in] servo_array, target servos map(ServoInfoPtr, boost::shared_ptr)
	 * @return    SERVO_ERR_OK on success, otherwise failed.
	 */
	virtual ServoCtrlErrCode WriteCtrl(const ServoInfoPtrMap &servo_array) = 0;

	/**
	 * @brief     		Read a servo real time status infomation
	 * @param[in/out]	servo, read servo infomation according to servo.id,
	 *					and fill other members with the returned data.
	 * @return    		SERVO_ERR_OK on success, otherwise failed.
	 */
	virtual ServoCtrlErrCode ReadState(ServoInfo &servo) = 0;

	/**
	 * @brief     		Read a set of servos real time status infomation(by vector<ServoInfoPtr)
	 * @param[in/out]	servo_array, read servos infomation according to the 'id' field of input servos vector,
	 *					and fill other members with the returned data.
	 * @return    		SERVO_ERR_OK on success, otherwise failed.
	 */
	virtual ServoCtrlErrCode ReadState(std::vector<ServoInfoPtr> &servo_array) = 0;

	/**
	 * @brief     		Read a set of servos real time status infomation(by map<ServoInfoPtr)
	 * @param[in/out]	servo_array, read servos infomation according to the 'id' field of input servos map,
	 *					and fill other members with the returned data.
	 * @return    		SERVO_ERR_OK on success, otherwise failed.
	 */
	virtual ServoCtrlErrCode ReadState(ServoInfoPtrMap &servo_array) = 0;

	/**
	 * @brief     		Control and wait for motor array homing
	 * @param[in]       servo_array, servos map to wait for.
	 * @return    		SERVO_ERR_OK on success, otherwise failed.
	 */
	virtual ServoCtrlErrCode WaitForHome(const ServoInfoPtrMap &servo_array, int timeout_ms = -1) = 0;

	/**
	 * @brief    	    Wait for all servos in group to be ready
	 * @param[in]		servo_array to read and write
	 * @param[in]       timeout in ms
	 * @return    	    SERVO_ERR_OK on success, otherwise failed.
	 */
  virtual ServoCtrlErrCode WaitForReady(const ServoInfoPtrMap &servo_array, int timeout_ms = -1) = 0;

	/**
	 * @brief    	Upgrade the specified servo's firmware
	 * @param[in]	id, the target servo ID.
	 * @param[in]	firmware, firmware to upgrade.
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	virtual ServoCtrlErrCode UpgradeFirmware(const ServoIDs id,
		const ServoFirmware &firmware,
		const int timeout_ms = -1) = 0;

	/**
	 * @brief    	Upgrade the specified servo's firmware
	 * @param[in]	servo, the target servo node, only read it's id.
	 * @param[in]	firmware, firmware to upgrade.
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	virtual ServoCtrlErrCode UpgradeFirmware(const ServoInfo &servo,
		const ServoFirmware &firmware,
		const int timeout_ms = -1) = 0;

	/**
	 * @brief    	Upgrade the specified servo's firmware, may block for a while
	 * @param[in]	servo, the target servo(boost::shared_ptr) node, only read it's id.
	 * @param[in]	firmware, firmware to upgrade.
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	virtual ServoCtrlErrCode UpgradeFirmware(const ServoInfoPtr &servo,
		const ServoFirmware &firmware,
		const int timeout_ms = -1) = 0;

	/**
	 * @brief    	Get the firmware version of specified servo, may block for a while
	 * @param[in]	id, the target servo ID
	 * @param[out]	version, store the returned version(TBD?).
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	virtual ServoCtrlErrCode GetServoFwVersion(const ServoIDs id,
		std::vector<uint8_t> &version,
		const int timeout_ms = -1) = 0;

	/**
	 * @brief    	Set home position of specified servo, may block for a while
	 * @param[in]	id, the target servo ID
	 * @param[in]	position, unit: degree.
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	virtual ServoCtrlErrCode SetHomePosition(const ServoIDs id,
		const double position,
		const int timeout_ms = -1) = 0;

	/**
	 * @brief    	Get the home position of specified servo, may block for a while
	 * @param[in]	id, the target servo ID
	 * @param[out]	position, store the returned home position.
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	virtual ServoCtrlErrCode GetHomePosition(const ServoIDs id,
		double &position,
		const int timeout_ms = -1) = 0;

	/**
	 * @brief    	Set auto report frequency of the specified servo, may block for a while
	 * @param[in]	id, the target servo ID
	 * @param[in]	hz, frequency in HZ.
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	virtual ServoCtrlErrCode SetReportFreq(const ServoIDs id,
		const double hz,
		const int timeout_ms = -1) = 0;

	/**
	 * @brief    	Set PID parameters of the specified servo, may block for a while
	 * @param[in]	id, the target servo ID
	 * @param[in]	mode, only accept: SERVO_MODE_CSP, SERVO_MODE_CSV, SERVO_MODE_CST
	 * @param[in]	kp
	 * @param[in]	ki
	 * @param[in]	kd
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	virtual ServoCtrlErrCode SetPid(const ServoIDs id,
		const ServoCtrlMode mode,
		const double kp,
		const double ki,
		const double kd,
		const int timeout_ms = -1) = 0;

	/**
	 * @brief    	Get PID parameters of the specified servo, may block for a while
	 * @param[in]	id, the target servo ID
	 * @param[in]	mode, only accept: SERVO_MODE_CSP, SERVO_MODE_CSV and SERVO_MODE_CST
	 * @param[out]	kp
	 * @param[out]	ki
	 * @param[out]	kd
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	virtual ServoCtrlErrCode GetPid(const ServoIDs id,
		const ServoCtrlMode mode,
		double &kp,
		double &ki,
		double &kd,
		const int timeout_ms = -1) = 0;

	/**
	 * @brief    	Set the specified mode constraint of the specified servo, may block for a while
	 * @param[in]	id, the target servo ID
	 * @param[in]	mode, only accept: SERVO_MODE_CSP, SERVO_MODE_CSV and SERVO_MODE_CST
	 * @param[in]	min, unit: degree for CSP, degree/sec for CSV, ? for CST, TBD
	 * @param[in]	max, unit: degree for CSP, degree/sec for CSV, ? for CST, TBD
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	virtual ServoCtrlErrCode SetConstraint(const ServoIDs id,
		const ServoCtrlMode mode,
		const double min,
		const double max,
		const int timeout_ms = -1) = 0;

	/**
	 * @brief    	Get the specified mode constraint of the specified servo, may block for a while
	 * @param[in]	id, the target servo ID
	 * @param[in]	mode, only accept: SERVO_MODE_CSP, SERVO_MODE_CSV and SERVO_MODE_CST
	 * @param[out]	min, unit: degree for CSP, degree/sec for CSV, ? for CST, TBD
	 * @param[out]	max, unit: degree for CSP, degree/sec for CSV, ? for CST, TBD
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	virtual ServoCtrlErrCode GetConstraint(const ServoIDs id,
		const ServoCtrlMode mode,
		double &min,
		double &max,
		const int timeout_ms = -1) = 0;

	/**
	 * @brief    	Get Current temperature of the specified servo, may block for a while
	 * @param[in]	id, the target servo ID
	 * @param[out]	temp, unit: degree
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	virtual ServoCtrlErrCode GetTemperature(const ServoIDs id,
		double &temp,
		const int timeout_ms = -1) = 0;

	/**
	 * @brief    	Clear protect state of the specified servo, may block for a while
	 * @param[in]	id, the target servo ID
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	virtual ServoCtrlErrCode ClearProtectStatus(const ServoIDs id,
		const int timeout_ms = -1) = 0;

	/**
	 * @brief    	Get protect state of the specified servo, may block for a while
	 * @param[in]	id, the target servo ID
	 * @param[out]	status, the target servo status
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	virtual ServoCtrlErrCode GetProtectStatus(const ServoIDs id,
		uint32_t &status,
		const int timeout_ms = -1) = 0;
};


#endif /* __SERVOCTRL_IF_HPP__ */

