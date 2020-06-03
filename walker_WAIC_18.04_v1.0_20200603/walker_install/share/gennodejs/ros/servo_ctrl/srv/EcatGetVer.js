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

class EcatGetVerRequest {
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
    // Serializes a message object of type EcatGetVerRequest
    // Serialize message field [servo]
    bufferOffset = _serializer.string(obj.servo, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EcatGetVerRequest
    let len;
    let data = new EcatGetVerRequest(null);
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
    return 'servo_ctrl/EcatGetVerRequest';
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
    const resolved = new EcatGetVerRequest(null);
    if (msg.servo !== undefined) {
      resolved.servo = msg.servo;
    }
    else {
      resolved.servo = ''
    }

    return resolved;
    }
};

class EcatGetVerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mod = null;
      this.version = null;
    }
    else {
      if (initObj.hasOwnProperty('mod')) {
        this.mod = initObj.mod
      }
      else {
        this.mod = 0;
      }
      if (initObj.hasOwnProperty('version')) {
        this.version = initObj.version
      }
      else {
        this.version = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EcatGetVerResponse
    // Serialize message field [mod]
    bufferOffset = _serializer.uint32(obj.mod, buffer, bufferOffset);
    // Serialize message field [version]
    bufferOffset = _serializer.uint32(obj.version, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EcatGetVerResponse
    let len;
    let data = new EcatGetVerResponse(null);
    // Deserialize message field [mod]
    data.mod = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [version]
    data.version = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'servo_ctrl/EcatGetVerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a5d057395e812926839cdfda59135c19';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 mod
    uint32 version
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EcatGetVerResponse(null);
    if (msg.mod !== undefined) {
      resolved.mod = msg.mod;
    }
    else {
      resolved.mod = 0
    }

    if (msg.version !== undefined) {
      resolved.version = msg.version;
    }
    else {
      resolved.version = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: EcatGetVerRequest,
  Response: EcatGetVerResponse,
  md5sum() { return '3f1b5b791580e357125da8eb47534614'; },
  datatype() { return 'servo_ctrl/EcatGetVer'; }
};
