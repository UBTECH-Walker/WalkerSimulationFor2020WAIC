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

class cruiserLedSate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.light_effect = null;
      this.brightness = null;
      this.color = null;
      this.max_times = null;
    }
    else {
      if (initObj.hasOwnProperty('light_effect')) {
        this.light_effect = initObj.light_effect
      }
      else {
        this.light_effect = 0;
      }
      if (initObj.hasOwnProperty('brightness')) {
        this.brightness = initObj.brightness
      }
      else {
        this.brightness = 0;
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = 0;
      }
      if (initObj.hasOwnProperty('max_times')) {
        this.max_times = initObj.max_times
      }
      else {
        this.max_times = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cruiserLedSate
    // Serialize message field [light_effect]
    bufferOffset = _serializer.uint32(obj.light_effect, buffer, bufferOffset);
    // Serialize message field [brightness]
    bufferOffset = _serializer.uint32(obj.brightness, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = _serializer.uint32(obj.color, buffer, bufferOffset);
    // Serialize message field [max_times]
    bufferOffset = _serializer.uint32(obj.max_times, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cruiserLedSate
    let len;
    let data = new cruiserLedSate(null);
    // Deserialize message field [light_effect]
    data.light_effect = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [brightness]
    data.brightness = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [max_times]
    data.max_times = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/cruiserLedSate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a1a1ac30f2125d6b4db07cbb0eb7d41';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 light_effect
    uint32 brightness
    uint32 color
    uint32 max_times
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cruiserLedSate(null);
    if (msg.light_effect !== undefined) {
      resolved.light_effect = msg.light_effect;
    }
    else {
      resolved.light_effect = 0
    }

    if (msg.brightness !== undefined) {
      resolved.brightness = msg.brightness;
    }
    else {
      resolved.brightness = 0
    }

    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = 0
    }

    if (msg.max_times !== undefined) {
      resolved.max_times = msg.max_times;
    }
    else {
      resolved.max_times = 0
    }

    return resolved;
    }
};

module.exports = cruiserLedSate;
