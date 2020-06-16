// Auto-generated. Do not edit!

// (in-package cruiser_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class motion_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
      this.data = null;
      this.actionName = null;
      this.writetime = null;
      this.targetJointPosition = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('actionName')) {
        this.actionName = initObj.actionName
      }
      else {
        this.actionName = '';
      }
      if (initObj.hasOwnProperty('writetime')) {
        this.writetime = initObj.writetime
      }
      else {
        this.writetime = new Array(1024).fill(0);
      }
      if (initObj.hasOwnProperty('targetJointPosition')) {
        this.targetJointPosition = initObj.targetJointPosition
      }
      else {
        this.targetJointPosition = new Array(16).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motion_srvRequest
    // Serialize message field [command]
    bufferOffset = _serializer.int32(obj.command, buffer, bufferOffset);
    // Check that the constant length array field [data] has the right length
    if (obj.data.length !== 3) {
      throw new Error('Unable to serialize array field data - length must be 3')
    }
    // Serialize message field [data]
    bufferOffset = _arraySerializer.int32(obj.data, buffer, bufferOffset, 3);
    // Serialize message field [actionName]
    bufferOffset = _serializer.string(obj.actionName, buffer, bufferOffset);
    // Check that the constant length array field [writetime] has the right length
    if (obj.writetime.length !== 1024) {
      throw new Error('Unable to serialize array field writetime - length must be 1024')
    }
    // Serialize message field [writetime]
    bufferOffset = _arraySerializer.int32(obj.writetime, buffer, bufferOffset, 1024);
    // Check that the constant length array field [targetJointPosition] has the right length
    if (obj.targetJointPosition.length !== 16) {
      throw new Error('Unable to serialize array field targetJointPosition - length must be 16')
    }
    // Serialize message field [targetJointPosition]
    bufferOffset = _arraySerializer.float64(obj.targetJointPosition, buffer, bufferOffset, 16);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motion_srvRequest
    let len;
    let data = new motion_srvRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.int32(buffer, bufferOffset, 3)
    // Deserialize message field [actionName]
    data.actionName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [writetime]
    data.writetime = _arrayDeserializer.int32(buffer, bufferOffset, 1024)
    // Deserialize message field [targetJointPosition]
    data.targetJointPosition = _arrayDeserializer.float64(buffer, bufferOffset, 16)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.actionName.length;
    return length + 4244;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cruiser_msgs/motion_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5664711c84c4775f891ad12ba2520f64';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #   command   |   data[0]   |   data[1]   |   data[2]   |           explain
    #      1      |     XXX     |     XXX     |     XXX     |    read current joint positoin
    #      2      | pointNum[x] |   time[x]   |   index[x]  |    store current positoin as pointNum[data0] in time[data1]  index[x]:(1 left_arm; 2 right_arm; 3 arm; 4 Head; 5 Hand; 6 All_Robot)
    #      3      | pointNum[x] |   time[x]   |     XXX     |    move to pointNum[data0] in time[data1]
    #      4      | jointNum[x] |  angle[x]   |   time[x]   |    move jointNum[data0] to angle[data1] in time[data2]
    #      5      |   index[x]  |     XXX     |     XXX     |    stop motion index[data0]   index[x]:(1 left_arm; 2 right_arm; 3 arm; 4 Head; 5 Hand; 6 All_Robot)
    #      6      |     XXX     | pointNum[x] |     XXX     |    store action actionName  pointNum[data1]
    #      7      |     XXX     |     XXX     |     XXX     |    move action actionName
    #      8      |     XXX     |     XXX     |     XXX     |    read action actionName
    #      9      |   index[x]  |     XXX     |     XXX     |    go home index[data0]   index[x]:(1 left_arm; 2 right_arm; 3 arm; 4 Head; 5 Hand; 6 All_Robot)
    #      10     | jointNum[x] |     kp      |     XXX     |    set joint[data0] kp[data1]
    #      11     | jointNum[x] |     XXX     |     XXX     |    set joint[data0] zero
    #      12     |     XXX     |     XXX     |     XXX     |    modify action actionName
    #      13     |     XXX     |     XXX     |     XXX     |    CSI record actionName
    #      14     |     XXX     |     XXX     |     XXX     |    stop CSI record actionName
    #      15     |     XXX     |     XXX     |     XXX     |    move CSI record actionName
    #      16     |   index[x]  |   time[x]   |     XXX     |    move to target joint position in time[x]
    
    #command for server
    int32 command
    
    #data for server
    int32[3] data
    
    string actionName
    
    int32[1024] writetime
    
    float64[16] targetJointPosition
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motion_srvRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = new Array(3).fill(0)
    }

    if (msg.actionName !== undefined) {
      resolved.actionName = msg.actionName;
    }
    else {
      resolved.actionName = ''
    }

    if (msg.writetime !== undefined) {
      resolved.writetime = msg.writetime;
    }
    else {
      resolved.writetime = new Array(1024).fill(0)
    }

    if (msg.targetJointPosition !== undefined) {
      resolved.targetJointPosition = msg.targetJointPosition;
    }
    else {
      resolved.targetJointPosition = new Array(16).fill(0)
    }

    return resolved;
    }
};

class motion_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.readtime = null;
      this.duration = null;
      this.currentJointPosition = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('readtime')) {
        this.readtime = initObj.readtime
      }
      else {
        this.readtime = new Array(1024).fill(0);
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0;
      }
      if (initObj.hasOwnProperty('currentJointPosition')) {
        this.currentJointPosition = initObj.currentJointPosition
      }
      else {
        this.currentJointPosition = new Array(16).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motion_srvResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Check that the constant length array field [readtime] has the right length
    if (obj.readtime.length !== 1024) {
      throw new Error('Unable to serialize array field readtime - length must be 1024')
    }
    // Serialize message field [readtime]
    bufferOffset = _arraySerializer.int32(obj.readtime, buffer, bufferOffset, 1024);
    // Serialize message field [duration]
    bufferOffset = _serializer.int32(obj.duration, buffer, bufferOffset);
    // Check that the constant length array field [currentJointPosition] has the right length
    if (obj.currentJointPosition.length !== 16) {
      throw new Error('Unable to serialize array field currentJointPosition - length must be 16')
    }
    // Serialize message field [currentJointPosition]
    bufferOffset = _arraySerializer.float64(obj.currentJointPosition, buffer, bufferOffset, 16);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motion_srvResponse
    let len;
    let data = new motion_srvResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [readtime]
    data.readtime = _arrayDeserializer.int32(buffer, bufferOffset, 1024)
    // Deserialize message field [duration]
    data.duration = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [currentJointPosition]
    data.currentJointPosition = _arrayDeserializer.float64(buffer, bufferOffset, 16)
    return data;
  }

  static getMessageSize(object) {
    return 4232;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cruiser_msgs/motion_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ce250692c803104fdc0bc22bac3888f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int32 result
    int32[1024] readtime
    
    int32 duration
    float64[16] currentJointPosition
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motion_srvResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.readtime !== undefined) {
      resolved.readtime = msg.readtime;
    }
    else {
      resolved.readtime = new Array(1024).fill(0)
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0
    }

    if (msg.currentJointPosition !== undefined) {
      resolved.currentJointPosition = msg.currentJointPosition;
    }
    else {
      resolved.currentJointPosition = new Array(16).fill(0)
    }

    return resolved;
    }
};

module.exports = {
  Request: motion_srvRequest,
  Response: motion_srvResponse,
  md5sum() { return 'e17f72359ddf3560f0cea3ec62c3ae72'; },
  datatype() { return 'cruiser_msgs/motion_srv'; }
};
