// Auto-generated. Do not edit!

// (in-package servo_ctrl.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetFtOffsetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ftId = null;
      this.fx = null;
      this.fy = null;
      this.fz = null;
      this.mx = null;
      this.my = null;
      this.mz = null;
    }
    else {
      if (initObj.hasOwnProperty('ftId')) {
        this.ftId = initObj.ftId
      }
      else {
        this.ftId = '';
      }
      if (initObj.hasOwnProperty('fx')) {
        this.fx = initObj.fx
      }
      else {
        this.fx = 0;
      }
      if (initObj.hasOwnProperty('fy')) {
        this.fy = initObj.fy
      }
      else {
        this.fy = 0;
      }
      if (initObj.hasOwnProperty('fz')) {
        this.fz = initObj.fz
      }
      else {
        this.fz = 0;
      }
      if (initObj.hasOwnProperty('mx')) {
        this.mx = initObj.mx
      }
      else {
        this.mx = 0;
      }
      if (initObj.hasOwnProperty('my')) {
        this.my = initObj.my
      }
      else {
        this.my = 0;
      }
      if (initObj.hasOwnProperty('mz')) {
        this.mz = initObj.mz
      }
      else {
        this.mz = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetFtOffsetRequest
    // Serialize message field [ftId]
    bufferOffset = _serializer.string(obj.ftId, buffer, bufferOffset);
    // Serialize message field [fx]
    bufferOffset = _serializer.int32(obj.fx, buffer, bufferOffset);
    // Serialize message field [fy]
    bufferOffset = _serializer.int32(obj.fy, buffer, bufferOffset);
    // Serialize message field [fz]
    bufferOffset = _serializer.int32(obj.fz, buffer, bufferOffset);
    // Serialize message field [mx]
    bufferOffset = _serializer.int32(obj.mx, buffer, bufferOffset);
    // Serialize message field [my]
    bufferOffset = _serializer.int32(obj.my, buffer, bufferOffset);
    // Serialize message field [mz]
    bufferOffset = _serializer.int32(obj.mz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetFtOffsetRequest
    let len;
    let data = new SetFtOffsetRequest(null);
    // Deserialize message field [ftId]
    data.ftId = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [fx]
    data.fx = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fy]
    data.fy = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fz]
    data.fz = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mx]
    data.mx = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [my]
    data.my = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mz]
    data.mz = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ftId.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'servo_ctrl/SetFtOffsetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c4f78021f9d940884cc85d7c567fe52';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ftId: "lwrist", "rwrist", "lankle", "rankle"
    string ftId
    int32  fx
    int32  fy
    int32  fz
    int32  mx
    int32  my
    int32  mz
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetFtOffsetRequest(null);
    if (msg.ftId !== undefined) {
      resolved.ftId = msg.ftId;
    }
    else {
      resolved.ftId = ''
    }

    if (msg.fx !== undefined) {
      resolved.fx = msg.fx;
    }
    else {
      resolved.fx = 0
    }

    if (msg.fy !== undefined) {
      resolved.fy = msg.fy;
    }
    else {
      resolved.fy = 0
    }

    if (msg.fz !== undefined) {
      resolved.fz = msg.fz;
    }
    else {
      resolved.fz = 0
    }

    if (msg.mx !== undefined) {
      resolved.mx = msg.mx;
    }
    else {
      resolved.mx = 0
    }

    if (msg.my !== undefined) {
      resolved.my = msg.my;
    }
    else {
      resolved.my = 0
    }

    if (msg.mz !== undefined) {
      resolved.mz = msg.mz;
    }
    else {
      resolved.mz = 0
    }

    return resolved;
    }
};

class SetFtOffsetResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetFtOffsetResponse
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetFtOffsetResponse
    let len;
    let data = new SetFtOffsetResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.result.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'servo_ctrl/SetFtOffsetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c22f2a1ed8654a0b365f1bb3f7ff2c0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetFtOffsetResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SetFtOffsetRequest,
  Response: SetFtOffsetResponse,
  md5sum() { return 'f9c88f3e422e4316a11e6c00bab5b2f9'; },
  datatype() { return 'servo_ctrl/SetFtOffset'; }
};
