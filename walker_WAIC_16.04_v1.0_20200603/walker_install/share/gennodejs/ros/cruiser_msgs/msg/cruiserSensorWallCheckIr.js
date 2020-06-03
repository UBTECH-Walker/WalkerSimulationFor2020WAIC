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

class cruiserSensorWallCheckIr {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dist1 = null;
      this.dist2 = null;
      this.dist3 = null;
      this.dist4 = null;
      this.dist5 = null;
      this.dist6 = null;
    }
    else {
      if (initObj.hasOwnProperty('dist1')) {
        this.dist1 = initObj.dist1
      }
      else {
        this.dist1 = 0;
      }
      if (initObj.hasOwnProperty('dist2')) {
        this.dist2 = initObj.dist2
      }
      else {
        this.dist2 = 0;
      }
      if (initObj.hasOwnProperty('dist3')) {
        this.dist3 = initObj.dist3
      }
      else {
        this.dist3 = 0;
      }
      if (initObj.hasOwnProperty('dist4')) {
        this.dist4 = initObj.dist4
      }
      else {
        this.dist4 = 0;
      }
      if (initObj.hasOwnProperty('dist5')) {
        this.dist5 = initObj.dist5
      }
      else {
        this.dist5 = 0;
      }
      if (initObj.hasOwnProperty('dist6')) {
        this.dist6 = initObj.dist6
      }
      else {
        this.dist6 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cruiserSensorWallCheckIr
    // Serialize message field [dist1]
    bufferOffset = _serializer.uint32(obj.dist1, buffer, bufferOffset);
    // Serialize message field [dist2]
    bufferOffset = _serializer.uint32(obj.dist2, buffer, bufferOffset);
    // Serialize message field [dist3]
    bufferOffset = _serializer.uint32(obj.dist3, buffer, bufferOffset);
    // Serialize message field [dist4]
    bufferOffset = _serializer.uint32(obj.dist4, buffer, bufferOffset);
    // Serialize message field [dist5]
    bufferOffset = _serializer.uint32(obj.dist5, buffer, bufferOffset);
    // Serialize message field [dist6]
    bufferOffset = _serializer.uint32(obj.dist6, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cruiserSensorWallCheckIr
    let len;
    let data = new cruiserSensorWallCheckIr(null);
    // Deserialize message field [dist1]
    data.dist1 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [dist2]
    data.dist2 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [dist3]
    data.dist3 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [dist4]
    data.dist4 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [dist5]
    data.dist5 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [dist6]
    data.dist6 = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/cruiserSensorWallCheckIr';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2899b05469a7aab9f6a6ab873a44b165';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 dist1
    uint32 dist2
    uint32 dist3
    uint32 dist4
    uint32 dist5
    uint32 dist6
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cruiserSensorWallCheckIr(null);
    if (msg.dist1 !== undefined) {
      resolved.dist1 = msg.dist1;
    }
    else {
      resolved.dist1 = 0
    }

    if (msg.dist2 !== undefined) {
      resolved.dist2 = msg.dist2;
    }
    else {
      resolved.dist2 = 0
    }

    if (msg.dist3 !== undefined) {
      resolved.dist3 = msg.dist3;
    }
    else {
      resolved.dist3 = 0
    }

    if (msg.dist4 !== undefined) {
      resolved.dist4 = msg.dist4;
    }
    else {
      resolved.dist4 = 0
    }

    if (msg.dist5 !== undefined) {
      resolved.dist5 = msg.dist5;
    }
    else {
      resolved.dist5 = 0
    }

    if (msg.dist6 !== undefined) {
      resolved.dist6 = msg.dist6;
    }
    else {
      resolved.dist6 = 0
    }

    return resolved;
    }
};

module.exports = cruiserSensorWallCheckIr;
