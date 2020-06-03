#ifndef __UBTECCOM_H__
#define __UBTECCOM_H__

#include <stdint.h>
#include <time.h>
#include <pthread.h>

#define MAX_SERVO_NUM           12
#define MAX_FT_NUM              4

#define UBTECH_MOTOR_VERS_MAJ             0    /* major version */
#define UBTECH_MOTOR_VERS_MIN             1    /* minor version */
#define UBTECH_MOTOR_VERS_SERVICEPACK     0    /* service pack */
#define UBTECH_MOTOR_VERS_BUILD           1    /* build number */

#define COMMAND_NONE            0
#define COMMAND_START	        1
#define COMMAND_RUN		        2
#define COMMAND_STOP		    3

#define SERVO_VENDOR            ecvendor_sanyo_denki
#define SERVO_PRODUCT_CODE      0x2

/*DS402 object identifiers */

#define DRV_OBJ_CONTROL_WORD                0x6040
#define DRV_OBJ_STATUS_WORD                 0x6041
#define DRV_OBJ_MODES_OF_OPERATION          0x6060
#define DRV_OBJ_MODES_OF_OPERATION_DISPLAY  0x6061
#define DRV_OBJ_INTERNEL_POS_ACTVAL         0x6063
#define DRV_OBJ_POSITION_ACTUAL_VALUE       0x6064
#define DRV_OBJ_VELOCITY_ACTUAL_VALUE       0x606C
#define DRV_OBJ_TARGET_TORQUE               0x6071
#define DRV_OBJ_MAX_TORQUE                  0x6072
#define DRV_OBJ_TORQUE_ACTUAL_VALUE         0x6077
#define DRV_OBJ_TARGET_POSITION             0x607A
#define DRV_OBJ_CURRENT_STATE               0x603F
#define DRV_OBJ_FOLLOWING_ERROR             0x60F4


/* In cyclic synchronous position mode, this object contains the input
value for velocity feed forward. In cyclic synchronous velocity mode it
contains the commanded offset of the drive device. */
#define DRV_OBJ_VELOCITY_OFFSET             0x60B1

/* In cyclic synchronous position mode and cyclic synchronous velocity
mode, this object contains the input value for torque feed forward. In cyclic
synchronous torque mode it contains the commanded additive torque of the
drive, which is added to the target torque value. */
#define DRV_OBJ_TORQUE_OFFSET               0x60B2

/* This object shall indicate the configured target velocity and shall be used as input for the
trajectory generator. */
#define DRV_OBJ_TARGET_VELOCITY             0x60FF

/* DS402 object 0x6040: Control word */
#define DRV_CRTL_SWITCH_ON          0x0001          /* Bit 0: */
#define DRV_CRTL_ENABLE_VOLTAGE     0x0002          /* Bit 1: */
#define DRV_CRTL_QUICK_STOP         0x0004          /* Bit 2: */
#define DRV_CRTL_ENABLE_OP          0x0008          /* Bit 3: */
#define DRV_CTRL_INTER_POS_ENA      0x0010          /* Bit 4: Interpolated position mode: enable interpolation */
#define DRV_CRTL_FAULT_RESET        0x0080          /* Bit 7: */
#define DRV_CRTL_HALT               0x0100          /* Bit 8: */
#define DRV_CRTL_OP_MODE_SPEC       0x0200          /* Bit 9: */
#define DRV_CRTL_RES_10             0x0400          /* Bit 10: */
#define DRV_CRTL_MANU_SPEC          0xF800          /* Bit 11-15: */
/* DS402 drive/device control commands */
#define DRV_CTRL_CMD_MASK               0x008F          /* Control commands Mask */
#define DRV_CTRL_CMD_SHUTDOWN           0x0006          /* Shutdown (Transition 2, 6, 8) */
#define DRV_CTRL_CMD_SWITCHON           0x0007          /* Switch On (Transition 3) */
#define DRV_CTRL_CMD_DIS_VOLTAGE        0x0000          /* Disable Voltage (Transition 7, 9, 10, 12) */
#define DRV_CTRL_CMD_DIS_VOLTAGE_MASK   0x0082          /* Disable Voltage Mask */
#define DRV_CTRL_CMD_QUICK_STOP         0x0002          /* Quick Stop (Transition 7, 10, 11) */
#define DRV_CTRL_CMD_QUICK_STOP_MASK    0x0086          /* Disable Voltage Mask */
#define DRV_CTRL_CMD_DIS_OPERATION      0x0007          /* Disable Operation (Transition 5) */
#define DRV_CTRL_CMD_ENA_OPERATION      0x000F          /* Enable Operation (Transition 4) */
#define DRV_CTRL_CMD_RESET_MALFCT       DRV_CRTL_FAULT_RESET          /* Reset Malfunction (0->1 edge ) (Transition 15) */

/* DS402 object 0x6041: Status word */
#define DRV_STAT_RDY_SWITCH_ON          0x0001          /* Bit 0: Ready to switch on */
#define DRV_STAT_SWITCHED_ON            0x0002          /* Bit 1: Switched On */
#define DRV_STAT_OP_ENABLED             0x0004          /* Bit 2: Operation enabled */
#define DRV_STAT_FAULT                  0x0008          /* Bit 3: Fault */
#define DRV_STAT_VOLTAGE_ENABLED        0x0010          /* Bit 4: Optional bit: Voltage enabled */
#define DRV_STAT_QUICK_STOP             0x0020          /* Bit 5: Optional bit: Quick stop      */
#define DRV_STAT_SWITCH_ON_DIS          0x0040          /* Bit 6: Switch on disabled */
#define DRV_STAT_STATUS_TOGGLE          0x0400          /* Bit 10: Optional bit: Status toggle (csp, csv mode) */
#define DRV_STAT_VELOCITY_ZERO          0x0400          /* Bit 10: Optional bit: Velocity 0 (ip mode) */
#define DRV_STAT_OP_MODE_CSP            0x1000          /* Bit 12: Optional bit: CSP drive follows the command value */
#define DRV_STAT_FOLLOW_ERR             0x2000          /* Bit 13: Optional bit: Following error (csp, csv mode) */
#define DRV_STAT_RUNNING                0x4000          /* Bit 14: Running */
#define DRV_STAT_IDLE                   0x8000          /* Bit 15: Idle */

/* DS402 modes of operation 0x6060 */
enum MC_T_CIA402_OPMODE
{
   DRV_MODE_OP_PROF_POS            = 1,          /* profile position mode */
   DRV_MODE_OP_VELOCITY            = 2,          /* velocity mode (frequency converter) */
   DRV_MODE_OP_PROF_VEL            = 3,          /* profile velocity mode */
   DRV_MODE_OP_PROF_TOR            = 4,          /* profile torque mode */

   DRV_MODE_OP_HOMING              = 6,          /* homing mode */
   DRV_MODE_OP_INTER_POS           = 7,          /* interpolated position mode */
   DRV_MODE_OP_CSP                 = 8,          /* cyclic synchronous position mode */
   DRV_MODE_OP_CSV                 = 9,          /* cyclic synchronous velocity mode */
   DRV_MODE_OP_CST                 = 10          /* cyclic synchronous torque   mode */
};

/* DS402 device control (state machine) states */
enum MC_T_CIA402_STATE
{
   DRV_DEV_STATE_NOT_READY         = 0,          /* Not ready to switch on : Status Word x0xx 0000 */
   DRV_DEV_STATE_SWITCHON_DIS      = 1,          /* Switch on disabled     : Status Word x1xx 0000 */
   DRV_DEV_STATE_READY_TO_SWITCHON = 2,          /* Ready to switch on     : Status Word x01x 0001 */
   DRV_DEV_STATE_SWITCHED_ON       = 3,          /* Switched on            : Status Word x011 0011 */
   DRV_DEV_STATE_OP_ENABLED        = 4,          /* Operation enabled      : Status Word x011 0111 */
   DRV_DEV_STATE_QUICK_STOP        = 5,          /* Quick stop active      : Status Word 0000 0111 */
   DRV_DEV_STATE_MALFCT_REACTION   = 6,          /* Malfunction/Fault reaction active Status Word (xxxx 1111) oder (xx10 1111) */
   DRV_DEV_STATE_MALFUNCTION       = 7           /* Malfunction/Fault                 */
};

/* Ubt Servo SDO define */
#define ECAT_INDEX_ERRNO    0x603F
#define ECAT_INDEX_REALPOS  0x6064
#define ECAT_INDEX_REALVEL  0x606C
#define ECAT_INDEX_REALTRQ  0x6077

#define ECAT_INDEX_PID      0x2003
    #define SUBINDEX_PID_POSKP  0x01
    #define SUBINDEX_PID_POSKI  0x02
    #define SUBINDEX_PID_POSKD  0x03
    #define SUBINDEX_PID_VELKP  0x04
    #define SUBINDEX_PID_VELKI  0x05
    #define SUBINDEX_PID_VELKD  0x06
    #define SUBINDEX_PID_TRQKP  0x07
    #define SUBINDEX_PID_TRQKI  0x08
    #define SUBINDEX_PID_TRQKD  0x09
#define ECAT_INDEX_MISC     0x2004
    #define SUBINDEX_MISC_HOME      0x01
    #define SUBINDEX_MISC_READTEMP  0x02
    #define SUBINDEX_MISC_READHOME  0x03
    #define SUBINDEX_MISC_READMOTOR 0x04
    #define SUBINDEX_MISC_READSERVO 0x05
    #define SUBINDEX_MISC_FINDHOME  0x06
    #define SUBINDEX_MISC_GETVER    0x07
#define ECAT_INDEX_LIMIT    0x2005
    #define SUBINDEX_LIMIT_MAXPOS   0x01
    #define SUBINDEX_LIMIT_MINPOS   0x02
    #define SUBINDEX_LIMIT_MAXVEL   0x03
    #define SUBINDEX_LIMIT_MINVEL   0x04
    #define SUBINDEX_LIMIT_MAXTRQ   0x05
    #define SUBINDEX_LIMIT_MINTRQ   0x06
    #define SUBINDEX_LIMIT_MAXPOSEN 0x07
    #define SUBINDEX_LIMIT_MINPOSEN 0x08
    #define SUBINDEX_LIMIT_MAXVELEN 0x09
    #define SUBINDEX_LIMIT_MINVELEN 0x0A
    #define SUBINDEX_LIMIT_MAXTRQEN 0x0B
    #define SUBINDEX_LIMIT_MINTRQEN 0x0C

#define TO_BCD1(x) \
    ((((x)>>4)&0xF)*10+((x)&0xF))

#endif /* __UBTECCOM_H__ */

