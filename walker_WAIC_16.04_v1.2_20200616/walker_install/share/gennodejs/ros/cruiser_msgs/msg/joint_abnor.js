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

class joint_abnor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.jointName = null;
      this.jointIndex = null;
      this.abnorState = null;
    }
    else {
      if (initObj.hasOwnProperty('jointName')) {
        this.jointName = initObj.jointName
      }
      else {
        this.jointName = '';
      }
      if (initObj.hasOwnProperty('jointIndex')) {
        this.jointIndex = initObj.jointIndex
      }
      else {
        this.jointIndex = 0;
      }
      if (initObj.hasOwnProperty('abnorState')) {
        this.abnorState = initObj.abnorState
      }
      else {
        this.abnorState = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type joint_abnor
    // Serialize message field [jointName]
    bufferOffset = _serializer.string(obj.jointName, buffer, bufferOffset);
    // Serialize message field [jointIndex]
    bufferOffset = _serializer.int32(obj.jointIndex, buffer, bufferOffset);
    // Serialize message field [abnorState]
    bufferOffset = _serializer.int32(obj.abnorState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type joint_abnor
    let len;
    let data = new joint_abnor(null);
    // Deserialize message field [jointName]
    data.jointName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [jointIndex]
    data.jointIndex = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [abnorState]
    data.abnorState = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.jointName.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/joint_abnor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd33fc6a742571f80a3793eed68aa9c0d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string jointName
    
    # Joints index
    int32 jointIndex
    
    # abnorState
    # 1:low Temperature protection
    # 2:high Temperature protection
    # 3:low voltage portection
    # 4:high voltage portection
    # 5:current portection
    # 6:force portection
    # 7:fuse portection
    # 8:PWM portection
    int32 abnorState
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new joint_abnor(null);
    if (msg.jointName !== undefined) {
      resolved.jointName = msg.jointName;
    }
    else {
      resolved.jointName = ''
    }

    if (msg.jointIndex !== undefined) {
      resolved.jointIndex = msg.jointIndex;
    }
    else {
      resolved.jointIndex = 0
    }

    if (msg.abnorState !== undefined) {
      resolved.abnorState = msg.abnorState;
    }
    else {
      resolved.abnorState = 0
    }

    return resolved;
    }
};

module.exports = joint_abnor;
