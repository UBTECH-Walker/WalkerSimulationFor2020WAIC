; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude cruiserSensorWallCheckIr.msg.html

(cl:defclass <cruiserSensorWallCheckIr> (roslisp-msg-protocol:ros-message)
  ((dist1
    :reader dist1
    :initarg :dist1
    :type cl:integer
    :initform 0)
   (dist2
    :reader dist2
    :initarg :dist2
    :type cl:integer
    :initform 0)
   (dist3
    :reader dist3
    :initarg :dist3
    :type cl:integer
    :initform 0)
   (dist4
    :reader dist4
    :initarg :dist4
    :type cl:integer
    :initform 0)
   (dist5
    :reader dist5
    :initarg :dist5
    :type cl:integer
    :initform 0)
   (dist6
    :reader dist6
    :initarg :dist6
    :type cl:integer
    :initform 0))
)

(cl:defclass cruiserSensorWallCheckIr (<cruiserSensorWallCheckIr>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiserSensorWallCheckIr>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiserSensorWallCheckIr)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<cruiserSensorWallCheckIr> is deprecated: use cruiser_msgs-msg:cruiserSensorWallCheckIr instead.")))

(cl:ensure-generic-function 'dist1-val :lambda-list '(m))
(cl:defmethod dist1-val ((m <cruiserSensorWallCheckIr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:dist1-val is deprecated.  Use cruiser_msgs-msg:dist1 instead.")
  (dist1 m))

(cl:ensure-generic-function 'dist2-val :lambda-list '(m))
(cl:defmethod dist2-val ((m <cruiserSensorWallCheckIr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:dist2-val is deprecated.  Use cruiser_msgs-msg:dist2 instead.")
  (dist2 m))

(cl:ensure-generic-function 'dist3-val :lambda-list '(m))
(cl:defmethod dist3-val ((m <cruiserSensorWallCheckIr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:dist3-val is deprecated.  Use cruiser_msgs-msg:dist3 instead.")
  (dist3 m))

(cl:ensure-generic-function 'dist4-val :lambda-list '(m))
(cl:defmethod dist4-val ((m <cruiserSensorWallCheckIr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:dist4-val is deprecated.  Use cruiser_msgs-msg:dist4 instead.")
  (dist4 m))

(cl:ensure-generic-function 'dist5-val :lambda-list '(m))
(cl:defmethod dist5-val ((m <cruiserSensorWallCheckIr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:dist5-val is deprecated.  Use cruiser_msgs-msg:dist5 instead.")
  (dist5 m))

(cl:ensure-generic-function 'dist6-val :lambda-list '(m))
(cl:defmethod dist6-val ((m <cruiserSensorWallCheckIr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:dist6-val is deprecated.  Use cruiser_msgs-msg:dist6 instead.")
  (dist6 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiserSensorWallCheckIr>) ostream)
  "Serializes a message object of type '<cruiserSensorWallCheckIr>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dist1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dist1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dist1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dist1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dist2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dist2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dist2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dist2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dist3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dist3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dist3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dist3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dist4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dist4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dist4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dist4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dist5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dist5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dist5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dist5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dist6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dist6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dist6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dist6)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiserSensorWallCheckIr>) istream)
  "Deserializes a message object of type '<cruiserSensorWallCheckIr>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dist1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dist1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dist1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dist1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dist2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dist2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dist2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dist2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dist3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dist3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dist3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dist3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dist4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dist4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dist4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dist4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dist5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dist5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dist5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dist5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dist6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dist6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dist6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dist6)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiserSensorWallCheckIr>)))
  "Returns string type for a message object of type '<cruiserSensorWallCheckIr>"
  "cruiser_msgs/cruiserSensorWallCheckIr")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserSensorWallCheckIr)))
  "Returns string type for a message object of type 'cruiserSensorWallCheckIr"
  "cruiser_msgs/cruiserSensorWallCheckIr")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiserSensorWallCheckIr>)))
  "Returns md5sum for a message object of type '<cruiserSensorWallCheckIr>"
  "2899b05469a7aab9f6a6ab873a44b165")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiserSensorWallCheckIr)))
  "Returns md5sum for a message object of type 'cruiserSensorWallCheckIr"
  "2899b05469a7aab9f6a6ab873a44b165")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiserSensorWallCheckIr>)))
  "Returns full string definition for message of type '<cruiserSensorWallCheckIr>"
  (cl:format cl:nil "uint32 dist1~%uint32 dist2~%uint32 dist3~%uint32 dist4~%uint32 dist5~%uint32 dist6~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiserSensorWallCheckIr)))
  "Returns full string definition for message of type 'cruiserSensorWallCheckIr"
  (cl:format cl:nil "uint32 dist1~%uint32 dist2~%uint32 dist3~%uint32 dist4~%uint32 dist5~%uint32 dist6~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiserSensorWallCheckIr>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiserSensorWallCheckIr>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiserSensorWallCheckIr
    (cl:cons ':dist1 (dist1 msg))
    (cl:cons ':dist2 (dist2 msg))
    (cl:cons ':dist3 (dist3 msg))
    (cl:cons ':dist4 (dist4 msg))
    (cl:cons ':dist5 (dist5 msg))
    (cl:cons ':dist6 (dist6 msg))
))
