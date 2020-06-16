;; Auto-generated. Do not edit!


(when (boundp 'servo_ctrl::EcatGetPVT)
  (if (not (find-package "SERVO_CTRL"))
    (make-package "SERVO_CTRL"))
  (shadow 'EcatGetPVT (find-package "SERVO_CTRL")))
(unless (find-package "SERVO_CTRL::ECATGETPVT")
  (make-package "SERVO_CTRL::ECATGETPVT"))
(unless (find-package "SERVO_CTRL::ECATGETPVTREQUEST")
  (make-package "SERVO_CTRL::ECATGETPVTREQUEST"))
(unless (find-package "SERVO_CTRL::ECATGETPVTRESPONSE")
  (make-package "SERVO_CTRL::ECATGETPVTRESPONSE"))

(in-package "ROS")





(defclass servo_ctrl::EcatGetPVTRequest
  :super ros::object
  :slots (_servo ))

(defmethod servo_ctrl::EcatGetPVTRequest
  (:init
   (&key
    ((:servo __servo) "")
    )
   (send-super :init)
   (setq _servo (string __servo))
   self)
  (:servo
   (&optional __servo)
   (if __servo (setq _servo __servo)) _servo)
  (:serialization-length
   ()
   (+
    ;; string _servo
    4 (length _servo)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _servo
       (write-long (length _servo) s) (princ _servo s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _servo
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _servo (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass servo_ctrl::EcatGetPVTResponse
  :super ros::object
  :slots (_pos _vel _trq _errcode ))

(defmethod servo_ctrl::EcatGetPVTResponse
  (:init
   (&key
    ((:pos __pos) 0.0)
    ((:vel __vel) 0.0)
    ((:trq __trq) 0.0)
    ((:errcode __errcode) 0)
    )
   (send-super :init)
   (setq _pos (float __pos))
   (setq _vel (float __vel))
   (setq _trq (float __trq))
   (setq _errcode (round __errcode))
   self)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:trq
   (&optional __trq)
   (if __trq (setq _trq __trq)) _trq)
  (:errcode
   (&optional __errcode)
   (if __errcode (setq _errcode __errcode)) _errcode)
  (:serialization-length
   ()
   (+
    ;; float32 _pos
    4
    ;; float32 _vel
    4
    ;; float32 _trq
    4
    ;; uint16 _errcode
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pos
       (sys::poke _pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _trq
       (sys::poke _trq (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _errcode
       (write-word _errcode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pos
     (setq _pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel
     (setq _vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _trq
     (setq _trq (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _errcode
     (setq _errcode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass servo_ctrl::EcatGetPVT
  :super ros::object
  :slots ())

(setf (get servo_ctrl::EcatGetPVT :md5sum-) "c489f93ef6aafee9eaeb152fcdcb6ab1")
(setf (get servo_ctrl::EcatGetPVT :datatype-) "servo_ctrl/EcatGetPVT")
(setf (get servo_ctrl::EcatGetPVT :request) servo_ctrl::EcatGetPVTRequest)
(setf (get servo_ctrl::EcatGetPVT :response) servo_ctrl::EcatGetPVTResponse)

(defmethod servo_ctrl::EcatGetPVTRequest
  (:response () (instance servo_ctrl::EcatGetPVTResponse :init)))

(setf (get servo_ctrl::EcatGetPVTRequest :md5sum-) "c489f93ef6aafee9eaeb152fcdcb6ab1")
(setf (get servo_ctrl::EcatGetPVTRequest :datatype-) "servo_ctrl/EcatGetPVTRequest")
(setf (get servo_ctrl::EcatGetPVTRequest :definition-)
      "# servo(case insensitive): LHipYaw,LHipRoll,LHipPitch,LKneePitch,LAnklePitch,LAnkleRoll,RHipYaw,RHipRoll,RHipPitch,RKneePitch,RAnklePitch,RAnkleRoll
string servo
---
float32 pos
float32 vel
float32 trq
uint16 errcode

")

(setf (get servo_ctrl::EcatGetPVTResponse :md5sum-) "c489f93ef6aafee9eaeb152fcdcb6ab1")
(setf (get servo_ctrl::EcatGetPVTResponse :datatype-) "servo_ctrl/EcatGetPVTResponse")
(setf (get servo_ctrl::EcatGetPVTResponse :definition-)
      "# servo(case insensitive): LHipYaw,LHipRoll,LHipPitch,LKneePitch,LAnklePitch,LAnkleRoll,RHipYaw,RHipRoll,RHipPitch,RKneePitch,RAnklePitch,RAnkleRoll
string servo
---
float32 pos
float32 vel
float32 trq
uint16 errcode

")



(provide :servo_ctrl/EcatGetPVT "c489f93ef6aafee9eaeb152fcdcb6ab1")


