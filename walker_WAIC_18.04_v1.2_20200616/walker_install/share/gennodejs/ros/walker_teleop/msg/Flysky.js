// Auto-generated. Do not edit!

// (in-package walker_teleop.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Flysky {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.bSwa = null;
      this.bSwb = null;
      this.bSwc = null;
      this.bSwe = null;
      this.tSwf = null;
      this.bSwh = null;
      this.dir_lr = null;
      this.dir_ud = null;
      this.throttle_lr = null;
      this.throttle_ud = null;
      this.valid = null;
      this.online = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('bSwa')) {
        this.bSwa = initObj.bSwa
      }
      else {
        this.bSwa = 0;
      }
      if (initObj.hasOwnProperty('bSwb')) {
        this.bSwb = initObj.bSwb
      }
      else {
        this.bSwb = 0;
      }
      if (initObj.hasOwnProperty('bSwc')) {
        this.bSwc = initObj.bSwc
      }
      else {
        this.bSwc = 0;
      }
      if (initObj.hasOwnProperty('bSwe')) {
        this.bSwe = initObj.bSwe
      }
      else {
        this.bSwe = 0;
      }
      if (initObj.hasOwnProperty('tSwf')) {
        this.tSwf = initObj.tSwf
      }
      else {
        this.tSwf = 0;
      }
      if (initObj.hasOwnProperty('bSwh')) {
        this.bSwh = initObj.bSwh
      }
      else {
        this.bSwh = 0;
      }
      if (initObj.hasOwnProperty('dir_lr')) {
        this.dir_lr = initObj.dir_lr
      }
      else {
        this.dir_lr = 0.0;
      }
      if (initObj.hasOwnProperty('dir_ud')) {
        this.dir_ud = initObj.dir_ud
      }
      else {
        this.dir_ud = 0.0;
      }
      if (initObj.hasOwnProperty('throttle_lr')) {
        this.throttle_lr = initObj.throttle_lr
      }
      else {
        this.throttle_lr = 0.0;
      }
      if (initObj.hasOwnProperty('throttle_ud')) {
        this.throttle_ud = initObj.throttle_ud
      }
      else {
        this.throttle_ud = 0.0;
      }
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = false;
      }
      if (initObj.hasOwnProperty('online')) {
        this.online = initObj.online
      }
      else {
        this.online = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Flysky
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [bSwa]
    bufferOffset = _serializer.byte(obj.bSwa, buffer, bufferOffset);
    // Serialize message field [bSwb]
    bufferOffset = _serializer.byte(obj.bSwb, buffer, bufferOffset);
    // Serialize message field [bSwc]
    bufferOffset = _serializer.byte(obj.bSwc, buffer, bufferOffset);
    // Serialize message field [bSwe]
    bufferOffset = _serializer.byte(obj.bSwe, buffer, bufferOffset);
    // Serialize message field [tSwf]
    bufferOffset = _serializer.byte(obj.tSwf, buffer, bufferOffset);
    // Serialize message field [bSwh]
    bufferOffset = _serializer.byte(obj.bSwh, buffer, bufferOffset);
    // Serialize message field [dir_lr]
    bufferOffset = _serializer.float32(obj.dir_lr, buffer, bufferOffset);
    // Serialize message field [dir_ud]
    bufferOffset = _serializer.float32(obj.dir_ud, buffer, bufferOffset);
    // Serialize message field [throttle_lr]
    bufferOffset = _serializer.float32(obj.throttle_lr, buffer, bufferOffset);
    // Serialize message field [throttle_ud]
    bufferOffset = _serializer.float32(obj.throttle_ud, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    // Serialize message field [online]
    bufferOffset = _serializer.bool(obj.online, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Flysky
    let len;
    let data = new Flysky(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [bSwa]
    data.bSwa = _deserializer.byte(buffer, bufferOffset);
    // Deserialize message field [bSwb]
    data.bSwb = _deserializer.byte(buffer, bufferOffset);
    // Deserialize message field [bSwc]
    data.bSwc = _deserializer.byte(buffer, bufferOffset);
    // Deserialize message field [bSwe]
    data.bSwe = _deserializer.byte(buffer, bufferOffset);
    // Deserialize message field [tSwf]
    data.tSwf = _deserializer.byte(buffer, bufferOffset);
    // Deserialize message field [bSwh]
    data.bSwh = _deserializer.byte(buffer, bufferOffset);
    // Deserialize message field [dir_lr]
    data.dir_lr = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dir_ud]
    data.dir_ud = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [throttle_lr]
    data.throttle_lr = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [throttle_ud]
    data.throttle_ud = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [online]
    data.online = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'walker_teleop/Flysky';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '163a5835c0ba7d7356ed3e23c0843803';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # switch values
    byte SW_UP=0
    byte SW_DOWN=1
    byte SW_MID=2
    
    # switches, prefix 'b' for bool key, prefix 't' for triple state key
    byte bSwa
    byte bSwb
    byte bSwc
    byte bSwe
    byte tSwf
    byte bSwh
    
    # directions
    float32 DIR_MAX=100.0
    float32 DIR_MIN=-100.0
    float32 dir_lr
    float32 dir_ud
    
    # throttle
    float32 throttle_lr
    float32 throttle_ud
    
    # whether all values are validate
    bool valid
    
    # whether the remoter is online or not
    bool online
    
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
    const resolved = new Flysky(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.bSwa !== undefined) {
      resolved.bSwa = msg.bSwa;
    }
    else {
      resolved.bSwa = 0
    }

    if (msg.bSwb !== undefined) {
      resolved.bSwb = msg.bSwb;
    }
    else {
      resolved.bSwb = 0
    }

    if (msg.bSwc !== undefined) {
      resolved.bSwc = msg.bSwc;
    }
    else {
      resolved.bSwc = 0
    }

    if (msg.bSwe !== undefined) {
      resolved.bSwe = msg.bSwe;
    }
    else {
      resolved.bSwe = 0
    }

    if (msg.tSwf !== undefined) {
      resolved.tSwf = msg.tSwf;
    }
    else {
      resolved.tSwf = 0
    }

    if (msg.bSwh !== undefined) {
      resolved.bSwh = msg.bSwh;
    }
    else {
      resolved.bSwh = 0
    }

    if (msg.dir_lr !== undefined) {
      resolved.dir_lr = msg.dir_lr;
    }
    else {
      resolved.dir_lr = 0.0
    }

    if (msg.dir_ud !== undefined) {
      resolved.dir_ud = msg.dir_ud;
    }
    else {
      resolved.dir_ud = 0.0
    }

    if (msg.throttle_lr !== undefined) {
      resolved.throttle_lr = msg.throttle_lr;
    }
    else {
      resolved.throttle_lr = 0.0
    }

    if (msg.throttle_ud !== undefined) {
      resolved.throttle_ud = msg.throttle_ud;
    }
    else {
      resolved.throttle_ud = 0.0
    }

    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = false
    }

    if (msg.online !== undefined) {
      resolved.online = msg.online;
    }
    else {
      resolved.online = false
    }

    return resolved;
    }
};

// Constants for message
Flysky.Constants = {
  SW_UP: 0,
  SW_DOWN: 1,
  SW_MID: 2,
  DIR_MAX: 100.0,
  DIR_MIN: -100.0,
}

module.exports = Flysky;
