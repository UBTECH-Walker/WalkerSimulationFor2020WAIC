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

class cruiserChargeSource {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.charge_source = null;
    }
    else {
      if (initObj.hasOwnProperty('charge_source')) {
        this.charge_source = initObj.charge_source
      }
      else {
        this.charge_source = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cruiserChargeSource
    // Serialize message field [charge_source]
    bufferOffset = _serializer.uint32(obj.charge_source, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cruiserChargeSource
    let len;
    let data = new cruiserChargeSource(null);
    // Deserialize message field [charge_source]
    data.charge_source = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/cruiserChargeSource';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13f65a61a1eae98cfcb8a07995a5d081';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 charge_source
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cruiserChargeSource(null);
    if (msg.charge_source !== undefined) {
      resolved.charge_source = msg.charge_source;
    }
    else {
      resolved.charge_source = 0
    }

    return resolved;
    }
};

module.exports = cruiserChargeSource;
