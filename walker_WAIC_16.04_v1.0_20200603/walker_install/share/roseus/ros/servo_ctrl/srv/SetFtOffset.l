;; Auto-generated. Do not edit!


(when (boundp 'servo_ctrl::SetFtOffset)
  (if (not (find-package "SERVO_CTRL"))
    (make-package "SERVO_CTRL"))
  (shadow 'SetFtOffset (find-package "SERVO_CTRL")))
(unless (find-package "SERVO_CTRL::SETFTOFFSET")
  (make-package "SERVO_CTRL::SETFTOFFSET"))
(unless (find-package "SERVO_CTRL::SETFTOFFSETREQUEST")
  (make-package "SERVO_CTRL::SETFTOFFSETREQUEST"))
(unless (find-package "SERVO_CTRL::SETFTOFFSETRESPONSE")
  (make-package "SERVO_CTRL::SETFTOFFSETRESPONSE"))

(in-package "ROS")





(defclass servo_ctrl::SetFtOffsetRequest
  :super ros::object
  :slots (_ftId _fx _fy _fz _mx _my _mz ))

(defmethod servo_ctrl::SetFtOffsetRequest
  (:init
   (&key
    ((:ftId __ftId) "")
    ((:fx __fx) 0)
    ((:fy __fy) 0)
    ((:fz __fz) 0)
    ((:mx __mx) 0)
    ((:my __my) 0)
    ((:mz __mz) 0)
    )
   (send-super :init)
   (setq _ftId (string __ftId))
   (setq _fx (round __fx))
   (setq _fy (round __fy))
   (setq _fz (round __fz))
   (setq _mx (round __mx))
   (setq _my (round __my))
   (setq _mz (round __mz))
   self)
  (:ftId
   (&optional __ftId)
   (if __ftId (setq _ftId __ftId)) _ftId)
  (:fx
   (&optional __fx)
   (if __fx (setq _fx __fx)) _fx)
  (:fy
   (&optional __fy)
   (if __fy (setq _fy __fy)) _fy)
  (:fz
   (&optional __fz)
   (if __fz (setq _fz __fz)) _fz)
  (:mx
   (&optional __mx)
   (if __mx (setq _mx __mx)) _mx)
  (:my
   (&optional __my)
   (if __my (setq _my __my)) _my)
  (:mz
   (&optional __mz)
   (if __mz (setq _mz __mz)) _mz)
  (:serialization-length
   ()
   (+
    ;; string _ftId
    4 (length _ftId)
    ;; int32 _fx
    4
    ;; int32 _fy
    4
    ;; int32 _fz
    4
    ;; int32 _mx
    4
    ;; int32 _my
    4
    ;; int32 _mz
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ftId
       (write-long (length _ftId) s) (princ _ftId s)
     ;; int32 _fx
       (write-long _fx s)
     ;; int32 _fy
       (write-long _fy s)
     ;; int32 _fz
       (write-long _fz s)
     ;; int32 _mx
       (write-long _mx s)
     ;; int32 _my
       (write-long _my s)
     ;; int32 _mz
       (write-long _mz s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ftId
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ftId (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _fx
     (setq _fx (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _fy
     (setq _fy (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _fz
     (setq _fz (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _mx
     (setq _mx (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _my
     (setq _my (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _mz
     (setq _mz (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass servo_ctrl::SetFtOffsetResponse
  :super ros::object
  :slots (_result ))

(defmethod servo_ctrl::SetFtOffsetResponse
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

(defclass servo_ctrl::SetFtOffset
  :super ros::object
  :slots ())

(setf (get servo_ctrl::SetFtOffset :md5sum-) "f9c88f3e422e4316a11e6c00bab5b2f9")
(setf (get servo_ctrl::SetFtOffset :datatype-) "servo_ctrl/SetFtOffset")
(setf (get servo_ctrl::SetFtOffset :request) servo_ctrl::SetFtOffsetRequest)
(setf (get servo_ctrl::SetFtOffset :response) servo_ctrl::SetFtOffsetResponse)

(defmethod servo_ctrl::SetFtOffsetRequest
  (:response () (instance servo_ctrl::SetFtOffsetResponse :init)))

(setf (get servo_ctrl::SetFtOffsetRequest :md5sum-) "f9c88f3e422e4316a11e6c00bab5b2f9")
(setf (get servo_ctrl::SetFtOffsetRequest :datatype-) "servo_ctrl/SetFtOffsetRequest")
(setf (get servo_ctrl::SetFtOffsetRequest :definition-)
      "
string ftId
int32  fx
int32  fy
int32  fz
int32  mx
int32  my
int32  mz
---
string result

")

(setf (get servo_ctrl::SetFtOffsetResponse :md5sum-) "f9c88f3e422e4316a11e6c00bab5b2f9")
(setf (get servo_ctrl::SetFtOffsetResponse :datatype-) "servo_ctrl/SetFtOffsetResponse")
(setf (get servo_ctrl::SetFtOffsetResponse :definition-)
      "
string ftId
int32  fx
int32  fy
int32  fz
int32  mx
int32  my
int32  mz
---
string result

")



(provide :servo_ctrl/SetFtOffset "f9c88f3e422e4316a11e6c00bab5b2f9")


