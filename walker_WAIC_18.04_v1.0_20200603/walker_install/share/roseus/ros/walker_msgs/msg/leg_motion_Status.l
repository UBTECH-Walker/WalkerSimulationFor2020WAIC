;; Auto-generated. Do not edit!


(when (boundp 'walker_msgs::leg_motion_Status)
  (if (not (find-package "WALKER_MSGS"))
    (make-package "WALKER_MSGS"))
  (shadow 'leg_motion_Status (find-package "WALKER_MSGS")))
(unless (find-package "WALKER_MSGS::LEG_MOTION_STATUS")
  (make-package "WALKER_MSGS::LEG_MOTION_STATUS"))

(in-package "ROS")
;;//! \htmlinclude leg_motion_Status.msg.html


(intern "*INIT*" (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(shadow '*INIT* (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(defconstant walker_msgs::leg_motion_Status::*INIT* "standInit")
(intern "*STANDING*" (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(shadow '*STANDING* (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(defconstant walker_msgs::leg_motion_Status::*STANDING* "standing")
(intern "*SCRIPTING*" (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(shadow '*SCRIPTING* (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(defconstant walker_msgs::leg_motion_Status::*SCRIPTING* "scripting")
(intern "*NAV*" (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(shadow '*NAV* (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(defconstant walker_msgs::leg_motion_Status::*NAV* "navigating")
(intern "*ARMCTRL*" (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(shadow '*ARMCTRL* (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(defconstant walker_msgs::leg_motion_Status::*ARMCTRL* "armCtrl")
(intern "*VISIONCTRL*" (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(shadow '*VISIONCTRL* (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(defconstant walker_msgs::leg_motion_Status::*VISIONCTRL* "visionCtrl")
(intern "*KEYBOARDCTRL*" (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(shadow '*KEYBOARDCTRL* (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(defconstant walker_msgs::leg_motion_Status::*KEYBOARDCTRL* "keyboardCtrl")
(intern "*REMOTERCTRL*" (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(shadow '*REMOTERCTRL* (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(defconstant walker_msgs::leg_motion_Status::*REMOTERCTRL* "remoterCtrl")
(intern "*BALANCE*" (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(shadow '*BALANCE* (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(defconstant walker_msgs::leg_motion_Status::*BALANCE* "balance")
(intern "*TAIJI_INIT*" (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(shadow '*TAIJI_INIT* (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(defconstant walker_msgs::leg_motion_Status::*TAIJI_INIT* "taijiInit")
(intern "*TAIJI*" (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(shadow '*TAIJI* (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(defconstant walker_msgs::leg_motion_Status::*TAIJI* "taiji")
(intern "*YOGA_INIT*" (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(shadow '*YOGA_INIT* (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(defconstant walker_msgs::leg_motion_Status::*YOGA_INIT* "yogaInit")
(intern "*YOGA*" (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(shadow '*YOGA* (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(defconstant walker_msgs::leg_motion_Status::*YOGA* "yoga")
(intern "*EMSTOP*" (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(shadow '*EMSTOP* (find-package "WALKER_MSGS::LEG_MOTION_STATUS"))
(defconstant walker_msgs::leg_motion_Status::*EMSTOP* "emergencyStop")
(defclass walker_msgs::leg_motion_Status
  :super ros::object
  :slots (_status ))

(defmethod walker_msgs::leg_motion_Status
  (:init
   (&key
    ((:status __status) "")
    )
   (send-super :init)
   (setq _status (string __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get walker_msgs::leg_motion_Status :md5sum-) "9d1a441ce08becf86e68bfea26a6dade")
(setf (get walker_msgs::leg_motion_Status :datatype-) "walker_msgs/leg_motion_Status")
(setf (get walker_msgs::leg_motion_Status :definition-)
      "# legs status defines
string INIT=standInit
string STANDING=standing
string SCRIPTING=scripting
string NAV=navigating
string ARMCTRL=armCtrl
string VISIONCTRL=visionCtrl
string KEYBOARDCTRL=keyboardCtrl
string REMOTERCTRL=remoterCtrl
string BALANCE=balance
string TAIJI_INIT=taijiInit
string TAIJI=taiji
string YOGA_INIT=yogaInit
string YOGA=yoga
string EMSTOP=emergencyStop

##############################################
# current leg status
string status

")



(provide :walker_msgs/leg_motion_Status "9d1a441ce08becf86e68bfea26a6dade")


