; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude cruiserSensorChargeIr.msg.html

(cl:defclass <cruiserSensorChargeIr> (roslisp-msg-protocol:ros-message)
  ((data1
    :reader data1
    :initarg :data1
    :type cl:integer
    :initform 0)
   (data2
    :reader data2
    :initarg :data2
    :type cl:integer
    :initform 0)
   (data3
    :reader data3
    :initarg :data3
    :type cl:integer
    :initform 0)
   (data4
    :reader data4
    :initarg :data4
    :type cl:integer
    :initform 0)
   (data5
    :reader data5
    :initarg :data5
    :type cl:integer
    :initform 0)
   (data6
    :reader data6
    :initarg :data6
    :type cl:integer
    :initform 0)
   (data7
    :reader data7
    :initarg :data7
    :type cl:integer
    :initform 0))
)

(cl:defclass cruiserSensorChargeIr (<cruiserSensorChargeIr>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiserSensorChargeIr>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiserSensorChargeIr)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<cruiserSensorChargeIr> is deprecated: use cruiser_msgs-msg:cruiserSensorChargeIr instead.")))

(cl:ensure-generic-function 'data1-val :lambda-list '(m))
(cl:defmethod data1-val ((m <cruiserSensorChargeIr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:data1-val is deprecated.  Use cruiser_msgs-msg:data1 instead.")
  (data1 m))

(cl:ensure-generic-function 'data2-val :lambda-list '(m))
(cl:defmethod data2-val ((m <cruiserSensorChargeIr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:data2-val is deprecated.  Use cruiser_msgs-msg:data2 instead.")
  (data2 m))

(cl:ensure-generic-function 'data3-val :lambda-list '(m))
(cl:defmethod data3-val ((m <cruiserSensorChargeIr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:data3-val is deprecated.  Use cruiser_msgs-msg:data3 instead.")
  (data3 m))

(cl:ensure-generic-function 'data4-val :lambda-list '(m))
(cl:defmethod data4-val ((m <cruiserSensorChargeIr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:data4-val is deprecated.  Use cruiser_msgs-msg:data4 instead.")
  (data4 m))

(cl:ensure-generic-function 'data5-val :lambda-list '(m))
(cl:defmethod data5-val ((m <cruiserSensorChargeIr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:data5-val is deprecated.  Use cruiser_msgs-msg:data5 instead.")
  (data5 m))

(cl:ensure-generic-function 'data6-val :lambda-list '(m))
(cl:defmethod data6-val ((m <cruiserSensorChargeIr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:data6-val is deprecated.  Use cruiser_msgs-msg:data6 instead.")
  (data6 m))

(cl:ensure-generic-function 'data7-val :lambda-list '(m))
(cl:defmethod data7-val ((m <cruiserSensorChargeIr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:data7-val is deprecated.  Use cruiser_msgs-msg:data7 instead.")
  (data7 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiserSensorChargeIr>) ostream)
  "Serializes a message object of type '<cruiserSensorChargeIr>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data7)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data7)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data7)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data7)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiserSensorChargeIr>) istream)
  "Deserializes a message object of type '<cruiserSensorChargeIr>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data7)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data7)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data7)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data7)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiserSensorChargeIr>)))
  "Returns string type for a message object of type '<cruiserSensorChargeIr>"
  "cruiser_msgs/cruiserSensorChargeIr")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserSensorChargeIr)))
  "Returns string type for a message object of type 'cruiserSensorChargeIr"
  "cruiser_msgs/cruiserSensorChargeIr")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiserSensorChargeIr>)))
  "Returns md5sum for a message object of type '<cruiserSensorChargeIr>"
  "b56708e1301d3b452c9ff47195efedb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiserSensorChargeIr)))
  "Returns md5sum for a message object of type 'cruiserSensorChargeIr"
  "b56708e1301d3b452c9ff47195efedb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiserSensorChargeIr>)))
  "Returns full string definition for message of type '<cruiserSensorChargeIr>"
  (cl:format cl:nil "uint32 data1~%uint32 data2~%uint32 data3~%uint32 data4~%uint32 data5~%uint32 data6~%uint32 data7~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiserSensorChargeIr)))
  "Returns full string definition for message of type 'cruiserSensorChargeIr"
  (cl:format cl:nil "uint32 data1~%uint32 data2~%uint32 data3~%uint32 data4~%uint32 data5~%uint32 data6~%uint32 data7~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiserSensorChargeIr>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiserSensorChargeIr>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiserSensorChargeIr
    (cl:cons ':data1 (data1 msg))
    (cl:cons ':data2 (data2 msg))
    (cl:cons ':data3 (data3 msg))
    (cl:cons ':data4 (data4 msg))
    (cl:cons ':data5 (data5 msg))
    (cl:cons ':data6 (data6 msg))
    (cl:cons ':data7 (data7 msg))
))
