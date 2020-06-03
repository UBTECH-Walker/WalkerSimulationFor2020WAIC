;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::cruiserSensorAction)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'cruiserSensorAction (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISERSENSORACTION")
  (make-package "CRUISER_MSGS::CRUISERSENSORACTION"))
(unless (find-package "CRUISER_MSGS::CRUISERSENSORACTIONREQUEST")
  (make-package "CRUISER_MSGS::CRUISERSENSORACTIONREQUEST"))
(unless (find-package "CRUISER_MSGS::CRUISERSENSORACTIONRESPONSE")
  (make-package "CRUISER_MSGS::CRUISERSENSORACTIONRESPONSE"))

(in-package "ROS")





(defclass cruiser_msgs::cruiserSensorActionRequest
  :super ros::object
  :slots (_ultrasound_freq _wall_ir_freq _charge_ir_freq ))

(defmethod cruiser_msgs::cruiserSensorActionRequest
  (:init
   (&key
    ((:ultrasound_freq __ultrasound_freq) 0)
    ((:wall_ir_freq __wall_ir_freq) 0)
    ((:charge_ir_freq __charge_ir_freq) 0)
    )
   (send-super :init)
   (setq _ultrasound_freq (round __ultrasound_freq))
   (setq _wall_ir_freq (round __wall_ir_freq))
   (setq _charge_ir_freq (round __charge_ir_freq))
   self)
  (:ultrasound_freq
   (&optional __ultrasound_freq)
   (if __ultrasound_freq (setq _ultrasound_freq __ultrasound_freq)) _ultrasound_freq)
  (:wall_ir_freq
   (&optional __wall_ir_freq)
   (if __wall_ir_freq (setq _wall_ir_freq __wall_ir_freq)) _wall_ir_freq)
  (:charge_ir_freq
   (&optional __charge_ir_freq)
   (if __charge_ir_freq (setq _charge_ir_freq __charge_ir_freq)) _charge_ir_freq)
  (:serialization-length
   ()
   (+
    ;; uint32 _ultrasound_freq
    4
    ;; uint32 _wall_ir_freq
    4
    ;; uint32 _charge_ir_freq
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _ultrasound_freq
       (write-long _ultrasound_freq s)
     ;; uint32 _wall_ir_freq
       (write-long _wall_ir_freq s)
     ;; uint32 _charge_ir_freq
       (write-long _charge_ir_freq s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _ultrasound_freq
     (setq _ultrasound_freq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _wall_ir_freq
     (setq _wall_ir_freq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _charge_ir_freq
     (setq _charge_ir_freq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cruiser_msgs::cruiserSensorActionResponse
  :super ros::object
  :slots (_result ))

(defmethod cruiser_msgs::cruiserSensorActionResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cruiser_msgs::cruiserSensorAction
  :super ros::object
  :slots ())

(setf (get cruiser_msgs::cruiserSensorAction :md5sum-) "dfcebdc80a8b049e6a92382d5d1f31d8")
(setf (get cruiser_msgs::cruiserSensorAction :datatype-) "cruiser_msgs/cruiserSensorAction")
(setf (get cruiser_msgs::cruiserSensorAction :request) cruiser_msgs::cruiserSensorActionRequest)
(setf (get cruiser_msgs::cruiserSensorAction :response) cruiser_msgs::cruiserSensorActionResponse)

(defmethod cruiser_msgs::cruiserSensorActionRequest
  (:response () (instance cruiser_msgs::cruiserSensorActionResponse :init)))

(setf (get cruiser_msgs::cruiserSensorActionRequest :md5sum-) "dfcebdc80a8b049e6a92382d5d1f31d8")
(setf (get cruiser_msgs::cruiserSensorActionRequest :datatype-) "cruiser_msgs/cruiserSensorActionRequest")
(setf (get cruiser_msgs::cruiserSensorActionRequest :definition-)
      "uint32 ultrasound_freq
uint32 wall_ir_freq
uint32 charge_ir_freq
---
uint32 result


")

(setf (get cruiser_msgs::cruiserSensorActionResponse :md5sum-) "dfcebdc80a8b049e6a92382d5d1f31d8")
(setf (get cruiser_msgs::cruiserSensorActionResponse :datatype-) "cruiser_msgs/cruiserSensorActionResponse")
(setf (get cruiser_msgs::cruiserSensorActionResponse :definition-)
      "uint32 ultrasound_freq
uint32 wall_ir_freq
uint32 charge_ir_freq
---
uint32 result


")



(provide :cruiser_msgs/cruiserSensorAction "dfcebdc80a8b049e6a92382d5d1f31d8")


