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

class cruiserLedOnOff {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.onOff = null;
    }
    else {
      if (initObj.hasOwnProperty('onOff')) {
        this.onOff = initObj.onOff
      }
      else {
        this.onOff = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cruiserLedOnOff
    // Serialize message field [onOff]
    bufferOffset = _serializer.uint32(obj.onOff, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cruiserLedOnOff
    let len;
    let data = new cruiserLedOnOff(null);
    // Deserialize message field [onOff]
    data.onOff = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/cruiserLedOnOff';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5542655f2c2b872f0777fe5564fc094c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 onOff
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cruiserLedOnOff(null);
    if (msg.onOff !== undefined) {
      resolved.onOff = msg.onOff;
    }
    else {
      resolved.onOff = 0
    }

    return resolved;
    }
};

module.exports = cruiserLedOnOff;
