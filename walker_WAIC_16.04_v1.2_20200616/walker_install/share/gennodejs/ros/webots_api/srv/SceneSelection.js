// Auto-generated. Do not edit!

// (in-package webots_api.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SceneSelectionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.scene_name = null;
      this.nav = null;
      this.vision = null;
    }
    else {
      if (initObj.hasOwnProperty('scene_name')) {
        this.scene_name = initObj.scene_name
      }
      else {
        this.scene_name = '';
      }
      if (initObj.hasOwnProperty('nav')) {
        this.nav = initObj.nav
      }
      else {
        this.nav = false;
      }
      if (initObj.hasOwnProperty('vision')) {
        this.vision = initObj.vision
      }
      else {
        this.vision = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SceneSelectionRequest
    // Serialize message field [scene_name]
    bufferOffset = _serializer.string(obj.scene_name, buffer, bufferOffset);
    // Serialize message field [nav]
    bufferOffset = _serializer.bool(obj.nav, buffer, bufferOffset);
    // Serialize message field [vision]
    bufferOffset = _serializer.bool(obj.vision, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SceneSelectionRequest
    let len;
    let data = new SceneSelectionRequest(null);
    // Deserialize message field [scene_name]
    data.scene_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [nav]
    data.nav = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vision]
    data.vision = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.scene_name.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_api/SceneSelectionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be849e4f9e637f9b6fbdaf322e38373d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string scene_name
    bool nav
    bool vision
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SceneSelectionRequest(null);
    if (msg.scene_name !== undefined) {
      resolved.scene_name = msg.scene_name;
    }
    else {
      resolved.scene_name = ''
    }

    if (msg.nav !== undefined) {
      resolved.nav = msg.nav;
    }
    else {
      resolved.nav = false
    }

    if (msg.vision !== undefined) {
      resolved.vision = msg.vision;
    }
    else {
      resolved.vision = false
    }

    return resolved;
    }
};

class SceneSelectionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SceneSelectionResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SceneSelectionResponse
    let len;
    let data = new SceneSelectionResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_api/SceneSelectionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SceneSelectionResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SceneSelectionRequest,
  Response: SceneSelectionResponse,
  md5sum() { return 'fbbd39fb2bc6dedf8b0d42f934f56fab'; },
  datatype() { return 'webots_api/SceneSelection'; }
};
