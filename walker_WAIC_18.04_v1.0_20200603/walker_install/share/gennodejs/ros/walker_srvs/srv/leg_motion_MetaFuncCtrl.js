// Auto-generated. Do not edit!

// (in-package walker_srvs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class leg_motion_MetaFuncCtrlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.func_name = null;
      this.param_json = null;
      this.cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('func_name')) {
        this.func_name = initObj.func_name
      }
      else {
        this.func_name = '';
      }
      if (initObj.hasOwnProperty('param_json')) {
        this.param_json = initObj.param_json
      }
      else {
        this.param_json = '';
      }
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type leg_motion_MetaFuncCtrlRequest
    // Serialize message field [func_name]
    bufferOffset = _serializer.string(obj.func_name, buffer, bufferOffset);
    // Serialize message field [param_json]
    bufferOffset = _serializer.string(obj.param_json, buffer, bufferOffset);
    // Serialize message field [cmd]
    bufferOffset = _serializer.string(obj.cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type leg_motion_MetaFuncCtrlRequest
    let len;
    let data = new leg_motion_MetaFuncCtrlRequest(null);
    // Deserialize message field [func_name]
    data.func_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [param_json]
    data.param_json = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.func_name.length;
    length += object.param_json.length;
    length += object.cmd.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'walker_srvs/leg_motion_MetaFuncCtrlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2afd2d796a1d13d7076c914aac06fc59';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string FUNC_DYNAMIC=dynamic
    string FUNC_BALANCE=balance
    string FUNC_COMPLIANCE=compliance
    string FUNC_TAICHI=taichi
    string FUNC_YOGA=yoga
    string FUNC_JUMP=jump
    
    
    string CMD_START=start
    string CMD_STOP=stop
    
    
    string func_name
    string param_json
    string cmd
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new leg_motion_MetaFuncCtrlRequest(null);
    if (msg.func_name !== undefined) {
      resolved.func_name = msg.func_name;
    }
    else {
      resolved.func_name = ''
    }

    if (msg.param_json !== undefined) {
      resolved.param_json = msg.param_json;
    }
    else {
      resolved.param_json = ''
    }

    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = ''
    }

    return resolved;
    }
};

// Constants for message
leg_motion_MetaFuncCtrlRequest.Constants = {
  FUNC_DYNAMIC: 'dynamic',
  FUNC_BALANCE: 'balance',
  FUNC_COMPLIANCE: 'compliance',
  FUNC_TAICHI: 'taichi',
  FUNC_YOGA: 'yoga',
  FUNC_JUMP: 'jump',
  CMD_START: 'start',
  CMD_STOP: 'stop',
}

class leg_motion_MetaFuncCtrlResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
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
    // Serializes a message object of type leg_motion_MetaFuncCtrlResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type leg_motion_MetaFuncCtrlResponse
    let len;
    let data = new leg_motion_MetaFuncCtrlResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'walker_srvs/leg_motion_MetaFuncCtrlResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new leg_motion_MetaFuncCtrlResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
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
  Request: leg_motion_MetaFuncCtrlRequest,
  Response: leg_motion_MetaFuncCtrlResponse,
  md5sum() { return '192892ca52f2915109ae2e297dfadb46'; },
  datatype() { return 'walker_srvs/leg_motion_MetaFuncCtrl'; }
};
