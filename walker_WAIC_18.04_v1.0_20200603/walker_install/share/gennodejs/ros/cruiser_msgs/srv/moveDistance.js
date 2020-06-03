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

class moveDistanceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type moveDistanceRequest
    // Serialize message field [reserved]
    bufferOffset = _serializer.uint32(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type moveDistanceRequest
    let len;
    let data = new moveDistanceRequest(null);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cruiser_msgs/moveDistanceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b074c9ce6b42f25fa45f883d993a830a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 reserved
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new moveDistanceRequest(null);
    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0
    }

    return resolved;
    }
};

class moveDistanceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.dis_x = null;
      this.dis_y = null;
      this.dis_z = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('dis_x')) {
        this.dis_x = initObj.dis_x
      }
      else {
        this.dis_x = 0.0;
      }
      if (initObj.hasOwnProperty('dis_y')) {
        this.dis_y = initObj.dis_y
      }
      else {
        this.dis_y = 0.0;
      }
      if (initObj.hasOwnProperty('dis_z')) {
        this.dis_z = initObj.dis_z
      }
      else {
        this.dis_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type moveDistanceResponse
    // Serialize message field [result]
    bufferOffset = _serializer.uint32(obj.result, buffer, bufferOffset);
    // Serialize message field [dis_x]
    bufferOffset = _serializer.float32(obj.dis_x, buffer, bufferOffset);
    // Serialize message field [dis_y]
    bufferOffset = _serializer.float32(obj.dis_y, buffer, bufferOffset);
    // Serialize message field [dis_z]
    bufferOffset = _serializer.float32(obj.dis_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type moveDistanceResponse
    let len;
    let data = new moveDistanceResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [dis_x]
    data.dis_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dis_y]
    data.dis_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dis_z]
    data.dis_z = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cruiser_msgs/moveDistanceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f37da2a533f1b13ef7718f68497ab2ac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 result
    float32 dis_x
    float32 dis_y
    float32 dis_z
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new moveDistanceResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.dis_x !== undefined) {
      resolved.dis_x = msg.dis_x;
    }
    else {
      resolved.dis_x = 0.0
    }

    if (msg.dis_y !== undefined) {
      resolved.dis_y = msg.dis_y;
    }
    else {
      resolved.dis_y = 0.0
    }

    if (msg.dis_z !== undefined) {
      resolved.dis_z = msg.dis_z;
    }
    else {
      resolved.dis_z = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: moveDistanceRequest,
  Response: moveDistanceResponse,
  md5sum() { return '2138d7d6c1b896d7258bf22cf4d740bb'; },
  datatype() { return 'cruiser_msgs/moveDistance'; }
};
