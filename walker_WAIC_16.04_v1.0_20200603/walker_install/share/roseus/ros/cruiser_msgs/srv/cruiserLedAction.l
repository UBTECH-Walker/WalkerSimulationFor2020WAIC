;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::cruiserLedAction)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'cruiserLedAction (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISERLEDACTION")
  (make-package "CRUISER_MSGS::CRUISERLEDACTION"))
(unless (find-package "CRUISER_MSGS::CRUISERLEDACTIONREQUEST")
  (make-package "CRUISER_MSGS::CRUISERLEDACTIONREQUEST"))
(unless (find-package "CRUISER_MSGS::CRUISERLEDACTIONRESPONSE")
  (make-package "CRUISER_MSGS::CRUISERLEDACTIONRESPONSE"))

(in-package "ROS")





(defclass cruiser_msgs::cruiserLedActionRequest
  :super ros::object
  :slots (_type _data0 _data1 _data2 _max_times ))

(defmethod cruiser_msgs::cruiserLedActionRequest
  (:init
   (&key
    ((:type __type) 0)
    ((:data0 __data0) 0)
    ((:data1 __data1) 0)
    ((:data2 __data2) 0)
    ((:max_times __max_times) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _data0 (round __data0))
   (setq _data1 (round __data1))
   (setq _data2 (round __data2))
   (setq _max_times (round __max_times))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:data0
   (&optional __data0)
   (if __data0 (setq _data0 __data0)) _data0)
  (:data1
   (&optional __data1)
   (if __data1 (setq _data1 __data1)) _data1)
  (:data2
   (&optional __data2)
   (if __data2 (setq _data2 __data2)) _data2)
  (:max_times
   (&optional __max_times)
   (if __max_times (setq _max_times __max_times)) _max_times)
  (:serialization-length
   ()
   (+
    ;; uint32 _type
    4
    ;; uint32 _data0
    4
    ;; uint32 _data1
    4
    ;; uint32 _data2
    4
    ;; uint32 _max_times
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _type
       (write-long _type s)
     ;; uint32 _data0
       (write-long _data0 s)
     ;; uint32 _data1
       (write-long _data1 s)
     ;; uint32 _data2
       (write-long _data2 s)
     ;; uint32 _max_times
       (write-long _max_times s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _data0
     (setq _data0 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _data1
     (setq _data1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _data2
     (setq _data2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _max_times
     (setq _max_times (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cruiser_msgs::cruiserLedActionResponse
  :super ros::object
  :slots (_result ))

(defmethod cruiser_msgs::cruiserLedActionResponse
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

(defclass cruiser_msgs::cruiserLedAction
  :super ros::object
  :slots ())

(setf (get cruiser_msgs::cruiserLedAction :md5sum-) "8841f861ab1593cb1f054a475ae4347d")
(setf (get cruiser_msgs::cruiserLedAction :datatype-) "cruiser_msgs/cruiserLedAction")
(setf (get cruiser_msgs::cruiserLedAction :request) cruiser_msgs::cruiserLedActionRequest)
(setf (get cruiser_msgs::cruiserLedAction :response) cruiser_msgs::cruiserLedActionResponse)

(defmethod cruiser_msgs::cruiserLedActionRequest
  (:response () (instance cruiser_msgs::cruiserLedActionResponse :init)))

(setf (get cruiser_msgs::cruiserLedActionRequest :md5sum-) "8841f861ab1593cb1f054a475ae4347d")
(setf (get cruiser_msgs::cruiserLedActionRequest :datatype-) "cruiser_msgs/cruiserLedActionRequest")
(setf (get cruiser_msgs::cruiserLedActionRequest :definition-)
      "uint32 type
uint32 data0
uint32 data1
uint32 data2
uint32 max_times
---
uint32 result


")

(setf (get cruiser_msgs::cruiserLedActionResponse :md5sum-) "8841f861ab1593cb1f054a475ae4347d")
(setf (get cruiser_msgs::cruiserLedActionResponse :datatype-) "cruiser_msgs/cruiserLedActionResponse")
(setf (get cruiser_msgs::cruiserLedActionResponse :definition-)
      "uint32 type
uint32 data0
uint32 data1
uint32 data2
uint32 max_times
---
uint32 result


")



(provide :cruiser_msgs/cruiserLedAction "8841f861ab1593cb1f054a475ae4347d")


