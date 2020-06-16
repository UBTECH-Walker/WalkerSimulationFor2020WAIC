;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::cruiserLedOnOff)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'cruiserLedOnOff (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISERLEDONOFF")
  (make-package "CRUISER_MSGS::CRUISERLEDONOFF"))

(in-package "ROS")
;;//! \htmlinclude cruiserLedOnOff.msg.html


(defclass cruiser_msgs::cruiserLedOnOff
  :super ros::object
  :slots (_onOff ))

(defmethod cruiser_msgs::cruiserLedOnOff
  (:init
   (&key
    ((:onOff __onOff) 0)
    )
   (send-super :init)
   (setq _onOff (round __onOff))
   self)
  (:onOff
   (&optional __onOff)
   (if __onOff (setq _onOff __onOff)) _onOff)
  (:serialization-length
   ()
   (+
    ;; uint32 _onOff
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _onOff
       (write-long _onOff s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _onOff
     (setq _onOff (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cruiser_msgs::cruiserLedOnOff :md5sum-) "5542655f2c2b872f0777fe5564fc094c")
(setf (get cruiser_msgs::cruiserLedOnOff :datatype-) "cruiser_msgs/cruiserLedOnOff")
(setf (get cruiser_msgs::cruiserLedOnOff :definition-)
      "uint32 onOff


")



(provide :cruiser_msgs/cruiserLedOnOff "5542655f2c2b872f0777fe5564fc094c")


