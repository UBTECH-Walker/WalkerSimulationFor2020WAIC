;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::canudpSend)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'canudpSend (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CANUDPSEND")
  (make-package "CRUISER_MSGS::CANUDPSEND"))
(unless (find-package "CRUISER_MSGS::CANUDPSENDREQUEST")
  (make-package "CRUISER_MSGS::CANUDPSENDREQUEST"))
(unless (find-package "CRUISER_MSGS::CANUDPSENDRESPONSE")
  (make-package "CRUISER_MSGS::CANUDPSENDRESPONSE"))

(in-package "ROS")





(defclass cruiser_msgs::canudpSendRequest
  :super ros::object
  :slots (_priority _packetdata ))

(defmethod cruiser_msgs::canudpSendRequest
  (:init
   (&key
    ((:priority __priority) 0)
    ((:packetdata __packetdata) "")
    )
   (send-super :init)
   (setq _priority (round __priority))
   (setq _packetdata (string __packetdata))
   self)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:packetdata
   (&optional __packetdata)
   (if __packetdata (setq _packetdata __packetdata)) _packetdata)
  (:serialization-length
   ()
   (+
    ;; uint32 _priority
    4
    ;; string _packetdata
    4 (length _packetdata)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _priority
       (write-long _priority s)
     ;; string _packetdata
       (write-long (length _packetdata) s) (princ _packetdata s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _priority
     (setq _priority (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _packetdata
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _packetdata (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cruiser_msgs::canudpSendResponse
  :super ros::object
  :slots (_time ))

(defmethod cruiser_msgs::canudpSendResponse
  (:init
   (&key
    ((:time __time) 0)
    )
   (send-super :init)
   (setq _time (round __time))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; uint32 _time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _time
       (write-long _time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _time
     (setq _time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cruiser_msgs::canudpSend
  :super ros::object
  :slots ())

(setf (get cruiser_msgs::canudpSend :md5sum-) "5b1b6b129155e5a4f811f32ad75d66ed")
(setf (get cruiser_msgs::canudpSend :datatype-) "cruiser_msgs/canudpSend")
(setf (get cruiser_msgs::canudpSend :request) cruiser_msgs::canudpSendRequest)
(setf (get cruiser_msgs::canudpSend :response) cruiser_msgs::canudpSendResponse)

(defmethod cruiser_msgs::canudpSendRequest
  (:response () (instance cruiser_msgs::canudpSendResponse :init)))

(setf (get cruiser_msgs::canudpSendRequest :md5sum-) "5b1b6b129155e5a4f811f32ad75d66ed")
(setf (get cruiser_msgs::canudpSendRequest :datatype-) "cruiser_msgs/canudpSendRequest")
(setf (get cruiser_msgs::canudpSendRequest :definition-)
      "uint32 priority
string packetdata
---

uint32 time


")

(setf (get cruiser_msgs::canudpSendResponse :md5sum-) "5b1b6b129155e5a4f811f32ad75d66ed")
(setf (get cruiser_msgs::canudpSendResponse :datatype-) "cruiser_msgs/canudpSendResponse")
(setf (get cruiser_msgs::canudpSendResponse :definition-)
      "uint32 priority
string packetdata
---

uint32 time


")



(provide :cruiser_msgs/canudpSend "5b1b6b129155e5a4f811f32ad75d66ed")


