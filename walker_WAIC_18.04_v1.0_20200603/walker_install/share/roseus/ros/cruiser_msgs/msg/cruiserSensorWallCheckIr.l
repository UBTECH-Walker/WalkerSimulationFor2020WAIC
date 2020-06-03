;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::cruiserSensorWallCheckIr)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'cruiserSensorWallCheckIr (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISERSENSORWALLCHECKIR")
  (make-package "CRUISER_MSGS::CRUISERSENSORWALLCHECKIR"))

(in-package "ROS")
;;//! \htmlinclude cruiserSensorWallCheckIr.msg.html


(defclass cruiser_msgs::cruiserSensorWallCheckIr
  :super ros::object
  :slots (_dist1 _dist2 _dist3 _dist4 _dist5 _dist6 ))

(defmethod cruiser_msgs::cruiserSensorWallCheckIr
  (:init
   (&key
    ((:dist1 __dist1) 0)
    ((:dist2 __dist2) 0)
    ((:dist3 __dist3) 0)
    ((:dist4 __dist4) 0)
    ((:dist5 __dist5) 0)
    ((:dist6 __dist6) 0)
    )
   (send-super :init)
   (setq _dist1 (round __dist1))
   (setq _dist2 (round __dist2))
   (setq _dist3 (round __dist3))
   (setq _dist4 (round __dist4))
   (setq _dist5 (round __dist5))
   (setq _dist6 (round __dist6))
   self)
  (:dist1
   (&optional __dist1)
   (if __dist1 (setq _dist1 __dist1)) _dist1)
  (:dist2
   (&optional __dist2)
   (if __dist2 (setq _dist2 __dist2)) _dist2)
  (:dist3
   (&optional __dist3)
   (if __dist3 (setq _dist3 __dist3)) _dist3)
  (:dist4
   (&optional __dist4)
   (if __dist4 (setq _dist4 __dist4)) _dist4)
  (:dist5
   (&optional __dist5)
   (if __dist5 (setq _dist5 __dist5)) _dist5)
  (:dist6
   (&optional __dist6)
   (if __dist6 (setq _dist6 __dist6)) _dist6)
  (:serialization-length
   ()
   (+
    ;; uint32 _dist1
    4
    ;; uint32 _dist2
    4
    ;; uint32 _dist3
    4
    ;; uint32 _dist4
    4
    ;; uint32 _dist5
    4
    ;; uint32 _dist6
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _dist1
       (write-long _dist1 s)
     ;; uint32 _dist2
       (write-long _dist2 s)
     ;; uint32 _dist3
       (write-long _dist3 s)
     ;; uint32 _dist4
       (write-long _dist4 s)
     ;; uint32 _dist5
       (write-long _dist5 s)
     ;; uint32 _dist6
       (write-long _dist6 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _dist1
     (setq _dist1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _dist2
     (setq _dist2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _dist3
     (setq _dist3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _dist4
     (setq _dist4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _dist5
     (setq _dist5 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _dist6
     (setq _dist6 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cruiser_msgs::cruiserSensorWallCheckIr :md5sum-) "2899b05469a7aab9f6a6ab873a44b165")
(setf (get cruiser_msgs::cruiserSensorWallCheckIr :datatype-) "cruiser_msgs/cruiserSensorWallCheckIr")
(setf (get cruiser_msgs::cruiserSensorWallCheckIr :definition-)
      "uint32 dist1
uint32 dist2
uint32 dist3
uint32 dist4
uint32 dist5
uint32 dist6




")



(provide :cruiser_msgs/cruiserSensorWallCheckIr "2899b05469a7aab9f6a6ab873a44b165")


