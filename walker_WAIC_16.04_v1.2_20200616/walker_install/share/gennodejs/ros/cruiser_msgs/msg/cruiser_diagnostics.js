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

class cruiser_diagnostics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.level = null;
      this.name = null;
      this.message = null;
      this.key = null;
      this.value = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('level')) {
        this.level = initObj.level
      }
      else {
        this.level = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('key')) {
        this.key = initObj.key
      }
      else {
        this.key = 0;
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cruiser_diagnostics
    // Serialize message field [level]
    bufferOffset = _serializer.byte(obj.level, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [key]
    bufferOffset = _serializer.int32(obj.key, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.int32(obj.value, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _serializer.int32(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cruiser_diagnostics
    let len;
    let data = new cruiser_diagnostics(null);
    // Deserialize message field [level]
    data.level = _deserializer.byte(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [key]
    data.key = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.message.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/cruiser_diagnostics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2acd95d3e541d4e596dab4dec2608e90';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #topic /cruiser/diagnostics
    # level -- ok:0, warn:1, error:2
    byte level
    string name
    string message
    int32 key
    int32 value
    int32 data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cruiser_diagnostics(null);
    if (msg.level !== undefined) {
      resolved.level = msg.level;
    }
    else {
      resolved.level = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.key !== undefined) {
      resolved.key = msg.key;
    }
    else {
      resolved.key = 0
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = 0
    }

    return resolved;
    }
};

module.exports = cruiser_diagnostics;
