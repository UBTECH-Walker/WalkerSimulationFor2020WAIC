;; Auto-generated. Do not edit!


(when (boundp 'ces_task::TaskArmStatus)
  (if (not (find-package "CES_TASK"))
    (make-package "CES_TASK"))
  (shadow 'TaskArmStatus (find-package "CES_TASK")))
(unless (find-package "CES_TASK::TASKARMSTATUS")
  (make-package "CES_TASK::TASKARMSTATUS"))

(in-package "ROS")
;;//! \htmlinclude TaskArmStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*OWNER_NONE*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*OWNER_NONE* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*OWNER_NONE* "none")
(intern "*OWNER_SDK*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*OWNER_SDK* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*OWNER_SDK* "sdk")
(intern "*OWNER_LEGS*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*OWNER_LEGS* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*OWNER_LEGS* "legs")
(intern "*OWNER_ARMS*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*OWNER_ARMS* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*OWNER_ARMS* "arms")
(intern "*OWNER_REMOTER*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*OWNER_REMOTER* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*OWNER_REMOTER* "remoter")
(intern "*OWNER_HOST*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*OWNER_HOST* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*OWNER_HOST* "host")
(intern "*TASK_GREETINGS*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_GREETINGS* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_GREETINGS* "CES/cesGreetings")
(intern "*TASK_HANDSHAKE*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_HANDSHAKE* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_HANDSHAKE* "function/functionHybirdEffort")
(intern "*TASK_STANDBY*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_STANDBY* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_STANDBY* "walk/walkDynamic")
(intern "*TASK_CHARGE*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_CHARGE* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_CHARGE* "CES/cesRecharge")
(intern "*TASK_SWINGWHILEWALKE*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_SWINGWHILEWALKE* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_SWINGWHILEWALKE* "walk/walkDynamic")
(intern "*TASK_WALKINHAND*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_WALKINHAND* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_WALKINHAND* "walk/walkDynamicWithHand")
(intern "*TASK_DANCE*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_DANCE* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_DANCE* "function/functionDance")
(intern "*TASK_ENDPOINTCTRL*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_ENDPOINTCTRL* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_ENDPOINTCTRL* "function/functionEndpointControl")
(intern "*TASK_HYBIRDTRQCTRL*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_HYBIRDTRQCTRL* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_HYBIRDTRQCTRL* "function/functionHybirdEffort")
(intern "*TASK_HYBIRDPOSCTRL*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_HYBIRDPOSCTRL* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_HYBIRDPOSCTRL* "function/functionHybirdPosition")
(intern "*TASK_NULLSPACECTRL*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_NULLSPACECTRL* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_NULLSPACECTRL* "function/functionNullspaceControl")
(intern "*TASK_VISUALSERVO*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_VISUALSERVO* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_VISUALSERVO* "function/functionVisualServo")
(intern "*TASK_WHOLEBODYCTRL*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_WHOLEBODYCTRL* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_WHOLEBODYCTRL* "function/functionWholeBodyControl")
(intern "*TASK_DRAWING*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_DRAWING* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_DRAWING* "function/functionDrawing")
(intern "*TASK_SAYGOODBYE*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_SAYGOODBYE* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_SAYGOODBYE* "CES/cesSayGoodbye")
(intern "*TASK_OPENDOOR*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_OPENDOOR* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_OPENDOOR* "CES/ces100OpenDoor")
(intern "*TASK_GETBAG*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_GETBAG* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_GETBAG* "CES/cesPickBag")
(intern "*TASK_HANGBAG*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_HANGBAG* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_HANGBAG* "CES/ces101PlaceBag")
(intern "*TASK_GETWATER*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_GETWATER* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_GETWATER* "CES/ces102OpenRefrigerator")
(intern "*TASK_PLACEWATER*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_PLACEWATER* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_PLACEWATER* "CES/ces104PlaceWater")
(intern "*TASK_WALKWITHWATER*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_WALKWITHWATER* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_WALKWITHWATER* "walk/walkDynamic")
(intern "*TASK_GETFOOD*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_GETFOOD* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_GETFOOD* "CES/ces103PickChips")
(intern "*TASK_WALKWITHFOOD*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_WALKWITHFOOD* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_WALKWITHFOOD* "walk/walkDynamic")
(intern "*TASK_GIVEFOOD*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_GIVEFOOD* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_GIVEFOOD* "CES/cesDeliveryChips")
(intern "*TASK_RELEASEFOOD*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_RELEASEFOOD* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_RELEASEFOOD* "CES/cesReleaseChips")
(intern "*TASK_GETUMBRELLA*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_GETUMBRELLA* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_GETUMBRELLA* "CES/ces105PickUmbrella")
(intern "*TASK_GIVEUMBRELLA*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_GIVEUMBRELLA* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_GIVEUMBRELLA* "CES/cesDeliveryUmbrella")
(intern "*TASK_RELEASEUMBRELLA*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_RELEASEUMBRELLA* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_RELEASEUMBRELLA* "CES/cesReleaseUmbrella")
(intern "*TASK_STATUS_IDLE*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_STATUS_IDLE* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_STATUS_IDLE* "idle")
(intern "*TASK_STATUS_BUSY*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_STATUS_BUSY* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_STATUS_BUSY* "busy")
(intern "*TASK_STATUS_STOP*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_STATUS_STOP* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_STATUS_STOP* "stopped")
(intern "*TASK_STATUS_ABORT*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_STATUS_ABORT* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_STATUS_ABORT* "abort")
(intern "*TASK_STATUS_FAILED*" (find-package "CES_TASK::TASKARMSTATUS"))
(shadow '*TASK_STATUS_FAILED* (find-package "CES_TASK::TASKARMSTATUS"))
(defconstant ces_task::TaskArmStatus::*TASK_STATUS_FAILED* "fail")
(defclass ces_task::TaskArmStatus
  :super ros::object
  :slots (_header _task_id _demander _executor _task_status _process_info ))

(defmethod ces_task::TaskArmStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:task_id __task_id) "")
    ((:demander __demander) "")
    ((:executor __executor) "")
    ((:task_status __task_status) "")
    ((:process_info __process_info) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _task_id (string __task_id))
   (setq _demander (string __demander))
   (setq _executor (string __executor))
   (setq _task_status (string __task_status))
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
   ;; string _process_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _process_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ces_task::TaskArmStatus :md5sum-) "e37a2b08a580018c6dc8764166a54283")
(setf (get ces_task::TaskArmStatus :datatype-) "ces_task/TaskArmStatus")
(setf (get ces_task::TaskArmStatus :definition-)
      "# owner ids
string OWNER_NONE=none
string OWNER_SDK=sdk
string OWNER_LEGS=legs
string OWNER_ARMS=arms
string OWNER_REMOTER=remoter
string OWNER_HOST=host


# task ids
## common task
string TASK_GREETINGS=CES/cesGreetings
string TASK_HANDSHAKE=function/functionHybirdEffort
string TASK_STANDBY=walk/walkDynamic
string TASK_CHARGE=CES/cesRecharge
string TASK_SWINGWHILEWALKE=walk/walkDynamic
string TASK_WALKINHAND=walk/walkDynamicWithHand
string TASK_DANCE=function/functionDance
string TASK_ENDPOINTCTRL=function/functionEndpointControl
string TASK_HYBIRDTRQCTRL=function/functionHybirdEffort
string TASK_HYBIRDPOSCTRL=function/functionHybirdPosition
string TASK_NULLSPACECTRL=function/functionNullspaceControl
string TASK_VISUALSERVO=function/functionVisualServo
string TASK_WHOLEBODYCTRL=function/functionWholeBodyControl
string TASK_DRAWING=function/functionDrawing
string TASK_SAYGOODBYE=CES/cesSayGoodbye

## open door task
string TASK_OPENDOOR=CES/ces100OpenDoor

## handle bag task
string TASK_GETBAG=CES/cesPickBag
string TASK_HANGBAG=CES/ces101PlaceBag

## get water task
string TASK_GETWATER=CES/ces102OpenRefrigerator
string TASK_PLACEWATER=CES/ces104PlaceWater
string TASK_WALKWITHWATER=walk/walkDynamic

## get food task
string TASK_GETFOOD=CES/ces103PickChips
string TASK_WALKWITHFOOD=walk/walkDynamic
string TASK_GIVEFOOD=CES/cesDeliveryChips
string TASK_RELEASEFOOD=CES/cesReleaseChips

## get umbrella task
string TASK_GETUMBRELLA=CES/ces105PickUmbrella
string TASK_GIVEUMBRELLA=CES/cesDeliveryUmbrella
string TASK_RELEASEUMBRELLA=CES/cesReleaseUmbrella


# task status defines
string TASK_STATUS_IDLE=idle
string TASK_STATUS_BUSY=busy
string TASK_STATUS_STOP=stopped
string TASK_STATUS_ABORT=abort
string TASK_STATUS_FAILED=fail

##############################################

# time stamp must be filled
Header header

# current task id
string task_id

# who send request
string demander

# who execute task
string executor

# current status
string task_status

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
# 0: no frame
# 1: global frame
string frame_id

")



(provide :ces_task/TaskArmStatus "e37a2b08a580018c6dc8764166a54283")


