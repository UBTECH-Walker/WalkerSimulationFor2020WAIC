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

class cruiserSensorUpdate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data1 = null;
      this.data2 = null;
      this.data3 = null;
      this.data4 = null;
      this.data5 = null;
      this.data6 = null;
    }
    else {
      if (initObj.hasOwnProperty('data1')) {
        this.data1 = initObj.data1
      }
      else {
        this.data1 = 0;
      }
      if (initObj.hasOwnProperty('data2')) {
        this.data2 = initObj.data2
      }
      else {
        this.data2 = 0;
      }
      if (initObj.hasOwnProperty('data3')) {
        this.data3 = initObj.data3
      }
      else {
        this.data3 = 0;
      }
      if (initObj.hasOwnProperty('data4')) {
        this.data4 = initObj.data4
      }
      else {
        this.data4 = 0;
      }
      if (initObj.hasOwnProperty('data5')) {
        this.data5 = initObj.data5
      }
      else {
        this.data5 = 0;
      }
      if (initObj.hasOwnProperty('data6')) {
        this.data6 = initObj.data6
      }
      else {
        this.data6 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cruiserSensorUpdate
    // Serialize message field [data1]
    bufferOffset = _serializer.uint32(obj.data1, buffer, bufferOffset);
    // Serialize message field [data2]
    bufferOffset = _serializer.uint32(obj.data2, buffer, bufferOffset);
    // Serialize message field [data3]
    bufferOffset = _serializer.uint32(obj.data3, buffer, bufferOffset);
    // Serialize message field [data4]
    bufferOffset = _serializer.uint32(obj.data4, buffer, bufferOffset);
    // Serialize message field [data5]
    bufferOffset = _serializer.uint32(obj.data5, buffer, bufferOffset);
    // Serialize message field [data6]
    bufferOffset = _serializer.uint32(obj.data6, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cruiserSensorUpdate
    let len;
    let data = new cruiserSensorUpdate(null);
    // Deserialize message field [data1]
    data.data1 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [data2]
    data.data2 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [data3]
    data.data3 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [data4]
    data.data4 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [data5]
    data.data5 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [data6]
    data.data6 = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/cruiserSensorUpdate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca7cc81c4478bf5d727f35a1887362ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 data1
    uint32 data2
    uint32 data3
    uint32 data4
    uint32 data5
    uint32 data6
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cruiserSensorUpdate(null);
    if (msg.data1 !== undefined) {
      resolved.data1 = msg.data1;
    }
    else {
      resolved.data1 = 0
    }

    if (msg.data2 !== undefined) {
      resolved.data2 = msg.data2;
    }
    else {
      resolved.data2 = 0
    }

    if (msg.data3 !== undefined) {
      resolved.data3 = msg.data3;
    }
    else {
      resolved.data3 = 0
    }

    if (msg.data4 !== undefined) {
      resolved.data4 = msg.data4;
    }
    else {
      resolved.data4 = 0
    }

    if (msg.data5 !== undefined) {
      resolved.data5 = msg.data5;
    }
    else {
      resolved.data5 = 0
    }

    if (msg.data6 !== undefined) {
      resolved.data6 = msg.data6;
    }
    else {
      resolved.data6 = 0
    }

    return resolved;
    }
};

module.exports = cruiserSensorUpdate;
