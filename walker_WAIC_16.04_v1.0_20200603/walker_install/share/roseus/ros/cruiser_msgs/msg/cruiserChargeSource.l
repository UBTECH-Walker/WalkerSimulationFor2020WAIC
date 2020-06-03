;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::cruiserChargeSource)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'cruiserChargeSource (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISERCHARGESOURCE")
  (make-package "CRUISER_MSGS::CRUISERCHARGESOURCE"))

(in-package "ROS")
;;//! \htmlinclude cruiserChargeSource.msg.html


(defclass cruiser_msgs::cruiserChargeSource
  :super ros::object
  :slots (_charge_source ))

(defmethod cruiser_msgs::cruiserChargeSource
  (:init
   (&key
    ((:charge_source __charge_source) 0)
    )
   (send-super :init)
   (setq _charge_source (round __charge_source))
   self)
  (:charge_source
   (&optional __charge_source)
   (if __charge_source (setq _charge_source __charge_source)) _charge_source)
  (:serialization-length
   ()
   (+
    ;; uint32 _charge_source
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _charge_source
       (write-long _charge_source s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _charge_source
     (setq _charge_source (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cruiser_msgs::cruiserChargeSource :md5sum-) "13f65a61a1eae98cfcb8a07995a5d081")
(setf (get cruiser_msgs::cruiserChargeSource :datatype-) "cruiser_msgs/cruiserChargeSource")
(setf (get cruiser_msgs::cruiserChargeSource :definition-)
      "uint32 charge_source


")



(provide :cruiser_msgs/cruiserChargeSource "13f65a61a1eae98cfcb8a07995a5d081")


