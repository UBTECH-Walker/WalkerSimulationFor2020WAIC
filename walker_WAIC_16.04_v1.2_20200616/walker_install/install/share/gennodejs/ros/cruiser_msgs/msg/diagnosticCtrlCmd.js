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

class diagnosticCtrlCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.key = null;
      this.ctrlflag = null;
    }
    else {
      if (initObj.hasOwnProperty('key')) {
        this.key = initObj.key
      }
      else {
        this.key = 0;
      }
      if (initObj.hasOwnProperty('ctrlflag')) {
        this.ctrlflag = initObj.ctrlflag
      }
      else {
        this.ctrlflag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type diagnosticCtrlCmd
    // Serialize message field [key]
    bufferOffset = _serializer.int16(obj.key, buffer, bufferOffset);
    // Serialize message field [ctrlflag]
    bufferOffset = _serializer.int16(obj.ctrlflag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type diagnosticCtrlCmd
    let len;
    let data = new diagnosticCtrlCmd(null);
    // Deserialize message field [key]
    data.key = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ctrlflag]
    data.ctrlflag = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/diagnosticCtrlCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31951abf4e94f1645603ca9e8079c519';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #topic "/cruiser/diag_ctrl_cmd"
    int16 key
    int16 ctrlflag
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new diagnosticCtrlCmd(null);
    if (msg.key !== undefined) {
      resolved.key = msg.key;
    }
    else {
      resolved.key = 0
    }

    if (msg.ctrlflag !== undefined) {
      resolved.ctrlflag = msg.ctrlflag;
    }
    else {
      resolved.ctrlflag = 0
    }

    return resolved;
    }
};

module.exports = diagnosticCtrlCmd;
