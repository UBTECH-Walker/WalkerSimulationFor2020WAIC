;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::JointCtrl)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'JointCtrl (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::JOINTCTRL")
  (make-package "CRUISER_MSGS::JOINTCTRL"))

(in-package "ROS")
;;//! \htmlinclude JointCtrl.msg.html


(defclass cruiser_msgs::JointCtrl
  :super ros::object
  :slots (_ctrlId _ctrlStamp _ctrlName _jointIdx _reserved ))

(defmethod cruiser_msgs::JointCtrl
  (:init
   (&key
    ((:ctrlId __ctrlId) "")
    ((:ctrlStamp __ctrlStamp) (instance ros::time :init))
    ((:ctrlName __ctrlName) "")
    ((:jointIdx __jointIdx) 0)
    ((:reserved __reserved) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _ctrlId (string __ctrlId))
   (setq _ctrlStamp __ctrlStamp)
   (setq _ctrlName (string __ctrlName))
   (setq _jointIdx (round __jointIdx))
   (setq _reserved __reserved)
   self)
  (:ctrlId
   (&optional __ctrlId)
   (if __ctrlId (setq _ctrlId __ctrlId)) _ctrlId)
  (:ctrlStamp
   (&optional __ctrlStamp)
   (if __ctrlStamp (setq _ctrlStamp __ctrlStamp)) _ctrlStamp)
  (:ctrlName
   (&optional __ctrlName)
   (if __ctrlName (setq _ctrlName __ctrlName)) _ctrlName)
  (:jointIdx
   (&optional __jointIdx)
   (if __jointIdx (setq _jointIdx __jointIdx)) _jointIdx)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; string _ctrlId
    4 (length _ctrlId)
    ;; time _ctrlStamp
    8
    ;; string _ctrlName
    4 (length _ctrlName)
    ;; int32 _jointIdx
    4
    ;; uint8[] _reserved
    (* 1    (length _reserved)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ctrlId
       (write-long (length _ctrlId) s) (princ _ctrlId s)
     ;; time _ctrlStamp
       (write-long (send _ctrlStamp :sec) s) (write-long (send _ctrlStamp :nsec) s)
     ;; string _ctrlName
       (write-long (length _ctrlName) s) (princ _ctrlName s)
     ;; int32 _jointIdx
       (write-long _jointIdx s)
     ;; uint8[] _reserved
     (write-long (length _reserved) s)
     (princ _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ctrlId
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ctrlId (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _ctrlStamp
     (send _ctrlStamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _ctrlStamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _ctrlName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ctrlName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _jointIdx
     (setq _jointIdx (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _reserved
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _reserved (make-array n :element-type :char))
     (replace _reserved buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get cruiser_msgs::JointCtrl :md5sum-) "8223324199b2c8c391007fad926392ef")
(setf (get cruiser_msgs::JointCtrl :datatype-) "cruiser_msgs/JointCtrl")
(setf (get cruiser_msgs::JointCtrl :definition-)
      "string ctrlId
time ctrlStamp
string ctrlName
int32 jointIdx
uint8[] reserved
")



(provide :cruiser_msgs/JointCtrl "8223324199b2c8c391007fad926392ef")


