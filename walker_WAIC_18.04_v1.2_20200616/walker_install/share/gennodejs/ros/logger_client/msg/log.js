// Auto-generated. Do not edit!

// (in-package logger_client.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class log {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.level = null;
      this.time = null;
      this.time_us = null;
      this.node = null;
      this.file = null;
      this.function = null;
      this.line = null;
      this.content = null;
    }
    else {
      if (initObj.hasOwnProperty('level')) {
        this.level = initObj.level
      }
      else {
        this.level = '';
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0;
      }
      if (initObj.hasOwnProperty('time_us')) {
        this.time_us = initObj.time_us
      }
      else {
        this.time_us = 0;
      }
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = '';
      }
      if (initObj.hasOwnProperty('file')) {
        this.file = initObj.file
      }
      else {
        this.file = '';
      }
      if (initObj.hasOwnProperty('function')) {
        this.function = initObj.function
      }
      else {
        this.function = '';
      }
      if (initObj.hasOwnProperty('line')) {
        this.line = initObj.line
      }
      else {
        this.line = 0;
      }
      if (initObj.hasOwnProperty('content')) {
        this.content = initObj.content
      }
      else {
        this.content = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type log
    // Serialize message field [level]
    bufferOffset = _serializer.string(obj.level, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.int64(obj.time, buffer, bufferOffset);
    // Serialize message field [time_us]
    bufferOffset = _serializer.int64(obj.time_us, buffer, bufferOffset);
    // Serialize message field [node]
    bufferOffset = _serializer.string(obj.node, buffer, bufferOffset);
    // Serialize message field [file]
    bufferOffset = _serializer.string(obj.file, buffer, bufferOffset);
    // Serialize message field [function]
    bufferOffset = _serializer.string(obj.function, buffer, bufferOffset);
    // Serialize message field [line]
    bufferOffset = _serializer.int32(obj.line, buffer, bufferOffset);
    // Serialize message field [content]
    bufferOffset = _serializer.string(obj.content, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type log
    let len;
    let data = new log(null);
    // Deserialize message field [level]
    data.level = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [time_us]
    data.time_us = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [node]
    data.node = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [file]
    data.file = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [function]
    data.function = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [line]
    data.line = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [content]
    data.content = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.level.length;
    length += object.node.length;
    length += object.file.length;
    length += object.function.length;
    length += object.content.length;
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'logger_client/log';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7212572e30c271c75a76de908bf7c5bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string level
    int64 time
    int64 time_us
    string node
    string file
    string function
    int32 line
    string content
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new log(null);
    if (msg.level !== undefined) {
      resolved.level = msg.level;
    }
    else {
      resolved.level = ''
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0
    }

    if (msg.time_us !== undefined) {
      resolved.time_us = msg.time_us;
    }
    else {
      resolved.time_us = 0
    }

    if (msg.node !== undefined) {
      resolved.node = msg.node;
    }
    else {
      resolved.node = ''
    }

    if (msg.file !== undefined) {
      resolved.file = msg.file;
    }
    else {
      resolved.file = ''
    }

    if (msg.function !== undefined) {
      resolved.function = msg.function;
    }
    else {
      resolved.function = ''
    }

    if (msg.line !== undefined) {
      resolved.line = msg.line;
    }
    else {
      resolved.line = 0
    }

    if (msg.content !== undefined) {
      resolved.content = msg.content;
    }
    else {
      resolved.content = ''
    }

    return resolved;
    }
};

module.exports = log;
