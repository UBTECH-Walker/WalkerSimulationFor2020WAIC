;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::rgbdApproach)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'rgbdApproach (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::RGBDAPPROACH")
  (make-package "CRUISER_MSGS::RGBDAPPROACH"))

(in-package "ROS")
;;//! \htmlinclude rgbdApproach.msg.html


(defclass cruiser_msgs::rgbdApproach
  :super ros::object
  :slots (_approachStatus _distance ))

(defmethod cruiser_msgs::rgbdApproach
  (:init
   (&key
    ((:approachStatus __approachStatus) 0)
    ((:distance __distance) 0)
    )
   (send-super :init)
   (setq _approachStatus (round __approachStatus))
   (setq _distance (round __distance))
   self)
  (:approachStatus
   (&optional __approachStatus)
   (if __approachStatus (setq _approachStatus __approachStatus)) _approachStatus)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; int32 _approachStatus
    4
    ;; int32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _approachStatus
       (write-long _approachStatus s)
     ;; int32 _distance
       (write-long _distance s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _approachStatus
     (setq _approachStatus (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _distance
     (setq _distance (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cruiser_msgs::rgbdApproach :md5sum-) "69a51e326617d1f179799e297efe015b")
(setf (get cruiser_msgs::rgbdApproach :datatype-) "cruiser_msgs/rgbdApproach")
(setf (get cruiser_msgs::rgbdApproach :definition-)
      "#topic approachDetect
# approach status,1=approach 2=leave
int32 approachStatus

# approach distance cm
int32 distance


")



(provide :cruiser_msgs/rgbdApproach "69a51e326617d1f179799e297efe015b")


