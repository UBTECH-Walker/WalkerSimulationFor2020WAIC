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


//-----------------------------------------------------------

class humitureRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.priority = null;
      this.packetdata = null;
    }
    else {
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = 0;
      }
      if (initObj.hasOwnProperty('packetdata')) {
        this.packetdata = initObj.packetdata
      }
      else {
        this.packetdata = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type humitureRequest
    // Serialize message field [priority]
    bufferOffset = _serializer.uint32(obj.priority, buffer, bufferOffset);
    // Serialize message field [packetdata]
    bufferOffset = _serializer.string(obj.packetdata, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type humitureRequest
    let len;
    let data = new humitureRequest(null);
    // Deserialize message field [priority]
    data.priority = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [packetdata]
    data.packetdata = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.packetdata.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cruiser_msgs/humitureRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c074140e21c6ef6ba56748714f78878f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 priority
    string packetdata
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new humitureRequest(null);
    if (msg.priority !== undefined) {
      resolved.priority = msg.priority;
    }
    else {
      resolved.priority = 0
    }

    if (msg.packetdata !== undefined) {
      resolved.packetdata = msg.packetdata;
    }
    else {
      resolved.packetdata = ''
    }

    return resolved;
    }
};

class humitureResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.temperature = null;
      this.humidity = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0.0;
      }
      if (initObj.hasOwnProperty('humidity')) {
        this.humidity = initObj.humidity
      }
      else {
        this.humidity = 0.0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type humitureResponse
    // Serialize message field [temperature]
    bufferOffset = _serializer.float64(obj.temperature, buffer, bufferOffset);
    // Serialize message field [humidity]
    bufferOffset = _serializer.float64(obj.humidity, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type humitureResponse
    let len;
    let data = new humitureResponse(null);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [humidity]
    data.humidity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cruiser_msgs/humitureResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ad8470d604c1ba25cf0ad6b03378ac9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float64 temperature
    float64 humidity
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new humitureResponse(null);
    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0.0
    }

    if (msg.humidity !== undefined) {
      resolved.humidity = msg.humidity;
    }
    else {
      resolved.humidity = 0.0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: humitureRequest,
  Response: humitureResponse,
  md5sum() { return 'f4a4dcb285b63a8cabca03177b46fc2d'; },
  datatype() { return 'cruiser_msgs/humiture'; }
};
