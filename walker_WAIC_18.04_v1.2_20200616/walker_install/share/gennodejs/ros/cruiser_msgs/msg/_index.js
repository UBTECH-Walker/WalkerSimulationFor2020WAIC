
"use strict";

let JointCtrl = require('./JointCtrl.js');
let msg_controler_chassis = require('./msg_controler_chassis.js');
let cruiserSensorBoardStatus = require('./cruiserSensorBoardStatus.js');
let msg_controler_joint = require('./msg_controler_joint.js');
let JointResult = require('./JointResult.js');
let cruiser_diagnostics = require('./cruiser_diagnostics.js');
let RangeArray = require('./RangeArray.js');
let VirtualWall = require('./VirtualWall.js');
let CruiserJointSetting = require('./CruiserJointSetting.js');
let cruiserNotifyPowerCmd = require('./cruiserNotifyPowerCmd.js');
let cruiserSensorUpdate = require('./cruiserSensorUpdate.js');
let cruiserPowerOffRos = require('./cruiserPowerOffRos.js');
let VirtualPath = require('./VirtualPath.js');
let diagnosticCtrlCmd = require('./diagnosticCtrlCmd.js');
let cruiser_joint_motion = require('./cruiser_joint_motion.js');
let cruiserLedOnOff = require('./cruiserLedOnOff.js');
let cruiser_diag_agg = require('./cruiser_diag_agg.js');
let cruiserSensorChargeIr = require('./cruiserSensorChargeIr.js');
let MapJson = require('./MapJson.js');
let cruiserSensorAltrasonic = require('./cruiserSensorAltrasonic.js');
let cruiserBatteryInfo = require('./cruiserBatteryInfo.js');
let ubtUwbAnchor = require('./ubtUwbAnchor.js');
let cruiser_navigation_motion = require('./cruiser_navigation_motion.js');
let cruiserLedSate = require('./cruiserLedSate.js');
let msg_controler_header = require('./msg_controler_header.js');
let cruiserCanCount = require('./cruiserCanCount.js');
let rgbdApproach = require('./rgbdApproach.js');
let cruiser_sdk_resp = require('./cruiser_sdk_resp.js');
let cruiserSensorWallCheckIr = require('./cruiserSensorWallCheckIr.js');
let ObstacleStatus = require('./ObstacleStatus.js');
let cruiserPowerCmd = require('./cruiserPowerCmd.js');
let joint_test = require('./joint_test.js');
let diagnosticReportData = require('./diagnosticReportData.js');
let CruiserBrakeCtl = require('./CruiserBrakeCtl.js');
let geomagnetism = require('./geomagnetism.js');
let cruiserNavigation = require('./cruiserNavigation.js');
let msg_controler_arm = require('./msg_controler_arm.js');
let behaviours = require('./behaviours.js');
let cruiserLocomotionStatus = require('./cruiserLocomotionStatus.js');
let cruiserSensorFloorCheckIr = require('./cruiserSensorFloorCheckIr.js');
let joint_abnor = require('./joint_abnor.js');
let EskinMsg = require('./EskinMsg.js');
let cruiserChargeSource = require('./cruiserChargeSource.js');
let cruiser_common_status = require('./cruiser_common_status.js');
let CruiserJointSate = require('./CruiserJointSate.js');
let ChassisMotor = require('./ChassisMotor.js');
let UwbAnchor = require('./UwbAnchor.js');

module.exports = {
  JointCtrl: JointCtrl,
  msg_controler_chassis: msg_controler_chassis,
  cruiserSensorBoardStatus: cruiserSensorBoardStatus,
  msg_controler_joint: msg_controler_joint,
  JointResult: JointResult,
  cruiser_diagnostics: cruiser_diagnostics,
  RangeArray: RangeArray,
  VirtualWall: VirtualWall,
  CruiserJointSetting: CruiserJointSetting,
  cruiserNotifyPowerCmd: cruiserNotifyPowerCmd,
  cruiserSensorUpdate: cruiserSensorUpdate,
  cruiserPowerOffRos: cruiserPowerOffRos,
  VirtualPath: VirtualPath,
  diagnosticCtrlCmd: diagnosticCtrlCmd,
  cruiser_joint_motion: cruiser_joint_motion,
  cruiserLedOnOff: cruiserLedOnOff,
  cruiser_diag_agg: cruiser_diag_agg,
  cruiserSensorChargeIr: cruiserSensorChargeIr,
  MapJson: MapJson,
  cruiserSensorAltrasonic: cruiserSensorAltrasonic,
  cruiserBatteryInfo: cruiserBatteryInfo,
  ubtUwbAnchor: ubtUwbAnchor,
  cruiser_navigation_motion: cruiser_navigation_motion,
  cruiserLedSate: cruiserLedSate,
  msg_controler_header: msg_controler_header,
  cruiserCanCount: cruiserCanCount,
  rgbdApproach: rgbdApproach,
  cruiser_sdk_resp: cruiser_sdk_resp,
  cruiserSensorWallCheckIr: cruiserSensorWallCheckIr,
  ObstacleStatus: ObstacleStatus,
  cruiserPowerCmd: cruiserPowerCmd,
  joint_test: joint_test,
  diagnosticReportData: diagnosticReportData,
  CruiserBrakeCtl: CruiserBrakeCtl,
  geomagnetism: geomagnetism,
  cruiserNavigation: cruiserNavigation,
  msg_controler_arm: msg_controler_arm,
  behaviours: behaviours,
  cruiserLocomotionStatus: cruiserLocomotionStatus,
  cruiserSensorFloorCheckIr: cruiserSensorFloorCheckIr,
  joint_abnor: joint_abnor,
  EskinMsg: EskinMsg,
  cruiserChargeSource: cruiserChargeSource,
  cruiser_common_status: cruiser_common_status,
  CruiserJointSate: CruiserJointSate,
  ChassisMotor: ChassisMotor,
  UwbAnchor: UwbAnchor,
};
