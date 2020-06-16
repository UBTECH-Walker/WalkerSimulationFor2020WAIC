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

class cruiserNotifyPowerCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.power_notify_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('power_notify_cmd')) {
        this.power_notify_cmd = initObj.power_notify_cmd
      }
      else {
        this.power_notify_cmd = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cruiserNotifyPowerCmd
    // Serialize message field [power_notify_cmd]
    bufferOffset = _serializer.uint32(obj.power_notify_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cruiserNotifyPowerCmd
    let len;
    let data = new cruiserNotifyPowerCmd(null);
    // Deserialize message field [power_notify_cmd]
    data.power_notify_cmd = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/cruiserNotifyPowerCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '92121c1a8961e00ed0dd1b8e75ec98a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 power_notify_cmd
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cruiserNotifyPowerCmd(null);
    if (msg.power_notify_cmd !== undefined) {
      resolved.power_notify_cmd = msg.power_notify_cmd;
    }
    else {
      resolved.power_notify_cmd = 0
    }

    return resolved;
    }
};

module.exports = cruiserNotifyPowerCmd;
