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

class EcatGetPVTRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.servo = null;
    }
    else {
      if (initObj.hasOwnProperty('servo')) {
        this.servo = initObj.servo
      }
      else {
        this.servo = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EcatGetPVTRequest
    // Serialize message field [servo]
    bufferOffset = _serializer.string(obj.servo, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EcatGetPVTRequest
    let len;
    let data = new EcatGetPVTRequest(null);
    // Deserialize message field [servo]
    data.servo = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.servo.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'servo_ctrl/EcatGetPVTRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db917f55775a8bcd06c01a6f4f18b912';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string servo
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EcatGetPVTRequest(null);
    if (msg.servo !== undefined) {
      resolved.servo = msg.servo;
    }
    else {
      resolved.servo = ''
    }

    return resolved;
    }
};

class EcatGetPVTResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pos = null;
      this.vel = null;
      this.trq = null;
      this.errcode = null;
    }
    else {
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = 0.0;
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = 0.0;
      }
      if (initObj.hasOwnProperty('trq')) {
        this.trq = initObj.trq
      }
      else {
        this.trq = 0.0;
      }
      if (initObj.hasOwnProperty('errcode')) {
        this.errcode = initObj.errcode
      }
      else {
        this.errcode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EcatGetPVTResponse
    // Serialize message field [pos]
    bufferOffset = _serializer.float32(obj.pos, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = _serializer.float32(obj.vel, buffer, bufferOffset);
    // Serialize message field [trq]
    bufferOffset = _serializer.float32(obj.trq, buffer, bufferOffset);
    // Serialize message field [errcode]
    bufferOffset = _serializer.uint16(obj.errcode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EcatGetPVTResponse
    let len;
    let data = new EcatGetPVTResponse(null);
    // Deserialize message field [pos]
    data.pos = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [trq]
    data.trq = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [errcode]
    data.errcode = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a service object
    return 'servo_ctrl/EcatGetPVTResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0607ae32f3876e7e57f5a31f95f51d33';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 pos
    float32 vel
    float32 trq
    uint16 errcode
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EcatGetPVTResponse(null);
    if (msg.pos !== undefined) {
      resolved.pos = msg.pos;
    }
    else {
      resolved.pos = 0.0
    }

    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = 0.0
    }

    if (msg.trq !== undefined) {
      resolved.trq = msg.trq;
    }
    else {
      resolved.trq = 0.0
    }

    if (msg.errcode !== undefined) {
      resolved.errcode = msg.errcode;
    }
    else {
      resolved.errcode = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: EcatGetPVTRequest,
  Response: EcatGetPVTResponse,
  md5sum() { return 'c489f93ef6aafee9eaeb152fcdcb6ab1'; },
  datatype() { return 'servo_ctrl/EcatGetPVT'; }
};
