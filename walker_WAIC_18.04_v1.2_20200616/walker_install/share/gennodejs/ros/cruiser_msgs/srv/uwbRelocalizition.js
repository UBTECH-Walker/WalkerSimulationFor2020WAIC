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

class uwbRelocalizitionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type uwbRelocalizitionRequest
    // Serialize message field [data]
    bufferOffset = _serializer.int32(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type uwbRelocalizitionRequest
    let len;
    let data = new uwbRelocalizitionRequest(null);
    // Deserialize message field [data]
    data.data = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cruiser_msgs/uwbRelocalizitionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b89b336dc57314475970b7bc037ad9b1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 TRIGGER_RELOCALIZITION =0
    int32 GET_STATUS =1
    int32 data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new uwbRelocalizitionRequest(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = 0
    }

    return resolved;
    }
};

// Constants for message
uwbRelocalizitionRequest.Constants = {
  TRIGGER_RELOCALIZITION: 0,
  GET_STATUS: 1,
}

class uwbRelocalizitionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type uwbRelocalizitionResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type uwbRelocalizitionResponse
    let len;
    let data = new uwbRelocalizitionResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cruiser_msgs/uwbRelocalizitionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c005e1fd8169ae41397758a18e6927e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 STATE_IDLE =0
    int32 STATE_ESTMATING =1
    int32 STATE_SUCCESS = 2
    int32 STATE_FAIL = 3
    int32 TRIGGER_SUCCESS = 4
    int32 status
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new uwbRelocalizitionResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

// Constants for message
uwbRelocalizitionResponse.Constants = {
  STATE_IDLE: 0,
  STATE_ESTMATING: 1,
  STATE_SUCCESS: 2,
  STATE_FAIL: 3,
  TRIGGER_SUCCESS: 4,
}

module.exports = {
  Request: uwbRelocalizitionRequest,
  Response: uwbRelocalizitionResponse,
  md5sum() { return 'ce1b6b26da28ea681dfc3a90266c2fdd'; },
  datatype() { return 'cruiser_msgs/uwbRelocalizition'; }
};
