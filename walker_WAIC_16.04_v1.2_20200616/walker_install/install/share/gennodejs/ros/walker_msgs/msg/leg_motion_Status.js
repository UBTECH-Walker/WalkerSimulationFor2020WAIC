// Auto-generated. Do not edit!

// (in-package walker_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class leg_motion_Status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type leg_motion_Status
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type leg_motion_Status
    let len;
    let data = new leg_motion_Status(null);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'walker_msgs/leg_motion_Status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d1a441ce08becf86e68bfea26a6dade';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # legs status defines
    string INIT=standInit
    string STANDING=standing
    string SCRIPTING=scripting
    string NAV=navigating
    string ARMCTRL=armCtrl
    string VISIONCTRL=visionCtrl
    string KEYBOARDCTRL=keyboardCtrl
    string REMOTERCTRL=remoterCtrl
    string BALANCE=balance
    string TAIJI_INIT=taijiInit
    string TAIJI=taiji
    string YOGA_INIT=yogaInit
    string YOGA=yoga
    string EMSTOP=emergencyStop
    
    ##############################################
    # current leg status
    string status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new leg_motion_Status(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    return resolved;
    }
};

// Constants for message
leg_motion_Status.Constants = {
  INIT: 'standInit',
  STANDING: 'standing',
  SCRIPTING: 'scripting',
  NAV: 'navigating',
  ARMCTRL: 'armCtrl',
  VISIONCTRL: 'visionCtrl',
  KEYBOARDCTRL: 'keyboardCtrl',
  REMOTERCTRL: 'remoterCtrl',
  BALANCE: 'balance',
  TAIJI_INIT: 'taijiInit',
  TAIJI: 'taiji',
  YOGA_INIT: 'yogaInit',
  YOGA: 'yoga',
  EMSTOP: 'emergencyStop',
}

module.exports = leg_motion_Status;
