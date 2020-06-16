;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::cruiserPowerCmd)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'cruiserPowerCmd (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISERPOWERCMD")
  (make-package "CRUISER_MSGS::CRUISERPOWERCMD"))

(in-package "ROS")
;;//! \htmlinclude cruiserPowerCmd.msg.html


(defclass cruiser_msgs::cruiserPowerCmd
  :super ros::object
  :slots (_power_cmd ))

(defmethod cruiser_msgs::cruiserPowerCmd
  (:init
   (&key
    ((:power_cmd __power_cmd) 0)
    )
   (send-super :init)
   (setq _power_cmd (round __power_cmd))
   self)
  (:power_cmd
   (&optional __power_cmd)
   (if __power_cmd (setq _power_cmd __power_cmd)) _power_cmd)
  (:serialization-length
   ()
   (+
    ;; uint32 _power_cmd
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _power_cmd
       (write-long _power_cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _power_cmd
     (setq _power_cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cruiser_msgs::cruiserPowerCmd :md5sum-) "095e92debc6bcb5e7317d4b6d9d2054c")
(setf (get cruiser_msgs::cruiserPowerCmd :datatype-) "cruiser_msgs/cruiserPowerCmd")
(setf (get cruiser_msgs::cruiserPowerCmd :definition-)
      "uint32 power_cmd



")



(provide :cruiser_msgs/cruiserPowerCmd "095e92debc6bcb5e7317d4b6d9d2054c")


