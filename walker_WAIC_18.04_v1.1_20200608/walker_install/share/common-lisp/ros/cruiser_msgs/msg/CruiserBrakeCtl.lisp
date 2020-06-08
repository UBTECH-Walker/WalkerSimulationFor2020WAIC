; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude CruiserBrakeCtl.msg.html

(cl:defclass <CruiserBrakeCtl> (roslisp-msg-protocol:ros-message)
  ((brake
    :reader brake
    :initarg :brake
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CruiserBrakeCtl (<CruiserBrakeCtl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CruiserBrakeCtl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CruiserBrakeCtl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<CruiserBrakeCtl> is deprecated: use cruiser_msgs-msg:CruiserBrakeCtl instead.")))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <CruiserBrakeCtl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:brake-val is deprecated.  Use cruiser_msgs-msg:brake instead.")
  (brake m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CruiserBrakeCtl>) ostream)
  "Serializes a message object of type '<CruiserBrakeCtl>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brake) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CruiserBrakeCtl>) istream)
  "Deserializes a message object of type '<CruiserBrakeCtl>"
    (cl:setf (cl:slot-value msg 'brake) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CruiserBrakeCtl>)))
  "Returns string type for a message object of type '<CruiserBrakeCtl>"
  "cruiser_msgs/CruiserBrakeCtl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CruiserBrakeCtl)))
  "Returns string type for a message object of type 'CruiserBrakeCtl"
  "cruiser_msgs/CruiserBrakeCtl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CruiserBrakeCtl>)))
  "Returns md5sum for a message object of type '<CruiserBrakeCtl>"
  "691501d2b5eb4dc01a97397d7baf5fba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CruiserBrakeCtl)))
  "Returns md5sum for a message object of type 'CruiserBrakeCtl"
  "691501d2b5eb4dc01a97397d7baf5fba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CruiserBrakeCtl>)))
  "Returns full string definition for message of type '<CruiserBrakeCtl>"
  (cl:format cl:nil "# cruiser brake control,topic name \"Cruiser_brake\"~%# brake=1,brake cruiser~%# brake=0,reset to normal~%bool brake~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CruiserBrakeCtl)))
  "Returns full string definition for message of type 'CruiserBrakeCtl"
  (cl:format cl:nil "# cruiser brake control,topic name \"Cruiser_brake\"~%# brake=1,brake cruiser~%# brake=0,reset to normal~%bool brake~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CruiserBrakeCtl>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CruiserBrakeCtl>))
  "Converts a ROS message object to a list"
  (cl:list 'CruiserBrakeCtl
    (cl:cons ':brake (brake msg))
))
