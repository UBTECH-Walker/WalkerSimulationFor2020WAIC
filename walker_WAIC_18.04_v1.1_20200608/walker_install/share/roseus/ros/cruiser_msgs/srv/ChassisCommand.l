;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::ChassisCommand)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'ChassisCommand (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CHASSISCOMMAND")
  (make-package "CRUISER_MSGS::CHASSISCOMMAND"))
(unless (find-package "CRUISER_MSGS::CHASSISCOMMANDREQUEST")
  (make-package "CRUISER_MSGS::CHASSISCOMMANDREQUEST"))
(unless (find-package "CRUISER_MSGS::CHASSISCOMMANDRESPONSE")
  (make-package "CRUISER_MSGS::CHASSISCOMMANDRESPONSE"))

(in-package "ROS")





(defclass cruiser_msgs::ChassisCommandRequest
  :super ros::object
  :slots (_command _x _y _angle ))

(defmethod cruiser_msgs::ChassisCommandRequest
  (:init
   (&key
    ((:command __command) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _command (string __command))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _angle (float __angle))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass cruiser_msgs::ChassisCommandResponse
  :super ros::object
  :slots (_time ))

(defmethod cruiser_msgs::ChassisCommandResponse
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

(defclass cruiser_msgs::ChassisCommand
  :super ros::object
  :slots ())

(setf (get cruiser_msgs::ChassisCommand :md5sum-) "940f7011356df6e59e5a0f812422088b")
(setf (get cruiser_msgs::ChassisCommand :datatype-) "cruiser_msgs/ChassisCommand")
(setf (get cruiser_msgs::ChassisCommand :request) cruiser_msgs::ChassisCommandRequest)
(setf (get cruiser_msgs::ChassisCommand :response) cruiser_msgs::ChassisCommandResponse)

(defmethod cruiser_msgs::ChassisCommandRequest
  (:response () (instance cruiser_msgs::ChassisCommandResponse :init)))

(setf (get cruiser_msgs::ChassisCommandRequest :md5sum-) "940f7011356df6e59e5a0f812422088b")
(setf (get cruiser_msgs::ChassisCommandRequest :datatype-) "cruiser_msgs/ChassisCommandRequest")
(setf (get cruiser_msgs::ChassisCommandRequest :definition-)
      "string command
float64 x
float64 y
float64 angle
---

uint32 time

")

(setf (get cruiser_msgs::ChassisCommandResponse :md5sum-) "940f7011356df6e59e5a0f812422088b")
(setf (get cruiser_msgs::ChassisCommandResponse :datatype-) "cruiser_msgs/ChassisCommandResponse")
(setf (get cruiser_msgs::ChassisCommandResponse :definition-)
      "string command
float64 x
float64 y
float64 angle
---

uint32 time

")



(provide :cruiser_msgs/ChassisCommand "940f7011356df6e59e5a0f812422088b")


