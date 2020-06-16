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

class ubtUwbAnchor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.distance = null;
      this.rQua = null;
      this.rssi = null;
      this.fpRssi = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = [];
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = [];
      }
      if (initObj.hasOwnProperty('rQua')) {
        this.rQua = initObj.rQua
      }
      else {
        this.rQua = [];
      }
      if (initObj.hasOwnProperty('rssi')) {
        this.rssi = initObj.rssi
      }
      else {
        this.rssi = [];
      }
      if (initObj.hasOwnProperty('fpRssi')) {
        this.fpRssi = initObj.fpRssi
      }
      else {
        this.fpRssi = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ubtUwbAnchor
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _arraySerializer.uint16(obj.id, buffer, bufferOffset, null);
    // Serialize message field [distance]
    bufferOffset = _arraySerializer.uint16(obj.distance, buffer, bufferOffset, null);
    // Serialize message field [rQua]
    bufferOffset = _arraySerializer.float32(obj.rQua, buffer, bufferOffset, null);
    // Serialize message field [rssi]
    bufferOffset = _arraySerializer.float32(obj.rssi, buffer, bufferOffset, null);
    // Serialize message field [fpRssi]
    bufferOffset = _arraySerializer.float32(obj.fpRssi, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ubtUwbAnchor
    let len;
    let data = new ubtUwbAnchor(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [distance]
    data.distance = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [rQua]
    data.rQua = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [rssi]
    data.rssi = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [fpRssi]
    data.fpRssi = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 2 * object.id.length;
    length += 2 * object.distance.length;
    length += 4 * object.rQua.length;
    length += 4 * object.rssi.length;
    length += 4 * object.fpRssi.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/ubtUwbAnchor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad5f07f4e526d0fa73b93b5ba13bceb5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint16[] id
    uint16[] distance
    float32[] rQua
    float32[] rssi
    float32[] fpRssi
    
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
    const resolved = new ubtUwbAnchor(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = []
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = []
    }

    if (msg.rQua !== undefined) {
      resolved.rQua = msg.rQua;
    }
    else {
      resolved.rQua = []
    }

    if (msg.rssi !== undefined) {
      resolved.rssi = msg.rssi;
    }
    else {
      resolved.rssi = []
    }

    if (msg.fpRssi !== undefined) {
      resolved.fpRssi = msg.fpRssi;
    }
    else {
      resolved.fpRssi = []
    }

    return resolved;
    }
};

module.exports = ubtUwbAnchor;
