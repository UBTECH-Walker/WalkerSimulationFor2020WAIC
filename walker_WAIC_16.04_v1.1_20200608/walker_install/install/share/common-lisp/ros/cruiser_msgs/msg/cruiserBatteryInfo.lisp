; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude cruiserBatteryInfo.msg.html

(cl:defclass <cruiserBatteryInfo> (roslisp-msg-protocol:ros-message)
  ((battery_level
    :reader battery_level
    :initarg :battery_level
    :type cl:integer
    :initform 0)
   (voltage
    :reader voltage
    :initarg :voltage
    :type cl:integer
    :initform 0)
   (charge_status
    :reader charge_status
    :initarg :charge_status
    :type cl:integer
    :initform 0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:integer
    :initform 0))
)

(cl:defclass cruiserBatteryInfo (<cruiserBatteryInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiserBatteryInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiserBatteryInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<cruiserBatteryInfo> is deprecated: use cruiser_msgs-msg:cruiserBatteryInfo instead.")))

(cl:ensure-generic-function 'battery_level-val :lambda-list '(m))
(cl:defmethod battery_level-val ((m <cruiserBatteryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:battery_level-val is deprecated.  Use cruiser_msgs-msg:battery_level instead.")
  (battery_level m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <cruiserBatteryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:voltage-val is deprecated.  Use cruiser_msgs-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'charge_status-val :lambda-list '(m))
(cl:defmethod charge_status-val ((m <cruiserBatteryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:charge_status-val is deprecated.  Use cruiser_msgs-msg:charge_status instead.")
  (charge_status m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <cruiserBatteryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:temperature-val is deprecated.  Use cruiser_msgs-msg:temperature instead.")
  (temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiserBatteryInfo>) ostream)
  "Serializes a message object of type '<cruiserBatteryInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_level)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'battery_level)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'battery_level)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'battery_level)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charge_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'charge_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'charge_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'charge_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'temperature)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'temperature)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'temperature)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'temperature)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiserBatteryInfo>) istream)
  "Deserializes a message object of type '<cruiserBatteryInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_level)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'battery_level)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'battery_level)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'battery_level)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charge_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'charge_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'charge_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'charge_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'temperature)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'temperature)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'temperature)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'temperature)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiserBatteryInfo>)))
  "Returns string type for a message object of type '<cruiserBatteryInfo>"
  "cruiser_msgs/cruiserBatteryInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserBatteryInfo)))
  "Returns string type for a message object of type 'cruiserBatteryInfo"
  "cruiser_msgs/cruiserBatteryInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiserBatteryInfo>)))
  "Returns md5sum for a message object of type '<cruiserBatteryInfo>"
  "7c1736befdc88aac8e2cd081c711d9ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiserBatteryInfo)))
  "Returns md5sum for a message object of type 'cruiserBatteryInfo"
  "7c1736befdc88aac8e2cd081c711d9ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiserBatteryInfo>)))
  "Returns full string definition for message of type '<cruiserBatteryInfo>"
  (cl:format cl:nil "uint32 battery_level~%uint32 voltage~%uint32 charge_status~%uint32 temperature~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiserBatteryInfo)))
  "Returns full string definition for message of type 'cruiserBatteryInfo"
  (cl:format cl:nil "uint32 battery_level~%uint32 voltage~%uint32 charge_status~%uint32 temperature~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiserBatteryInfo>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiserBatteryInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiserBatteryInfo
    (cl:cons ':battery_level (battery_level msg))
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':charge_status (charge_status msg))
    (cl:cons ':temperature (temperature msg))
))
