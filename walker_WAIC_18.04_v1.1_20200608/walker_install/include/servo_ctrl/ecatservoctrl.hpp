#ifndef __ECATSERVOCTRL_H__
#define __ECATSERVOCTRL_H__

#include "servoctrl_if.hpp"
#include "servoecatin.hpp"
#include "servoecatout.hpp"

typedef std::map<uint16_t, EcatServoItemPtr> EcatServoItemPtrMap;

class EcatServoCtrl: public ServoCtrlIf
{
public:
    EcatServoCtrl();
    virtual ~EcatServoCtrl();

	/**
	 * @brief     Write a single servo real time control data
	 * @param[in] servo target servo
	 * @return    SERVO_ERR_OK on success, otherwise failed.
	 */
	ServoCtrlErrCode WriteCtrl(const ServoInfo &servo);

	/**
	 * @brief     Write a set of servos real time control data with the given control mode.
	 * @param[in] servo_array, target servos vector(ServoInfoPtr, boost::shared_ptr)
	 * @return    SERVO_ERR_OK on success, otherwise failed.
	 */
	ServoCtrlErrCode WriteCtrl(const std::vector<ServoInfoPtr> &servo_array);

    /**
	 * @brief     Write a set of servos real time control data with the given control mode.
	 * @param[in] servo_array, target servos map(ServoInfoPtr, boost::shared_ptr)
	 * @return    SERVO_ERR_OK on success, otherwise failed.
	 */
	ServoCtrlErrCode WriteCtrl(const ServoInfoPtrMap &servo_array);


	/**
	 * @brief     		Read a servo real time status infomation
	 * @param[in/out]	servo, read servo infomation according to servo.id,
	 *					and fill other members with the returned data.
	 * @return    		SERVO_ERR_OK on success, otherwise failed.
	 */
	ServoCtrlErrCode ReadState(ServoInfo &servo);

	/**
	 * @brief     		Read a set of servos real time status infomation(by vector<ServoInfoPtr)
	 * @param[in/out]	servo_array, read servos infomation according to the 'id' field of input servos vector,
	 *					and fill other members with the returned data.
	 * @return    		SERVO_ERR_OK on success, otherwise failed.
	 */
	ServoCtrlErrCode ReadState(std::vector<ServoInfoPtr> &servo_array);

		/**
	 * @brief     		Read a set of servos real time status infomation(by map<ServoInfoPtr)
	 * @param[in/out]	servo_array, read servos infomation according to the 'id' field of input servos vector,
	 *					and fill other members with the returned data.
	 * @return    		SERVO_ERR_OK on success, otherwise failed.
	 */
	ServoCtrlErrCode ReadState(ServoInfoPtrMap &servo_array);

	/**
	 * @brief    	    Wait for all servos in group homed
	 * @param[in]	servo_array to control
	 * @param[in]       timeout in ms
	 * @return    	    SERVO_ERR_OK on success, otherwise failed.
	 */
    ServoCtrlErrCode WaitForHome(const ServoInfoPtrMap &servo_array, int timeout_ms = -1);

	/**
	 * @brief    	    Wait for all servos in group to be ready
	 * @param[in]	servo_array to read and write
	 * @param[in]       timeout in ms
	 * @return    	    SERVO_ERR_OK on success, otherwise failed.
	 */
    ServoCtrlErrCode WaitForReady(const ServoInfoPtrMap &servo_array, int timeout_ms = -1);

	/**
	 * @brief    	Upgrade the specified servo's firmware
	 * @param[in]	id, the target servo ID.
	 * @param[in]	firmware, firmware to upgrade.
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	ServoCtrlErrCode UpgradeFirmware(const ServoIDs id,
		const ServoFirmware &firmware,
		const int timeout_ms = -1);

	/**
	 * @brief    	Upgrade the specified servo's firmware
	 * @param[in]	servo, the target servo node, only read it's id.
	 * @param[in]	firmware, firmware to upgrade.
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	ServoCtrlErrCode UpgradeFirmware(const ServoInfo &servo,
		const ServoFirmware &firmware,
		const int timeout_ms = -1);

	/**
	 * @brief    	Upgrade the specified servo's firmware, may block for a while
	 * @param[in]	servo, the target servo(boost::shared_ptr) node, only read it's id.
	 * @param[in]	firmware, firmware to upgrade.
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	ServoCtrlErrCode UpgradeFirmware(const ServoInfoPtr &servo,
		const ServoFirmware &firmware,
		const int timeout_ms = -1);

	/**
	 * @brief    	Get the firmware version of specified servo, may block for a while
	 * @param[in]	id, the target servo ID
	 * @param[out]	version, store the returned version(TBD?).
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	ServoCtrlErrCode GetServoFwVersion(const ServoIDs id,
		std::vector<uint8_t> &version,
		const int timeout_ms = -1);

	/**
	 * @brief    	Set home position of specified servo, may block for a while
	 * @param[in]	id, the target servo ID
	 * @param[in]	position, unit: degree.
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	ServoCtrlErrCode SetHomePosition(const ServoIDs id,
		const double position,
		const int timeout_ms = -1);

	/**
	 * @brief    	Get the home position of specified servo, may block for a while
	 * @param[in]	id, the target servo ID
	 * @param[out]	position, store the returned home position.
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	ServoCtrlErrCode GetHomePosition(const ServoIDs id,
		double &position,
		const int timeout_ms = -1);

	/**
	 * @brief    	Set auto report frequency of the specified servo, may block for a while
	 * @param[in]	id, the target servo ID
	 * @param[in]	hz, frequency in HZ.
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	ServoCtrlErrCode SetReportFreq(const ServoIDs id,
		const double hz,
		const int timeout_ms = -1);

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
	ServoCtrlErrCode SetPid(const ServoIDs id,
		const ServoCtrlMode mode,
		const double kp,
		const double ki,
		const double kd,
		const int timeout_ms = -1);

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
	ServoCtrlErrCode GetPid(const ServoIDs id,
		const ServoCtrlMode mode,
		double &kp,
		double &ki,
		double &kd,
		const int timeout_ms = -1);

	/**
	 * @brief    	Set the specified mode constraint of the specified servo, may block for a while
	 * @param[in]	id, the target servo ID
	 * @param[in]	mode, only accept: SERVO_MODE_CSP, SERVO_MODE_CSV and SERVO_MODE_CST
	 * @param[in]	min, unit: degree for CSP, degree/sec for CSV, ? for CST, TBD
	 * @param[in]	max, unit: degree for CSP, degree/sec for CSV, ? for CST, TBD
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	ServoCtrlErrCode SetConstraint(const ServoIDs id,
		const ServoCtrlMode mode,
		const double min,
		const double max,
		const int timeout_ms = -1);

	/**
	 * @brief    	Get the specified mode constraint of the specified servo, may block for a while
	 * @param[in]	id, the target servo ID
	 * @param[in]	mode, only accept: SERVO_MODE_CSP, SERVO_MODE_CSV and SERVO_MODE_CST
	 * @param[out]	min, unit: degree for CSP, degree/sec for CSV, ? for CST, TBD
	 * @param[out]	max, unit: degree for CSP, degree/sec for CSV, ? for CST, TBD
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	ServoCtrlErrCode GetConstraint(const ServoIDs id,
		const ServoCtrlMode mode,
		double &min,
		double &max,
		const int timeout_ms = -1);

	/**
	 * @brief    	Get Current temperature of the specified servo, may block for a while
	 * @param[in]	id, the target servo ID
	 * @param[out]	temp, unit: degree
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	ServoCtrlErrCode GetTemperature(const ServoIDs id,
		double &temp,
		const int timeout_ms = -1);

	/**
	 * @brief    	Clear protect state of the specified servo, may block for a while
	 * @param[in]	id, the target servo ID
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	ServoCtrlErrCode ClearProtectStatus(const ServoIDs id,
		const int timeout_ms = -1);

	/**
	 * @brief    	Get protect state of the specified servo, may block for a while
	 * @param[in]	id, the target servo ID
	 * @param[out]	status, the target servo status
	 * @param[in]	timeout_ms, -1: wait for ever until finished.
	 * @return    	SERVO_ERR_OK on success, otherwise failed.
	 */
	ServoCtrlErrCode GetProtectStatus(const ServoIDs id,
		uint32_t &status,
		const int timeout_ms = -1);

    /**
     * @brief     		Read a set of servos real time status infomation(by map<ServoInfoPtr)
     * @param[in/out]	servo_array, read servos infomation according to the 'id' field of input servos vector,
     *					and fill other members with the returned data.
     * @return    		SERVO_ERR_OK on success, otherwise failed.
     */
    ServoCtrlErrCode ReadState(EcatServoItemPtrMap &servo_array);

private:
    static ServoRawInfoMap total_map;

    ServoEcatIn  *ecat_in;
    ServoEcatOut *ecat_out;
};


#endif // __CANSERVOCTRL_H__
