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

class JointCtrl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ctrlId = null;
      this.ctrlStamp = null;
      this.ctrlName = null;
      this.jointIdx = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('ctrlId')) {
        this.ctrlId = initObj.ctrlId
      }
      else {
        this.ctrlId = '';
      }
      if (initObj.hasOwnProperty('ctrlStamp')) {
        this.ctrlStamp = initObj.ctrlStamp
      }
      else {
        this.ctrlStamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('ctrlName')) {
        this.ctrlName = initObj.ctrlName
      }
      else {
        this.ctrlName = '';
      }
      if (initObj.hasOwnProperty('jointIdx')) {
        this.jointIdx = initObj.jointIdx
      }
      else {
        this.jointIdx = 0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointCtrl
    // Serialize message field [ctrlId]
    bufferOffset = _serializer.string(obj.ctrlId, buffer, bufferOffset);
    // Serialize message field [ctrlStamp]
    bufferOffset = _serializer.time(obj.ctrlStamp, buffer, bufferOffset);
    // Serialize message field [ctrlName]
    bufferOffset = _serializer.string(obj.ctrlName, buffer, bufferOffset);
    // Serialize message field [jointIdx]
    bufferOffset = _serializer.int32(obj.jointIdx, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _arraySerializer.uint8(obj.reserved, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointCtrl
    let len;
    let data = new JointCtrl(null);
    // Deserialize message field [ctrlId]
    data.ctrlId = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ctrlStamp]
    data.ctrlStamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [ctrlName]
    data.ctrlName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [jointIdx]
    data.jointIdx = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ctrlId.length;
    length += object.ctrlName.length;
    length += object.reserved.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/JointCtrl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8223324199b2c8c391007fad926392ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ctrlId
    time ctrlStamp
    string ctrlName
    int32 jointIdx
    uint8[] reserved
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointCtrl(null);
    if (msg.ctrlId !== undefined) {
      resolved.ctrlId = msg.ctrlId;
    }
    else {
      resolved.ctrlId = ''
    }

    if (msg.ctrlStamp !== undefined) {
      resolved.ctrlStamp = msg.ctrlStamp;
    }
    else {
      resolved.ctrlStamp = {secs: 0, nsecs: 0}
    }

    if (msg.ctrlName !== undefined) {
      resolved.ctrlName = msg.ctrlName;
    }
    else {
      resolved.ctrlName = ''
    }

    if (msg.jointIdx !== undefined) {
      resolved.jointIdx = msg.jointIdx;
    }
    else {
      resolved.jointIdx = 0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = []
    }

    return resolved;
    }
};

module.exports = JointCtrl;
