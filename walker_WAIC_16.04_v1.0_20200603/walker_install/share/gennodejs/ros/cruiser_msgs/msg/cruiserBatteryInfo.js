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

class cruiserBatteryInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.battery_level = null;
      this.voltage = null;
      this.charge_status = null;
      this.temperature = null;
    }
    else {
      if (initObj.hasOwnProperty('battery_level')) {
        this.battery_level = initObj.battery_level
      }
      else {
        this.battery_level = 0;
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0;
      }
      if (initObj.hasOwnProperty('charge_status')) {
        this.charge_status = initObj.charge_status
      }
      else {
        this.charge_status = 0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cruiserBatteryInfo
    // Serialize message field [battery_level]
    bufferOffset = _serializer.uint32(obj.battery_level, buffer, bufferOffset);
    // Serialize message field [voltage]
    bufferOffset = _serializer.uint32(obj.voltage, buffer, bufferOffset);
    // Serialize message field [charge_status]
    bufferOffset = _serializer.uint32(obj.charge_status, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.uint32(obj.temperature, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cruiserBatteryInfo
    let len;
    let data = new cruiserBatteryInfo(null);
    // Deserialize message field [battery_level]
    data.battery_level = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [voltage]
    data.voltage = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [charge_status]
    data.charge_status = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/cruiserBatteryInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c1736befdc88aac8e2cd081c711d9ba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 battery_level
    uint32 voltage
    uint32 charge_status
    uint32 temperature
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cruiserBatteryInfo(null);
    if (msg.battery_level !== undefined) {
      resolved.battery_level = msg.battery_level;
    }
    else {
      resolved.battery_level = 0
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0
    }

    if (msg.charge_status !== undefined) {
      resolved.charge_status = msg.charge_status;
    }
    else {
      resolved.charge_status = 0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0
    }

    return resolved;
    }
};

module.exports = cruiserBatteryInfo;
