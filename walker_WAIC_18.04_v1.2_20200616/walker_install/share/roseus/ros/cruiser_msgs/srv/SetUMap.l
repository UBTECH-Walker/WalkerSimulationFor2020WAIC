;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::SetUMap)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'SetUMap (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::SETUMAP")
  (make-package "CRUISER_MSGS::SETUMAP"))
(unless (find-package "CRUISER_MSGS::SETUMAPREQUEST")
  (make-package "CRUISER_MSGS::SETUMAPREQUEST"))
(unless (find-package "CRUISER_MSGS::SETUMAPRESPONSE")
  (make-package "CRUISER_MSGS::SETUMAPRESPONSE"))

(in-package "ROS")





(defclass cruiser_msgs::SetUMapRequest
  :super ros::object
  :slots (_data ))

(defmethod cruiser_msgs::SetUMapRequest
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cruiser_msgs::SetUMapResponse
  :super ros::object
  :slots (_success ))

(defmethod cruiser_msgs::SetUMapResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cruiser_msgs::SetUMap
  :super ros::object
  :slots ())

(setf (get cruiser_msgs::SetUMap :md5sum-) "e7ac98ca304b04e45988c61adb6bc4ce")
(setf (get cruiser_msgs::SetUMap :datatype-) "cruiser_msgs/SetUMap")
(setf (get cruiser_msgs::SetUMap :request) cruiser_msgs::SetUMapRequest)
(setf (get cruiser_msgs::SetUMap :response) cruiser_msgs::SetUMapResponse)

(defmethod cruiser_msgs::SetUMapRequest
  (:response () (instance cruiser_msgs::SetUMapResponse :init)))

(setf (get cruiser_msgs::SetUMapRequest :md5sum-) "e7ac98ca304b04e45988c61adb6bc4ce")
(setf (get cruiser_msgs::SetUMapRequest :datatype-) "cruiser_msgs/SetUMapRequest")
(setf (get cruiser_msgs::SetUMapRequest :definition-)
      "string data
---
bool success

")

(setf (get cruiser_msgs::SetUMapResponse :md5sum-) "e7ac98ca304b04e45988c61adb6bc4ce")
(setf (get cruiser_msgs::SetUMapResponse :datatype-) "cruiser_msgs/SetUMapResponse")
(setf (get cruiser_msgs::SetUMapResponse :definition-)
      "string data
---
bool success

")



(provide :cruiser_msgs/SetUMap "e7ac98ca304b04e45988c61adb6bc4ce")


