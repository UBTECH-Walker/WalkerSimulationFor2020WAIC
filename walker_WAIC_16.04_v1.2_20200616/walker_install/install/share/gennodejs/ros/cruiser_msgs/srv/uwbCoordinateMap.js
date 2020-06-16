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

class uwbCoordinateMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.intput_x = null;
      this.intput_y = null;
      this.intput_theta = null;
      this.theta_valid_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('intput_x')) {
        this.intput_x = initObj.intput_x
      }
      else {
        this.intput_x = 0.0;
      }
      if (initObj.hasOwnProperty('intput_y')) {
        this.intput_y = initObj.intput_y
      }
      else {
        this.intput_y = 0.0;
      }
      if (initObj.hasOwnProperty('intput_theta')) {
        this.intput_theta = initObj.intput_theta
      }
      else {
        this.intput_theta = 0.0;
      }
      if (initObj.hasOwnProperty('theta_valid_flag')) {
        this.theta_valid_flag = initObj.theta_valid_flag
      }
      else {
        this.theta_valid_flag = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type uwbCoordinateMapRequest
    // Serialize message field [intput_x]
    bufferOffset = _serializer.float32(obj.intput_x, buffer, bufferOffset);
    // Serialize message field [intput_y]
    bufferOffset = _serializer.float32(obj.intput_y, buffer, bufferOffset);
    // Serialize message field [intput_theta]
    bufferOffset = _serializer.float32(obj.intput_theta, buffer, bufferOffset);
    // Serialize message field [theta_valid_flag]
    bufferOffset = _serializer.bool(obj.theta_valid_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type uwbCoordinateMapRequest
    let len;
    let data = new uwbCoordinateMapRequest(null);
    // Deserialize message field [intput_x]
    data.intput_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [intput_y]
    data.intput_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [intput_theta]
    data.intput_theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [theta_valid_flag]
    data.theta_valid_flag = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cruiser_msgs/uwbCoordinateMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7f6018a742f32b139af5bdf538b4633a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 intput_x
    float32 intput_y
    float32 intput_theta
    bool theta_valid_flag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new uwbCoordinateMapRequest(null);
    if (msg.intput_x !== undefined) {
      resolved.intput_x = msg.intput_x;
    }
    else {
      resolved.intput_x = 0.0
    }

    if (msg.intput_y !== undefined) {
      resolved.intput_y = msg.intput_y;
    }
    else {
      resolved.intput_y = 0.0
    }

    if (msg.intput_theta !== undefined) {
      resolved.intput_theta = msg.intput_theta;
    }
    else {
      resolved.intput_theta = 0.0
    }

    if (msg.theta_valid_flag !== undefined) {
      resolved.theta_valid_flag = msg.theta_valid_flag;
    }
    else {
      resolved.theta_valid_flag = false
    }

    return resolved;
    }
};

class uwbCoordinateMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.output_x = null;
      this.output_y = null;
      this.output_theta = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('output_x')) {
        this.output_x = initObj.output_x
      }
      else {
        this.output_x = 0.0;
      }
      if (initObj.hasOwnProperty('output_y')) {
        this.output_y = initObj.output_y
      }
      else {
        this.output_y = 0.0;
      }
      if (initObj.hasOwnProperty('output_theta')) {
        this.output_theta = initObj.output_theta
      }
      else {
        this.output_theta = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type uwbCoordinateMapResponse
    // Serialize message field [result]
    bufferOffset = _serializer.uint32(obj.result, buffer, bufferOffset);
    // Serialize message field [output_x]
    bufferOffset = _serializer.float32(obj.output_x, buffer, bufferOffset);
    // Serialize message field [output_y]
    bufferOffset = _serializer.float32(obj.output_y, buffer, bufferOffset);
    // Serialize message field [output_theta]
    bufferOffset = _serializer.float32(obj.output_theta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type uwbCoordinateMapResponse
    let len;
    let data = new uwbCoordinateMapResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [output_x]
    data.output_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [output_y]
    data.output_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [output_theta]
    data.output_theta = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cruiser_msgs/uwbCoordinateMapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b33e9bd7010c42d2771bcf6ee2749245';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 result
    float32 output_x
    float32 output_y
    float32 output_theta
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new uwbCoordinateMapResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.output_x !== undefined) {
      resolved.output_x = msg.output_x;
    }
    else {
      resolved.output_x = 0.0
    }

    if (msg.output_y !== undefined) {
      resolved.output_y = msg.output_y;
    }
    else {
      resolved.output_y = 0.0
    }

    if (msg.output_theta !== undefined) {
      resolved.output_theta = msg.output_theta;
    }
    else {
      resolved.output_theta = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: uwbCoordinateMapRequest,
  Response: uwbCoordinateMapResponse,
  md5sum() { return '795d5cb78f54a9363452cba320578b0f'; },
  datatype() { return 'cruiser_msgs/uwbCoordinateMap'; }
};
