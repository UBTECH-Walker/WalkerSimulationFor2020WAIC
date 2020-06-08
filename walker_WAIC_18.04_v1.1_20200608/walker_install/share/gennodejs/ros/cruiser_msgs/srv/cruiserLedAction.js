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

class cruiserLedActionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.data0 = null;
      this.data1 = null;
      this.data2 = null;
      this.max_times = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('data0')) {
        this.data0 = initObj.data0
      }
      else {
        this.data0 = 0;
      }
      if (initObj.hasOwnProperty('data1')) {
        this.data1 = initObj.data1
      }
      else {
        this.data1 = 0;
      }
      if (initObj.hasOwnProperty('data2')) {
        this.data2 = initObj.data2
      }
      else {
        this.data2 = 0;
      }
      if (initObj.hasOwnProperty('max_times')) {
        this.max_times = initObj.max_times
      }
      else {
        this.max_times = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cruiserLedActionRequest
    // Serialize message field [type]
    bufferOffset = _serializer.uint32(obj.type, buffer, bufferOffset);
    // Serialize message field [data0]
    bufferOffset = _serializer.uint32(obj.data0, buffer, bufferOffset);
    // Serialize message field [data1]
    bufferOffset = _serializer.uint32(obj.data1, buffer, bufferOffset);
    // Serialize message field [data2]
    bufferOffset = _serializer.uint32(obj.data2, buffer, bufferOffset);
    // Serialize message field [max_times]
    bufferOffset = _serializer.uint32(obj.max_times, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cruiserLedActionRequest
    let len;
    let data = new cruiserLedActionRequest(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [data0]
    data.data0 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [data1]
    data.data1 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [data2]
    data.data2 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [max_times]
    data.max_times = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cruiser_msgs/cruiserLedActionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89522dd3d5a7af6022d0717e6853a943';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 type
    uint32 data0
    uint32 data1
    uint32 data2
    uint32 max_times
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cruiserLedActionRequest(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.data0 !== undefined) {
      resolved.data0 = msg.data0;
    }
    else {
      resolved.data0 = 0
    }

    if (msg.data1 !== undefined) {
      resolved.data1 = msg.data1;
    }
    else {
      resolved.data1 = 0
    }

    if (msg.data2 !== undefined) {
      resolved.data2 = msg.data2;
    }
    else {
      resolved.data2 = 0
    }

    if (msg.max_times !== undefined) {
      resolved.max_times = msg.max_times;
    }
    else {
      resolved.max_times = 0
    }

    return resolved;
    }
};

class cruiserLedActionResponse {
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
    // Serializes a message object of type cruiserLedActionResponse
    // Serialize message field [result]
    bufferOffset = _serializer.uint32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cruiserLedActionResponse
    let len;
    let data = new cruiserLedActionResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cruiser_msgs/cruiserLedActionResponse';
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
    const resolved = new cruiserLedActionResponse(null);
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
  Request: cruiserLedActionRequest,
  Response: cruiserLedActionResponse,
  md5sum() { return '8841f861ab1593cb1f054a475ae4347d'; },
  datatype() { return 'cruiser_msgs/cruiserLedAction'; }
};
