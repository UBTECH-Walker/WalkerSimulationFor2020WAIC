; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude cruiserSensorUpdate.msg.html

(cl:defclass <cruiserSensorUpdate> (roslisp-msg-protocol:ros-message)
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
    :initform 0))
)

(cl:defclass cruiserSensorUpdate (<cruiserSensorUpdate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiserSensorUpdate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiserSensorUpdate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<cruiserSensorUpdate> is deprecated: use cruiser_msgs-msg:cruiserSensorUpdate instead.")))

(cl:ensure-generic-function 'data1-val :lambda-list '(m))
(cl:defmethod data1-val ((m <cruiserSensorUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:data1-val is deprecated.  Use cruiser_msgs-msg:data1 instead.")
  (data1 m))

(cl:ensure-generic-function 'data2-val :lambda-list '(m))
(cl:defmethod data2-val ((m <cruiserSensorUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:data2-val is deprecated.  Use cruiser_msgs-msg:data2 instead.")
  (data2 m))

(cl:ensure-generic-function 'data3-val :lambda-list '(m))
(cl:defmethod data3-val ((m <cruiserSensorUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:data3-val is deprecated.  Use cruiser_msgs-msg:data3 instead.")
  (data3 m))

(cl:ensure-generic-function 'data4-val :lambda-list '(m))
(cl:defmethod data4-val ((m <cruiserSensorUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:data4-val is deprecated.  Use cruiser_msgs-msg:data4 instead.")
  (data4 m))

(cl:ensure-generic-function 'data5-val :lambda-list '(m))
(cl:defmethod data5-val ((m <cruiserSensorUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:data5-val is deprecated.  Use cruiser_msgs-msg:data5 instead.")
  (data5 m))

(cl:ensure-generic-function 'data6-val :lambda-list '(m))
(cl:defmethod data6-val ((m <cruiserSensorUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:data6-val is deprecated.  Use cruiser_msgs-msg:data6 instead.")
  (data6 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiserSensorUpdate>) ostream)
  "Serializes a message object of type '<cruiserSensorUpdate>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiserSensorUpdate>) istream)
  "Deserializes a message object of type '<cruiserSensorUpdate>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiserSensorUpdate>)))
  "Returns string type for a message object of type '<cruiserSensorUpdate>"
  "cruiser_msgs/cruiserSensorUpdate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserSensorUpdate)))
  "Returns string type for a message object of type 'cruiserSensorUpdate"
  "cruiser_msgs/cruiserSensorUpdate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiserSensorUpdate>)))
  "Returns md5sum for a message object of type '<cruiserSensorUpdate>"
  "ca7cc81c4478bf5d727f35a1887362ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiserSensorUpdate)))
  "Returns md5sum for a message object of type 'cruiserSensorUpdate"
  "ca7cc81c4478bf5d727f35a1887362ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiserSensorUpdate>)))
  "Returns full string definition for message of type '<cruiserSensorUpdate>"
  (cl:format cl:nil "uint32 data1~%uint32 data2~%uint32 data3~%uint32 data4~%uint32 data5~%uint32 data6~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiserSensorUpdate)))
  "Returns full string definition for message of type 'cruiserSensorUpdate"
  (cl:format cl:nil "uint32 data1~%uint32 data2~%uint32 data3~%uint32 data4~%uint32 data5~%uint32 data6~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiserSensorUpdate>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiserSensorUpdate>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiserSensorUpdate
    (cl:cons ':data1 (data1 msg))
    (cl:cons ':data2 (data2 msg))
    (cl:cons ':data3 (data3 msg))
    (cl:cons ':data4 (data4 msg))
    (cl:cons ':data5 (data5 msg))
    (cl:cons ':data6 (data6 msg))
))
