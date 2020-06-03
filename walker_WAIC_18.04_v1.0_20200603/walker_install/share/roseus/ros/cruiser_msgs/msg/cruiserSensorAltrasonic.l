;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::cruiserSensorAltrasonic)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'cruiserSensorAltrasonic (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISERSENSORALTRASONIC")
  (make-package "CRUISER_MSGS::CRUISERSENSORALTRASONIC"))

(in-package "ROS")
;;//! \htmlinclude cruiserSensorAltrasonic.msg.html


(defclass cruiser_msgs::cruiserSensorAltrasonic
  :super ros::object
  :slots (_distance1 _distance2 _distance3 _distance4 _distance5 _distance6 _waist_distance1 _waist_distance2 _waist_distance3 _waist_distance4 _waist_distance5 _waist_distance6 _waist_microwave ))

(defmethod cruiser_msgs::cruiserSensorAltrasonic
  (:init
   (&key
    ((:distance1 __distance1) 0)
    ((:distance2 __distance2) 0)
    ((:distance3 __distance3) 0)
    ((:distance4 __distance4) 0)
    ((:distance5 __distance5) 0)
    ((:distance6 __distance6) 0)
    ((:waist_distance1 __waist_distance1) 0)
    ((:waist_distance2 __waist_distance2) 0)
    ((:waist_distance3 __waist_distance3) 0)
    ((:waist_distance4 __waist_distance4) 0)
    ((:waist_distance5 __waist_distance5) 0)
    ((:waist_distance6 __waist_distance6) 0)
    ((:waist_microwave __waist_microwave) 0)
    )
   (send-super :init)
   (setq _distance1 (round __distance1))
   (setq _distance2 (round __distance2))
   (setq _distance3 (round __distance3))
   (setq _distance4 (round __distance4))
   (setq _distance5 (round __distance5))
   (setq _distance6 (round __distance6))
   (setq _waist_distance1 (round __waist_distance1))
   (setq _waist_distance2 (round __waist_distance2))
   (setq _waist_distance3 (round __waist_distance3))
   (setq _waist_distance4 (round __waist_distance4))
   (setq _waist_distance5 (round __waist_distance5))
   (setq _waist_distance6 (round __waist_distance6))
   (setq _waist_microwave (round __waist_microwave))
   self)
  (:distance1
   (&optional __distance1)
   (if __distance1 (setq _distance1 __distance1)) _distance1)
  (:distance2
   (&optional __distance2)
   (if __distance2 (setq _distance2 __distance2)) _distance2)
  (:distance3
   (&optional __distance3)
   (if __distance3 (setq _distance3 __distance3)) _distance3)
  (:distance4
   (&optional __distance4)
   (if __distance4 (setq _distance4 __distance4)) _distance4)
  (:distance5
   (&optional __distance5)
   (if __distance5 (setq _distance5 __distance5)) _distance5)
  (:distance6
   (&optional __distance6)
   (if __distance6 (setq _distance6 __distance6)) _distance6)
  (:waist_distance1
   (&optional __waist_distance1)
   (if __waist_distance1 (setq _waist_distance1 __waist_distance1)) _waist_distance1)
  (:waist_distance2
   (&optional __waist_distance2)
   (if __waist_distance2 (setq _waist_distance2 __waist_distance2)) _waist_distance2)
  (:waist_distance3
   (&optional __waist_distance3)
   (if __waist_distance3 (setq _waist_distance3 __waist_distance3)) _waist_distance3)
  (:waist_distance4
   (&optional __waist_distance4)
   (if __waist_distance4 (setq _waist_distance4 __waist_distance4)) _waist_distance4)
  (:waist_distance5
   (&optional __waist_distance5)
   (if __waist_distance5 (setq _waist_distance5 __waist_distance5)) _waist_distance5)
  (:waist_distance6
   (&optional __waist_distance6)
   (if __waist_distance6 (setq _waist_distance6 __waist_distance6)) _waist_distance6)
  (:waist_microwave
   (&optional __waist_microwave)
   (if __waist_microwave (setq _waist_microwave __waist_microwave)) _waist_microwave)
  (:serialization-length
   ()
   (+
    ;; uint32 _distance1
    4
    ;; uint32 _distance2
    4
    ;; uint32 _distance3
    4
    ;; uint32 _distance4
    4
    ;; uint32 _distance5
    4
    ;; uint32 _distance6
    4
    ;; uint32 _waist_distance1
    4
    ;; uint32 _waist_distance2
    4
    ;; uint32 _waist_distance3
    4
    ;; uint32 _waist_distance4
    4
    ;; uint32 _waist_distance5
    4
    ;; uint32 _waist_distance6
    4
    ;; uint32 _waist_microwave
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _distance1
       (write-long _distance1 s)
     ;; uint32 _distance2
       (write-long _distance2 s)
     ;; uint32 _distance3
       (write-long _distance3 s)
     ;; uint32 _distance4
       (write-long _distance4 s)
     ;; uint32 _distance5
       (write-long _distance5 s)
     ;; uint32 _distance6
       (write-long _distance6 s)
     ;; uint32 _waist_distance1
       (write-long _waist_distance1 s)
     ;; uint32 _waist_distance2
       (write-long _waist_distance2 s)
     ;; uint32 _waist_distance3
       (write-long _waist_distance3 s)
     ;; uint32 _waist_distance4
       (write-long _waist_distance4 s)
     ;; uint32 _waist_distance5
       (write-long _waist_distance5 s)
     ;; uint32 _waist_distance6
       (write-long _waist_distance6 s)
     ;; uint32 _waist_microwave
       (write-long _waist_microwave s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _distance1
     (setq _distance1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _distance2
     (setq _distance2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _distance3
     (setq _distance3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _distance4
     (setq _distance4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _distance5
     (setq _distance5 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _distance6
     (setq _distance6 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _waist_distance1
     (setq _waist_distance1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _waist_distance2
     (setq _waist_distance2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _waist_distance3
     (setq _waist_distance3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _waist_distance4
     (setq _waist_distance4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _waist_distance5
     (setq _waist_distance5 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _waist_distance6
     (setq _waist_distance6 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _waist_microwave
     (setq _waist_microwave (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cruiser_msgs::cruiserSensorAltrasonic :md5sum-) "52802149de24fd2581b097f77f88a09b")
(setf (get cruiser_msgs::cruiserSensorAltrasonic :datatype-) "cruiser_msgs/cruiserSensorAltrasonic")
(setf (get cruiser_msgs::cruiserSensorAltrasonic :definition-)
      "uint32 distance1
uint32 distance2
uint32 distance3
uint32 distance4
uint32 distance5
uint32 distance6

uint32 waist_distance1
uint32 waist_distance2
uint32 waist_distance3
uint32 waist_distance4
uint32 waist_distance5
uint32 waist_distance6

uint32 waist_microwave



")



(provide :cruiser_msgs/cruiserSensorAltrasonic "52802149de24fd2581b097f77f88a09b")


