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

class rgbdApproach {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.approachStatus = null;
      this.distance = null;
    }
    else {
      if (initObj.hasOwnProperty('approachStatus')) {
        this.approachStatus = initObj.approachStatus
      }
      else {
        this.approachStatus = 0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rgbdApproach
    // Serialize message field [approachStatus]
    bufferOffset = _serializer.int32(obj.approachStatus, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.int32(obj.distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rgbdApproach
    let len;
    let data = new rgbdApproach(null);
    // Deserialize message field [approachStatus]
    data.approachStatus = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/rgbdApproach';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '69a51e326617d1f179799e297efe015b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #topic approachDetect
    # approach status,1=approach 2=leave
    int32 approachStatus
    
    # approach distance cm
    int32 distance
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rgbdApproach(null);
    if (msg.approachStatus !== undefined) {
      resolved.approachStatus = msg.approachStatus;
    }
    else {
      resolved.approachStatus = 0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0
    }

    return resolved;
    }
};

module.exports = rgbdApproach;
