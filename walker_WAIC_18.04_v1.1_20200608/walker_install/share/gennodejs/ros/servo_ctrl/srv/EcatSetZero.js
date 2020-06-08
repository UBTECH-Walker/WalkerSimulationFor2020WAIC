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

class EcatSetZeroRequest {
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
    // Serializes a message object of type EcatSetZeroRequest
    // Serialize message field [servo]
    bufferOffset = _serializer.string(obj.servo, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EcatSetZeroRequest
    let len;
    let data = new EcatSetZeroRequest(null);
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
    return 'servo_ctrl/EcatSetZeroRequest';
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
    const resolved = new EcatSetZeroRequest(null);
    if (msg.servo !== undefined) {
      resolved.servo = msg.servo;
    }
    else {
      resolved.servo = ''
    }

    return resolved;
    }
};

class EcatSetZeroResponse {
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
    // Serializes a message object of type EcatSetZeroResponse
    // Serialize message field [result]
    bufferOffset = _serializer.uint16(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EcatSetZeroResponse
    let len;
    let data = new EcatSetZeroResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'servo_ctrl/EcatSetZeroResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '259ef4f625916086608543e920cd1306';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EcatSetZeroResponse(null);
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
  Request: EcatSetZeroRequest,
  Response: EcatSetZeroResponse,
  md5sum() { return 'd3a64b889fd5801c30f651acd61f9dd1'; },
  datatype() { return 'servo_ctrl/EcatSetZero'; }
};
