;; Auto-generated. Do not edit!


(when (boundp 'servo_ctrl::EcatGetVer)
  (if (not (find-package "SERVO_CTRL"))
    (make-package "SERVO_CTRL"))
  (shadow 'EcatGetVer (find-package "SERVO_CTRL")))
(unless (find-package "SERVO_CTRL::ECATGETVER")
  (make-package "SERVO_CTRL::ECATGETVER"))
(unless (find-package "SERVO_CTRL::ECATGETVERREQUEST")
  (make-package "SERVO_CTRL::ECATGETVERREQUEST"))
(unless (find-package "SERVO_CTRL::ECATGETVERRESPONSE")
  (make-package "SERVO_CTRL::ECATGETVERRESPONSE"))

(in-package "ROS")





(defclass servo_ctrl::EcatGetVerRequest
  :super ros::object
  :slots (_servo ))

(defmethod servo_ctrl::EcatGetVerRequest
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

(defclass servo_ctrl::EcatGetVerResponse
  :super ros::object
  :slots (_mod _version ))

(defmethod servo_ctrl::EcatGetVerResponse
  (:init
   (&key
    ((:mod __mod) 0)
    ((:version __version) 0)
    )
   (send-super :init)
   (setq _mod (round __mod))
   (setq _version (round __version))
   self)
  (:mod
   (&optional __mod)
   (if __mod (setq _mod __mod)) _mod)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:serialization-length
   ()
   (+
    ;; uint32 _mod
    4
    ;; uint32 _version
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _mod
       (write-long _mod s)
     ;; uint32 _version
       (write-long _version s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _mod
     (setq _mod (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _version
     (setq _version (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass servo_ctrl::EcatGetVer
  :super ros::object
  :slots ())

(setf (get servo_ctrl::EcatGetVer :md5sum-) "3f1b5b791580e357125da8eb47534614")
(setf (get servo_ctrl::EcatGetVer :datatype-) "servo_ctrl/EcatGetVer")
(setf (get servo_ctrl::EcatGetVer :request) servo_ctrl::EcatGetVerRequest)
(setf (get servo_ctrl::EcatGetVer :response) servo_ctrl::EcatGetVerResponse)

(defmethod servo_ctrl::EcatGetVerRequest
  (:response () (instance servo_ctrl::EcatGetVerResponse :init)))

(setf (get servo_ctrl::EcatGetVerRequest :md5sum-) "3f1b5b791580e357125da8eb47534614")
(setf (get servo_ctrl::EcatGetVerRequest :datatype-) "servo_ctrl/EcatGetVerRequest")
(setf (get servo_ctrl::EcatGetVerRequest :definition-)
      "
string servo
---
uint32 mod
uint32 version

")

(setf (get servo_ctrl::EcatGetVerResponse :md5sum-) "3f1b5b791580e357125da8eb47534614")
(setf (get servo_ctrl::EcatGetVerResponse :datatype-) "servo_ctrl/EcatGetVerResponse")
(setf (get servo_ctrl::EcatGetVerResponse :definition-)
      "
string servo
---
uint32 mod
uint32 version

")



(provide :servo_ctrl/EcatGetVer "3f1b5b791580e357125da8eb47534614")


