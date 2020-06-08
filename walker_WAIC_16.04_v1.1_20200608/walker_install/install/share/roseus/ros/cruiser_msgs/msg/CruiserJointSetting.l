;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::CruiserJointSetting)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'CruiserJointSetting (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISERJOINTSETTING")
  (make-package "CRUISER_MSGS::CRUISERJOINTSETTING"))

(in-package "ROS")
;;//! \htmlinclude CruiserJointSetting.msg.html


(defclass cruiser_msgs::CruiserJointSetting
  :super ros::object
  :slots (_joint_num _cmd _jointIndex _parameter ))

(defmethod cruiser_msgs::CruiserJointSetting
  (:init
   (&key
    ((:joint_num __joint_num) 0)
    ((:cmd __cmd) "")
    ((:jointIndex __jointIndex) (make-array 0 :initial-element 0 :element-type :integer))
    ((:parameter __parameter) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_num (round __joint_num))
   (setq _cmd (string __cmd))
   (setq _jointIndex __jointIndex)
   (setq _parameter __parameter)
   self)
  (:joint_num
   (&optional __joint_num)
   (if __joint_num (setq _joint_num __joint_num)) _joint_num)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:jointIndex
   (&optional __jointIndex)
   (if __jointIndex (setq _jointIndex __jointIndex)) _jointIndex)
  (:parameter
   (&optional __parameter)
   (if __parameter (setq _parameter __parameter)) _parameter)
  (:serialization-length
   ()
   (+
    ;; int16 _joint_num
    2
    ;; string _cmd
    4 (length _cmd)
    ;; uint32[] _jointIndex
    (* 4    (length _jointIndex)) 4
    ;; float64[] _parameter
    (* 8    (length _parameter)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _joint_num
       (write-word _joint_num s)
     ;; string _cmd
       (write-long (length _cmd) s) (princ _cmd s)
     ;; uint32[] _jointIndex
     (write-long (length _jointIndex) s)
     (dotimes (i (length _jointIndex))
       (write-long (elt _jointIndex i) s)
       )
     ;; float64[] _parameter
     (write-long (length _parameter) s)
     (dotimes (i (length _parameter))
       (sys::poke (elt _parameter i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _joint_num
     (setq _joint_num (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _cmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32[] _jointIndex
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _jointIndex (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _jointIndex i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _parameter
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parameter (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _parameter i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get cruiser_msgs::CruiserJointSetting :md5sum-) "2cb5800afbbffbf910bd3074e8d992fb")
(setf (get cruiser_msgs::CruiserJointSetting :datatype-) "cruiser_msgs/CruiserJointSetting")
(setf (get cruiser_msgs::CruiserJointSetting :definition-)
      "int16 joint_num

# Joints name to control in array
# example - [\"stop\", \"set Kp\", \"read zero\"]
string cmd

# Joints index to control in array
uint32[] jointIndex

# Corresponding joints postion
# unit - radian;
# example - [0.54, 1.22, 1.39]
float64[] parameter




")



(provide :cruiser_msgs/CruiserJointSetting "2cb5800afbbffbf910bd3074e8d992fb")


