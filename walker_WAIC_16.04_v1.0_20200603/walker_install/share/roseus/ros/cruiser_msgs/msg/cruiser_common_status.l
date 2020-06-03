;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::cruiser_common_status)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'cruiser_common_status (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISER_COMMON_STATUS")
  (make-package "CRUISER_MSGS::CRUISER_COMMON_STATUS"))

(in-package "ROS")
;;//! \htmlinclude cruiser_common_status.msg.html


(defclass cruiser_msgs::cruiser_common_status
  :super ros::object
  :slots (_status _value _data ))

(defmethod cruiser_msgs::cruiser_common_status
  (:init
   (&key
    ((:status __status) 0)
    ((:value __value) 0)
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _value (round __value))
   (setq _data (round __data))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; byte _status
    1
    ;; int32 _value
    4
    ;; int32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; byte _status
       (write-byte _status s)
     ;; int32 _value
       (write-long _value s)
     ;; int32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; byte _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cruiser_msgs::cruiser_common_status :md5sum-) "f972a7a5f08896dc553e3bc6f867370f")
(setf (get cruiser_msgs::cruiser_common_status :datatype-) "cruiser_msgs/cruiser_common_status")
(setf (get cruiser_msgs::cruiser_common_status :definition-)
      "#topic obstacleDetect
byte status
int32 value
int32 data
")



(provide :cruiser_msgs/cruiser_common_status "f972a7a5f08896dc553e3bc6f867370f")


