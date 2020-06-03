;; Auto-generated. Do not edit!


(when (boundp 'servo_ctrl::SetBasePower)
  (if (not (find-package "SERVO_CTRL"))
    (make-package "SERVO_CTRL"))
  (shadow 'SetBasePower (find-package "SERVO_CTRL")))
(unless (find-package "SERVO_CTRL::SETBASEPOWER")
  (make-package "SERVO_CTRL::SETBASEPOWER"))
(unless (find-package "SERVO_CTRL::SETBASEPOWERREQUEST")
  (make-package "SERVO_CTRL::SETBASEPOWERREQUEST"))
(unless (find-package "SERVO_CTRL::SETBASEPOWERRESPONSE")
  (make-package "SERVO_CTRL::SETBASEPOWERRESPONSE"))

(in-package "ROS")





(defclass servo_ctrl::SetBasePowerRequest
  :super ros::object
  :slots (_cmd ))

(defmethod servo_ctrl::SetBasePowerRequest
  (:init
   (&key
    ((:cmd __cmd) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _cmd __cmd)
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:serialization-length
   ()
   (+
    ;; uint8[] _cmd
    (* 1    (length _cmd)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _cmd
     (write-long (length _cmd) s)
     (princ _cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _cmd
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _cmd (make-array n :element-type :char))
     (replace _cmd buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass servo_ctrl::SetBasePowerResponse
  :super ros::object
  :slots (_result ))

(defmethod servo_ctrl::SetBasePowerResponse
  (:init
   (&key
    ((:result __result) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint8[] _result
    (* 1    (length _result)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _result
     (write-long (length _result) s)
     (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _result
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _result (make-array n :element-type :char))
     (replace _result buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass servo_ctrl::SetBasePower
  :super ros::object
  :slots ())

(setf (get servo_ctrl::SetBasePower :md5sum-) "b0bc70d7e1fded55183cc6d4deee36a2")
(setf (get servo_ctrl::SetBasePower :datatype-) "servo_ctrl/SetBasePower")
(setf (get servo_ctrl::SetBasePower :request) servo_ctrl::SetBasePowerRequest)
(setf (get servo_ctrl::SetBasePower :response) servo_ctrl::SetBasePowerResponse)

(defmethod servo_ctrl::SetBasePowerRequest
  (:response () (instance servo_ctrl::SetBasePowerResponse :init)))

(setf (get servo_ctrl::SetBasePowerRequest :md5sum-) "b0bc70d7e1fded55183cc6d4deee36a2")
(setf (get servo_ctrl::SetBasePowerRequest :datatype-) "servo_ctrl/SetBasePowerRequest")
(setf (get servo_ctrl::SetBasePowerRequest :definition-)
      "uint8[] cmd
---
uint8[] result

")

(setf (get servo_ctrl::SetBasePowerResponse :md5sum-) "b0bc70d7e1fded55183cc6d4deee36a2")
(setf (get servo_ctrl::SetBasePowerResponse :datatype-) "servo_ctrl/SetBasePowerResponse")
(setf (get servo_ctrl::SetBasePowerResponse :definition-)
      "uint8[] cmd
---
uint8[] result

")



(provide :servo_ctrl/SetBasePower "b0bc70d7e1fded55183cc6d4deee36a2")


