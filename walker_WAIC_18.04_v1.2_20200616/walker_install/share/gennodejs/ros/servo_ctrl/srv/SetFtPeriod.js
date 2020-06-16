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

class SetFtPeriodRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ftId = null;
      this.period_ms = null;
    }
    else {
      if (initObj.hasOwnProperty('ftId')) {
        this.ftId = initObj.ftId
      }
      else {
        this.ftId = '';
      }
      if (initObj.hasOwnProperty('period_ms')) {
        this.period_ms = initObj.period_ms
      }
      else {
        this.period_ms = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetFtPeriodRequest
    // Serialize message field [ftId]
    bufferOffset = _serializer.string(obj.ftId, buffer, bufferOffset);
    // Serialize message field [period_ms]
    bufferOffset = _serializer.int32(obj.period_ms, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetFtPeriodRequest
    let len;
    let data = new SetFtPeriodRequest(null);
    // Deserialize message field [ftId]
    data.ftId = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [period_ms]
    data.period_ms = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ftId.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'servo_ctrl/SetFtPeriodRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ae68f403a66aa025d9f0a184f843df5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ftId: "lwrist", "rwrist", "lankle", "rankle"
    string ftId
    int32  period_ms
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetFtPeriodRequest(null);
    if (msg.ftId !== undefined) {
      resolved.ftId = msg.ftId;
    }
    else {
      resolved.ftId = ''
    }

    if (msg.period_ms !== undefined) {
      resolved.period_ms = msg.period_ms;
    }
    else {
      resolved.period_ms = 0
    }

    return resolved;
    }
};

class SetFtPeriodResponse {
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
    // Serializes a message object of type SetFtPeriodResponse
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetFtPeriodResponse
    let len;
    let data = new SetFtPeriodResponse(null);
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
    return 'servo_ctrl/SetFtPeriodResponse';
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
    const resolved = new SetFtPeriodResponse(null);
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
  Request: SetFtPeriodRequest,
  Response: SetFtPeriodResponse,
  md5sum() { return 'da5f21de43d7b8e0a73c301ba13f71ef'; },
  datatype() { return 'servo_ctrl/SetFtPeriod'; }
};
