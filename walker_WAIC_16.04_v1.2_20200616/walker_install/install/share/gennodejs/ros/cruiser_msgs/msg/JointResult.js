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

class JointResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.stamp = null;
      this.errCode = null;
      this.joints = null;
      this.name = null;
      this.jointIndex = null;
      this.position = null;
      this.speed = null;
      this.duration = null;
      this.current = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('errCode')) {
        this.errCode = initObj.errCode
      }
      else {
        this.errCode = 0;
      }
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = new Array(16).fill(0);
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
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointResult
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [errCode]
    bufferOffset = _serializer.int32(obj.errCode, buffer, bufferOffset);
    // Check that the constant length array field [joints] has the right length
    if (obj.joints.length !== 16) {
      throw new Error('Unable to serialize array field joints - length must be 16')
    }
    // Serialize message field [joints]
    bufferOffset = _arraySerializer.float64(obj.joints, buffer, bufferOffset, 16);
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
    // Serialize message field [current]
    bufferOffset = _arraySerializer.float64(obj.current, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointResult
    let len;
    let data = new JointResult(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [errCode]
    data.errCode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [joints]
    data.joints = _arrayDeserializer.float64(buffer, bufferOffset, 16)
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
    // Deserialize message field [current]
    data.current = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    object.name.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.jointIndex.length;
    length += 8 * object.position.length;
    length += 8 * object.speed.length;
    length += 8 * object.duration.length;
    length += 8 * object.current.length;
    return length + 168;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/JointResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '60682833e270feaa2ef1ee50b6380b52';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string id
    time stamp
    int32 errCode
    float64[16] joints
    
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
    
    float64[] current
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointResult(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.errCode !== undefined) {
      resolved.errCode = msg.errCode;
    }
    else {
      resolved.errCode = 0
    }

    if (msg.joints !== undefined) {
      resolved.joints = msg.joints;
    }
    else {
      resolved.joints = new Array(16).fill(0)
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

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = []
    }

    return resolved;
    }
};

module.exports = JointResult;
