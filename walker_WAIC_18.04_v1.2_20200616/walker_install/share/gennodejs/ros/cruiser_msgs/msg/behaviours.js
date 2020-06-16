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

class behaviours {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.datapacket = null;
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
      if (initObj.hasOwnProperty('clientFd')) {
        this.clientFd = initObj.clientFd
      }
      else {
        this.clientFd = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type behaviours
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [datapacket]
    bufferOffset = _serializer.string(obj.datapacket, buffer, bufferOffset);
    // Serialize message field [clientFd]
    bufferOffset = _serializer.uint32(obj.clientFd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type behaviours
    let len;
    let data = new behaviours(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [datapacket]
    data.datapacket = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [clientFd]
    data.clientFd = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.datapacket.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/behaviours';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1fa06883f2e6627b210d8fd6b7397ec6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    #command packet
    string datapacket
    
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
    const resolved = new behaviours(null);
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

    if (msg.clientFd !== undefined) {
      resolved.clientFd = msg.clientFd;
    }
    else {
      resolved.clientFd = 0
    }

    return resolved;
    }
};

module.exports = behaviours;
