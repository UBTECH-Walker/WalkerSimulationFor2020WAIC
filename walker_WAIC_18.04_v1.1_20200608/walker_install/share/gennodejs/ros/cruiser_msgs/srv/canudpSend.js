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

class canudpSendRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.priority = null;
      this.packetdata = null;
    }
    else {
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = 0;
      }
      if (initObj.hasOwnProperty('packetdata')) {
        this.packetdata = initObj.packetdata
      }
      else {
        this.packetdata = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type canudpSendRequest
    // Serialize message field [priority]
    bufferOffset = _serializer.uint32(obj.priority, buffer, bufferOffset);
    // Serialize message field [packetdata]
    bufferOffset = _serializer.string(obj.packetdata, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type canudpSendRequest
    let len;
    let data = new canudpSendRequest(null);
    // Deserialize message field [priority]
    data.priority = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [packetdata]
    data.packetdata = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.packetdata.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cruiser_msgs/canudpSendRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c074140e21c6ef6ba56748714f78878f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 priority
    string packetdata
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new canudpSendRequest(null);
    if (msg.priority !== undefined) {
      resolved.priority = msg.priority;
    }
    else {
      resolved.priority = 0
    }

    if (msg.packetdata !== undefined) {
      resolved.packetdata = msg.packetdata;
    }
    else {
      resolved.packetdata = ''
    }

    return resolved;
    }
};

class canudpSendResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type canudpSendResponse
    // Serialize message field [time]
    bufferOffset = _serializer.uint32(obj.time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type canudpSendResponse
    let len;
    let data = new canudpSendResponse(null);
    // Deserialize message field [time]
    data.time = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cruiser_msgs/canudpSendResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd16de83ef4e326bbfdc1e90377f0a2c6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint32 time
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new canudpSendResponse(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: canudpSendRequest,
  Response: canudpSendResponse,
  md5sum() { return '5b1b6b129155e5a4f811f32ad75d66ed'; },
  datatype() { return 'cruiser_msgs/canudpSend'; }
};
