;; Auto-generated. Do not edit!


(when (boundp 'ces_task::TaskLegStatus)
  (if (not (find-package "CES_TASK"))
    (make-package "CES_TASK"))
  (shadow 'TaskLegStatus (find-package "CES_TASK")))
(unless (find-package "CES_TASK::TASKLEGSTATUS")
  (make-package "CES_TASK::TASKLEGSTATUS"))

(in-package "ROS")
;;//! \htmlinclude TaskLegStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*OWNER_NONE*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*OWNER_NONE* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*OWNER_NONE* "none")
(intern "*OWNER_SDK*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*OWNER_SDK* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*OWNER_SDK* "sdk")
(intern "*OWNER_LEGS*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*OWNER_LEGS* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*OWNER_LEGS* "legs")
(intern "*OWNER_ARMS*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*OWNER_ARMS* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*OWNER_ARMS* "arms")
(intern "*OWNER_REMOTER*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*OWNER_REMOTER* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*OWNER_REMOTER* "remoter")
(intern "*OWNER_HOST*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*OWNER_HOST* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*OWNER_HOST* "host")
(intern "*TASK_NAV2CENTER*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*TASK_NAV2CENTER* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*TASK_NAV2CENTER* "nav2Center")
(intern "*TASK_NAV2GATE*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*TASK_NAV2GATE* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*TASK_NAV2GATE* "nav2Gate")
(intern "*TASK_NAV2GETBAG*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*TASK_NAV2GETBAG* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*TASK_NAV2GETBAG* "nav2GetBag")
(intern "*TASK_NAV2HANGBAG*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*TASK_NAV2HANGBAG* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*TASK_NAV2HANGBAG* "nav2HangBag")
(intern "*TASK_NAV2DANCE*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*TASK_NAV2DANCE* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*TASK_NAV2DANCE* "nav2Dance")
(intern "*TASK_NAV2WATER*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*TASK_NAV2WATER* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*TASK_NAV2WATER* "nav2GetWater")
(intern "*TASK_NAV2FOOD*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*TASK_NAV2FOOD* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*TASK_NAV2FOOD* "nav2Food")
(intern "*TASK_NAV2SOFA*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*TASK_NAV2SOFA* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*TASK_NAV2SOFA* "nav2Sofa")
(intern "*TASK_NAV2NOTICEDATE*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*TASK_NAV2NOTICEDATE* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*TASK_NAV2NOTICEDATE* "nav2NoticeDate")
(intern "*TASK_NAV2UMBRELLA*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*TASK_NAV2UMBRELLA* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*TASK_NAV2UMBRELLA* "nav2Umbrella")
(intern "*TASK_NAV2GIVEUMBRELLA*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*TASK_NAV2GIVEUMBRELLA* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*TASK_NAV2GIVEUMBRELLA* "nav2GiveUmbrella")
(intern "*TASK_NAV2CHARGE*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*TASK_NAV2CHARGE* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*TASK_NAV2CHARGE* "nav2Charge")
(intern "*TASK_NAV2ENDPOINT*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*TASK_NAV2ENDPOINT* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*TASK_NAV2ENDPOINT* "nav2Endpoint")
(intern "*TASK_NAV2DRAW*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*TASK_NAV2DRAW* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*TASK_NAV2DRAW* "nav2Draw")
(intern "*TASK_FASTWALK*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*TASK_FASTWALK* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*TASK_FASTWALK* "doFastwalk")
(intern "*TASK_MARKTIME*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*TASK_MARKTIME* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*TASK_MARKTIME* "markTime")
(intern "*TASK_STANDBY*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*TASK_STANDBY* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*TASK_STANDBY* "standby")
(intern "*TASK_DANCE*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*TASK_DANCE* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*TASK_DANCE* "dance")
(intern "*TASK_STATUS_IDLE*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*TASK_STATUS_IDLE* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*TASK_STATUS_IDLE* "idle")
(intern "*TASK_STATUS_BUSY*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*TASK_STATUS_BUSY* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*TASK_STATUS_BUSY* "busy")
(intern "*TASK_STATUS_STOP*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*TASK_STATUS_STOP* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*TASK_STATUS_STOP* "stopped")
(intern "*TASK_STATUS_ABORT*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*TASK_STATUS_ABORT* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*TASK_STATUS_ABORT* "abort")
(intern "*TASK_STATUS_FAILED*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*TASK_STATUS_FAILED* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*TASK_STATUS_FAILED* "fail")
(intern "*LEG_STATUS_INIT*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*LEG_STATUS_INIT* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*LEG_STATUS_INIT* "standInit")
(intern "*LEG_STATUS_STANDING*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*LEG_STATUS_STANDING* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*LEG_STATUS_STANDING* "standing")
(intern "*LEG_STATUS_SCRIPTING*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*LEG_STATUS_SCRIPTING* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*LEG_STATUS_SCRIPTING* "scripting")
(intern "*LEG_STATUS_NAV*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*LEG_STATUS_NAV* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*LEG_STATUS_NAV* "navigating")
(intern "*LEG_STATUS_ARMCTRL*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*LEG_STATUS_ARMCTRL* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*LEG_STATUS_ARMCTRL* "armCtrl")
(intern "*LEG_STATUS_VISIONCTRL*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*LEG_STATUS_VISIONCTRL* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*LEG_STATUS_VISIONCTRL* "visionCtrl")
(intern "*LEG_STATUS_KEYBOARDCTRL*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*LEG_STATUS_KEYBOARDCTRL* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*LEG_STATUS_KEYBOARDCTRL* "keyboardCtrl")
(intern "*LEG_STATUS_REMOTERCTRL*" (find-package "CES_TASK::TASKLEGSTATUS"))
(shadow '*LEG_STATUS_REMOTERCTRL* (find-package "CES_TASK::TASKLEGSTATUS"))
(defconstant ces_task::TaskLegStatus::*LEG_STATUS_REMOTERCTRL* "remoterCtrl")
(defclass ces_task::TaskLegStatus
  :super ros::object
  :slots (_header _task_id _demander _executor _task_status _legs_status _process_info ))

(defmethod ces_task::TaskLegStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:task_id __task_id) "")
    ((:demander __demander) "")
    ((:executor __executor) "")
    ((:task_status __task_status) "")
    ((:legs_status __legs_status) "")
    ((:process_info __process_info) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _task_id (string __task_id))
   (setq _demander (string __demander))
   (setq _executor (string __executor))
   (setq _task_status (string __task_status))
   (setq _legs_status (string __legs_status))
   (setq _process_info (string __process_info))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:demander
   (&optional __demander)
   (if __demander (setq _demander __demander)) _demander)
  (:executor
   (&optional __executor)
   (if __executor (setq _executor __executor)) _executor)
  (:task_status
   (&optional __task_status)
   (if __task_status (setq _task_status __task_status)) _task_status)
  (:legs_status
   (&optional __legs_status)
   (if __legs_status (setq _legs_status __legs_status)) _legs_status)
  (:process_info
   (&optional __process_info)
   (if __process_info (setq _process_info __process_info)) _process_info)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _task_id
    4 (length _task_id)
    ;; string _demander
    4 (length _demander)
    ;; string _executor
    4 (length _executor)
    ;; string _task_status
    4 (length _task_status)
    ;; string _legs_status
    4 (length _legs_status)
    ;; string _process_info
    4 (length _process_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _task_id
       (write-long (length _task_id) s) (princ _task_id s)
     ;; string _demander
       (write-long (length _demander) s) (princ _demander s)
     ;; string _executor
       (write-long (length _executor) s) (princ _executor s)
     ;; string _task_status
       (write-long (length _task_status) s) (princ _task_status s)
     ;; string _legs_status
       (write-long (length _legs_status) s) (princ _legs_status s)
     ;; string _process_info
       (write-long (length _process_info) s) (princ _process_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _task_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _demander
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _demander (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _executor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _executor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _task_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _legs_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _legs_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _process_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _process_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ces_task::TaskLegStatus :md5sum-) "bad847b3c04a60d5d22c49c56407a7be")
(setf (get ces_task::TaskLegStatus :datatype-) "ces_task/TaskLegStatus")
(setf (get ces_task::TaskLegStatus :definition-)
      "# owner ids
string OWNER_NONE=none
string OWNER_SDK=sdk
string OWNER_LEGS=legs
string OWNER_ARMS=arms
string OWNER_REMOTER=remoter
string OWNER_HOST=host

# task ids
## tasks for legs
string TASK_NAV2CENTER=nav2Center
string TASK_NAV2GATE=nav2Gate
string TASK_NAV2GETBAG=nav2GetBag
string TASK_NAV2HangBAG=nav2HangBag
string TASK_NAV2DANCE=nav2Dance
string TASK_NAV2WATER=nav2GetWater
string TASK_NAV2FOOD=nav2Food
string TASK_NAV2SOFA=nav2Sofa
string TASK_NAV2NoticeDate=nav2NoticeDate
string TASK_NAV2UMBRELLA=nav2Umbrella
string TASK_NAV2GIVEUMBRELLA=nav2GiveUmbrella
string TASK_NAV2CHARGE=nav2Charge
string TASK_NAV2ENDPOINT=nav2Endpoint
string TASK_NAV2DRAW=nav2Draw
string TASK_FASTWALK=doFastwalk
string TASK_MARKTIME=markTime
string TASK_STANDBY=standby
string TASK_DANCE=dance

# task status defines
string TASK_STATUS_IDLE=idle
string TASK_STATUS_BUSY=busy
string TASK_STATUS_STOP=stopped
string TASK_STATUS_ABORT=abort
string TASK_STATUS_FAILED=fail

# legs status defines
string LEG_STATUS_INIT=standInit
string LEG_STATUS_STANDING=standing
string LEG_STATUS_SCRIPTING=scripting
string LEG_STATUS_NAV=navigating
string LEG_STATUS_ARMCTRL=armCtrl
string LEG_STATUS_VISIONCTRL=visionCtrl
string LEG_STATUS_KEYBOARDCTRL=keyboardCtrl
string LEG_STATUS_REMOTERCTRL=remoterCtrl

##############################################

# time stamp must be filled
Header header

# current task id
string task_id

# who send request
string demander

# who execute task
string executor

# current task status
string task_status

# current leg status
string legs_status

# progress info(optional)
string process_info

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



(provide :ces_task/TaskLegStatus "bad847b3c04a60d5d22c49c56407a7be")


