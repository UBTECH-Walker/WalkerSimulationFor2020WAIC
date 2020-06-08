; Auto-generated. Do not edit!


(cl:in-package walker_msgs-msg)


;//! \htmlinclude ces_task_Status.msg.html

(cl:defclass <ces_task_Status> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (show_name
    :reader show_name
    :initarg :show_name
    :type cl:string
    :initform "")
   (show_mode
    :reader show_mode
    :initarg :show_mode
    :type cl:string
    :initform "")
   (group_queue
    :reader group_queue
    :initarg :group_queue
    :type (cl:vector cl:string)
   :initform (cl:make-array 3 :element-type 'cl:string :initial-element ""))
   (group
    :reader group
    :initarg :group
    :type cl:string
    :initform "")
   (task
    :reader task
    :initarg :task
    :type cl:string
    :initform "")
   (progress
    :reader progress
    :initarg :progress
    :type cl:string
    :initform "")
   (waiting_trigger
    :reader waiting_trigger
    :initarg :waiting_trigger
    :type cl:boolean
    :initform cl:nil)
   (retrying
    :reader retrying
    :initarg :retrying
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ces_task_Status (<ces_task_Status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ces_task_Status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ces_task_Status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name walker_msgs-msg:<ces_task_Status> is deprecated: use walker_msgs-msg:ces_task_Status instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ces_task_Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_msgs-msg:header-val is deprecated.  Use walker_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'show_name-val :lambda-list '(m))
(cl:defmethod show_name-val ((m <ces_task_Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_msgs-msg:show_name-val is deprecated.  Use walker_msgs-msg:show_name instead.")
  (show_name m))

(cl:ensure-generic-function 'show_mode-val :lambda-list '(m))
(cl:defmethod show_mode-val ((m <ces_task_Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_msgs-msg:show_mode-val is deprecated.  Use walker_msgs-msg:show_mode instead.")
  (show_mode m))

(cl:ensure-generic-function 'group_queue-val :lambda-list '(m))
(cl:defmethod group_queue-val ((m <ces_task_Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_msgs-msg:group_queue-val is deprecated.  Use walker_msgs-msg:group_queue instead.")
  (group_queue m))

(cl:ensure-generic-function 'group-val :lambda-list '(m))
(cl:defmethod group-val ((m <ces_task_Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_msgs-msg:group-val is deprecated.  Use walker_msgs-msg:group instead.")
  (group m))

(cl:ensure-generic-function 'task-val :lambda-list '(m))
(cl:defmethod task-val ((m <ces_task_Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_msgs-msg:task-val is deprecated.  Use walker_msgs-msg:task instead.")
  (task m))

(cl:ensure-generic-function 'progress-val :lambda-list '(m))
(cl:defmethod progress-val ((m <ces_task_Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_msgs-msg:progress-val is deprecated.  Use walker_msgs-msg:progress instead.")
  (progress m))

(cl:ensure-generic-function 'waiting_trigger-val :lambda-list '(m))
(cl:defmethod waiting_trigger-val ((m <ces_task_Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_msgs-msg:waiting_trigger-val is deprecated.  Use walker_msgs-msg:waiting_trigger instead.")
  (waiting_trigger m))

(cl:ensure-generic-function 'retrying-val :lambda-list '(m))
(cl:defmethod retrying-val ((m <ces_task_Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_msgs-msg:retrying-val is deprecated.  Use walker_msgs-msg:retrying instead.")
  (retrying m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ces_task_Status>)))
    "Constants for message type '<ces_task_Status>"
  '((:MODE_FREERUN . freerun)
    (:MODE_CONTINOUS . continous)
    (:MODE_ONESHOT . oneshot))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ces_task_Status)))
    "Constants for message type 'ces_task_Status"
  '((:MODE_FREERUN . freerun)
    (:MODE_CONTINOUS . continous)
    (:MODE_ONESHOT . oneshot))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ces_task_Status>) ostream)
  "Serializes a message object of type '<ces_task_Status>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'show_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'show_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'show_mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'show_mode))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'group_queue))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'progress))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'progress))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'waiting_trigger) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'retrying) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ces_task_Status>) istream)
  "Deserializes a message object of type '<ces_task_Status>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'show_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'show_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'show_mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'show_mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:setf (cl:slot-value msg 'group_queue) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'group_queue)))
    (cl:dotimes (i 3)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'task) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'progress) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'progress) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'waiting_trigger) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'retrying) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ces_task_Status>)))
  "Returns string type for a message object of type '<ces_task_Status>"
  "walker_msgs/ces_task_Status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ces_task_Status)))
  "Returns string type for a message object of type 'ces_task_Status"
  "walker_msgs/ces_task_Status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ces_task_Status>)))
  "Returns md5sum for a message object of type '<ces_task_Status>"
  "563be51c3a034bac36abd5adb57e46db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ces_task_Status)))
  "Returns md5sum for a message object of type 'ces_task_Status"
  "563be51c3a034bac36abd5adb57e46db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ces_task_Status>)))
  "Returns full string definition for message of type '<ces_task_Status>"
  (cl:format cl:nil "# task status defines~%string MODE_FREERUN=freerun~%string MODE_CONTINOUS=continous~%string MODE_ONESHOT=oneshot~%~%##############################################~%~%# time stamp must be filled~%Header header~%~%# current show name~%string show_name~%~%# current run mode~%string show_mode~%~%# task queue~%string[3] group_queue~%~%# current group~%string group~%~%# current task~%string task~%~%# progress~%string progress~%~%# wait for trigger flag~%bool waiting_trigger~%~%# retrying~%bool retrying~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ces_task_Status)))
  "Returns full string definition for message of type 'ces_task_Status"
  (cl:format cl:nil "# task status defines~%string MODE_FREERUN=freerun~%string MODE_CONTINOUS=continous~%string MODE_ONESHOT=oneshot~%~%##############################################~%~%# time stamp must be filled~%Header header~%~%# current show name~%string show_name~%~%# current run mode~%string show_mode~%~%# task queue~%string[3] group_queue~%~%# current group~%string group~%~%# current task~%string task~%~%# progress~%string progress~%~%# wait for trigger flag~%bool waiting_trigger~%~%# retrying~%bool retrying~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ces_task_Status>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'show_name))
     4 (cl:length (cl:slot-value msg 'show_mode))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'group_queue) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'group))
     4 (cl:length (cl:slot-value msg 'task))
     4 (cl:length (cl:slot-value msg 'progress))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ces_task_Status>))
  "Converts a ROS message object to a list"
  (cl:list 'ces_task_Status
    (cl:cons ':header (header msg))
    (cl:cons ':show_name (show_name msg))
    (cl:cons ':show_mode (show_mode msg))
    (cl:cons ':group_queue (group_queue msg))
    (cl:cons ':group (group msg))
    (cl:cons ':task (task msg))
    (cl:cons ':progress (progress msg))
    (cl:cons ':waiting_trigger (waiting_trigger msg))
    (cl:cons ':retrying (retrying msg))
))
