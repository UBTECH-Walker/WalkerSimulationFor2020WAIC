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

class geomagnetism {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gyro_x = null;
      this.gyro_y = null;
      this.gyro_z = null;
      this.acc_x = null;
      this.acc_y = null;
      this.acc_z = null;
      this.magnetic_x = null;
      this.magnetic_y = null;
      this.magnetic_z = null;
      this.euler_pitch = null;
      this.euler_roll = null;
      this.euler_yaw = null;
      this.trigger = null;
    }
    else {
      if (initObj.hasOwnProperty('gyro_x')) {
        this.gyro_x = initObj.gyro_x
      }
      else {
        this.gyro_x = 0;
      }
      if (initObj.hasOwnProperty('gyro_y')) {
        this.gyro_y = initObj.gyro_y
      }
      else {
        this.gyro_y = 0;
      }
      if (initObj.hasOwnProperty('gyro_z')) {
        this.gyro_z = initObj.gyro_z
      }
      else {
        this.gyro_z = 0;
      }
      if (initObj.hasOwnProperty('acc_x')) {
        this.acc_x = initObj.acc_x
      }
      else {
        this.acc_x = 0;
      }
      if (initObj.hasOwnProperty('acc_y')) {
        this.acc_y = initObj.acc_y
      }
      else {
        this.acc_y = 0;
      }
      if (initObj.hasOwnProperty('acc_z')) {
        this.acc_z = initObj.acc_z
      }
      else {
        this.acc_z = 0;
      }
      if (initObj.hasOwnProperty('magnetic_x')) {
        this.magnetic_x = initObj.magnetic_x
      }
      else {
        this.magnetic_x = 0;
      }
      if (initObj.hasOwnProperty('magnetic_y')) {
        this.magnetic_y = initObj.magnetic_y
      }
      else {
        this.magnetic_y = 0;
      }
      if (initObj.hasOwnProperty('magnetic_z')) {
        this.magnetic_z = initObj.magnetic_z
      }
      else {
        this.magnetic_z = 0;
      }
      if (initObj.hasOwnProperty('euler_pitch')) {
        this.euler_pitch = initObj.euler_pitch
      }
      else {
        this.euler_pitch = 0;
      }
      if (initObj.hasOwnProperty('euler_roll')) {
        this.euler_roll = initObj.euler_roll
      }
      else {
        this.euler_roll = 0;
      }
      if (initObj.hasOwnProperty('euler_yaw')) {
        this.euler_yaw = initObj.euler_yaw
      }
      else {
        this.euler_yaw = 0;
      }
      if (initObj.hasOwnProperty('trigger')) {
        this.trigger = initObj.trigger
      }
      else {
        this.trigger = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type geomagnetism
    // Serialize message field [gyro_x]
    bufferOffset = _serializer.int32(obj.gyro_x, buffer, bufferOffset);
    // Serialize message field [gyro_y]
    bufferOffset = _serializer.int32(obj.gyro_y, buffer, bufferOffset);
    // Serialize message field [gyro_z]
    bufferOffset = _serializer.int32(obj.gyro_z, buffer, bufferOffset);
    // Serialize message field [acc_x]
    bufferOffset = _serializer.int32(obj.acc_x, buffer, bufferOffset);
    // Serialize message field [acc_y]
    bufferOffset = _serializer.int32(obj.acc_y, buffer, bufferOffset);
    // Serialize message field [acc_z]
    bufferOffset = _serializer.int32(obj.acc_z, buffer, bufferOffset);
    // Serialize message field [magnetic_x]
    bufferOffset = _serializer.int32(obj.magnetic_x, buffer, bufferOffset);
    // Serialize message field [magnetic_y]
    bufferOffset = _serializer.int32(obj.magnetic_y, buffer, bufferOffset);
    // Serialize message field [magnetic_z]
    bufferOffset = _serializer.int32(obj.magnetic_z, buffer, bufferOffset);
    // Serialize message field [euler_pitch]
    bufferOffset = _serializer.int32(obj.euler_pitch, buffer, bufferOffset);
    // Serialize message field [euler_roll]
    bufferOffset = _serializer.int32(obj.euler_roll, buffer, bufferOffset);
    // Serialize message field [euler_yaw]
    bufferOffset = _serializer.int32(obj.euler_yaw, buffer, bufferOffset);
    // Serialize message field [trigger]
    bufferOffset = _serializer.bool(obj.trigger, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type geomagnetism
    let len;
    let data = new geomagnetism(null);
    // Deserialize message field [gyro_x]
    data.gyro_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gyro_y]
    data.gyro_y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gyro_z]
    data.gyro_z = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [acc_x]
    data.acc_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [acc_y]
    data.acc_y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [acc_z]
    data.acc_z = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [magnetic_x]
    data.magnetic_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [magnetic_y]
    data.magnetic_y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [magnetic_z]
    data.magnetic_z = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [euler_pitch]
    data.euler_pitch = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [euler_roll]
    data.euler_roll = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [euler_yaw]
    data.euler_yaw = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [trigger]
    data.trigger = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/geomagnetism';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a11ec4346fd95eab51cf9d95e5a6dc16';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 gyro_x
    int32 gyro_y
    int32 gyro_z
    int32 acc_x
    int32 acc_y
    int32 acc_z
    int32 magnetic_x
    int32 magnetic_y
    int32 magnetic_z
    int32 euler_pitch
    int32 euler_roll
    int32 euler_yaw
    bool trigger
    
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new geomagnetism(null);
    if (msg.gyro_x !== undefined) {
      resolved.gyro_x = msg.gyro_x;
    }
    else {
      resolved.gyro_x = 0
    }

    if (msg.gyro_y !== undefined) {
      resolved.gyro_y = msg.gyro_y;
    }
    else {
      resolved.gyro_y = 0
    }

    if (msg.gyro_z !== undefined) {
      resolved.gyro_z = msg.gyro_z;
    }
    else {
      resolved.gyro_z = 0
    }

    if (msg.acc_x !== undefined) {
      resolved.acc_x = msg.acc_x;
    }
    else {
      resolved.acc_x = 0
    }

    if (msg.acc_y !== undefined) {
      resolved.acc_y = msg.acc_y;
    }
    else {
      resolved.acc_y = 0
    }

    if (msg.acc_z !== undefined) {
      resolved.acc_z = msg.acc_z;
    }
    else {
      resolved.acc_z = 0
    }

    if (msg.magnetic_x !== undefined) {
      resolved.magnetic_x = msg.magnetic_x;
    }
    else {
      resolved.magnetic_x = 0
    }

    if (msg.magnetic_y !== undefined) {
      resolved.magnetic_y = msg.magnetic_y;
    }
    else {
      resolved.magnetic_y = 0
    }

    if (msg.magnetic_z !== undefined) {
      resolved.magnetic_z = msg.magnetic_z;
    }
    else {
      resolved.magnetic_z = 0
    }

    if (msg.euler_pitch !== undefined) {
      resolved.euler_pitch = msg.euler_pitch;
    }
    else {
      resolved.euler_pitch = 0
    }

    if (msg.euler_roll !== undefined) {
      resolved.euler_roll = msg.euler_roll;
    }
    else {
      resolved.euler_roll = 0
    }

    if (msg.euler_yaw !== undefined) {
      resolved.euler_yaw = msg.euler_yaw;
    }
    else {
      resolved.euler_yaw = 0
    }

    if (msg.trigger !== undefined) {
      resolved.trigger = msg.trigger;
    }
    else {
      resolved.trigger = false
    }

    return resolved;
    }
};

module.exports = geomagnetism;
