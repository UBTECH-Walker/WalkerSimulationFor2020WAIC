// Auto-generated. Do not edit!

// (in-package servo_ctrl.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SendFtAtCmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ft_id = null;
      this.at_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('ft_id')) {
        this.ft_id = initObj.ft_id
      }
      else {
        this.ft_id = '';
      }
      if (initObj.hasOwnProperty('at_cmd')) {
        this.at_cmd = initObj.at_cmd
      }
      else {
        this.at_cmd = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendFtAtCmdRequest
    // Serialize message field [ft_id]
    bufferOffset = _serializer.string(obj.ft_id, buffer, bufferOffset);
    // Serialize message field [at_cmd]
    bufferOffset = _serializer.string(obj.at_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendFtAtCmdRequest
    let len;
    let data = new SendFtAtCmdRequest(null);
    // Deserialize message field [ft_id]
    data.ft_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [at_cmd]
    data.at_cmd = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ft_id.length;
    length += object.at_cmd.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'servo_ctrl/SendFtAtCmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c22bd48bc684c0ae4c948d5e20ba1a79';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Ft ID(case insensitive): lwrist,rwrist,lankle,rankle
    string ft_id
    string at_cmd
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendFtAtCmdRequest(null);
    if (msg.ft_id !== undefined) {
      resolved.ft_id = msg.ft_id;
    }
    else {
      resolved.ft_id = ''
    }

    if (msg.at_cmd !== undefined) {
      resolved.at_cmd = msg.at_cmd;
    }
    else {
      resolved.at_cmd = ''
    }

    return resolved;
    }
};

class SendFtAtCmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.at_res = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('at_res')) {
        this.at_res = initObj.at_res
      }
      else {
        this.at_res = '';
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendFtAtCmdResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [at_res]
    bufferOffset = _serializer.string(obj.at_res, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendFtAtCmdResponse
    let len;
    let data = new SendFtAtCmdResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [at_res]
    data.at_res = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.at_res.length;
    length += object.message.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'servo_ctrl/SendFtAtCmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '51b5fa2ba7cc6095b3fa4436ab5e5a44';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string at_res
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendFtAtCmdResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.at_res !== undefined) {
      resolved.at_res = msg.at_res;
    }
    else {
      resolved.at_res = ''
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SendFtAtCmdRequest,
  Response: SendFtAtCmdResponse,
  md5sum() { return '6047a75169370a000cccb1c1e8fefc47'; },
  datatype() { return 'servo_ctrl/SendFtAtCmd'; }
};
