// Auto-generated. Do not edit!

// (in-package cruiser_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class cruiserSensorFloorCheckIr {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cliff1 = null;
      this.cliff2 = null;
      this.cliff3 = null;
      this.cliff4 = null;
      this.cliff5 = null;
      this.cliff6 = null;
    }
    else {
      if (initObj.hasOwnProperty('cliff1')) {
        this.cliff1 = initObj.cliff1
      }
      else {
        this.cliff1 = 0;
      }
      if (initObj.hasOwnProperty('cliff2')) {
        this.cliff2 = initObj.cliff2
      }
      else {
        this.cliff2 = 0;
      }
      if (initObj.hasOwnProperty('cliff3')) {
        this.cliff3 = initObj.cliff3
      }
      else {
        this.cliff3 = 0;
      }
      if (initObj.hasOwnProperty('cliff4')) {
        this.cliff4 = initObj.cliff4
      }
      else {
        this.cliff4 = 0;
      }
      if (initObj.hasOwnProperty('cliff5')) {
        this.cliff5 = initObj.cliff5
      }
      else {
        this.cliff5 = 0;
      }
      if (initObj.hasOwnProperty('cliff6')) {
        this.cliff6 = initObj.cliff6
      }
      else {
        this.cliff6 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cruiserSensorFloorCheckIr
    // Serialize message field [cliff1]
    bufferOffset = _serializer.uint32(obj.cliff1, buffer, bufferOffset);
    // Serialize message field [cliff2]
    bufferOffset = _serializer.uint32(obj.cliff2, buffer, bufferOffset);
    // Serialize message field [cliff3]
    bufferOffset = _serializer.uint32(obj.cliff3, buffer, bufferOffset);
    // Serialize message field [cliff4]
    bufferOffset = _serializer.uint32(obj.cliff4, buffer, bufferOffset);
    // Serialize message field [cliff5]
    bufferOffset = _serializer.uint32(obj.cliff5, buffer, bufferOffset);
    // Serialize message field [cliff6]
    bufferOffset = _serializer.uint32(obj.cliff6, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cruiserSensorFloorCheckIr
    let len;
    let data = new cruiserSensorFloorCheckIr(null);
    // Deserialize message field [cliff1]
    data.cliff1 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [cliff2]
    data.cliff2 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [cliff3]
    data.cliff3 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [cliff4]
    data.cliff4 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [cliff5]
    data.cliff5 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [cliff6]
    data.cliff6 = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/cruiserSensorFloorCheckIr';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c371455cf05a44e93c97aa5157fb244c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 cliff1
    uint32 cliff2
    uint32 cliff3
    uint32 cliff4
    uint32 cliff5
    uint32 cliff6
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cruiserSensorFloorCheckIr(null);
    if (msg.cliff1 !== undefined) {
      resolved.cliff1 = msg.cliff1;
    }
    else {
      resolved.cliff1 = 0
    }

    if (msg.cliff2 !== undefined) {
      resolved.cliff2 = msg.cliff2;
    }
    else {
      resolved.cliff2 = 0
    }

    if (msg.cliff3 !== undefined) {
      resolved.cliff3 = msg.cliff3;
    }
    else {
      resolved.cliff3 = 0
    }

    if (msg.cliff4 !== undefined) {
      resolved.cliff4 = msg.cliff4;
    }
    else {
      resolved.cliff4 = 0
    }

    if (msg.cliff5 !== undefined) {
      resolved.cliff5 = msg.cliff5;
    }
    else {
      resolved.cliff5 = 0
    }

    if (msg.cliff6 !== undefined) {
      resolved.cliff6 = msg.cliff6;
    }
    else {
      resolved.cliff6 = 0
    }

    return resolved;
    }
};

module.exports = cruiserSensorFloorCheckIr;
