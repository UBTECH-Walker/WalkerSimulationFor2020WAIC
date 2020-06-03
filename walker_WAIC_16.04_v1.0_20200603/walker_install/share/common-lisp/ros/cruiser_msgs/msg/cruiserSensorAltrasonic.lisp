; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude cruiserSensorAltrasonic.msg.html

(cl:defclass <cruiserSensorAltrasonic> (roslisp-msg-protocol:ros-message)
  ((distance1
    :reader distance1
    :initarg :distance1
    :type cl:integer
    :initform 0)
   (distance2
    :reader distance2
    :initarg :distance2
    :type cl:integer
    :initform 0)
   (distance3
    :reader distance3
    :initarg :distance3
    :type cl:integer
    :initform 0)
   (distance4
    :reader distance4
    :initarg :distance4
    :type cl:integer
    :initform 0)
   (distance5
    :reader distance5
    :initarg :distance5
    :type cl:integer
    :initform 0)
   (distance6
    :reader distance6
    :initarg :distance6
    :type cl:integer
    :initform 0)
   (waist_distance1
    :reader waist_distance1
    :initarg :waist_distance1
    :type cl:integer
    :initform 0)
   (waist_distance2
    :reader waist_distance2
    :initarg :waist_distance2
    :type cl:integer
    :initform 0)
   (waist_distance3
    :reader waist_distance3
    :initarg :waist_distance3
    :type cl:integer
    :initform 0)
   (waist_distance4
    :reader waist_distance4
    :initarg :waist_distance4
    :type cl:integer
    :initform 0)
   (waist_distance5
    :reader waist_distance5
    :initarg :waist_distance5
    :type cl:integer
    :initform 0)
   (waist_distance6
    :reader waist_distance6
    :initarg :waist_distance6
    :type cl:integer
    :initform 0)
   (waist_microwave
    :reader waist_microwave
    :initarg :waist_microwave
    :type cl:integer
    :initform 0))
)

(cl:defclass cruiserSensorAltrasonic (<cruiserSensorAltrasonic>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiserSensorAltrasonic>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiserSensorAltrasonic)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<cruiserSensorAltrasonic> is deprecated: use cruiser_msgs-msg:cruiserSensorAltrasonic instead.")))

(cl:ensure-generic-function 'distance1-val :lambda-list '(m))
(cl:defmethod distance1-val ((m <cruiserSensorAltrasonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:distance1-val is deprecated.  Use cruiser_msgs-msg:distance1 instead.")
  (distance1 m))

(cl:ensure-generic-function 'distance2-val :lambda-list '(m))
(cl:defmethod distance2-val ((m <cruiserSensorAltrasonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:distance2-val is deprecated.  Use cruiser_msgs-msg:distance2 instead.")
  (distance2 m))

(cl:ensure-generic-function 'distance3-val :lambda-list '(m))
(cl:defmethod distance3-val ((m <cruiserSensorAltrasonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:distance3-val is deprecated.  Use cruiser_msgs-msg:distance3 instead.")
  (distance3 m))

(cl:ensure-generic-function 'distance4-val :lambda-list '(m))
(cl:defmethod distance4-val ((m <cruiserSensorAltrasonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:distance4-val is deprecated.  Use cruiser_msgs-msg:distance4 instead.")
  (distance4 m))

(cl:ensure-generic-function 'distance5-val :lambda-list '(m))
(cl:defmethod distance5-val ((m <cruiserSensorAltrasonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:distance5-val is deprecated.  Use cruiser_msgs-msg:distance5 instead.")
  (distance5 m))

(cl:ensure-generic-function 'distance6-val :lambda-list '(m))
(cl:defmethod distance6-val ((m <cruiserSensorAltrasonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:distance6-val is deprecated.  Use cruiser_msgs-msg:distance6 instead.")
  (distance6 m))

(cl:ensure-generic-function 'waist_distance1-val :lambda-list '(m))
(cl:defmethod waist_distance1-val ((m <cruiserSensorAltrasonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:waist_distance1-val is deprecated.  Use cruiser_msgs-msg:waist_distance1 instead.")
  (waist_distance1 m))

(cl:ensure-generic-function 'waist_distance2-val :lambda-list '(m))
(cl:defmethod waist_distance2-val ((m <cruiserSensorAltrasonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:waist_distance2-val is deprecated.  Use cruiser_msgs-msg:waist_distance2 instead.")
  (waist_distance2 m))

(cl:ensure-generic-function 'waist_distance3-val :lambda-list '(m))
(cl:defmethod waist_distance3-val ((m <cruiserSensorAltrasonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:waist_distance3-val is deprecated.  Use cruiser_msgs-msg:waist_distance3 instead.")
  (waist_distance3 m))

(cl:ensure-generic-function 'waist_distance4-val :lambda-list '(m))
(cl:defmethod waist_distance4-val ((m <cruiserSensorAltrasonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:waist_distance4-val is deprecated.  Use cruiser_msgs-msg:waist_distance4 instead.")
  (waist_distance4 m))

(cl:ensure-generic-function 'waist_distance5-val :lambda-list '(m))
(cl:defmethod waist_distance5-val ((m <cruiserSensorAltrasonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:waist_distance5-val is deprecated.  Use cruiser_msgs-msg:waist_distance5 instead.")
  (waist_distance5 m))

(cl:ensure-generic-function 'waist_distance6-val :lambda-list '(m))
(cl:defmethod waist_distance6-val ((m <cruiserSensorAltrasonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:waist_distance6-val is deprecated.  Use cruiser_msgs-msg:waist_distance6 instead.")
  (waist_distance6 m))

(cl:ensure-generic-function 'waist_microwave-val :lambda-list '(m))
(cl:defmethod waist_microwave-val ((m <cruiserSensorAltrasonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:waist_microwave-val is deprecated.  Use cruiser_msgs-msg:waist_microwave instead.")
  (waist_microwave m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiserSensorAltrasonic>) ostream)
  "Serializes a message object of type '<cruiserSensorAltrasonic>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'distance1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'distance1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'distance2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'distance2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'distance3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'distance3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'distance4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'distance4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'distance5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'distance5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'distance6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'distance6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waist_distance1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'waist_distance1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'waist_distance1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'waist_distance1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waist_distance2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'waist_distance2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'waist_distance2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'waist_distance2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waist_distance3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'waist_distance3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'waist_distance3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'waist_distance3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waist_distance4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'waist_distance4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'waist_distance4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'waist_distance4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waist_distance5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'waist_distance5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'waist_distance5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'waist_distance5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waist_distance6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'waist_distance6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'waist_distance6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'waist_distance6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waist_microwave)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'waist_microwave)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'waist_microwave)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'waist_microwave)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiserSensorAltrasonic>) istream)
  "Deserializes a message object of type '<cruiserSensorAltrasonic>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'distance1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'distance1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'distance2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'distance2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'distance3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'distance3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'distance4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'distance4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'distance5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'distance5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'distance6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'distance6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waist_distance1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'waist_distance1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'waist_distance1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'waist_distance1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waist_distance2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'waist_distance2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'waist_distance2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'waist_distance2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waist_distance3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'waist_distance3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'waist_distance3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'waist_distance3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waist_distance4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'waist_distance4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'waist_distance4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'waist_distance4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waist_distance5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'waist_distance5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'waist_distance5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'waist_distance5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waist_distance6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'waist_distance6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'waist_distance6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'waist_distance6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waist_microwave)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'waist_microwave)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'waist_microwave)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'waist_microwave)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiserSensorAltrasonic>)))
  "Returns string type for a message object of type '<cruiserSensorAltrasonic>"
  "cruiser_msgs/cruiserSensorAltrasonic")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserSensorAltrasonic)))
  "Returns string type for a message object of type 'cruiserSensorAltrasonic"
  "cruiser_msgs/cruiserSensorAltrasonic")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiserSensorAltrasonic>)))
  "Returns md5sum for a message object of type '<cruiserSensorAltrasonic>"
  "52802149de24fd2581b097f77f88a09b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiserSensorAltrasonic)))
  "Returns md5sum for a message object of type 'cruiserSensorAltrasonic"
  "52802149de24fd2581b097f77f88a09b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiserSensorAltrasonic>)))
  "Returns full string definition for message of type '<cruiserSensorAltrasonic>"
  (cl:format cl:nil "uint32 distance1~%uint32 distance2~%uint32 distance3~%uint32 distance4~%uint32 distance5~%uint32 distance6~%~%uint32 waist_distance1~%uint32 waist_distance2~%uint32 waist_distance3~%uint32 waist_distance4~%uint32 waist_distance5~%uint32 waist_distance6~%~%uint32 waist_microwave~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiserSensorAltrasonic)))
  "Returns full string definition for message of type 'cruiserSensorAltrasonic"
  (cl:format cl:nil "uint32 distance1~%uint32 distance2~%uint32 distance3~%uint32 distance4~%uint32 distance5~%uint32 distance6~%~%uint32 waist_distance1~%uint32 waist_distance2~%uint32 waist_distance3~%uint32 waist_distance4~%uint32 waist_distance5~%uint32 waist_distance6~%~%uint32 waist_microwave~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiserSensorAltrasonic>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiserSensorAltrasonic>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiserSensorAltrasonic
    (cl:cons ':distance1 (distance1 msg))
    (cl:cons ':distance2 (distance2 msg))
    (cl:cons ':distance3 (distance3 msg))
    (cl:cons ':distance4 (distance4 msg))
    (cl:cons ':distance5 (distance5 msg))
    (cl:cons ':distance6 (distance6 msg))
    (cl:cons ':waist_distance1 (waist_distance1 msg))
    (cl:cons ':waist_distance2 (waist_distance2 msg))
    (cl:cons ':waist_distance3 (waist_distance3 msg))
    (cl:cons ':waist_distance4 (waist_distance4 msg))
    (cl:cons ':waist_distance5 (waist_distance5 msg))
    (cl:cons ':waist_distance6 (waist_distance6 msg))
    (cl:cons ':waist_microwave (waist_microwave msg))
))
