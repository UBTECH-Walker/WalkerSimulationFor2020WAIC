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

class ChassisMotor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.M1 = null;
      this.M2 = null;
      this.M3 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('M1')) {
        this.M1 = initObj.M1
      }
      else {
        this.M1 = 0.0;
      }
      if (initObj.hasOwnProperty('M2')) {
        this.M2 = initObj.M2
      }
      else {
        this.M2 = 0.0;
      }
      if (initObj.hasOwnProperty('M3')) {
        this.M3 = initObj.M3
      }
      else {
        this.M3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChassisMotor
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [M1]
    bufferOffset = _serializer.float64(obj.M1, buffer, bufferOffset);
    // Serialize message field [M2]
    bufferOffset = _serializer.float64(obj.M2, buffer, bufferOffset);
    // Serialize message field [M3]
    bufferOffset = _serializer.float64(obj.M3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChassisMotor
    let len;
    let data = new ChassisMotor(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [M1]
    data.M1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [M2]
    data.M2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [M3]
    data.M3 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/ChassisMotor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e0989c5ad1d0ba9f193ad5ca3b435331';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # cruiser chassis motor speed info
    # for request speed,topic name "chassis_reqVel"
    # for response speed,topic name "chassis_respVel"
    Header header
    float64 M1
    float64 M2
    float64 M3
    
    
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChassisMotor(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.M1 !== undefined) {
      resolved.M1 = msg.M1;
    }
    else {
      resolved.M1 = 0.0
    }

    if (msg.M2 !== undefined) {
      resolved.M2 = msg.M2;
    }
    else {
      resolved.M2 = 0.0
    }

    if (msg.M3 !== undefined) {
      resolved.M3 = msg.M3;
    }
    else {
      resolved.M3 = 0.0
    }

    return resolved;
    }
};

module.exports = ChassisMotor;
