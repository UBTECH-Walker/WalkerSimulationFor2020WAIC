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

class cruiserPowerCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.power_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('power_cmd')) {
        this.power_cmd = initObj.power_cmd
      }
      else {
        this.power_cmd = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cruiserPowerCmd
    // Serialize message field [power_cmd]
    bufferOffset = _serializer.uint32(obj.power_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cruiserPowerCmd
    let len;
    let data = new cruiserPowerCmd(null);
    // Deserialize message field [power_cmd]
    data.power_cmd = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/cruiserPowerCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '095e92debc6bcb5e7317d4b6d9d2054c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 power_cmd
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cruiserPowerCmd(null);
    if (msg.power_cmd !== undefined) {
      resolved.power_cmd = msg.power_cmd;
    }
    else {
      resolved.power_cmd = 0
    }

    return resolved;
    }
};

module.exports = cruiserPowerCmd;
