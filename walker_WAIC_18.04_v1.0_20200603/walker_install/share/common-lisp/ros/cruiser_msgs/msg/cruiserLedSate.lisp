; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude cruiserLedSate.msg.html

(cl:defclass <cruiserLedSate> (roslisp-msg-protocol:ros-message)
  ((light_effect
    :reader light_effect
    :initarg :light_effect
    :type cl:integer
    :initform 0)
   (brightness
    :reader brightness
    :initarg :brightness
    :type cl:integer
    :initform 0)
   (color
    :reader color
    :initarg :color
    :type cl:integer
    :initform 0)
   (max_times
    :reader max_times
    :initarg :max_times
    :type cl:integer
    :initform 0))
)

(cl:defclass cruiserLedSate (<cruiserLedSate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiserLedSate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiserLedSate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<cruiserLedSate> is deprecated: use cruiser_msgs-msg:cruiserLedSate instead.")))

(cl:ensure-generic-function 'light_effect-val :lambda-list '(m))
(cl:defmethod light_effect-val ((m <cruiserLedSate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:light_effect-val is deprecated.  Use cruiser_msgs-msg:light_effect instead.")
  (light_effect m))

(cl:ensure-generic-function 'brightness-val :lambda-list '(m))
(cl:defmethod brightness-val ((m <cruiserLedSate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:brightness-val is deprecated.  Use cruiser_msgs-msg:brightness instead.")
  (brightness m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <cruiserLedSate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:color-val is deprecated.  Use cruiser_msgs-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'max_times-val :lambda-list '(m))
(cl:defmethod max_times-val ((m <cruiserLedSate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:max_times-val is deprecated.  Use cruiser_msgs-msg:max_times instead.")
  (max_times m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiserLedSate>) ostream)
  "Serializes a message object of type '<cruiserLedSate>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light_effect)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'light_effect)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'light_effect)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'light_effect)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brightness)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'brightness)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'brightness)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'brightness)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'max_times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'max_times)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiserLedSate>) istream)
  "Deserializes a message object of type '<cruiserLedSate>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light_effect)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'light_effect)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'light_effect)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'light_effect)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brightness)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'brightness)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'brightness)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'brightness)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_times)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_times)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'max_times)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'max_times)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiserLedSate>)))
  "Returns string type for a message object of type '<cruiserLedSate>"
  "cruiser_msgs/cruiserLedSate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserLedSate)))
  "Returns string type for a message object of type 'cruiserLedSate"
  "cruiser_msgs/cruiserLedSate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiserLedSate>)))
  "Returns md5sum for a message object of type '<cruiserLedSate>"
  "0a1a1ac30f2125d6b4db07cbb0eb7d41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiserLedSate)))
  "Returns md5sum for a message object of type 'cruiserLedSate"
  "0a1a1ac30f2125d6b4db07cbb0eb7d41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiserLedSate>)))
  "Returns full string definition for message of type '<cruiserLedSate>"
  (cl:format cl:nil "uint32 light_effect~%uint32 brightness~%uint32 color~%uint32 max_times~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiserLedSate)))
  "Returns full string definition for message of type 'cruiserLedSate"
  (cl:format cl:nil "uint32 light_effect~%uint32 brightness~%uint32 color~%uint32 max_times~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiserLedSate>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiserLedSate>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiserLedSate
    (cl:cons ':light_effect (light_effect msg))
    (cl:cons ':brightness (brightness msg))
    (cl:cons ':color (color msg))
    (cl:cons ':max_times (max_times msg))
))
