;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::ClearUMap)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'ClearUMap (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CLEARUMAP")
  (make-package "CRUISER_MSGS::CLEARUMAP"))
(unless (find-package "CRUISER_MSGS::CLEARUMAPREQUEST")
  (make-package "CRUISER_MSGS::CLEARUMAPREQUEST"))
(unless (find-package "CRUISER_MSGS::CLEARUMAPRESPONSE")
  (make-package "CRUISER_MSGS::CLEARUMAPRESPONSE"))

(in-package "ROS")





(defclass cruiser_msgs::ClearUMapRequest
  :super ros::object
  :slots ())

(defmethod cruiser_msgs::ClearUMapRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass cruiser_msgs::ClearUMapResponse
  :super ros::object
  :slots (_success ))

(defmethod cruiser_msgs::ClearUMapResponse
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

(defclass cruiser_msgs::ClearUMap
  :super ros::object
  :slots ())

(setf (get cruiser_msgs::ClearUMap :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get cruiser_msgs::ClearUMap :datatype-) "cruiser_msgs/ClearUMap")
(setf (get cruiser_msgs::ClearUMap :request) cruiser_msgs::ClearUMapRequest)
(setf (get cruiser_msgs::ClearUMap :response) cruiser_msgs::ClearUMapResponse)

(defmethod cruiser_msgs::ClearUMapRequest
  (:response () (instance cruiser_msgs::ClearUMapResponse :init)))

(setf (get cruiser_msgs::ClearUMapRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get cruiser_msgs::ClearUMapRequest :datatype-) "cruiser_msgs/ClearUMapRequest")
(setf (get cruiser_msgs::ClearUMapRequest :definition-)
      "---
bool success

")

(setf (get cruiser_msgs::ClearUMapResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get cruiser_msgs::ClearUMapResponse :datatype-) "cruiser_msgs/ClearUMapResponse")
(setf (get cruiser_msgs::ClearUMapResponse :definition-)
      "---
bool success

")



(provide :cruiser_msgs/ClearUMap "358e233cde0c8a8bcfea4ce193f8fc15")


