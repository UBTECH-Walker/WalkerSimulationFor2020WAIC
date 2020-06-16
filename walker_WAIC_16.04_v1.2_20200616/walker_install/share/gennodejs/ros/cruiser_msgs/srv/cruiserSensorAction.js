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

class cruiserSensorActionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ultrasound_freq = null;
      this.wall_ir_freq = null;
      this.charge_ir_freq = null;
    }
    else {
      if (initObj.hasOwnProperty('ultrasound_freq')) {
        this.ultrasound_freq = initObj.ultrasound_freq
      }
      else {
        this.ultrasound_freq = 0;
      }
      if (initObj.hasOwnProperty('wall_ir_freq')) {
        this.wall_ir_freq = initObj.wall_ir_freq
      }
      else {
        this.wall_ir_freq = 0;
      }
      if (initObj.hasOwnProperty('charge_ir_freq')) {
        this.charge_ir_freq = initObj.charge_ir_freq
      }
      else {
        this.charge_ir_freq = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cruiserSensorActionRequest
    // Serialize message field [ultrasound_freq]
    bufferOffset = _serializer.uint32(obj.ultrasound_freq, buffer, bufferOffset);
    // Serialize message field [wall_ir_freq]
    bufferOffset = _serializer.uint32(obj.wall_ir_freq, buffer, bufferOffset);
    // Serialize message field [charge_ir_freq]
    bufferOffset = _serializer.uint32(obj.charge_ir_freq, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cruiserSensorActionRequest
    let len;
    let data = new cruiserSensorActionRequest(null);
    // Deserialize message field [ultrasound_freq]
    data.ultrasound_freq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [wall_ir_freq]
    data.wall_ir_freq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [charge_ir_freq]
    data.charge_ir_freq = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cruiser_msgs/cruiserSensorActionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '42deacc6f05bc5700ad089daf0418ae6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 ultrasound_freq
    uint32 wall_ir_freq
    uint32 charge_ir_freq
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cruiserSensorActionRequest(null);
    if (msg.ultrasound_freq !== undefined) {
      resolved.ultrasound_freq = msg.ultrasound_freq;
    }
    else {
      resolved.ultrasound_freq = 0
    }

    if (msg.wall_ir_freq !== undefined) {
      resolved.wall_ir_freq = msg.wall_ir_freq;
    }
    else {
      resolved.wall_ir_freq = 0
    }

    if (msg.charge_ir_freq !== undefined) {
      resolved.charge_ir_freq = msg.charge_ir_freq;
    }
    else {
      resolved.charge_ir_freq = 0
    }

    return resolved;
    }
};

class cruiserSensorActionResponse {
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
    // Serializes a message object of type cruiserSensorActionResponse
    // Serialize message field [result]
    bufferOffset = _serializer.uint32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cruiserSensorActionResponse
    let len;
    let data = new cruiserSensorActionResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cruiser_msgs/cruiserSensorActionResponse';
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
    const resolved = new cruiserSensorActionResponse(null);
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
  Request: cruiserSensorActionRequest,
  Response: cruiserSensorActionResponse,
  md5sum() { return 'dfcebdc80a8b049e6a92382d5d1f31d8'; },
  datatype() { return 'cruiser_msgs/cruiserSensorAction'; }
};
