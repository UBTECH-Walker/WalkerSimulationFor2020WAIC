;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::CruiserBrakeCtl)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'CruiserBrakeCtl (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISERBRAKECTL")
  (make-package "CRUISER_MSGS::CRUISERBRAKECTL"))

(in-package "ROS")
;;//! \htmlinclude CruiserBrakeCtl.msg.html


(defclass cruiser_msgs::CruiserBrakeCtl
  :super ros::object
  :slots (_brake ))

(defmethod cruiser_msgs::CruiserBrakeCtl
  (:init
   (&key
    ((:brake __brake) nil)
    )
   (send-super :init)
   (setq _brake __brake)
   self)
  (:brake
   (&optional __brake)
   (if __brake (setq _brake __brake)) _brake)
  (:serialization-length
   ()
   (+
    ;; bool _brake
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _brake
       (if _brake (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _brake
     (setq _brake (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get cruiser_msgs::CruiserBrakeCtl :md5sum-) "691501d2b5eb4dc01a97397d7baf5fba")
(setf (get cruiser_msgs::CruiserBrakeCtl :datatype-) "cruiser_msgs/CruiserBrakeCtl")
(setf (get cruiser_msgs::CruiserBrakeCtl :definition-)
      "# cruiser brake control,topic name \"Cruiser_brake\"
# brake=1,brake cruiser
# brake=0,reset to normal
bool brake


")



(provide :cruiser_msgs/CruiserBrakeCtl "691501d2b5eb4dc01a97397d7baf5fba")


