; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-srv)


;//! \htmlinclude PowerSetting-request.msg.html

(cl:defclass <PowerSetting-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:fixnum
    :initform 0)
   (year
    :reader year
    :initarg :year
    :type cl:fixnum
    :initform 0)
   (month
    :reader month
    :initarg :month
    :type cl:fixnum
    :initform 0)
   (day
    :reader day
    :initarg :day
    :type cl:fixnum
    :initform 0)
   (hour
    :reader hour
    :initarg :hour
    :type cl:fixnum
    :initform 0)
   (min
    :reader min
    :initarg :min
    :type cl:fixnum
    :initform 0)
   (sec
    :reader sec
    :initarg :sec
    :type cl:fixnum
    :initform 0)
   (timerEnable
    :reader timerEnable
    :initarg :timerEnable
    :type cl:boolean
    :initform cl:nil)
   (fullPowerOn
    :reader fullPowerOn
    :initarg :fullPowerOn
    :type cl:boolean
    :initform cl:nil)
   (flag
    :reader flag
    :initarg :flag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PowerSetting-request (<PowerSetting-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerSetting-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerSetting-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<PowerSetting-request> is deprecated: use cruiser_msgs-srv:PowerSetting-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <PowerSetting-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:cmd-val is deprecated.  Use cruiser_msgs-srv:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'year-val :lambda-list '(m))
(cl:defmethod year-val ((m <PowerSetting-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:year-val is deprecated.  Use cruiser_msgs-srv:year instead.")
  (year m))

(cl:ensure-generic-function 'month-val :lambda-list '(m))
(cl:defmethod month-val ((m <PowerSetting-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:month-val is deprecated.  Use cruiser_msgs-srv:month instead.")
  (month m))

(cl:ensure-generic-function 'day-val :lambda-list '(m))
(cl:defmethod day-val ((m <PowerSetting-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:day-val is deprecated.  Use cruiser_msgs-srv:day instead.")
  (day m))

(cl:ensure-generic-function 'hour-val :lambda-list '(m))
(cl:defmethod hour-val ((m <PowerSetting-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:hour-val is deprecated.  Use cruiser_msgs-srv:hour instead.")
  (hour m))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <PowerSetting-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:min-val is deprecated.  Use cruiser_msgs-srv:min instead.")
  (min m))

(cl:ensure-generic-function 'sec-val :lambda-list '(m))
(cl:defmethod sec-val ((m <PowerSetting-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:sec-val is deprecated.  Use cruiser_msgs-srv:sec instead.")
  (sec m))

(cl:ensure-generic-function 'timerEnable-val :lambda-list '(m))
(cl:defmethod timerEnable-val ((m <PowerSetting-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:timerEnable-val is deprecated.  Use cruiser_msgs-srv:timerEnable instead.")
  (timerEnable m))

(cl:ensure-generic-function 'fullPowerOn-val :lambda-list '(m))
(cl:defmethod fullPowerOn-val ((m <PowerSetting-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:fullPowerOn-val is deprecated.  Use cruiser_msgs-srv:fullPowerOn instead.")
  (fullPowerOn m))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <PowerSetting-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:flag-val is deprecated.  Use cruiser_msgs-srv:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerSetting-request>) ostream)
  "Serializes a message object of type '<PowerSetting-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'month)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'day)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hour)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'timerEnable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fullPowerOn) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerSetting-request>) istream)
  "Deserializes a message object of type '<PowerSetting-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'month)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'day)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hour)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sec)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timerEnable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fullPowerOn) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerSetting-request>)))
  "Returns string type for a service object of type '<PowerSetting-request>"
  "cruiser_msgs/PowerSettingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerSetting-request)))
  "Returns string type for a service object of type 'PowerSetting-request"
  "cruiser_msgs/PowerSettingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerSetting-request>)))
  "Returns md5sum for a message object of type '<PowerSetting-request>"
  "273350ed07798e9062484e197194752f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerSetting-request)))
  "Returns md5sum for a message object of type 'PowerSetting-request"
  "273350ed07798e9062484e197194752f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerSetting-request>)))
  "Returns full string definition for message of type '<PowerSetting-request>"
  (cl:format cl:nil "uint8 cmd~%uint16 year~%uint8 month~%uint8 day~%uint8 hour~%uint8 min~%uint8 sec~%bool timerEnable~%bool fullPowerOn~%uint8 flag~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerSetting-request)))
  "Returns full string definition for message of type 'PowerSetting-request"
  (cl:format cl:nil "uint8 cmd~%uint16 year~%uint8 month~%uint8 day~%uint8 hour~%uint8 min~%uint8 sec~%bool timerEnable~%bool fullPowerOn~%uint8 flag~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerSetting-request>))
  (cl:+ 0
     1
     2
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerSetting-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerSetting-request
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':year (year msg))
    (cl:cons ':month (month msg))
    (cl:cons ':day (day msg))
    (cl:cons ':hour (hour msg))
    (cl:cons ':min (min msg))
    (cl:cons ':sec (sec msg))
    (cl:cons ':timerEnable (timerEnable msg))
    (cl:cons ':fullPowerOn (fullPowerOn msg))
    (cl:cons ':flag (flag msg))
))
;//! \htmlinclude PowerSetting-response.msg.html

(cl:defclass <PowerSetting-response> (roslisp-msg-protocol:ros-message)
  ((year
    :reader year
    :initarg :year
    :type cl:fixnum
    :initform 0)
   (month
    :reader month
    :initarg :month
    :type cl:fixnum
    :initform 0)
   (day
    :reader day
    :initarg :day
    :type cl:fixnum
    :initform 0)
   (hour
    :reader hour
    :initarg :hour
    :type cl:fixnum
    :initform 0)
   (min
    :reader min
    :initarg :min
    :type cl:fixnum
    :initform 0)
   (sec
    :reader sec
    :initarg :sec
    :type cl:fixnum
    :initform 0)
   (manual
    :reader manual
    :initarg :manual
    :type cl:boolean
    :initform cl:nil)
   (adapter
    :reader adapter
    :initarg :adapter
    :type cl:boolean
    :initform cl:nil)
   (station
    :reader station
    :initarg :station
    :type cl:boolean
    :initform cl:nil)
   (timer
    :reader timer
    :initarg :timer
    :type cl:boolean
    :initform cl:nil)
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PowerSetting-response (<PowerSetting-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerSetting-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerSetting-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<PowerSetting-response> is deprecated: use cruiser_msgs-srv:PowerSetting-response instead.")))

(cl:ensure-generic-function 'year-val :lambda-list '(m))
(cl:defmethod year-val ((m <PowerSetting-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:year-val is deprecated.  Use cruiser_msgs-srv:year instead.")
  (year m))

(cl:ensure-generic-function 'month-val :lambda-list '(m))
(cl:defmethod month-val ((m <PowerSetting-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:month-val is deprecated.  Use cruiser_msgs-srv:month instead.")
  (month m))

(cl:ensure-generic-function 'day-val :lambda-list '(m))
(cl:defmethod day-val ((m <PowerSetting-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:day-val is deprecated.  Use cruiser_msgs-srv:day instead.")
  (day m))

(cl:ensure-generic-function 'hour-val :lambda-list '(m))
(cl:defmethod hour-val ((m <PowerSetting-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:hour-val is deprecated.  Use cruiser_msgs-srv:hour instead.")
  (hour m))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <PowerSetting-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:min-val is deprecated.  Use cruiser_msgs-srv:min instead.")
  (min m))

(cl:ensure-generic-function 'sec-val :lambda-list '(m))
(cl:defmethod sec-val ((m <PowerSetting-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:sec-val is deprecated.  Use cruiser_msgs-srv:sec instead.")
  (sec m))

(cl:ensure-generic-function 'manual-val :lambda-list '(m))
(cl:defmethod manual-val ((m <PowerSetting-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:manual-val is deprecated.  Use cruiser_msgs-srv:manual instead.")
  (manual m))

(cl:ensure-generic-function 'adapter-val :lambda-list '(m))
(cl:defmethod adapter-val ((m <PowerSetting-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:adapter-val is deprecated.  Use cruiser_msgs-srv:adapter instead.")
  (adapter m))

(cl:ensure-generic-function 'station-val :lambda-list '(m))
(cl:defmethod station-val ((m <PowerSetting-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:station-val is deprecated.  Use cruiser_msgs-srv:station instead.")
  (station m))

(cl:ensure-generic-function 'timer-val :lambda-list '(m))
(cl:defmethod timer-val ((m <PowerSetting-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:timer-val is deprecated.  Use cruiser_msgs-srv:timer instead.")
  (timer m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <PowerSetting-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:state-val is deprecated.  Use cruiser_msgs-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PowerSetting-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:success-val is deprecated.  Use cruiser_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerSetting-response>) ostream)
  "Serializes a message object of type '<PowerSetting-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'month)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'day)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hour)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'manual) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'adapter) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'station) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'timer) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerSetting-response>) istream)
  "Deserializes a message object of type '<PowerSetting-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'month)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'day)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hour)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sec)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'manual) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'adapter) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'station) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'timer) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerSetting-response>)))
  "Returns string type for a service object of type '<PowerSetting-response>"
  "cruiser_msgs/PowerSettingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerSetting-response)))
  "Returns string type for a service object of type 'PowerSetting-response"
  "cruiser_msgs/PowerSettingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerSetting-response>)))
  "Returns md5sum for a message object of type '<PowerSetting-response>"
  "273350ed07798e9062484e197194752f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerSetting-response)))
  "Returns md5sum for a message object of type 'PowerSetting-response"
  "273350ed07798e9062484e197194752f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerSetting-response>)))
  "Returns full string definition for message of type '<PowerSetting-response>"
  (cl:format cl:nil "uint16 year~%uint8 month~%uint8 day~%uint8 hour~%uint8 min~%uint8 sec~%bool manual~%bool adapter~%bool station~%bool timer~%uint8 state~%~%bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerSetting-response)))
  "Returns full string definition for message of type 'PowerSetting-response"
  (cl:format cl:nil "uint16 year~%uint8 month~%uint8 day~%uint8 hour~%uint8 min~%uint8 sec~%bool manual~%bool adapter~%bool station~%bool timer~%uint8 state~%~%bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerSetting-response>))
  (cl:+ 0
     2
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerSetting-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerSetting-response
    (cl:cons ':year (year msg))
    (cl:cons ':month (month msg))
    (cl:cons ':day (day msg))
    (cl:cons ':hour (hour msg))
    (cl:cons ':min (min msg))
    (cl:cons ':sec (sec msg))
    (cl:cons ':manual (manual msg))
    (cl:cons ':adapter (adapter msg))
    (cl:cons ':station (station msg))
    (cl:cons ':timer (timer msg))
    (cl:cons ':state (state msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PowerSetting)))
  'PowerSetting-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PowerSetting)))
  'PowerSetting-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerSetting)))
  "Returns string type for a service object of type '<PowerSetting>"
  "cruiser_msgs/PowerSetting")