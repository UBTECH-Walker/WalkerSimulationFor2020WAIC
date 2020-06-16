; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude cruiserSensorFloorCheckIr.msg.html

(cl:defclass <cruiserSensorFloorCheckIr> (roslisp-msg-protocol:ros-message)
  ((cliff1
    :reader cliff1
    :initarg :cliff1
    :type cl:integer
    :initform 0)
   (cliff2
    :reader cliff2
    :initarg :cliff2
    :type cl:integer
    :initform 0)
   (cliff3
    :reader cliff3
    :initarg :cliff3
    :type cl:integer
    :initform 0)
   (cliff4
    :reader cliff4
    :initarg :cliff4
    :type cl:integer
    :initform 0)
   (cliff5
    :reader cliff5
    :initarg :cliff5
    :type cl:integer
    :initform 0)
   (cliff6
    :reader cliff6
    :initarg :cliff6
    :type cl:integer
    :initform 0))
)

(cl:defclass cruiserSensorFloorCheckIr (<cruiserSensorFloorCheckIr>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiserSensorFloorCheckIr>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiserSensorFloorCheckIr)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<cruiserSensorFloorCheckIr> is deprecated: use cruiser_msgs-msg:cruiserSensorFloorCheckIr instead.")))

(cl:ensure-generic-function 'cliff1-val :lambda-list '(m))
(cl:defmethod cliff1-val ((m <cruiserSensorFloorCheckIr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:cliff1-val is deprecated.  Use cruiser_msgs-msg:cliff1 instead.")
  (cliff1 m))

(cl:ensure-generic-function 'cliff2-val :lambda-list '(m))
(cl:defmethod cliff2-val ((m <cruiserSensorFloorCheckIr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:cliff2-val is deprecated.  Use cruiser_msgs-msg:cliff2 instead.")
  (cliff2 m))

(cl:ensure-generic-function 'cliff3-val :lambda-list '(m))
(cl:defmethod cliff3-val ((m <cruiserSensorFloorCheckIr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:cliff3-val is deprecated.  Use cruiser_msgs-msg:cliff3 instead.")
  (cliff3 m))

(cl:ensure-generic-function 'cliff4-val :lambda-list '(m))
(cl:defmethod cliff4-val ((m <cruiserSensorFloorCheckIr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:cliff4-val is deprecated.  Use cruiser_msgs-msg:cliff4 instead.")
  (cliff4 m))

(cl:ensure-generic-function 'cliff5-val :lambda-list '(m))
(cl:defmethod cliff5-val ((m <cruiserSensorFloorCheckIr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:cliff5-val is deprecated.  Use cruiser_msgs-msg:cliff5 instead.")
  (cliff5 m))

(cl:ensure-generic-function 'cliff6-val :lambda-list '(m))
(cl:defmethod cliff6-val ((m <cruiserSensorFloorCheckIr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:cliff6-val is deprecated.  Use cruiser_msgs-msg:cliff6 instead.")
  (cliff6 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiserSensorFloorCheckIr>) ostream)
  "Serializes a message object of type '<cruiserSensorFloorCheckIr>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cliff1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cliff1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cliff1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cliff1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cliff2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cliff2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cliff2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cliff2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cliff3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cliff3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cliff3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cliff3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cliff4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cliff4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cliff4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cliff4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cliff5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cliff5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cliff5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cliff5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cliff6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cliff6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cliff6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cliff6)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiserSensorFloorCheckIr>) istream)
  "Deserializes a message object of type '<cruiserSensorFloorCheckIr>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cliff1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cliff1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cliff1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cliff1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cliff2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cliff2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cliff2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cliff2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cliff3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cliff3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cliff3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cliff3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cliff4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cliff4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cliff4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cliff4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cliff5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cliff5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cliff5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cliff5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cliff6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cliff6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cliff6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cliff6)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiserSensorFloorCheckIr>)))
  "Returns string type for a message object of type '<cruiserSensorFloorCheckIr>"
  "cruiser_msgs/cruiserSensorFloorCheckIr")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserSensorFloorCheckIr)))
  "Returns string type for a message object of type 'cruiserSensorFloorCheckIr"
  "cruiser_msgs/cruiserSensorFloorCheckIr")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiserSensorFloorCheckIr>)))
  "Returns md5sum for a message object of type '<cruiserSensorFloorCheckIr>"
  "c371455cf05a44e93c97aa5157fb244c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiserSensorFloorCheckIr)))
  "Returns md5sum for a message object of type 'cruiserSensorFloorCheckIr"
  "c371455cf05a44e93c97aa5157fb244c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiserSensorFloorCheckIr>)))
  "Returns full string definition for message of type '<cruiserSensorFloorCheckIr>"
  (cl:format cl:nil "uint32 cliff1~%uint32 cliff2~%uint32 cliff3~%uint32 cliff4~%uint32 cliff5~%uint32 cliff6~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiserSensorFloorCheckIr)))
  "Returns full string definition for message of type 'cruiserSensorFloorCheckIr"
  (cl:format cl:nil "uint32 cliff1~%uint32 cliff2~%uint32 cliff3~%uint32 cliff4~%uint32 cliff5~%uint32 cliff6~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiserSensorFloorCheckIr>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiserSensorFloorCheckIr>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiserSensorFloorCheckIr
    (cl:cons ':cliff1 (cliff1 msg))
    (cl:cons ':cliff2 (cliff2 msg))
    (cl:cons ':cliff3 (cliff3 msg))
    (cl:cons ':cliff4 (cliff4 msg))
    (cl:cons ':cliff5 (cliff5 msg))
    (cl:cons ':cliff6 (cliff6 msg))
))
