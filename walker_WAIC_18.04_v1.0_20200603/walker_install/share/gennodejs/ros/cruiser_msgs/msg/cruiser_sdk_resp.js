// Auto-generated. Do not edit!

// (in-package cruiser_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class cruiser_sdk_resp {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.datapacket = null;
      this.cmdType = null;
      this.cmdResult = null;
      this.clientFd = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('datapacket')) {
        this.datapacket = initObj.datapacket
      }
      else {
        this.datapacket = '';
      }
      if (initObj.hasOwnProperty('cmdType')) {
        this.cmdType = initObj.cmdType
      }
      else {
        this.cmdType = 0;
      }
      if (initObj.hasOwnProperty('cmdResult')) {
        this.cmdResult = initObj.cmdResult
      }
      else {
        this.cmdResult = 0;
      }
      if (initObj.hasOwnProperty('clientFd')) {
        this.clientFd = initObj.clientFd
      }
      else {
        this.clientFd = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cruiser_sdk_resp
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [datapacket]
    bufferOffset = _serializer.string(obj.datapacket, buffer, bufferOffset);
    // Serialize message field [cmdType]
    bufferOffset = _serializer.uint32(obj.cmdType, buffer, bufferOffset);
    // Serialize message field [cmdResult]
    bufferOffset = _serializer.uint32(obj.cmdResult, buffer, bufferOffset);
    // Serialize message field [clientFd]
    bufferOffset = _serializer.uint32(obj.clientFd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cruiser_sdk_resp
    let len;
    let data = new cruiser_sdk_resp(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [datapacket]
    data.datapacket = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [cmdType]
    data.cmdType = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [cmdResult]
    data.cmdResult = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [clientFd]
    data.clientFd = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.datapacket.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/cruiser_sdk_resp';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '67265208b8ec2a3368581dba5ddc5c17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string datapacket
    
    #command type
    uint32 cmdType
    
    #command result state
    uint32 cmdResult
    
    #communication client
    uint32 clientFd
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cruiser_sdk_resp(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.datapacket !== undefined) {
      resolved.datapacket = msg.datapacket;
    }
    else {
      resolved.datapacket = ''
    }

    if (msg.cmdType !== undefined) {
      resolved.cmdType = msg.cmdType;
    }
    else {
      resolved.cmdType = 0
    }

    if (msg.cmdResult !== undefined) {
      resolved.cmdResult = msg.cmdResult;
    }
    else {
      resolved.cmdResult = 0
    }

    if (msg.clientFd !== undefined) {
      resolved.clientFd = msg.clientFd;
    }
    else {
      resolved.clientFd = 0
    }

    return resolved;
    }
};

module.exports = cruiser_sdk_resp;
