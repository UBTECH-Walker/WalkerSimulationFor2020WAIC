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

class TaskArmStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.task_id = null;
      this.demander = null;
      this.executor = null;
      this.task_status = null;
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
      if (initObj.hasOwnProperty('process_info')) {
        this.process_info = initObj.process_info
      }
      else {
        this.process_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskArmStatus
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
    // Serialize message field [process_info]
    bufferOffset = _serializer.string(obj.process_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskArmStatus
    let len;
    let data = new TaskArmStatus(null);
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
    length += object.process_info.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ces_task/TaskArmStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e37a2b08a580018c6dc8764166a54283';
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
    ## common task
    string TASK_GREETINGS=CES/cesGreetings
    string TASK_HANDSHAKE=function/functionHybirdEffort
    string TASK_STANDBY=walk/walkDynamic
    string TASK_CHARGE=CES/cesRecharge
    string TASK_SWINGWHILEWALKE=walk/walkDynamic
    string TASK_WALKINHAND=walk/walkDynamicWithHand
    string TASK_DANCE=function/functionDance
    string TASK_ENDPOINTCTRL=function/functionEndpointControl
    string TASK_HYBIRDTRQCTRL=function/functionHybirdEffort
    string TASK_HYBIRDPOSCTRL=function/functionHybirdPosition
    string TASK_NULLSPACECTRL=function/functionNullspaceControl
    string TASK_VISUALSERVO=function/functionVisualServo
    string TASK_WHOLEBODYCTRL=function/functionWholeBodyControl
    string TASK_DRAWING=function/functionDrawing
    string TASK_SAYGOODBYE=CES/cesSayGoodbye
    
    ## open door task
    string TASK_OPENDOOR=CES/ces100OpenDoor
    
    ## handle bag task
    string TASK_GETBAG=CES/cesPickBag
    string TASK_HANGBAG=CES/ces101PlaceBag
    
    ## get water task
    string TASK_GETWATER=CES/ces102OpenRefrigerator
    string TASK_PLACEWATER=CES/ces104PlaceWater
    string TASK_WALKWITHWATER=walk/walkDynamic
    
    ## get food task
    string TASK_GETFOOD=CES/ces103PickChips
    string TASK_WALKWITHFOOD=walk/walkDynamic
    string TASK_GIVEFOOD=CES/cesDeliveryChips
    string TASK_RELEASEFOOD=CES/cesReleaseChips
    
    ## get umbrella task
    string TASK_GETUMBRELLA=CES/ces105PickUmbrella
    string TASK_GIVEUMBRELLA=CES/cesDeliveryUmbrella
    string TASK_RELEASEUMBRELLA=CES/cesReleaseUmbrella
    
    
    # task status defines
    string TASK_STATUS_IDLE=idle
    string TASK_STATUS_BUSY=busy
    string TASK_STATUS_STOP=stopped
    string TASK_STATUS_ABORT=abort
    string TASK_STATUS_FAILED=fail
    
    ##############################################
    
    # time stamp must be filled
    Header header
    
    # current task id
    string task_id
    
    # who send request
    string demander
    
    # who execute task
    string executor
    
    # current status
    string task_status
    
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
    const resolved = new TaskArmStatus(null);
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
TaskArmStatus.Constants = {
  OWNER_NONE: 'none',
  OWNER_SDK: 'sdk',
  OWNER_LEGS: 'legs',
  OWNER_ARMS: 'arms',
  OWNER_REMOTER: 'remoter',
  OWNER_HOST: 'host',
  TASK_GREETINGS: 'CES/cesGreetings',
  TASK_HANDSHAKE: 'function/functionHybirdEffort',
  TASK_STANDBY: 'walk/walkDynamic',
  TASK_CHARGE: 'CES/cesRecharge',
  TASK_SWINGWHILEWALKE: 'walk/walkDynamic',
  TASK_WALKINHAND: 'walk/walkDynamicWithHand',
  TASK_DANCE: 'function/functionDance',
  TASK_ENDPOINTCTRL: 'function/functionEndpointControl',
  TASK_HYBIRDTRQCTRL: 'function/functionHybirdEffort',
  TASK_HYBIRDPOSCTRL: 'function/functionHybirdPosition',
  TASK_NULLSPACECTRL: 'function/functionNullspaceControl',
  TASK_VISUALSERVO: 'function/functionVisualServo',
  TASK_WHOLEBODYCTRL: 'function/functionWholeBodyControl',
  TASK_DRAWING: 'function/functionDrawing',
  TASK_SAYGOODBYE: 'CES/cesSayGoodbye',
  TASK_OPENDOOR: 'CES/ces100OpenDoor',
  TASK_GETBAG: 'CES/cesPickBag',
  TASK_HANGBAG: 'CES/ces101PlaceBag',
  TASK_GETWATER: 'CES/ces102OpenRefrigerator',
  TASK_PLACEWATER: 'CES/ces104PlaceWater',
  TASK_WALKWITHWATER: 'walk/walkDynamic',
  TASK_GETFOOD: 'CES/ces103PickChips',
  TASK_WALKWITHFOOD: 'walk/walkDynamic',
  TASK_GIVEFOOD: 'CES/cesDeliveryChips',
  TASK_RELEASEFOOD: 'CES/cesReleaseChips',
  TASK_GETUMBRELLA: 'CES/ces105PickUmbrella',
  TASK_GIVEUMBRELLA: 'CES/cesDeliveryUmbrella',
  TASK_RELEASEUMBRELLA: 'CES/cesReleaseUmbrella',
  TASK_STATUS_IDLE: 'idle',
  TASK_STATUS_BUSY: 'busy',
  TASK_STATUS_STOP: 'stopped',
  TASK_STATUS_ABORT: 'abort',
  TASK_STATUS_FAILED: 'fail',
}

module.exports = TaskArmStatus;
