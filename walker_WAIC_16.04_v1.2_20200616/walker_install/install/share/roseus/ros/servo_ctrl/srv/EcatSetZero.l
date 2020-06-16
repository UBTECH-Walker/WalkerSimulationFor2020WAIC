;; Auto-generated. Do not edit!


(when (boundp 'servo_ctrl::EcatSetZero)
  (if (not (find-package "SERVO_CTRL"))
    (make-package "SERVO_CTRL"))
  (shadow 'EcatSetZero (find-package "SERVO_CTRL")))
(unless (find-package "SERVO_CTRL::ECATSETZERO")
  (make-package "SERVO_CTRL::ECATSETZERO"))
(unless (find-package "SERVO_CTRL::ECATSETZEROREQUEST")
  (make-package "SERVO_CTRL::ECATSETZEROREQUEST"))
(unless (find-package "SERVO_CTRL::ECATSETZERORESPONSE")
  (make-package "SERVO_CTRL::ECATSETZERORESPONSE"))

(in-package "ROS")





(defclass servo_ctrl::EcatSetZeroRequest
  :super ros::object
  :slots (_servo ))

(defmethod servo_ctrl::EcatSetZeroRequest
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

(defclass servo_ctrl::EcatSetZeroResponse
  :super ros::object
  :slots (_result ))

(defmethod servo_ctrl::EcatSetZeroResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint16 _result
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _result
       (write-word _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _result
     (setq _result (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass servo_ctrl::EcatSetZero
  :super ros::object
  :slots ())

(setf (get servo_ctrl::EcatSetZero :md5sum-) "d3a64b889fd5801c30f651acd61f9dd1")
(setf (get servo_ctrl::EcatSetZero :datatype-) "servo_ctrl/EcatSetZero")
(setf (get servo_ctrl::EcatSetZero :request) servo_ctrl::EcatSetZeroRequest)
(setf (get servo_ctrl::EcatSetZero :response) servo_ctrl::EcatSetZeroResponse)

(defmethod servo_ctrl::EcatSetZeroRequest
  (:response () (instance servo_ctrl::EcatSetZeroResponse :init)))

(setf (get servo_ctrl::EcatSetZeroRequest :md5sum-) "d3a64b889fd5801c30f651acd61f9dd1")
(setf (get servo_ctrl::EcatSetZeroRequest :datatype-) "servo_ctrl/EcatSetZeroRequest")
(setf (get servo_ctrl::EcatSetZeroRequest :definition-)
      "
string servo
---
uint16 result

")

(setf (get servo_ctrl::EcatSetZeroResponse :md5sum-) "d3a64b889fd5801c30f651acd61f9dd1")
(setf (get servo_ctrl::EcatSetZeroResponse :datatype-) "servo_ctrl/EcatSetZeroResponse")
(setf (get servo_ctrl::EcatSetZeroResponse :definition-)
      "
string servo
---
uint16 result

")



(provide :servo_ctrl/EcatSetZero "d3a64b889fd5801c30f651acd61f9dd1")


