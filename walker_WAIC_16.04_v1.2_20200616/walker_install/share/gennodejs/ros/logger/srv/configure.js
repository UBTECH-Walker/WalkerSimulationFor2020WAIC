// Auto-generated. Do not edit!

// (in-package logger.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class configureRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node = null;
      this.mode = null;
      this.capacity = null;
      this.path = null;
    }
    else {
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = '';
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = '';
      }
      if (initObj.hasOwnProperty('capacity')) {
        this.capacity = initObj.capacity
      }
      else {
        this.capacity = 0;
      }
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type configureRequest
    // Serialize message field [node]
    bufferOffset = _serializer.string(obj.node, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.string(obj.mode, buffer, bufferOffset);
    // Serialize message field [capacity]
    bufferOffset = _serializer.int32(obj.capacity, buffer, bufferOffset);
    // Serialize message field [path]
    bufferOffset = _serializer.string(obj.path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type configureRequest
    let len;
    let data = new configureRequest(null);
    // Deserialize message field [node]
    data.node = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [capacity]
    data.capacity = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [path]
    data.path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.node.length;
    length += object.mode.length;
    length += object.path.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'logger/configureRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c8808c6b0ab528f4f7c23920ff3e4bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string MODE_QUERY=query
    string MODE_SET_CAPACITY=set_capacity
    string MODE_SET_PATH=set_path
    
    string node
    
    string mode
    
    int32 capacity
    
    string path
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new configureRequest(null);
    if (msg.node !== undefined) {
      resolved.node = msg.node;
    }
    else {
      resolved.node = ''
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = ''
    }

    if (msg.capacity !== undefined) {
      resolved.capacity = msg.capacity;
    }
    else {
      resolved.capacity = 0
    }

    if (msg.path !== undefined) {
      resolved.path = msg.path;
    }
    else {
      resolved.path = ''
    }

    return resolved;
    }
};

// Constants for message
configureRequest.Constants = {
  MODE_QUERY: 'query',
  MODE_SET_CAPACITY: 'set_capacity',
  MODE_SET_PATH: 'set_path',
}

class configureResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.capacity = null;
      this.path = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('capacity')) {
        this.capacity = initObj.capacity
      }
      else {
        this.capacity = 0;
      }
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = '';
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type configureResponse
    // Serialize message field [capacity]
    bufferOffset = _serializer.int32(obj.capacity, buffer, bufferOffset);
    // Serialize message field [path]
    bufferOffset = _serializer.string(obj.path, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type configureResponse
    let len;
    let data = new configureResponse(null);
    // Deserialize message field [capacity]
    data.capacity = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [path]
    data.path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.path.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'logger/configureResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ec415df144abfdbc57a28b2b48f42288';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int32 capacity
    
    string path
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new configureResponse(null);
    if (msg.capacity !== undefined) {
      resolved.capacity = msg.capacity;
    }
    else {
      resolved.capacity = 0
    }

    if (msg.path !== undefined) {
      resolved.path = msg.path;
    }
    else {
      resolved.path = ''
    }

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: configureRequest,
  Response: configureResponse,
  md5sum() { return 'f542eb6b685060352c4ca123dd2b40da'; },
  datatype() { return 'logger/configure'; }
};
