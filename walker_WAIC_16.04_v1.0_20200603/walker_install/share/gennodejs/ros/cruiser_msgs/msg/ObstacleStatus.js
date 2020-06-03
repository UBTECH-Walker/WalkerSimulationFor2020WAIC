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

class ObstacleStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lethal_dis = null;
      this.inflated_dis = null;
      this.lethal_pose = null;
      this.inflated_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('lethal_dis')) {
        this.lethal_dis = initObj.lethal_dis
      }
      else {
        this.lethal_dis = 0.0;
      }
      if (initObj.hasOwnProperty('inflated_dis')) {
        this.inflated_dis = initObj.inflated_dis
      }
      else {
        this.inflated_dis = 0.0;
      }
      if (initObj.hasOwnProperty('lethal_pose')) {
        this.lethal_pose = initObj.lethal_pose
      }
      else {
        this.lethal_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('inflated_pose')) {
        this.inflated_pose = initObj.inflated_pose
      }
      else {
        this.inflated_pose = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstacleStatus
    // Serialize message field [lethal_dis]
    bufferOffset = _serializer.float32(obj.lethal_dis, buffer, bufferOffset);
    // Serialize message field [inflated_dis]
    bufferOffset = _serializer.float32(obj.inflated_dis, buffer, bufferOffset);
    // Serialize message field [lethal_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.lethal_pose, buffer, bufferOffset);
    // Serialize message field [inflated_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.inflated_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstacleStatus
    let len;
    let data = new ObstacleStatus(null);
    // Deserialize message field [lethal_dis]
    data.lethal_dis = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [inflated_dis]
    data.inflated_dis = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lethal_pose]
    data.lethal_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [inflated_pose]
    data.inflated_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.lethal_pose);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.inflated_pose);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/ObstacleStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7e84b2031a914018d70a2626de80e5ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 lethal_dis
    float32 inflated_dis
    geometry_msgs/PoseStamped lethal_pose
    geometry_msgs/PoseStamped inflated_pose
    
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
    const resolved = new ObstacleStatus(null);
    if (msg.lethal_dis !== undefined) {
      resolved.lethal_dis = msg.lethal_dis;
    }
    else {
      resolved.lethal_dis = 0.0
    }

    if (msg.inflated_dis !== undefined) {
      resolved.inflated_dis = msg.inflated_dis;
    }
    else {
      resolved.inflated_dis = 0.0
    }

    if (msg.lethal_pose !== undefined) {
      resolved.lethal_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.lethal_pose)
    }
    else {
      resolved.lethal_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.inflated_pose !== undefined) {
      resolved.inflated_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.inflated_pose)
    }
    else {
      resolved.inflated_pose = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

module.exports = ObstacleStatus;
