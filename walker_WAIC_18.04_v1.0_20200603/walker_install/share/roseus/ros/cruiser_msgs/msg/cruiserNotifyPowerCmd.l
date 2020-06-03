;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::cruiserNotifyPowerCmd)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'cruiserNotifyPowerCmd (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISERNOTIFYPOWERCMD")
  (make-package "CRUISER_MSGS::CRUISERNOTIFYPOWERCMD"))

(in-package "ROS")
;;//! \htmlinclude cruiserNotifyPowerCmd.msg.html


(defclass cruiser_msgs::cruiserNotifyPowerCmd
  :super ros::object
  :slots (_power_notify_cmd ))

(defmethod cruiser_msgs::cruiserNotifyPowerCmd
  (:init
   (&key
    ((:power_notify_cmd __power_notify_cmd) 0)
    )
   (send-super :init)
   (setq _power_notify_cmd (round __power_notify_cmd))
   self)
  (:power_notify_cmd
   (&optional __power_notify_cmd)
   (if __power_notify_cmd (setq _power_notify_cmd __power_notify_cmd)) _power_notify_cmd)
  (:serialization-length
   ()
   (+
    ;; uint32 _power_notify_cmd
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _power_notify_cmd
       (write-long _power_notify_cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _power_notify_cmd
     (setq _power_notify_cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cruiser_msgs::cruiserNotifyPowerCmd :md5sum-) "92121c1a8961e00ed0dd1b8e75ec98a1")
(setf (get cruiser_msgs::cruiserNotifyPowerCmd :datatype-) "cruiser_msgs/cruiserNotifyPowerCmd")
(setf (get cruiser_msgs::cruiserNotifyPowerCmd :definition-)
      "uint32 power_notify_cmd



")



(provide :cruiser_msgs/cruiserNotifyPowerCmd "92121c1a8961e00ed0dd1b8e75ec98a1")


