;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::joint_abnor)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'joint_abnor (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::JOINT_ABNOR")
  (make-package "CRUISER_MSGS::JOINT_ABNOR"))

(in-package "ROS")
;;//! \htmlinclude joint_abnor.msg.html


(defclass cruiser_msgs::joint_abnor
  :super ros::object
  :slots (_jointName _jointIndex _abnorState ))

(defmethod cruiser_msgs::joint_abnor
  (:init
   (&key
    ((:jointName __jointName) "")
    ((:jointIndex __jointIndex) 0)
    ((:abnorState __abnorState) 0)
    )
   (send-super :init)
   (setq _jointName (string __jointName))
   (setq _jointIndex (round __jointIndex))
   (setq _abnorState (round __abnorState))
   self)
  (:jointName
   (&optional __jointName)
   (if __jointName (setq _jointName __jointName)) _jointName)
  (:jointIndex
   (&optional __jointIndex)
   (if __jointIndex (setq _jointIndex __jointIndex)) _jointIndex)
  (:abnorState
   (&optional __abnorState)
   (if __abnorState (setq _abnorState __abnorState)) _abnorState)
  (:serialization-length
   ()
   (+
    ;; string _jointName
    4 (length _jointName)
    ;; int32 _jointIndex
    4
    ;; int32 _abnorState
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _jointName
       (write-long (length _jointName) s) (princ _jointName s)
     ;; int32 _jointIndex
       (write-long _jointIndex s)
     ;; int32 _abnorState
       (write-long _abnorState s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _jointName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _jointName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _jointIndex
     (setq _jointIndex (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _abnorState
     (setq _abnorState (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cruiser_msgs::joint_abnor :md5sum-) "d33fc6a742571f80a3793eed68aa9c0d")
(setf (get cruiser_msgs::joint_abnor :datatype-) "cruiser_msgs/joint_abnor")
(setf (get cruiser_msgs::joint_abnor :definition-)
      "string jointName

# Joints index
int32 jointIndex

# abnorState
# 1:low Temperature protection
# 2:high Temperature protection
# 3:low voltage portection
# 4:high voltage portection
# 5:current portection
# 6:force portection
# 7:fuse portection
# 8:PWM portection
int32 abnorState

")



(provide :cruiser_msgs/joint_abnor "d33fc6a742571f80a3793eed68aa9c0d")


