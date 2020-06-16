;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::humiture)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'humiture (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::HUMITURE")
  (make-package "CRUISER_MSGS::HUMITURE"))
(unless (find-package "CRUISER_MSGS::HUMITUREREQUEST")
  (make-package "CRUISER_MSGS::HUMITUREREQUEST"))
(unless (find-package "CRUISER_MSGS::HUMITURERESPONSE")
  (make-package "CRUISER_MSGS::HUMITURERESPONSE"))

(in-package "ROS")





(defclass cruiser_msgs::humitureRequest
  :super ros::object
  :slots (_priority _packetdata ))

(defmethod cruiser_msgs::humitureRequest
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

(defclass cruiser_msgs::humitureResponse
  :super ros::object
  :slots (_temperature _humidity _message ))

(defmethod cruiser_msgs::humitureResponse
  (:init
   (&key
    ((:temperature __temperature) 0.0)
    ((:humidity __humidity) 0.0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _temperature (float __temperature))
   (setq _humidity (float __humidity))
   (setq _message (string __message))
   self)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:humidity
   (&optional __humidity)
   (if __humidity (setq _humidity __humidity)) _humidity)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; float64 _temperature
    8
    ;; float64 _humidity
    8
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _humidity
       (sys::poke _humidity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _temperature
     (setq _temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _humidity
     (setq _humidity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cruiser_msgs::humiture
  :super ros::object
  :slots ())

(setf (get cruiser_msgs::humiture :md5sum-) "f4a4dcb285b63a8cabca03177b46fc2d")
(setf (get cruiser_msgs::humiture :datatype-) "cruiser_msgs/humiture")
(setf (get cruiser_msgs::humiture :request) cruiser_msgs::humitureRequest)
(setf (get cruiser_msgs::humiture :response) cruiser_msgs::humitureResponse)

(defmethod cruiser_msgs::humitureRequest
  (:response () (instance cruiser_msgs::humitureResponse :init)))

(setf (get cruiser_msgs::humitureRequest :md5sum-) "f4a4dcb285b63a8cabca03177b46fc2d")
(setf (get cruiser_msgs::humitureRequest :datatype-) "cruiser_msgs/humitureRequest")
(setf (get cruiser_msgs::humitureRequest :definition-)
      "uint32 priority
string packetdata
---
# time in millisecond. 1000 stands for 1s
float64 temperature
float64 humidity
string message

")

(setf (get cruiser_msgs::humitureResponse :md5sum-) "f4a4dcb285b63a8cabca03177b46fc2d")
(setf (get cruiser_msgs::humitureResponse :datatype-) "cruiser_msgs/humitureResponse")
(setf (get cruiser_msgs::humitureResponse :definition-)
      "uint32 priority
string packetdata
---
# time in millisecond. 1000 stands for 1s
float64 temperature
float64 humidity
string message

")



(provide :cruiser_msgs/humiture "f4a4dcb285b63a8cabca03177b46fc2d")


