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

class GetUwbSupportedModeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetUwbSupportedModeRequest
    // Serialize message field [mode]
    bufferOffset = _serializer.int32(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetUwbSupportedModeRequest
    let len;
    let data = new GetUwbSupportedModeRequest(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cruiser_msgs/GetUwbSupportedModeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff63f6ea3c3e9b7504b2cb3ee0a09d92';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int32 mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetUwbSupportedModeRequest(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    return resolved;
    }
};

class GetUwbSupportedModeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.supported = null;
    }
    else {
      if (initObj.hasOwnProperty('supported')) {
        this.supported = initObj.supported
      }
      else {
        this.supported = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetUwbSupportedModeResponse
    // Serialize message field [supported]
    bufferOffset = _serializer.bool(obj.supported, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetUwbSupportedModeResponse
    let len;
    let data = new GetUwbSupportedModeResponse(null);
    // Deserialize message field [supported]
    data.supported = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cruiser_msgs/GetUwbSupportedModeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '270c37604fc5f878e32ff31167631898';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool supported
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetUwbSupportedModeResponse(null);
    if (msg.supported !== undefined) {
      resolved.supported = msg.supported;
    }
    else {
      resolved.supported = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GetUwbSupportedModeRequest,
  Response: GetUwbSupportedModeResponse,
  md5sum() { return '3c35866e3d60aa551b5343ed0f3e9138'; },
  datatype() { return 'cruiser_msgs/GetUwbSupportedMode'; }
};
