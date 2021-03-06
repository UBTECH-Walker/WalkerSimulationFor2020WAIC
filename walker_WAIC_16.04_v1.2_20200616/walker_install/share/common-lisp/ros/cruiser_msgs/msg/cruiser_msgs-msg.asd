
(cl:in-package :asdf)

(defsystem "cruiser_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ChassisMotor" :depends-on ("_package_ChassisMotor"))
    (:file "_package_ChassisMotor" :depends-on ("_package"))
    (:file "CruiserBrakeCtl" :depends-on ("_package_CruiserBrakeCtl"))
    (:file "_package_CruiserBrakeCtl" :depends-on ("_package"))
    (:file "CruiserJointSate" :depends-on ("_package_CruiserJointSate"))
    (:file "_package_CruiserJointSate" :depends-on ("_package"))
    (:file "CruiserJointSetting" :depends-on ("_package_CruiserJointSetting"))
    (:file "_package_CruiserJointSetting" :depends-on ("_package"))
    (:file "EskinMsg" :depends-on ("_package_EskinMsg"))
    (:file "_package_EskinMsg" :depends-on ("_package"))
    (:file "JointCtrl" :depends-on ("_package_JointCtrl"))
    (:file "_package_JointCtrl" :depends-on ("_package"))
    (:file "JointResult" :depends-on ("_package_JointResult"))
    (:file "_package_JointResult" :depends-on ("_package"))
    (:file "MapJson" :depends-on ("_package_MapJson"))
    (:file "_package_MapJson" :depends-on ("_package"))
    (:file "ObstacleStatus" :depends-on ("_package_ObstacleStatus"))
    (:file "_package_ObstacleStatus" :depends-on ("_package"))
    (:file "RangeArray" :depends-on ("_package_RangeArray"))
    (:file "_package_RangeArray" :depends-on ("_package"))
    (:file "UwbAnchor" :depends-on ("_package_UwbAnchor"))
    (:file "_package_UwbAnchor" :depends-on ("_package"))
    (:file "VirtualPath" :depends-on ("_package_VirtualPath"))
    (:file "_package_VirtualPath" :depends-on ("_package"))
    (:file "VirtualWall" :depends-on ("_package_VirtualWall"))
    (:file "_package_VirtualWall" :depends-on ("_package"))
    (:file "behaviours" :depends-on ("_package_behaviours"))
    (:file "_package_behaviours" :depends-on ("_package"))
    (:file "cruiserBatteryInfo" :depends-on ("_package_cruiserBatteryInfo"))
    (:file "_package_cruiserBatteryInfo" :depends-on ("_package"))
    (:file "cruiserCanCount" :depends-on ("_package_cruiserCanCount"))
    (:file "_package_cruiserCanCount" :depends-on ("_package"))
    (:file "cruiserChargeSource" :depends-on ("_package_cruiserChargeSource"))
    (:file "_package_cruiserChargeSource" :depends-on ("_package"))
    (:file "cruiserLedOnOff" :depends-on ("_package_cruiserLedOnOff"))
    (:file "_package_cruiserLedOnOff" :depends-on ("_package"))
    (:file "cruiserLedSate" :depends-on ("_package_cruiserLedSate"))
    (:file "_package_cruiserLedSate" :depends-on ("_package"))
    (:file "cruiserLocomotionStatus" :depends-on ("_package_cruiserLocomotionStatus"))
    (:file "_package_cruiserLocomotionStatus" :depends-on ("_package"))
    (:file "cruiserNavigation" :depends-on ("_package_cruiserNavigation"))
    (:file "_package_cruiserNavigation" :depends-on ("_package"))
    (:file "cruiserNotifyPowerCmd" :depends-on ("_package_cruiserNotifyPowerCmd"))
    (:file "_package_cruiserNotifyPowerCmd" :depends-on ("_package"))
    (:file "cruiserPowerCmd" :depends-on ("_package_cruiserPowerCmd"))
    (:file "_package_cruiserPowerCmd" :depends-on ("_package"))
    (:file "cruiserPowerOffRos" :depends-on ("_package_cruiserPowerOffRos"))
    (:file "_package_cruiserPowerOffRos" :depends-on ("_package"))
    (:file "cruiserSensorAltrasonic" :depends-on ("_package_cruiserSensorAltrasonic"))
    (:file "_package_cruiserSensorAltrasonic" :depends-on ("_package"))
    (:file "cruiserSensorBoardStatus" :depends-on ("_package_cruiserSensorBoardStatus"))
    (:file "_package_cruiserSensorBoardStatus" :depends-on ("_package"))
    (:file "cruiserSensorChargeIr" :depends-on ("_package_cruiserSensorChargeIr"))
    (:file "_package_cruiserSensorChargeIr" :depends-on ("_package"))
    (:file "cruiserSensorFloorCheckIr" :depends-on ("_package_cruiserSensorFloorCheckIr"))
    (:file "_package_cruiserSensorFloorCheckIr" :depends-on ("_package"))
    (:file "cruiserSensorUpdate" :depends-on ("_package_cruiserSensorUpdate"))
    (:file "_package_cruiserSensorUpdate" :depends-on ("_package"))
    (:file "cruiserSensorWallCheckIr" :depends-on ("_package_cruiserSensorWallCheckIr"))
    (:file "_package_cruiserSensorWallCheckIr" :depends-on ("_package"))
    (:file "cruiser_common_status" :depends-on ("_package_cruiser_common_status"))
    (:file "_package_cruiser_common_status" :depends-on ("_package"))
    (:file "cruiser_diag_agg" :depends-on ("_package_cruiser_diag_agg"))
    (:file "_package_cruiser_diag_agg" :depends-on ("_package"))
    (:file "cruiser_diagnostics" :depends-on ("_package_cruiser_diagnostics"))
    (:file "_package_cruiser_diagnostics" :depends-on ("_package"))
    (:file "cruiser_joint_motion" :depends-on ("_package_cruiser_joint_motion"))
    (:file "_package_cruiser_joint_motion" :depends-on ("_package"))
    (:file "cruiser_navigation_motion" :depends-on ("_package_cruiser_navigation_motion"))
    (:file "_package_cruiser_navigation_motion" :depends-on ("_package"))
    (:file "cruiser_sdk_resp" :depends-on ("_package_cruiser_sdk_resp"))
    (:file "_package_cruiser_sdk_resp" :depends-on ("_package"))
    (:file "diagnosticCtrlCmd" :depends-on ("_package_diagnosticCtrlCmd"))
    (:file "_package_diagnosticCtrlCmd" :depends-on ("_package"))
    (:file "diagnosticReportData" :depends-on ("_package_diagnosticReportData"))
    (:file "_package_diagnosticReportData" :depends-on ("_package"))
    (:file "geomagnetism" :depends-on ("_package_geomagnetism"))
    (:file "_package_geomagnetism" :depends-on ("_package"))
    (:file "joint_abnor" :depends-on ("_package_joint_abnor"))
    (:file "_package_joint_abnor" :depends-on ("_package"))
    (:file "joint_test" :depends-on ("_package_joint_test"))
    (:file "_package_joint_test" :depends-on ("_package"))
    (:file "msg_controler_arm" :depends-on ("_package_msg_controler_arm"))
    (:file "_package_msg_controler_arm" :depends-on ("_package"))
    (:file "msg_controler_chassis" :depends-on ("_package_msg_controler_chassis"))
    (:file "_package_msg_controler_chassis" :depends-on ("_package"))
    (:file "msg_controler_header" :depends-on ("_package_msg_controler_header"))
    (:file "_package_msg_controler_header" :depends-on ("_package"))
    (:file "msg_controler_joint" :depends-on ("_package_msg_controler_joint"))
    (:file "_package_msg_controler_joint" :depends-on ("_package"))
    (:file "rgbdApproach" :depends-on ("_package_rgbdApproach"))
    (:file "_package_rgbdApproach" :depends-on ("_package"))
    (:file "ubtUwbAnchor" :depends-on ("_package_ubtUwbAnchor"))
    (:file "_package_ubtUwbAnchor" :depends-on ("_package"))
  ))