;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::cruiserLocomotionStatus)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'cruiserLocomotionStatus (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISERLOCOMOTIONSTATUS")
  (make-package "CRUISER_MSGS::CRUISERLOCOMOTIONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude cruiserLocomotionStatus.msg.html


(defclass cruiser_msgs::cruiserLocomotionStatus
  :super ros::object
  :slots (_status _vx _vy _vz ))

(defmethod cruiser_msgs::cruiserLocomotionStatus
  (:init
   (&key
    ((:status __status) 0)
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vz __vz) 0.0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vz (float __vz))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vz
   (&optional __vz)
   (if __vz (setq _vz __vz)) _vz)
  (:serialization-length
   ()
   (+
    ;; uint32 _status
    4
    ;; float32 _vx
    4
    ;; float32 _vy
    4
    ;; float32 _vz
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _status
       (write-long _status s)
     ;; float32 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vz
       (sys::poke _vz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _vx
     (setq _vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vy
     (setq _vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vz
     (setq _vz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cruiser_msgs::cruiserLocomotionStatus :md5sum-) "e713c1a9d9ca1e3ec2ae4bd0d8ac35e3")
(setf (get cruiser_msgs::cruiserLocomotionStatus :datatype-) "cruiser_msgs/cruiserLocomotionStatus")
(setf (get cruiser_msgs::cruiserLocomotionStatus :definition-)
      "uint32 status
float32 vx
float32 vy
float32 vz


")



(provide :cruiser_msgs/cruiserLocomotionStatus "e713c1a9d9ca1e3ec2ae4bd0d8ac35e3")


