// Auto-generated. Do not edit!

// (in-package walker_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ces_task_Status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.show_name = null;
      this.show_mode = null;
      this.group_queue = null;
      this.group = null;
      this.task = null;
      this.progress = null;
      this.waiting_trigger = null;
      this.retrying = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('show_name')) {
        this.show_name = initObj.show_name
      }
      else {
        this.show_name = '';
      }
      if (initObj.hasOwnProperty('show_mode')) {
        this.show_mode = initObj.show_mode
      }
      else {
        this.show_mode = '';
      }
      if (initObj.hasOwnProperty('group_queue')) {
        this.group_queue = initObj.group_queue
      }
      else {
        this.group_queue = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('group')) {
        this.group = initObj.group
      }
      else {
        this.group = '';
      }
      if (initObj.hasOwnProperty('task')) {
        this.task = initObj.task
      }
      else {
        this.task = '';
      }
      if (initObj.hasOwnProperty('progress')) {
        this.progress = initObj.progress
      }
      else {
        this.progress = '';
      }
      if (initObj.hasOwnProperty('waiting_trigger')) {
        this.waiting_trigger = initObj.waiting_trigger
      }
      else {
        this.waiting_trigger = false;
      }
      if (initObj.hasOwnProperty('retrying')) {
        this.retrying = initObj.retrying
      }
      else {
        this.retrying = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ces_task_Status
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [show_name]
    bufferOffset = _serializer.string(obj.show_name, buffer, bufferOffset);
    // Serialize message field [show_mode]
    bufferOffset = _serializer.string(obj.show_mode, buffer, bufferOffset);
    // Check that the constant length array field [group_queue] has the right length
    if (obj.group_queue.length !== 3) {
      throw new Error('Unable to serialize array field group_queue - length must be 3')
    }
    // Serialize message field [group_queue]
    bufferOffset = _arraySerializer.string(obj.group_queue, buffer, bufferOffset, 3);
    // Serialize message field [group]
    bufferOffset = _serializer.string(obj.group, buffer, bufferOffset);
    // Serialize message field [task]
    bufferOffset = _serializer.string(obj.task, buffer, bufferOffset);
    // Serialize message field [progress]
    bufferOffset = _serializer.string(obj.progress, buffer, bufferOffset);
    // Serialize message field [waiting_trigger]
    bufferOffset = _serializer.bool(obj.waiting_trigger, buffer, bufferOffset);
    // Serialize message field [retrying]
    bufferOffset = _serializer.bool(obj.retrying, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ces_task_Status
    let len;
    let data = new ces_task_Status(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [show_name]
    data.show_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [show_mode]
    data.show_mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [group_queue]
    data.group_queue = _arrayDeserializer.string(buffer, bufferOffset, 3)
    // Deserialize message field [group]
    data.group = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [task]
    data.task = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [progress]
    data.progress = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [waiting_trigger]
    data.waiting_trigger = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [retrying]
    data.retrying = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.show_name.length;
    length += object.show_mode.length;
    object.group_queue.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.group.length;
    length += object.task.length;
    length += object.progress.length;
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'walker_msgs/ces_task_Status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '563be51c3a034bac36abd5adb57e46db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # task status defines
    string MODE_FREERUN=freerun
    string MODE_CONTINOUS=continous
    string MODE_ONESHOT=oneshot
    
    ##############################################
    
    # time stamp must be filled
    Header header
    
    # current show name
    string show_name
    
    # current run mode
    string show_mode
    
    # task queue
    string[3] group_queue
    
    # current group
    string group
    
    # current task
    string task
    
    # progress
    string progress
    
    # wait for trigger flag
    bool waiting_trigger
    
    # retrying
    bool retrying
    
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
    const resolved = new ces_task_Status(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.show_name !== undefined) {
      resolved.show_name = msg.show_name;
    }
    else {
      resolved.show_name = ''
    }

    if (msg.show_mode !== undefined) {
      resolved.show_mode = msg.show_mode;
    }
    else {
      resolved.show_mode = ''
    }

    if (msg.group_queue !== undefined) {
      resolved.group_queue = msg.group_queue;
    }
    else {
      resolved.group_queue = new Array(3).fill(0)
    }

    if (msg.group !== undefined) {
      resolved.group = msg.group;
    }
    else {
      resolved.group = ''
    }

    if (msg.task !== undefined) {
      resolved.task = msg.task;
    }
    else {
      resolved.task = ''
    }

    if (msg.progress !== undefined) {
      resolved.progress = msg.progress;
    }
    else {
      resolved.progress = ''
    }

    if (msg.waiting_trigger !== undefined) {
      resolved.waiting_trigger = msg.waiting_trigger;
    }
    else {
      resolved.waiting_trigger = false
    }

    if (msg.retrying !== undefined) {
      resolved.retrying = msg.retrying;
    }
    else {
      resolved.retrying = false
    }

    return resolved;
    }
};

// Constants for message
ces_task_Status.Constants = {
  MODE_FREERUN: 'freerun',
  MODE_CONTINOUS: 'continous',
  MODE_ONESHOT: 'oneshot',
}

module.exports = ces_task_Status;
