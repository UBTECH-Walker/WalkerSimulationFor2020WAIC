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

class CruiserJointSate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_num = null;
      this.name = null;
      this.jointIndex = null;
      this.position = null;
      this.speed = null;
      this.duration = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_num')) {
        this.joint_num = initObj.joint_num
      }
      else {
        this.joint_num = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('jointIndex')) {
        this.jointIndex = initObj.jointIndex
      }
      else {
        this.jointIndex = [];
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = [];
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = [];
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CruiserJointSate
    // Serialize message field [joint_num]
    bufferOffset = _serializer.int16(obj.joint_num, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [jointIndex]
    bufferOffset = _arraySerializer.uint32(obj.jointIndex, buffer, bufferOffset, null);
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float64(obj.position, buffer, bufferOffset, null);
    // Serialize message field [speed]
    bufferOffset = _arraySerializer.float64(obj.speed, buffer, bufferOffset, null);
    // Serialize message field [duration]
    bufferOffset = _arraySerializer.int64(obj.duration, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CruiserJointSate
    let len;
    let data = new CruiserJointSate(null);
    // Deserialize message field [joint_num]
    data.joint_num = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [jointIndex]
    data.jointIndex = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [speed]
    data.speed = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [duration]
    data.duration = _arrayDeserializer.int64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.name.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.jointIndex.length;
    length += 8 * object.position.length;
    length += 8 * object.speed.length;
    length += 8 * object.duration.length;
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/CruiserJointSate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '892654ee59978ac7b005cc792fc55ba6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 joint_num
    
    # Joints name to control in array
    # example - ["LShoudlerRoll", "NeckYaw", "NeckPitch"]
    string[] name
    
    # Joints index to control in array
    uint32[] jointIndex
    
    # Corresponding joints postion
    # unit - radian;
    # example - [0.54, 1.22, 1.39]
    float64[] position
    
    # Corresponding joints max speed
    float64[] speed
    
    # Corresponding joints motion time
    # unit - millisecond
    int64[] duration
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CruiserJointSate(null);
    if (msg.joint_num !== undefined) {
      resolved.joint_num = msg.joint_num;
    }
    else {
      resolved.joint_num = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.jointIndex !== undefined) {
      resolved.jointIndex = msg.jointIndex;
    }
    else {
      resolved.jointIndex = []
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = []
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = []
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = []
    }

    return resolved;
    }
};

module.exports = CruiserJointSate;
