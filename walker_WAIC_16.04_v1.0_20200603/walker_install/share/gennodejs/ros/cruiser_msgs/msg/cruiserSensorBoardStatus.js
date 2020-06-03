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

class cruiserSensorBoardStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor_board_abnormal = null;
    }
    else {
      if (initObj.hasOwnProperty('sensor_board_abnormal')) {
        this.sensor_board_abnormal = initObj.sensor_board_abnormal
      }
      else {
        this.sensor_board_abnormal = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cruiserSensorBoardStatus
    // Serialize message field [sensor_board_abnormal]
    bufferOffset = _serializer.uint32(obj.sensor_board_abnormal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cruiserSensorBoardStatus
    let len;
    let data = new cruiserSensorBoardStatus(null);
    // Deserialize message field [sensor_board_abnormal]
    data.sensor_board_abnormal = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/cruiserSensorBoardStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c0773c157c86740d50fb4f7ef626929';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 sensor_board_abnormal
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cruiserSensorBoardStatus(null);
    if (msg.sensor_board_abnormal !== undefined) {
      resolved.sensor_board_abnormal = msg.sensor_board_abnormal;
    }
    else {
      resolved.sensor_board_abnormal = 0
    }

    return resolved;
    }
};

module.exports = cruiserSensorBoardStatus;
