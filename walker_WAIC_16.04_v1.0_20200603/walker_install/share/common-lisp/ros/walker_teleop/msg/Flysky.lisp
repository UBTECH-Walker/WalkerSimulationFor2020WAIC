; Auto-generated. Do not edit!


(cl:in-package walker_teleop-msg)


;//! \htmlinclude Flysky.msg.html

(cl:defclass <Flysky> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (bSwa
    :reader bSwa
    :initarg :bSwa
    :type cl:integer
    :initform 0)
   (bSwb
    :reader bSwb
    :initarg :bSwb
    :type cl:integer
    :initform 0)
   (bSwc
    :reader bSwc
    :initarg :bSwc
    :type cl:integer
    :initform 0)
   (bSwe
    :reader bSwe
    :initarg :bSwe
    :type cl:integer
    :initform 0)
   (tSwf
    :reader tSwf
    :initarg :tSwf
    :type cl:integer
    :initform 0)
   (bSwh
    :reader bSwh
    :initarg :bSwh
    :type cl:integer
    :initform 0)
   (dir_lr
    :reader dir_lr
    :initarg :dir_lr
    :type cl:float
    :initform 0.0)
   (dir_ud
    :reader dir_ud
    :initarg :dir_ud
    :type cl:float
    :initform 0.0)
   (throttle_lr
    :reader throttle_lr
    :initarg :throttle_lr
    :type cl:float
    :initform 0.0)
   (throttle_ud
    :reader throttle_ud
    :initarg :throttle_ud
    :type cl:float
    :initform 0.0)
   (valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil)
   (online
    :reader online
    :initarg :online
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Flysky (<Flysky>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Flysky>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Flysky)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name walker_teleop-msg:<Flysky> is deprecated: use walker_teleop-msg:Flysky instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Flysky>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_teleop-msg:header-val is deprecated.  Use walker_teleop-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'bSwa-val :lambda-list '(m))
(cl:defmethod bSwa-val ((m <Flysky>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_teleop-msg:bSwa-val is deprecated.  Use walker_teleop-msg:bSwa instead.")
  (bSwa m))

(cl:ensure-generic-function 'bSwb-val :lambda-list '(m))
(cl:defmethod bSwb-val ((m <Flysky>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_teleop-msg:bSwb-val is deprecated.  Use walker_teleop-msg:bSwb instead.")
  (bSwb m))

(cl:ensure-generic-function 'bSwc-val :lambda-list '(m))
(cl:defmethod bSwc-val ((m <Flysky>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_teleop-msg:bSwc-val is deprecated.  Use walker_teleop-msg:bSwc instead.")
  (bSwc m))

(cl:ensure-generic-function 'bSwe-val :lambda-list '(m))
(cl:defmethod bSwe-val ((m <Flysky>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_teleop-msg:bSwe-val is deprecated.  Use walker_teleop-msg:bSwe instead.")
  (bSwe m))

(cl:ensure-generic-function 'tSwf-val :lambda-list '(m))
(cl:defmethod tSwf-val ((m <Flysky>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_teleop-msg:tSwf-val is deprecated.  Use walker_teleop-msg:tSwf instead.")
  (tSwf m))

(cl:ensure-generic-function 'bSwh-val :lambda-list '(m))
(cl:defmethod bSwh-val ((m <Flysky>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_teleop-msg:bSwh-val is deprecated.  Use walker_teleop-msg:bSwh instead.")
  (bSwh m))

(cl:ensure-generic-function 'dir_lr-val :lambda-list '(m))
(cl:defmethod dir_lr-val ((m <Flysky>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_teleop-msg:dir_lr-val is deprecated.  Use walker_teleop-msg:dir_lr instead.")
  (dir_lr m))

(cl:ensure-generic-function 'dir_ud-val :lambda-list '(m))
(cl:defmethod dir_ud-val ((m <Flysky>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_teleop-msg:dir_ud-val is deprecated.  Use walker_teleop-msg:dir_ud instead.")
  (dir_ud m))

(cl:ensure-generic-function 'throttle_lr-val :lambda-list '(m))
(cl:defmethod throttle_lr-val ((m <Flysky>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_teleop-msg:throttle_lr-val is deprecated.  Use walker_teleop-msg:throttle_lr instead.")
  (throttle_lr m))

(cl:ensure-generic-function 'throttle_ud-val :lambda-list '(m))
(cl:defmethod throttle_ud-val ((m <Flysky>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_teleop-msg:throttle_ud-val is deprecated.  Use walker_teleop-msg:throttle_ud instead.")
  (throttle_ud m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <Flysky>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_teleop-msg:valid-val is deprecated.  Use walker_teleop-msg:valid instead.")
  (valid m))

(cl:ensure-generic-function 'online-val :lambda-list '(m))
(cl:defmethod online-val ((m <Flysky>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_teleop-msg:online-val is deprecated.  Use walker_teleop-msg:online instead.")
  (online m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Flysky>)))
    "Constants for message type '<Flysky>"
  '((:SW_UP . 0)
    (:SW_DOWN . 1)
    (:SW_MID . 2)
    (:DIR_MAX . 100.0)
    (:DIR_MIN . -100.0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Flysky)))
    "Constants for message type 'Flysky"
  '((:SW_UP . 0)
    (:SW_DOWN . 1)
    (:SW_MID . 2)
    (:DIR_MAX . 100.0)
    (:DIR_MIN . -100.0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Flysky>) ostream)
  "Serializes a message object of type '<Flysky>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bSwa)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bSwb)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bSwc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bSwe)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tSwf)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bSwh)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dir_lr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dir_ud))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle_lr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle_ud))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'online) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Flysky>) istream)
  "Deserializes a message object of type '<Flysky>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bSwa)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bSwb)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bSwc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bSwe)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tSwf)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bSwh)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dir_lr) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dir_ud) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle_lr) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle_ud) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'online) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Flysky>)))
  "Returns string type for a message object of type '<Flysky>"
  "walker_teleop/Flysky")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Flysky)))
  "Returns string type for a message object of type 'Flysky"
  "walker_teleop/Flysky")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Flysky>)))
  "Returns md5sum for a message object of type '<Flysky>"
  "163a5835c0ba7d7356ed3e23c0843803")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Flysky)))
  "Returns md5sum for a message object of type 'Flysky"
  "163a5835c0ba7d7356ed3e23c0843803")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Flysky>)))
  "Returns full string definition for message of type '<Flysky>"
  (cl:format cl:nil "Header header~%~%# switch values~%byte SW_UP=0~%byte SW_DOWN=1~%byte SW_MID=2~%~%# switches, prefix 'b' for bool key, prefix 't' for triple state key~%byte bSwa~%byte bSwb~%byte bSwc~%byte bSwe~%byte tSwf~%byte bSwh~%~%# directions~%float32 DIR_MAX=100.0~%float32 DIR_MIN=-100.0~%float32 dir_lr~%float32 dir_ud~%~%# throttle~%float32 throttle_lr~%float32 throttle_ud~%~%# whether all values are validate~%bool valid~%~%# whether the remoter is online or not~%bool online~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Flysky)))
  "Returns full string definition for message of type 'Flysky"
  (cl:format cl:nil "Header header~%~%# switch values~%byte SW_UP=0~%byte SW_DOWN=1~%byte SW_MID=2~%~%# switches, prefix 'b' for bool key, prefix 't' for triple state key~%byte bSwa~%byte bSwb~%byte bSwc~%byte bSwe~%byte tSwf~%byte bSwh~%~%# directions~%float32 DIR_MAX=100.0~%float32 DIR_MIN=-100.0~%float32 dir_lr~%float32 dir_ud~%~%# throttle~%float32 throttle_lr~%float32 throttle_ud~%~%# whether all values are validate~%bool valid~%~%# whether the remoter is online or not~%bool online~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Flysky>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     4
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Flysky>))
  "Converts a ROS message object to a list"
  (cl:list 'Flysky
    (cl:cons ':header (header msg))
    (cl:cons ':bSwa (bSwa msg))
    (cl:cons ':bSwb (bSwb msg))
    (cl:cons ':bSwc (bSwc msg))
    (cl:cons ':bSwe (bSwe msg))
    (cl:cons ':tSwf (tSwf msg))
    (cl:cons ':bSwh (bSwh msg))
    (cl:cons ':dir_lr (dir_lr msg))
    (cl:cons ':dir_ud (dir_ud msg))
    (cl:cons ':throttle_lr (throttle_lr msg))
    (cl:cons ':throttle_ud (throttle_ud msg))
    (cl:cons ':valid (valid msg))
    (cl:cons ':online (online msg))
))
