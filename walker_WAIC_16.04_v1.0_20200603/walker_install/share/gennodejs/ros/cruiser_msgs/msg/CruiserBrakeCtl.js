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

class CruiserBrakeCtl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.brake = null;
    }
    else {
      if (initObj.hasOwnProperty('brake')) {
        this.brake = initObj.brake
      }
      else {
        this.brake = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CruiserBrakeCtl
    // Serialize message field [brake]
    bufferOffset = _serializer.bool(obj.brake, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CruiserBrakeCtl
    let len;
    let data = new CruiserBrakeCtl(null);
    // Deserialize message field [brake]
    data.brake = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cruiser_msgs/CruiserBrakeCtl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '691501d2b5eb4dc01a97397d7baf5fba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # cruiser brake control,topic name "Cruiser_brake"
    # brake=1,brake cruiser
    # brake=0,reset to normal
    bool brake
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CruiserBrakeCtl(null);
    if (msg.brake !== undefined) {
      resolved.brake = msg.brake;
    }
    else {
      resolved.brake = false
    }

    return resolved;
    }
};

module.exports = CruiserBrakeCtl;
