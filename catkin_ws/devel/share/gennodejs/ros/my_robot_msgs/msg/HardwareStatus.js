// Auto-generated. Do not edit!

// (in-package my_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HardwareStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.temprature = null;
      this.are_motors_up = null;
      this.debug_message = null;
    }
    else {
      if (initObj.hasOwnProperty('temprature')) {
        this.temprature = initObj.temprature
      }
      else {
        this.temprature = 0;
      }
      if (initObj.hasOwnProperty('are_motors_up')) {
        this.are_motors_up = initObj.are_motors_up
      }
      else {
        this.are_motors_up = false;
      }
      if (initObj.hasOwnProperty('debug_message')) {
        this.debug_message = initObj.debug_message
      }
      else {
        this.debug_message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HardwareStatus
    // Serialize message field [temprature]
    bufferOffset = _serializer.int64(obj.temprature, buffer, bufferOffset);
    // Serialize message field [are_motors_up]
    bufferOffset = _serializer.bool(obj.are_motors_up, buffer, bufferOffset);
    // Serialize message field [debug_message]
    bufferOffset = _serializer.string(obj.debug_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HardwareStatus
    let len;
    let data = new HardwareStatus(null);
    // Deserialize message field [temprature]
    data.temprature = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [are_motors_up]
    data.are_motors_up = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [debug_message]
    data.debug_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.debug_message);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_robot_msgs/HardwareStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2bc72ec2d9975b511745c94cc00f1be1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 temprature
    bool are_motors_up
    string debug_message
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HardwareStatus(null);
    if (msg.temprature !== undefined) {
      resolved.temprature = msg.temprature;
    }
    else {
      resolved.temprature = 0
    }

    if (msg.are_motors_up !== undefined) {
      resolved.are_motors_up = msg.are_motors_up;
    }
    else {
      resolved.are_motors_up = false
    }

    if (msg.debug_message !== undefined) {
      resolved.debug_message = msg.debug_message;
    }
    else {
      resolved.debug_message = ''
    }

    return resolved;
    }
};

module.exports = HardwareStatus;
