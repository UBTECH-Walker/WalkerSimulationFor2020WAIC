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

class CruiserJointSetting {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_num = null;
      this.cmd = null;
      this.jointIndex = null;
      this.parameter = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_num')) {
        this.joint_num = initObj.joint_num
      }
      else {
        this.joint_num = 0;
      }
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = '';
      }
      if (initObj.hasOwnProperty('jointIndex')) {
        this.jointIndex = initObj.jointIndex
      }
      else {
        this.jointIndex = [];
      }
      if (initObj.hasOwnProperty('parameter')) {
        this.parameter = initObj.parameter
      }
      else {
        this.parameter = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CruiserJointSetting
    // Serialize message field [joint_num]
    bufferOffset = _serializer.int16(obj.joint_num, buffer, bufferOffset);
    // Serialize message field [cmd]
    bufferOffset = _serializer.string(obj.cmd, buffer, bufferOffset);
    // Serialize message field [jointIndex]
    bufferOffset = _arraySerializer.uint32(obj.jointIndex, buffer, bufferOffset, null);
    // Serialize message field [parameter]
    bufferOffset = _arraySerializer.float64(obj.parameter, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CruiserJointSetting
    let len;
    let data = new CruiserJointSetting(null);
    // Deserialize message field [joint_num]
    data.joint_num = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [jointIndex]
    data.jointIndex = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [parameter]
    data.parameter = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.cmd.length;
    length += 4 * object.jointIndex.length;
    length += 8 * object.parameter.length;
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/CruiserJointSetting';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2cb5800afbbffbf910bd3074e8d992fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 joint_num
    
    # Joints name to control in array
    # example - ["stop", "set Kp", "read zero"]
    string cmd
    
    # Joints index to control in array
    uint32[] jointIndex
    
    # Corresponding joints postion
    # unit - radian;
    # example - [0.54, 1.22, 1.39]
    float64[] parameter
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CruiserJointSetting(null);
    if (msg.joint_num !== undefined) {
      resolved.joint_num = msg.joint_num;
    }
    else {
      resolved.joint_num = 0
    }

    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = ''
    }

    if (msg.jointIndex !== undefined) {
      resolved.jointIndex = msg.jointIndex;
    }
    else {
      resolved.jointIndex = []
    }

    if (msg.parameter !== undefined) {
      resolved.parameter = msg.parameter;
    }
    else {
      resolved.parameter = []
    }

    return resolved;
    }
};

module.exports = CruiserJointSetting;
