;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::cruiserNavigation)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'cruiserNavigation (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISERNAVIGATION")
  (make-package "CRUISER_MSGS::CRUISERNAVIGATION"))

(in-package "ROS")
;;//! \htmlinclude cruiserNavigation.msg.html


(defclass cruiser_msgs::cruiserNavigation
  :super ros::object
  :slots (_status _x _y _z ))

(defmethod cruiser_msgs::cruiserNavigation
  (:init
   (&key
    ((:status __status) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cruiser_msgs::cruiserNavigation :md5sum-) "642d9c319d5c7baae9a2379db7fbe1e5")
(setf (get cruiser_msgs::cruiserNavigation :datatype-) "cruiser_msgs/cruiserNavigation")
(setf (get cruiser_msgs::cruiserNavigation :definition-)
      "int32 status
float32 x
float32 y
float32 z

")



(provide :cruiser_msgs/cruiserNavigation "642d9c319d5c7baae9a2379db7fbe1e5")


