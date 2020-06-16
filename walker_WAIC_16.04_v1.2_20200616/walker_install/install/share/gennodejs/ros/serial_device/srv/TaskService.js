// Auto-generated. Do not edit!

// (in-package serial_device.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TaskServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.taskName = null;
      this.taskEnable = null;
      this.useJointOTG = null;
      this.useCartOTG = null;
      this.securityDection = null;
      this.collisionDetection = null;
    }
    else {
      if (initObj.hasOwnProperty('taskName')) {
        this.taskName = initObj.taskName
      }
      else {
        this.taskName = '';
      }
      if (initObj.hasOwnProperty('taskEnable')) {
        this.taskEnable = initObj.taskEnable
      }
      else {
        this.taskEnable = false;
      }
      if (initObj.hasOwnProperty('useJointOTG')) {
        this.useJointOTG = initObj.useJointOTG
      }
      else {
        this.useJointOTG = [];
      }
      if (initObj.hasOwnProperty('useCartOTG')) {
        this.useCartOTG = initObj.useCartOTG
      }
      else {
        this.useCartOTG = [];
      }
      if (initObj.hasOwnProperty('securityDection')) {
        this.securityDection = initObj.securityDection
      }
      else {
        this.securityDection = [];
      }
      if (initObj.hasOwnProperty('collisionDetection')) {
        this.collisionDetection = initObj.collisionDetection
      }
      else {
        this.collisionDetection = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskServiceRequest
    // Serialize message field [taskName]
    bufferOffset = _serializer.string(obj.taskName, buffer, bufferOffset);
    // Serialize message field [taskEnable]
    bufferOffset = _serializer.bool(obj.taskEnable, buffer, bufferOffset);
    // Serialize message field [useJointOTG]
    bufferOffset = _arraySerializer.bool(obj.useJointOTG, buffer, bufferOffset, null);
    // Serialize message field [useCartOTG]
    bufferOffset = _arraySerializer.bool(obj.useCartOTG, buffer, bufferOffset, null);
    // Serialize message field [securityDection]
    bufferOffset = _arraySerializer.bool(obj.securityDection, buffer, bufferOffset, null);
    // Serialize message field [collisionDetection]
    bufferOffset = _arraySerializer.bool(obj.collisionDetection, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskServiceRequest
    let len;
    let data = new TaskServiceRequest(null);
    // Deserialize message field [taskName]
    data.taskName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [taskEnable]
    data.taskEnable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [useJointOTG]
    data.useJointOTG = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [useCartOTG]
    data.useCartOTG = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [securityDection]
    data.securityDection = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [collisionDetection]
    data.collisionDetection = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.taskName.length;
    length += object.useJointOTG.length;
    length += object.useCartOTG.length;
    length += object.securityDection.length;
    length += object.collisionDetection.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a service object
    return 'serial_device/TaskServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2578414395b78e4280493cdc6999b7cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string taskName
    bool taskEnable
    bool[] useJointOTG
    bool[] useCartOTG
    bool[] securityDection
    bool[] collisionDetection
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskServiceRequest(null);
    if (msg.taskName !== undefined) {
      resolved.taskName = msg.taskName;
    }
    else {
      resolved.taskName = ''
    }

    if (msg.taskEnable !== undefined) {
      resolved.taskEnable = msg.taskEnable;
    }
    else {
      resolved.taskEnable = false
    }

    if (msg.useJointOTG !== undefined) {
      resolved.useJointOTG = msg.useJointOTG;
    }
    else {
      resolved.useJointOTG = []
    }

    if (msg.useCartOTG !== undefined) {
      resolved.useCartOTG = msg.useCartOTG;
    }
    else {
      resolved.useCartOTG = []
    }

    if (msg.securityDection !== undefined) {
      resolved.securityDection = msg.securityDection;
    }
    else {
      resolved.securityDection = []
    }

    if (msg.collisionDetection !== undefined) {
      resolved.collisionDetection = msg.collisionDetection;
    }
    else {
      resolved.collisionDetection = []
    }

    return resolved;
    }
};

class TaskServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
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
    // Serializes a message object of type TaskServiceResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskServiceResponse
    let len;
    let data = new TaskServiceResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
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
    return 'serial_device/TaskServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b543fbd3518c791be28589b850702201';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool result
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskServiceResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
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
  Request: TaskServiceRequest,
  Response: TaskServiceResponse,
  md5sum() { return '4fad11411fd801536b613979f3a27f21'; },
  datatype() { return 'serial_device/TaskService'; }
};
