// Auto-generated. Do not edit!

// (in-package ces_task.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TaskLegStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.task_id = null;
      this.demander = null;
      this.executor = null;
      this.task_status = null;
      this.legs_status = null;
      this.process_info = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = '';
      }
      if (initObj.hasOwnProperty('demander')) {
        this.demander = initObj.demander
      }
      else {
        this.demander = '';
      }
      if (initObj.hasOwnProperty('executor')) {
        this.executor = initObj.executor
      }
      else {
        this.executor = '';
      }
      if (initObj.hasOwnProperty('task_status')) {
        this.task_status = initObj.task_status
      }
      else {
        this.task_status = '';
      }
      if (initObj.hasOwnProperty('legs_status')) {
        this.legs_status = initObj.legs_status
      }
      else {
        this.legs_status = '';
      }
      if (initObj.hasOwnProperty('process_info')) {
        this.process_info = initObj.process_info
      }
      else {
        this.process_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskLegStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [task_id]
    bufferOffset = _serializer.string(obj.task_id, buffer, bufferOffset);
    // Serialize message field [demander]
    bufferOffset = _serializer.string(obj.demander, buffer, bufferOffset);
    // Serialize message field [executor]
    bufferOffset = _serializer.string(obj.executor, buffer, bufferOffset);
    // Serialize message field [task_status]
    bufferOffset = _serializer.string(obj.task_status, buffer, bufferOffset);
    // Serialize message field [legs_status]
    bufferOffset = _serializer.string(obj.legs_status, buffer, bufferOffset);
    // Serialize message field [process_info]
    bufferOffset = _serializer.string(obj.process_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskLegStatus
    let len;
    let data = new TaskLegStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [demander]
    data.demander = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [executor]
    data.executor = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [task_status]
    data.task_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [legs_status]
    data.legs_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [process_info]
    data.process_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.task_id.length;
    length += object.demander.length;
    length += object.executor.length;
    length += object.task_status.length;
    length += object.legs_status.length;
    length += object.process_info.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ces_task/TaskLegStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bad847b3c04a60d5d22c49c56407a7be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # owner ids
    string OWNER_NONE=none
    string OWNER_SDK=sdk
    string OWNER_LEGS=legs
    string OWNER_ARMS=arms
    string OWNER_REMOTER=remoter
    string OWNER_HOST=host
    
    # task ids
    ## tasks for legs
    string TASK_NAV2CENTER=nav2Center
    string TASK_NAV2GATE=nav2Gate
    string TASK_NAV2GETBAG=nav2GetBag
    string TASK_NAV2HangBAG=nav2HangBag
    string TASK_NAV2DANCE=nav2Dance
    string TASK_NAV2WATER=nav2GetWater
    string TASK_NAV2FOOD=nav2Food
    string TASK_NAV2SOFA=nav2Sofa
    string TASK_NAV2NoticeDate=nav2NoticeDate
    string TASK_NAV2UMBRELLA=nav2Umbrella
    string TASK_NAV2GIVEUMBRELLA=nav2GiveUmbrella
    string TASK_NAV2CHARGE=nav2Charge
    string TASK_NAV2ENDPOINT=nav2Endpoint
    string TASK_NAV2DRAW=nav2Draw
    string TASK_FASTWALK=doFastwalk
    string TASK_MARKTIME=markTime
    string TASK_STANDBY=standby
    string TASK_DANCE=dance
    
    # task status defines
    string TASK_STATUS_IDLE=idle
    string TASK_STATUS_BUSY=busy
    string TASK_STATUS_STOP=stopped
    string TASK_STATUS_ABORT=abort
    string TASK_STATUS_FAILED=fail
    
    # legs status defines
    string LEG_STATUS_INIT=standInit
    string LEG_STATUS_STANDING=standing
    string LEG_STATUS_SCRIPTING=scripting
    string LEG_STATUS_NAV=navigating
    string LEG_STATUS_ARMCTRL=armCtrl
    string LEG_STATUS_VISIONCTRL=visionCtrl
    string LEG_STATUS_KEYBOARDCTRL=keyboardCtrl
    string LEG_STATUS_REMOTERCTRL=remoterCtrl
    
    ##############################################
    
    # time stamp must be filled
    Header header
    
    # current task id
    string task_id
    
    # who send request
    string demander
    
    # who execute task
    string executor
    
    # current task status
    string task_status
    
    # current leg status
    string legs_status
    
    # progress info(optional)
    string process_info
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskLegStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = ''
    }

    if (msg.demander !== undefined) {
      resolved.demander = msg.demander;
    }
    else {
      resolved.demander = ''
    }

    if (msg.executor !== undefined) {
      resolved.executor = msg.executor;
    }
    else {
      resolved.executor = ''
    }

    if (msg.task_status !== undefined) {
      resolved.task_status = msg.task_status;
    }
    else {
      resolved.task_status = ''
    }

    if (msg.legs_status !== undefined) {
      resolved.legs_status = msg.legs_status;
    }
    else {
      resolved.legs_status = ''
    }

    if (msg.process_info !== undefined) {
      resolved.process_info = msg.process_info;
    }
    else {
      resolved.process_info = ''
    }

    return resolved;
    }
};

// Constants for message
TaskLegStatus.Constants = {
  OWNER_NONE: 'none',
  OWNER_SDK: 'sdk',
  OWNER_LEGS: 'legs',
  OWNER_ARMS: 'arms',
  OWNER_REMOTER: 'remoter',
  OWNER_HOST: 'host',
  TASK_NAV2CENTER: 'nav2Center',
  TASK_NAV2GATE: 'nav2Gate',
  TASK_NAV2GETBAG: 'nav2GetBag',
  TASK_NAV2HANGBAG: 'nav2HangBag',
  TASK_NAV2DANCE: 'nav2Dance',
  TASK_NAV2WATER: 'nav2GetWater',
  TASK_NAV2FOOD: 'nav2Food',
  TASK_NAV2SOFA: 'nav2Sofa',
  TASK_NAV2NOTICEDATE: 'nav2NoticeDate',
  TASK_NAV2UMBRELLA: 'nav2Umbrella',
  TASK_NAV2GIVEUMBRELLA: 'nav2GiveUmbrella',
  TASK_NAV2CHARGE: 'nav2Charge',
  TASK_NAV2ENDPOINT: 'nav2Endpoint',
  TASK_NAV2DRAW: 'nav2Draw',
  TASK_FASTWALK: 'doFastwalk',
  TASK_MARKTIME: 'markTime',
  TASK_STANDBY: 'standby',
  TASK_DANCE: 'dance',
  TASK_STATUS_IDLE: 'idle',
  TASK_STATUS_BUSY: 'busy',
  TASK_STATUS_STOP: 'stopped',
  TASK_STATUS_ABORT: 'abort',
  TASK_STATUS_FAILED: 'fail',
  LEG_STATUS_INIT: 'standInit',
  LEG_STATUS_STANDING: 'standing',
  LEG_STATUS_SCRIPTING: 'scripting',
  LEG_STATUS_NAV: 'navigating',
  LEG_STATUS_ARMCTRL: 'armCtrl',
  LEG_STATUS_VISIONCTRL: 'visionCtrl',
  LEG_STATUS_KEYBOARDCTRL: 'keyboardCtrl',
  LEG_STATUS_REMOTERCTRL: 'remoterCtrl',
}

module.exports = TaskLegStatus;
