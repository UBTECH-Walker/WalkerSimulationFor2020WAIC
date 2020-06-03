; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude cruiserSensorBoardStatus.msg.html

(cl:defclass <cruiserSensorBoardStatus> (roslisp-msg-protocol:ros-message)
  ((sensor_board_abnormal
    :reader sensor_board_abnormal
    :initarg :sensor_board_abnormal
    :type cl:integer
    :initform 0))
)

(cl:defclass cruiserSensorBoardStatus (<cruiserSensorBoardStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiserSensorBoardStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiserSensorBoardStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<cruiserSensorBoardStatus> is deprecated: use cruiser_msgs-msg:cruiserSensorBoardStatus instead.")))

(cl:ensure-generic-function 'sensor_board_abnormal-val :lambda-list '(m))
(cl:defmethod sensor_board_abnormal-val ((m <cruiserSensorBoardStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:sensor_board_abnormal-val is deprecated.  Use cruiser_msgs-msg:sensor_board_abnormal instead.")
  (sensor_board_abnormal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiserSensorBoardStatus>) ostream)
  "Serializes a message object of type '<cruiserSensorBoardStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_board_abnormal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensor_board_abnormal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensor_board_abnormal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensor_board_abnormal)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiserSensorBoardStatus>) istream)
  "Deserializes a message object of type '<cruiserSensorBoardStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_board_abnormal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensor_board_abnormal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensor_board_abnormal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensor_board_abnormal)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiserSensorBoardStatus>)))
  "Returns string type for a message object of type '<cruiserSensorBoardStatus>"
  "cruiser_msgs/cruiserSensorBoardStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserSensorBoardStatus)))
  "Returns string type for a message object of type 'cruiserSensorBoardStatus"
  "cruiser_msgs/cruiserSensorBoardStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiserSensorBoardStatus>)))
  "Returns md5sum for a message object of type '<cruiserSensorBoardStatus>"
  "7c0773c157c86740d50fb4f7ef626929")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiserSensorBoardStatus)))
  "Returns md5sum for a message object of type 'cruiserSensorBoardStatus"
  "7c0773c157c86740d50fb4f7ef626929")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiserSensorBoardStatus>)))
  "Returns full string definition for message of type '<cruiserSensorBoardStatus>"
  (cl:format cl:nil "uint32 sensor_board_abnormal~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiserSensorBoardStatus)))
  "Returns full string definition for message of type 'cruiserSensorBoardStatus"
  (cl:format cl:nil "uint32 sensor_board_abnormal~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiserSensorBoardStatus>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiserSensorBoardStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiserSensorBoardStatus
    (cl:cons ':sensor_board_abnormal (sensor_board_abnormal msg))
))
