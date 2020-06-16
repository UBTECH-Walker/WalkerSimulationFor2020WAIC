// Auto-generated. Do not edit!

// (in-package cruiser_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let MapJson = require('../msg/MapJson.js');

//-----------------------------------------------------------

class GetMapJsonRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMapJsonRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMapJsonRequest
    let len;
    let data = new GetMapJsonRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cruiser_msgs/GetMapJsonRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Get the map json data as a cruiser_msgs/MapJson
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMapJsonRequest(null);
    return resolved;
    }
};

class GetMapJsonResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.json = null;
    }
    else {
      if (initObj.hasOwnProperty('json')) {
        this.json = initObj.json
      }
      else {
        this.json = new MapJson();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMapJsonResponse
    // Serialize message field [json]
    bufferOffset = MapJson.serialize(obj.json, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMapJsonResponse
    let len;
    let data = new GetMapJsonResponse(null);
    // Deserialize message field [json]
    data.json = MapJson.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MapJson.getMessageSize(object.json);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cruiser_msgs/GetMapJsonResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6825166e7da48608dd55394f68c70e3e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    cruiser_msgs/MapJson json
    
    
    ================================================================================
    MSG: cruiser_msgs/MapJson
    uint8[] data
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMapJsonResponse(null);
    if (msg.json !== undefined) {
      resolved.json = MapJson.Resolve(msg.json)
    }
    else {
      resolved.json = new MapJson()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetMapJsonRequest,
  Response: GetMapJsonResponse,
  md5sum() { return '6825166e7da48608dd55394f68c70e3e'; },
  datatype() { return 'cruiser_msgs/GetMapJson'; }
};
