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

class SetBasePowerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetBasePowerRequest
    // Serialize message field [cmd]
    bufferOffset = _arraySerializer.uint8(obj.cmd, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetBasePowerRequest
    let len;
    let data = new SetBasePowerRequest(null);
    // Deserialize message field [cmd]
    data.cmd = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.cmd.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'servo_ctrl/SetBasePowerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '774f1f64eea937f4ca5b6e9a998abcb5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[] cmd
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetBasePowerRequest(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = []
    }

    return resolved;
    }
};

class SetBasePowerResponse {
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
        this.result = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetBasePowerResponse
    // Serialize message field [result]
    bufferOffset = _arraySerializer.uint8(obj.result, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetBasePowerResponse
    let len;
    let data = new SetBasePowerResponse(null);
    // Deserialize message field [result]
    data.result = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.result.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'servo_ctrl/SetBasePowerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b7ed20811caa3db643b4512e66e3f767';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[] result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetBasePowerResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = []
    }

    return resolved;
    }
};

module.exports = {
  Request: SetBasePowerRequest,
  Response: SetBasePowerResponse,
  md5sum() { return 'b0bc70d7e1fded55183cc6d4deee36a2'; },
  datatype() { return 'servo_ctrl/SetBasePower'; }
};
