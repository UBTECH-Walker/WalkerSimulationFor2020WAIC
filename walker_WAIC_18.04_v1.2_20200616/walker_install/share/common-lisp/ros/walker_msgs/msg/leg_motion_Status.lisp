; Auto-generated. Do not edit!


(cl:in-package walker_msgs-msg)


;//! \htmlinclude leg_motion_Status.msg.html

(cl:defclass <leg_motion_Status> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass leg_motion_Status (<leg_motion_Status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <leg_motion_Status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'leg_motion_Status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name walker_msgs-msg:<leg_motion_Status> is deprecated: use walker_msgs-msg:leg_motion_Status instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <leg_motion_Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_msgs-msg:status-val is deprecated.  Use walker_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<leg_motion_Status>)))
    "Constants for message type '<leg_motion_Status>"
  '((:INIT . standInit)
    (:STANDING . standing)
    (:SCRIPTING . scripting)
    (:NAV . navigating)
    (:ARMCTRL . armCtrl)
    (:VISIONCTRL . visionCtrl)
    (:KEYBOARDCTRL . keyboardCtrl)
    (:REMOTERCTRL . remoterCtrl)
    (:BALANCE . balance)
    (:TAIJI_INIT . taijiInit)
    (:TAIJI . taiji)
    (:YOGA_INIT . yogaInit)
    (:YOGA . yoga)
    (:EMSTOP . emergencyStop))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'leg_motion_Status)))
    "Constants for message type 'leg_motion_Status"
  '((:INIT . standInit)
    (:STANDING . standing)
    (:SCRIPTING . scripting)
    (:NAV . navigating)
    (:ARMCTRL . armCtrl)
    (:VISIONCTRL . visionCtrl)
    (:KEYBOARDCTRL . keyboardCtrl)
    (:REMOTERCTRL . remoterCtrl)
    (:BALANCE . balance)
    (:TAIJI_INIT . taijiInit)
    (:TAIJI . taiji)
    (:YOGA_INIT . yogaInit)
    (:YOGA . yoga)
    (:EMSTOP . emergencyStop))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <leg_motion_Status>) ostream)
  "Serializes a message object of type '<leg_motion_Status>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <leg_motion_Status>) istream)
  "Deserializes a message object of type '<leg_motion_Status>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<leg_motion_Status>)))
  "Returns string type for a message object of type '<leg_motion_Status>"
  "walker_msgs/leg_motion_Status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'leg_motion_Status)))
  "Returns string type for a message object of type 'leg_motion_Status"
  "walker_msgs/leg_motion_Status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<leg_motion_Status>)))
  "Returns md5sum for a message object of type '<leg_motion_Status>"
  "9d1a441ce08becf86e68bfea26a6dade")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'leg_motion_Status)))
  "Returns md5sum for a message object of type 'leg_motion_Status"
  "9d1a441ce08becf86e68bfea26a6dade")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<leg_motion_Status>)))
  "Returns full string definition for message of type '<leg_motion_Status>"
  (cl:format cl:nil "# legs status defines~%string INIT=standInit~%string STANDING=standing~%string SCRIPTING=scripting~%string NAV=navigating~%string ARMCTRL=armCtrl~%string VISIONCTRL=visionCtrl~%string KEYBOARDCTRL=keyboardCtrl~%string REMOTERCTRL=remoterCtrl~%string BALANCE=balance~%string TAIJI_INIT=taijiInit~%string TAIJI=taiji~%string YOGA_INIT=yogaInit~%string YOGA=yoga~%string EMSTOP=emergencyStop~%~%##############################################~%# current leg status~%string status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'leg_motion_Status)))
  "Returns full string definition for message of type 'leg_motion_Status"
  (cl:format cl:nil "# legs status defines~%string INIT=standInit~%string STANDING=standing~%string SCRIPTING=scripting~%string NAV=navigating~%string ARMCTRL=armCtrl~%string VISIONCTRL=visionCtrl~%string KEYBOARDCTRL=keyboardCtrl~%string REMOTERCTRL=remoterCtrl~%string BALANCE=balance~%string TAIJI_INIT=taijiInit~%string TAIJI=taiji~%string YOGA_INIT=yogaInit~%string YOGA=yoga~%string EMSTOP=emergencyStop~%~%##############################################~%# current leg status~%string status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <leg_motion_Status>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <leg_motion_Status>))
  "Converts a ROS message object to a list"
  (cl:list 'leg_motion_Status
    (cl:cons ':status (status msg))
))
