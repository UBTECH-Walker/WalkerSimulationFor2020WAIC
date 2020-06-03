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

class cruiserPowerActionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dev_name = null;
      this.on_off = null;
    }
    else {
      if (initObj.hasOwnProperty('dev_name')) {
        this.dev_name = initObj.dev_name
      }
      else {
        this.dev_name = 0;
      }
      if (initObj.hasOwnProperty('on_off')) {
        this.on_off = initObj.on_off
      }
      else {
        this.on_off = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cruiserPowerActionRequest
    // Serialize message field [dev_name]
    bufferOffset = _serializer.uint32(obj.dev_name, buffer, bufferOffset);
    // Serialize message field [on_off]
    bufferOffset = _serializer.uint32(obj.on_off, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cruiserPowerActionRequest
    let len;
    let data = new cruiserPowerActionRequest(null);
    // Deserialize message field [dev_name]
    data.dev_name = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [on_off]
    data.on_off = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cruiser_msgs/cruiserPowerActionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd87e4d84452162181a760885dc9110d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 dev_name
    uint32 on_off
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cruiserPowerActionRequest(null);
    if (msg.dev_name !== undefined) {
      resolved.dev_name = msg.dev_name;
    }
    else {
      resolved.dev_name = 0
    }

    if (msg.on_off !== undefined) {
      resolved.on_off = msg.on_off;
    }
    else {
      resolved.on_off = 0
    }

    return resolved;
    }
};

class cruiserPowerActionResponse {
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
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cruiserPowerActionResponse
    // Serialize message field [result]
    bufferOffset = _serializer.uint32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cruiserPowerActionResponse
    let len;
    let data = new cruiserPowerActionResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cruiser_msgs/cruiserPowerActionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13d5d28ceaaadbc975dd072a2e10b88a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 result
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cruiserPowerActionResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: cruiserPowerActionRequest,
  Response: cruiserPowerActionResponse,
  md5sum() { return 'e9b14d2fb77896c676ca42362f1376f2'; },
  datatype() { return 'cruiser_msgs/cruiserPowerAction'; }
};
