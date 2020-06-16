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

class TaskArmCtrlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_id = null;
      this.useJointOTG = null;
      this.useCartOTG = null;
      this.securityDection = null;
      this.collisionDetection = null;
      this.demander = null;
      this.executor = null;
      this.cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = '';
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
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskArmCtrlRequest
    // Serialize message field [task_id]
    bufferOffset = _serializer.string(obj.task_id, buffer, bufferOffset);
    // Serialize message field [useJointOTG]
    bufferOffset = _arraySerializer.bool(obj.useJointOTG, buffer, bufferOffset, null);
    // Serialize message field [useCartOTG]
    bufferOffset = _arraySerializer.bool(obj.useCartOTG, buffer, bufferOffset, null);
    // Serialize message field [securityDection]
    bufferOffset = _arraySerializer.bool(obj.securityDection, buffer, bufferOffset, null);
    // Serialize message field [collisionDetection]
    bufferOffset = _arraySerializer.bool(obj.collisionDetection, buffer, bufferOffset, null);
    // Serialize message field [demander]
    bufferOffset = _serializer.string(obj.demander, buffer, bufferOffset);
    // Serialize message field [executor]
    bufferOffset = _serializer.string(obj.executor, buffer, bufferOffset);
    // Serialize message field [cmd]
    bufferOffset = _serializer.string(obj.cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskArmCtrlRequest
    let len;
    let data = new TaskArmCtrlRequest(null);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [useJointOTG]
    data.useJointOTG = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [useCartOTG]
    data.useCartOTG = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [securityDection]
    data.securityDection = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [collisionDetection]
    data.collisionDetection = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [demander]
    data.demander = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [executor]
    data.executor = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.task_id.length;
    length += object.useJointOTG.length;
    length += object.useCartOTG.length;
    length += object.securityDection.length;
    length += object.collisionDetection.length;
    length += object.demander.length;
    length += object.executor.length;
    length += object.cmd.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ces_task/TaskArmCtrlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb2e25d94af76f3480b1d4d23ddf0c13';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # current task id, defined in 'TaskArmStatus.msg'
    string task_id
    
    
    bool[] useJointOTG
    bool[] useCartOTG
    bool[] securityDection
    bool[] collisionDetection
    
    
    # who send request
    string demander
    
    # who execute task
    string executor
    
    # command: start or stop
    string CMD_START=start
    string CMD_STOP=stop
    string cmd
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskArmCtrlRequest(null);
    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = ''
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

    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = ''
    }

    return resolved;
    }
};

// Constants for message
TaskArmCtrlRequest.Constants = {
  CMD_START: 'start',
  CMD_STOP: 'stop',
}

class TaskArmCtrlResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.owner = null;
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('owner')) {
        this.owner = initObj.owner
      }
      else {
        this.owner = '';
      }
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
    // Serializes a message object of type TaskArmCtrlResponse
    // Serialize message field [owner]
    bufferOffset = _serializer.string(obj.owner, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskArmCtrlResponse
    let len;
    let data = new TaskArmCtrlResponse(null);
    // Deserialize message field [owner]
    data.owner = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.owner.length;
    length += object.message.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ces_task/TaskArmCtrlResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e26e868808b12caba7b649dc730ce2de';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    # who reply response
    string owner
    
    # indicate status
    bool success
    
    # informational, e.g. for error messages
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskArmCtrlResponse(null);
    if (msg.owner !== undefined) {
      resolved.owner = msg.owner;
    }
    else {
      resolved.owner = ''
    }

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
  Request: TaskArmCtrlRequest,
  Response: TaskArmCtrlResponse,
  md5sum() { return '6487bd4cf07aded076310cb84cded15c'; },
  datatype() { return 'ces_task/TaskArmCtrl'; }
};
