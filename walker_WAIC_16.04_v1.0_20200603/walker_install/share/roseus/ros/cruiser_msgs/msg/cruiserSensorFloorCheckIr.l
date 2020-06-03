;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::cruiserSensorFloorCheckIr)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'cruiserSensorFloorCheckIr (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISERSENSORFLOORCHECKIR")
  (make-package "CRUISER_MSGS::CRUISERSENSORFLOORCHECKIR"))

(in-package "ROS")
;;//! \htmlinclude cruiserSensorFloorCheckIr.msg.html


(defclass cruiser_msgs::cruiserSensorFloorCheckIr
  :super ros::object
  :slots (_cliff1 _cliff2 _cliff3 _cliff4 _cliff5 _cliff6 ))

(defmethod cruiser_msgs::cruiserSensorFloorCheckIr
  (:init
   (&key
    ((:cliff1 __cliff1) 0)
    ((:cliff2 __cliff2) 0)
    ((:cliff3 __cliff3) 0)
    ((:cliff4 __cliff4) 0)
    ((:cliff5 __cliff5) 0)
    ((:cliff6 __cliff6) 0)
    )
   (send-super :init)
   (setq _cliff1 (round __cliff1))
   (setq _cliff2 (round __cliff2))
   (setq _cliff3 (round __cliff3))
   (setq _cliff4 (round __cliff4))
   (setq _cliff5 (round __cliff5))
   (setq _cliff6 (round __cliff6))
   self)
  (:cliff1
   (&optional __cliff1)
   (if __cliff1 (setq _cliff1 __cliff1)) _cliff1)
  (:cliff2
   (&optional __cliff2)
   (if __cliff2 (setq _cliff2 __cliff2)) _cliff2)
  (:cliff3
   (&optional __cliff3)
   (if __cliff3 (setq _cliff3 __cliff3)) _cliff3)
  (:cliff4
   (&optional __cliff4)
   (if __cliff4 (setq _cliff4 __cliff4)) _cliff4)
  (:cliff5
   (&optional __cliff5)
   (if __cliff5 (setq _cliff5 __cliff5)) _cliff5)
  (:cliff6
   (&optional __cliff6)
   (if __cliff6 (setq _cliff6 __cliff6)) _cliff6)
  (:serialization-length
   ()
   (+
    ;; uint32 _cliff1
    4
    ;; uint32 _cliff2
    4
    ;; uint32 _cliff3
    4
    ;; uint32 _cliff4
    4
    ;; uint32 _cliff5
    4
    ;; uint32 _cliff6
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _cliff1
       (write-long _cliff1 s)
     ;; uint32 _cliff2
       (write-long _cliff2 s)
     ;; uint32 _cliff3
       (write-long _cliff3 s)
     ;; uint32 _cliff4
       (write-long _cliff4 s)
     ;; uint32 _cliff5
       (write-long _cliff5 s)
     ;; uint32 _cliff6
       (write-long _cliff6 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _cliff1
     (setq _cliff1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _cliff2
     (setq _cliff2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _cliff3
     (setq _cliff3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _cliff4
     (setq _cliff4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _cliff5
     (setq _cliff5 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _cliff6
     (setq _cliff6 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cruiser_msgs::cruiserSensorFloorCheckIr :md5sum-) "c371455cf05a44e93c97aa5157fb244c")
(setf (get cruiser_msgs::cruiserSensorFloorCheckIr :datatype-) "cruiser_msgs/cruiserSensorFloorCheckIr")
(setf (get cruiser_msgs::cruiserSensorFloorCheckIr :definition-)
      "uint32 cliff1
uint32 cliff2
uint32 cliff3
uint32 cliff4
uint32 cliff5
uint32 cliff6




")



(provide :cruiser_msgs/cruiserSensorFloorCheckIr "c371455cf05a44e93c97aa5157fb244c")


