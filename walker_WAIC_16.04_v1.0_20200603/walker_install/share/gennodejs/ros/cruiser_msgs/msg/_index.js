
"use strict";

let cruiserLocomotionStatus = require('./cruiserLocomotionStatus.js');
let msg_controler_joint = require('./msg_controler_joint.js');
let cruiserBatteryInfo = require('./cruiserBatteryInfo.js');
let cruiserNavigation = require('./cruiserNavigation.js');
let cruiser_common_status = require('./cruiser_common_status.js');
let cruiser_sdk_resp = require('./cruiser_sdk_resp.js');
let joint_abnor = require('./joint_abnor.js');
let cruiserCanCount = require('./cruiserCanCount.js');
let CruiserJointSetting = require('./CruiserJointSetting.js');
let cruiserSensorWallCheckIr = require('./cruiserSensorWallCheckIr.js');
let msg_controler_header = require('./msg_controler_header.js');
let msg_controler_arm = require('./msg_controler_arm.js');
let joint_test = require('./joint_test.js');
let cruiser_navigation_motion = require('./cruiser_navigation_motion.js');
let JointCtrl = require('./JointCtrl.js');
let cruiserNotifyPowerCmd = require('./cruiserNotifyPowerCmd.js');
let behaviours = require('./behaviours.js');
let diagnosticReportData = require('./diagnosticReportData.js');
let cruiserSensorFloorCheckIr = require('./cruiserSensorFloorCheckIr.js');
let VirtualWall = require('./VirtualWall.js');
let UwbAnchor = require('./UwbAnchor.js');
let cruiser_diag_agg = require('./cruiser_diag_agg.js');
let cruiserSensorBoardStatus = require('./cruiserSensorBoardStatus.js');
let cruiser_diagnostics = require('./cruiser_diagnostics.js');
let cruiserPowerOffRos = require('./cruiserPowerOffRos.js');
let ChassisMotor = require('./ChassisMotor.js');
let cruiserSensorAltrasonic = require('./cruiserSensorAltrasonic.js');
let cruiserSensorUpdate = require('./cruiserSensorUpdate.js');
let ubtUwbAnchor = require('./ubtUwbAnchor.js');
let CruiserBrakeCtl = require('./CruiserBrakeCtl.js');
let cruiser_joint_motion = require('./cruiser_joint_motion.js');
let cruiserLedOnOff = require('./cruiserLedOnOff.js');
let msg_controler_chassis = require('./msg_controler_chassis.js');
let MapJson = require('./MapJson.js');
let JointResult = require('./JointResult.js');
let RangeArray = require('./RangeArray.js');
let cruiserChargeSource = require('./cruiserChargeSource.js');
let cruiserPowerCmd = require('./cruiserPowerCmd.js');
let VirtualPath = require('./VirtualPath.js');
let EskinMsg = require('./EskinMsg.js');
let cruiserLedSate = require('./cruiserLedSate.js');
let CruiserJointSate = require('./CruiserJointSate.js');
let rgbdApproach = require('./rgbdApproach.js');
let geomagnetism = require('./geomagnetism.js');
let diagnosticCtrlCmd = require('./diagnosticCtrlCmd.js');
let cruiserSensorChargeIr = require('./cruiserSensorChargeIr.js');
let ObstacleStatus = require('./ObstacleStatus.js');

module.exports = {
  cruiserLocomotionStatus: cruiserLocomotionStatus,
  msg_controler_joint: msg_controler_joint,
  cruiserBatteryInfo: cruiserBatteryInfo,
  cruiserNavigation: cruiserNavigation,
  cruiser_common_status: cruiser_common_status,
  cruiser_sdk_resp: cruiser_sdk_resp,
  joint_abnor: joint_abnor,
  cruiserCanCount: cruiserCanCount,
  CruiserJointSetting: CruiserJointSetting,
  cruiserSensorWallCheckIr: cruiserSensorWallCheckIr,
  msg_controler_header: msg_controler_header,
  msg_controler_arm: msg_controler_arm,
  joint_test: joint_test,
  cruiser_navigation_motion: cruiser_navigation_motion,
  JointCtrl: JointCtrl,
  cruiserNotifyPowerCmd: cruiserNotifyPowerCmd,
  behaviours: behaviours,
  diagnosticReportData: diagnosticReportData,
  cruiserSensorFloorCheckIr: cruiserSensorFloorCheckIr,
  VirtualWall: VirtualWall,
  UwbAnchor: UwbAnchor,
  cruiser_diag_agg: cruiser_diag_agg,
  cruiserSensorBoardStatus: cruiserSensorBoardStatus,
  cruiser_diagnostics: cruiser_diagnostics,
  cruiserPowerOffRos: cruiserPowerOffRos,
  ChassisMotor: ChassisMotor,
  cruiserSensorAltrasonic: cruiserSensorAltrasonic,
  cruiserSensorUpdate: cruiserSensorUpdate,
  ubtUwbAnchor: ubtUwbAnchor,
  CruiserBrakeCtl: CruiserBrakeCtl,
  cruiser_joint_motion: cruiser_joint_motion,
  cruiserLedOnOff: cruiserLedOnOff,
  msg_controler_chassis: msg_controler_chassis,
  MapJson: MapJson,
  JointResult: JointResult,
  RangeArray: RangeArray,
  cruiserChargeSource: cruiserChargeSource,
  cruiserPowerCmd: cruiserPowerCmd,
  VirtualPath: VirtualPath,
  EskinMsg: EskinMsg,
  cruiserLedSate: cruiserLedSate,
  CruiserJointSate: CruiserJointSate,
  rgbdApproach: rgbdApproach,
  geomagnetism: geomagnetism,
  diagnosticCtrlCmd: diagnosticCtrlCmd,
  cruiserSensorChargeIr: cruiserSensorChargeIr,
  ObstacleStatus: ObstacleStatus,
};
