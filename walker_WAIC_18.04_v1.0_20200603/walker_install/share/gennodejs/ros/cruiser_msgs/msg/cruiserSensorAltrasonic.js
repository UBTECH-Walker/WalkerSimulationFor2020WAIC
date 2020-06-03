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

class cruiserSensorAltrasonic {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance1 = null;
      this.distance2 = null;
      this.distance3 = null;
      this.distance4 = null;
      this.distance5 = null;
      this.distance6 = null;
      this.waist_distance1 = null;
      this.waist_distance2 = null;
      this.waist_distance3 = null;
      this.waist_distance4 = null;
      this.waist_distance5 = null;
      this.waist_distance6 = null;
      this.waist_microwave = null;
    }
    else {
      if (initObj.hasOwnProperty('distance1')) {
        this.distance1 = initObj.distance1
      }
      else {
        this.distance1 = 0;
      }
      if (initObj.hasOwnProperty('distance2')) {
        this.distance2 = initObj.distance2
      }
      else {
        this.distance2 = 0;
      }
      if (initObj.hasOwnProperty('distance3')) {
        this.distance3 = initObj.distance3
      }
      else {
        this.distance3 = 0;
      }
      if (initObj.hasOwnProperty('distance4')) {
        this.distance4 = initObj.distance4
      }
      else {
        this.distance4 = 0;
      }
      if (initObj.hasOwnProperty('distance5')) {
        this.distance5 = initObj.distance5
      }
      else {
        this.distance5 = 0;
      }
      if (initObj.hasOwnProperty('distance6')) {
        this.distance6 = initObj.distance6
      }
      else {
        this.distance6 = 0;
      }
      if (initObj.hasOwnProperty('waist_distance1')) {
        this.waist_distance1 = initObj.waist_distance1
      }
      else {
        this.waist_distance1 = 0;
      }
      if (initObj.hasOwnProperty('waist_distance2')) {
        this.waist_distance2 = initObj.waist_distance2
      }
      else {
        this.waist_distance2 = 0;
      }
      if (initObj.hasOwnProperty('waist_distance3')) {
        this.waist_distance3 = initObj.waist_distance3
      }
      else {
        this.waist_distance3 = 0;
      }
      if (initObj.hasOwnProperty('waist_distance4')) {
        this.waist_distance4 = initObj.waist_distance4
      }
      else {
        this.waist_distance4 = 0;
      }
      if (initObj.hasOwnProperty('waist_distance5')) {
        this.waist_distance5 = initObj.waist_distance5
      }
      else {
        this.waist_distance5 = 0;
      }
      if (initObj.hasOwnProperty('waist_distance6')) {
        this.waist_distance6 = initObj.waist_distance6
      }
      else {
        this.waist_distance6 = 0;
      }
      if (initObj.hasOwnProperty('waist_microwave')) {
        this.waist_microwave = initObj.waist_microwave
      }
      else {
        this.waist_microwave = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cruiserSensorAltrasonic
    // Serialize message field [distance1]
    bufferOffset = _serializer.uint32(obj.distance1, buffer, bufferOffset);
    // Serialize message field [distance2]
    bufferOffset = _serializer.uint32(obj.distance2, buffer, bufferOffset);
    // Serialize message field [distance3]
    bufferOffset = _serializer.uint32(obj.distance3, buffer, bufferOffset);
    // Serialize message field [distance4]
    bufferOffset = _serializer.uint32(obj.distance4, buffer, bufferOffset);
    // Serialize message field [distance5]
    bufferOffset = _serializer.uint32(obj.distance5, buffer, bufferOffset);
    // Serialize message field [distance6]
    bufferOffset = _serializer.uint32(obj.distance6, buffer, bufferOffset);
    // Serialize message field [waist_distance1]
    bufferOffset = _serializer.uint32(obj.waist_distance1, buffer, bufferOffset);
    // Serialize message field [waist_distance2]
    bufferOffset = _serializer.uint32(obj.waist_distance2, buffer, bufferOffset);
    // Serialize message field [waist_distance3]
    bufferOffset = _serializer.uint32(obj.waist_distance3, buffer, bufferOffset);
    // Serialize message field [waist_distance4]
    bufferOffset = _serializer.uint32(obj.waist_distance4, buffer, bufferOffset);
    // Serialize message field [waist_distance5]
    bufferOffset = _serializer.uint32(obj.waist_distance5, buffer, bufferOffset);
    // Serialize message field [waist_distance6]
    bufferOffset = _serializer.uint32(obj.waist_distance6, buffer, bufferOffset);
    // Serialize message field [waist_microwave]
    bufferOffset = _serializer.uint32(obj.waist_microwave, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cruiserSensorAltrasonic
    let len;
    let data = new cruiserSensorAltrasonic(null);
    // Deserialize message field [distance1]
    data.distance1 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [distance2]
    data.distance2 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [distance3]
    data.distance3 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [distance4]
    data.distance4 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [distance5]
    data.distance5 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [distance6]
    data.distance6 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [waist_distance1]
    data.waist_distance1 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [waist_distance2]
    data.waist_distance2 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [waist_distance3]
    data.waist_distance3 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [waist_distance4]
    data.waist_distance4 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [waist_distance5]
    data.waist_distance5 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [waist_distance6]
    data.waist_distance6 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [waist_microwave]
    data.waist_microwave = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/cruiserSensorAltrasonic';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '52802149de24fd2581b097f77f88a09b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 distance1
    uint32 distance2
    uint32 distance3
    uint32 distance4
    uint32 distance5
    uint32 distance6
    
    uint32 waist_distance1
    uint32 waist_distance2
    uint32 waist_distance3
    uint32 waist_distance4
    uint32 waist_distance5
    uint32 waist_distance6
    
    uint32 waist_microwave
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cruiserSensorAltrasonic(null);
    if (msg.distance1 !== undefined) {
      resolved.distance1 = msg.distance1;
    }
    else {
      resolved.distance1 = 0
    }

    if (msg.distance2 !== undefined) {
      resolved.distance2 = msg.distance2;
    }
    else {
      resolved.distance2 = 0
    }

    if (msg.distance3 !== undefined) {
      resolved.distance3 = msg.distance3;
    }
    else {
      resolved.distance3 = 0
    }

    if (msg.distance4 !== undefined) {
      resolved.distance4 = msg.distance4;
    }
    else {
      resolved.distance4 = 0
    }

    if (msg.distance5 !== undefined) {
      resolved.distance5 = msg.distance5;
    }
    else {
      resolved.distance5 = 0
    }

    if (msg.distance6 !== undefined) {
      resolved.distance6 = msg.distance6;
    }
    else {
      resolved.distance6 = 0
    }

    if (msg.waist_distance1 !== undefined) {
      resolved.waist_distance1 = msg.waist_distance1;
    }
    else {
      resolved.waist_distance1 = 0
    }

    if (msg.waist_distance2 !== undefined) {
      resolved.waist_distance2 = msg.waist_distance2;
    }
    else {
      resolved.waist_distance2 = 0
    }

    if (msg.waist_distance3 !== undefined) {
      resolved.waist_distance3 = msg.waist_distance3;
    }
    else {
      resolved.waist_distance3 = 0
    }

    if (msg.waist_distance4 !== undefined) {
      resolved.waist_distance4 = msg.waist_distance4;
    }
    else {
      resolved.waist_distance4 = 0
    }

    if (msg.waist_distance5 !== undefined) {
      resolved.waist_distance5 = msg.waist_distance5;
    }
    else {
      resolved.waist_distance5 = 0
    }

    if (msg.waist_distance6 !== undefined) {
      resolved.waist_distance6 = msg.waist_distance6;
    }
    else {
      resolved.waist_distance6 = 0
    }

    if (msg.waist_microwave !== undefined) {
      resolved.waist_microwave = msg.waist_microwave;
    }
    else {
      resolved.waist_microwave = 0
    }

    return resolved;
    }
};

module.exports = cruiserSensorAltrasonic;
