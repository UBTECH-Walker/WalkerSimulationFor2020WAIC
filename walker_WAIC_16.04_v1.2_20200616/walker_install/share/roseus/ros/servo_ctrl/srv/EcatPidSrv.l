;; Auto-generated. Do not edit!


(when (boundp 'servo_ctrl::EcatPidSrv)
  (if (not (find-package "SERVO_CTRL"))
    (make-package "SERVO_CTRL"))
  (shadow 'EcatPidSrv (find-package "SERVO_CTRL")))
(unless (find-package "SERVO_CTRL::ECATPIDSRV")
  (make-package "SERVO_CTRL::ECATPIDSRV"))
(unless (find-package "SERVO_CTRL::ECATPIDSRVREQUEST")
  (make-package "SERVO_CTRL::ECATPIDSRVREQUEST"))
(unless (find-package "SERVO_CTRL::ECATPIDSRVRESPONSE")
  (make-package "SERVO_CTRL::ECATPIDSRVRESPONSE"))

(in-package "ROS")





(defclass servo_ctrl::EcatPidSrvRequest
  :super ros::object
  :slots (_cmd _servo _mode _kp _ki _kd ))

(defmethod servo_ctrl::EcatPidSrvRequest
  (:init
   (&key
    ((:cmd __cmd) "")
    ((:servo __servo) "")
    ((:mode __mode) "")
    ((:kp __kp) 0)
    ((:ki __ki) 0)
    ((:kd __kd) 0)
    )
   (send-super :init)
   (setq _cmd (string __cmd))
   (setq _servo (string __servo))
   (setq _mode (string __mode))
   (setq _kp (round __kp))
   (setq _ki (round __ki))
   (setq _kd (round __kd))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:servo
   (&optional __servo)
   (if __servo (setq _servo __servo)) _servo)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:kp
   (&optional __kp)
   (if __kp (setq _kp __kp)) _kp)
  (:ki
   (&optional __ki)
   (if __ki (setq _ki __ki)) _ki)
  (:kd
   (&optional __kd)
   (if __kd (setq _kd __kd)) _kd)
  (:serialization-length
   ()
   (+
    ;; string _cmd
    4 (length _cmd)
    ;; string _servo
    4 (length _servo)
    ;; string _mode
    4 (length _mode)
    ;; int16 _kp
    2
    ;; int16 _ki
    2
    ;; int16 _kd
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _cmd
       (write-long (length _cmd) s) (princ _cmd s)
     ;; string _servo
       (write-long (length _servo) s) (princ _servo s)
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; int16 _kp
       (write-word _kp s)
     ;; int16 _ki
       (write-word _ki s)
     ;; int16 _kd
       (write-word _kd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _cmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _servo
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _servo (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _kp
     (setq _kp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _ki
     (setq _ki (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _kd
     (setq _kd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass servo_ctrl::EcatPidSrvResponse
  :super ros::object
  :slots (_kp _ki _kd ))

(defmethod servo_ctrl::EcatPidSrvResponse
  (:init
   (&key
    ((:kp __kp) 0)
    ((:ki __ki) 0)
    ((:kd __kd) 0)
    )
   (send-super :init)
   (setq _kp (round __kp))
   (setq _ki (round __ki))
   (setq _kd (round __kd))
   self)
  (:kp
   (&optional __kp)
   (if __kp (setq _kp __kp)) _kp)
  (:ki
   (&optional __ki)
   (if __ki (setq _ki __ki)) _ki)
  (:kd
   (&optional __kd)
   (if __kd (setq _kd __kd)) _kd)
  (:serialization-length
   ()
   (+
    ;; int16 _kp
    2
    ;; int16 _ki
    2
    ;; int16 _kd
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _kp
       (write-word _kp s)
     ;; int16 _ki
       (write-word _ki s)
     ;; int16 _kd
       (write-word _kd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _kp
     (setq _kp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _ki
     (setq _ki (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _kd
     (setq _kd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass servo_ctrl::EcatPidSrv
  :super ros::object
  :slots ())

(setf (get servo_ctrl::EcatPidSrv :md5sum-) "7b9594603cb192f9d9c16b8685314164")
(setf (get servo_ctrl::EcatPidSrv :datatype-) "servo_ctrl/EcatPidSrv")
(setf (get servo_ctrl::EcatPidSrv :request) servo_ctrl::EcatPidSrvRequest)
(setf (get servo_ctrl::EcatPidSrv :response) servo_ctrl::EcatPidSrvResponse)

(defmethod servo_ctrl::EcatPidSrvRequest
  (:response () (instance servo_ctrl::EcatPidSrvResponse :init)))

(setf (get servo_ctrl::EcatPidSrvRequest :md5sum-) "7b9594603cb192f9d9c16b8685314164")
(setf (get servo_ctrl::EcatPidSrvRequest :datatype-) "servo_ctrl/EcatPidSrvRequest")
(setf (get servo_ctrl::EcatPidSrvRequest :definition-)
      "
string cmd


string servo


string mode


int16 kp
int16 ki
int16 kd
---
int16 kp
int16 ki
int16 kd

")

(setf (get servo_ctrl::EcatPidSrvResponse :md5sum-) "7b9594603cb192f9d9c16b8685314164")
(setf (get servo_ctrl::EcatPidSrvResponse :datatype-) "servo_ctrl/EcatPidSrvResponse")
(setf (get servo_ctrl::EcatPidSrvResponse :definition-)
      "
string cmd


string servo


string mode


int16 kp
int16 ki
int16 kd
---
int16 kp
int16 ki
int16 kd

")



(provide :servo_ctrl/EcatPidSrv "7b9594603cb192f9d9c16b8685314164")


