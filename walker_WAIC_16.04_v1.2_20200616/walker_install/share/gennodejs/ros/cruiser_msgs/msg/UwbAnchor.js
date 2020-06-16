// Auto-generated. Do not edit!

// (in-package cruiser_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class UwbAnchor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.anchors = null;
    }
    else {
      if (initObj.hasOwnProperty('anchors')) {
        this.anchors = initObj.anchors
      }
      else {
        this.anchors = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UwbAnchor
    // Serialize message field [anchors]
    // Serialize the length for message field [anchors]
    bufferOffset = _serializer.uint32(obj.anchors.length, buffer, bufferOffset);
    obj.anchors.forEach((val) => {
      bufferOffset = geometry_msgs.msg.PoseStamped.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UwbAnchor
    let len;
    let data = new UwbAnchor(null);
    // Deserialize message field [anchors]
    // Deserialize array length for message field [anchors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.anchors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.anchors[i] = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.anchors.forEach((val) => {
      length += geometry_msgs.msg.PoseStamped.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/UwbAnchor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bb69d45428817d4189c9bb41446d70fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseStamped[] anchors
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UwbAnchor(null);
    if (msg.anchors !== undefined) {
      resolved.anchors = new Array(msg.anchors.length);
      for (let i = 0; i < resolved.anchors.length; ++i) {
        resolved.anchors[i] = geometry_msgs.msg.PoseStamped.Resolve(msg.anchors[i]);
      }
    }
    else {
      resolved.anchors = []
    }

    return resolved;
    }
};

module.exports = UwbAnchor;
