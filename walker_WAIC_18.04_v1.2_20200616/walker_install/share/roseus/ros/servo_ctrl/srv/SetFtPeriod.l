;; Auto-generated. Do not edit!


(when (boundp 'servo_ctrl::SetFtPeriod)
  (if (not (find-package "SERVO_CTRL"))
    (make-package "SERVO_CTRL"))
  (shadow 'SetFtPeriod (find-package "SERVO_CTRL")))
(unless (find-package "SERVO_CTRL::SETFTPERIOD")
  (make-package "SERVO_CTRL::SETFTPERIOD"))
(unless (find-package "SERVO_CTRL::SETFTPERIODREQUEST")
  (make-package "SERVO_CTRL::SETFTPERIODREQUEST"))
(unless (find-package "SERVO_CTRL::SETFTPERIODRESPONSE")
  (make-package "SERVO_CTRL::SETFTPERIODRESPONSE"))

(in-package "ROS")





(defclass servo_ctrl::SetFtPeriodRequest
  :super ros::object
  :slots (_ftId _period_ms ))

(defmethod servo_ctrl::SetFtPeriodRequest
  (:init
   (&key
    ((:ftId __ftId) "")
    ((:period_ms __period_ms) 0)
    )
   (send-super :init)
   (setq _ftId (string __ftId))
   (setq _period_ms (round __period_ms))
   self)
  (:ftId
   (&optional __ftId)
   (if __ftId (setq _ftId __ftId)) _ftId)
  (:period_ms
   (&optional __period_ms)
   (if __period_ms (setq _period_ms __period_ms)) _period_ms)
  (:serialization-length
   ()
   (+
    ;; string _ftId
    4 (length _ftId)
    ;; int32 _period_ms
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ftId
       (write-long (length _ftId) s) (princ _ftId s)
     ;; int32 _period_ms
       (write-long _period_ms s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ftId
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ftId (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _period_ms
     (setq _period_ms (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass servo_ctrl::SetFtPeriodResponse
  :super ros::object
  :slots (_result ))

(defmethod servo_ctrl::SetFtPeriodResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass servo_ctrl::SetFtPeriod
  :super ros::object
  :slots ())

(setf (get servo_ctrl::SetFtPeriod :md5sum-) "da5f21de43d7b8e0a73c301ba13f71ef")
(setf (get servo_ctrl::SetFtPeriod :datatype-) "servo_ctrl/SetFtPeriod")
(setf (get servo_ctrl::SetFtPeriod :request) servo_ctrl::SetFtPeriodRequest)
(setf (get servo_ctrl::SetFtPeriod :response) servo_ctrl::SetFtPeriodResponse)

(defmethod servo_ctrl::SetFtPeriodRequest
  (:response () (instance servo_ctrl::SetFtPeriodResponse :init)))

(setf (get servo_ctrl::SetFtPeriodRequest :md5sum-) "da5f21de43d7b8e0a73c301ba13f71ef")
(setf (get servo_ctrl::SetFtPeriodRequest :datatype-) "servo_ctrl/SetFtPeriodRequest")
(setf (get servo_ctrl::SetFtPeriodRequest :definition-)
      "# ftId: \"lwrist\", \"rwrist\", \"lankle\", \"rankle\"
string ftId
int32  period_ms
---
string result

")

(setf (get servo_ctrl::SetFtPeriodResponse :md5sum-) "da5f21de43d7b8e0a73c301ba13f71ef")
(setf (get servo_ctrl::SetFtPeriodResponse :datatype-) "servo_ctrl/SetFtPeriodResponse")
(setf (get servo_ctrl::SetFtPeriodResponse :definition-)
      "# ftId: \"lwrist\", \"rwrist\", \"lankle\", \"rankle\"
string ftId
int32  period_ms
---
string result

")



(provide :servo_ctrl/SetFtPeriod "da5f21de43d7b8e0a73c301ba13f71ef")


