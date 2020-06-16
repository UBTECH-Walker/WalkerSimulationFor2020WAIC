;; Auto-generated. Do not edit!


(when (boundp 'walker_msgs::ces_task_Status)
  (if (not (find-package "WALKER_MSGS"))
    (make-package "WALKER_MSGS"))
  (shadow 'ces_task_Status (find-package "WALKER_MSGS")))
(unless (find-package "WALKER_MSGS::CES_TASK_STATUS")
  (make-package "WALKER_MSGS::CES_TASK_STATUS"))

(in-package "ROS")
;;//! \htmlinclude ces_task_Status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MODE_FREERUN*" (find-package "WALKER_MSGS::CES_TASK_STATUS"))
(shadow '*MODE_FREERUN* (find-package "WALKER_MSGS::CES_TASK_STATUS"))
(defconstant walker_msgs::ces_task_Status::*MODE_FREERUN* "freerun")
(intern "*MODE_CONTINOUS*" (find-package "WALKER_MSGS::CES_TASK_STATUS"))
(shadow '*MODE_CONTINOUS* (find-package "WALKER_MSGS::CES_TASK_STATUS"))
(defconstant walker_msgs::ces_task_Status::*MODE_CONTINOUS* "continous")
(intern "*MODE_ONESHOT*" (find-package "WALKER_MSGS::CES_TASK_STATUS"))
(shadow '*MODE_ONESHOT* (find-package "WALKER_MSGS::CES_TASK_STATUS"))
(defconstant walker_msgs::ces_task_Status::*MODE_ONESHOT* "oneshot")
(defclass walker_msgs::ces_task_Status
  :super ros::object
  :slots (_header _show_name _show_mode _group_queue _group _task _progress _waiting_trigger _retrying ))

(defmethod walker_msgs::ces_task_Status
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:show_name __show_name) "")
    ((:show_mode __show_mode) "")
    ((:group_queue __group_queue) (let (r) (dotimes (i 3) (push "" r)) r))
    ((:group __group) "")
    ((:task __task) "")
    ((:progress __progress) "")
    ((:waiting_trigger __waiting_trigger) nil)
    ((:retrying __retrying) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _show_name (string __show_name))
   (setq _show_mode (string __show_mode))
   (setq _group_queue __group_queue)
   (setq _group (string __group))
   (setq _task (string __task))
   (setq _progress (string __progress))
   (setq _waiting_trigger __waiting_trigger)
   (setq _retrying __retrying)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:show_name
   (&optional __show_name)
   (if __show_name (setq _show_name __show_name)) _show_name)
  (:show_mode
   (&optional __show_mode)
   (if __show_mode (setq _show_mode __show_mode)) _show_mode)
  (:group_queue
   (&optional __group_queue)
   (if __group_queue (setq _group_queue __group_queue)) _group_queue)
  (:group
   (&optional __group)
   (if __group (setq _group __group)) _group)
  (:task
   (&optional __task)
   (if __task (setq _task __task)) _task)
  (:progress
   (&optional __progress)
   (if __progress (setq _progress __progress)) _progress)
  (:waiting_trigger
   (&optional __waiting_trigger)
   (if __waiting_trigger (setq _waiting_trigger __waiting_trigger)) _waiting_trigger)
  (:retrying
   (&optional __retrying)
   (if __retrying (setq _retrying __retrying)) _retrying)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _show_name
    4 (length _show_name)
    ;; string _show_mode
    4 (length _show_mode)
    ;; string[3] _group_queue
    (apply #'+ 4 (length _group_queue)    3)
    ;; string _group
    4 (length _group)
    ;; string _task
    4 (length _task)
    ;; string _progress
    4 (length _progress)
    ;; bool _waiting_trigger
    1
    ;; bool _retrying
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _show_name
       (write-long (length _show_name) s) (princ _show_name s)
     ;; string _show_mode
       (write-long (length _show_mode) s) (princ _show_mode s)
     ;; string[3] _group_queue
     (write-long (length _group_queue) s)
     (dolist (elem _group_queue)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _group
       (write-long (length _group) s) (princ _group s)
     ;; string _task
       (write-long (length _task) s) (princ _task s)
     ;; string _progress
       (write-long (length _progress) s) (princ _progress s)
     ;; bool _waiting_trigger
       (if _waiting_trigger (write-byte -1 s) (write-byte 0 s))
     ;; bool _retrying
       (if _retrying (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _show_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _show_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _show_mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _show_mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[3] _group_queue
   (dotimes (i (length _group_queue))
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _group_queue i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     )
   ;; string _group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _task
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _progress
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _progress (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _waiting_trigger
     (setq _waiting_trigger (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _retrying
     (setq _retrying (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get walker_msgs::ces_task_Status :md5sum-) "563be51c3a034bac36abd5adb57e46db")
(setf (get walker_msgs::ces_task_Status :datatype-) "walker_msgs/ces_task_Status")
(setf (get walker_msgs::ces_task_Status :definition-)
      "# task status defines
string MODE_FREERUN=freerun
string MODE_CONTINOUS=continous
string MODE_ONESHOT=oneshot

##############################################

# time stamp must be filled
Header header

# current show name
string show_name

# current run mode
string show_mode

# task queue
string[3] group_queue

# current group
string group

# current task
string task

# progress
string progress

# wait for trigger flag
bool waiting_trigger

# retrying
bool retrying

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :walker_msgs/ces_task_Status "563be51c3a034bac36abd5adb57e46db")


