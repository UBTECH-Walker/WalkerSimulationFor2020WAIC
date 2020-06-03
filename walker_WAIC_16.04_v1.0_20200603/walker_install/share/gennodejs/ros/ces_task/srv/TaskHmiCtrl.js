// Auto-generated. Do not edit!

// (in-package ces_task.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TaskHmiCtrlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.adb_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('adb_cmd')) {
        this.adb_cmd = initObj.adb_cmd
      }
      else {
        this.adb_cmd = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskHmiCtrlRequest
    // Serialize message field [adb_cmd]
    bufferOffset = _serializer.string(obj.adb_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskHmiCtrlRequest
    let len;
    let data = new TaskHmiCtrlRequest(null);
    // Deserialize message field [adb_cmd]
    data.adb_cmd = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.adb_cmd.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ces_task/TaskHmiCtrlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '95afe3e486951c35c42cf7b749497fc3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string adb_cmd
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskHmiCtrlRequest(null);
    if (msg.adb_cmd !== undefined) {
      resolved.adb_cmd = msg.adb_cmd;
    }
    else {
      resolved.adb_cmd = ''
    }

    return resolved;
    }
};

class TaskHmiCtrlResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskHmiCtrlResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskHmiCtrlResponse
    let len;
    let data = new TaskHmiCtrlResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ces_task/TaskHmiCtrlResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool success
    
    
    string message
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskHmiCtrlResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: TaskHmiCtrlRequest,
  Response: TaskHmiCtrlResponse,
  md5sum() { return 'd451323ce918ea804b0b0df774879b87'; },
  datatype() { return 'ces_task/TaskHmiCtrl'; }
};
