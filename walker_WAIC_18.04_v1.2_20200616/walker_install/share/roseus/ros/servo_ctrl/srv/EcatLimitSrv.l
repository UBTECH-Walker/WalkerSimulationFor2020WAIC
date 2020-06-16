;; Auto-generated. Do not edit!


(when (boundp 'servo_ctrl::EcatLimitSrv)
  (if (not (find-package "SERVO_CTRL"))
    (make-package "SERVO_CTRL"))
  (shadow 'EcatLimitSrv (find-package "SERVO_CTRL")))
(unless (find-package "SERVO_CTRL::ECATLIMITSRV")
  (make-package "SERVO_CTRL::ECATLIMITSRV"))
(unless (find-package "SERVO_CTRL::ECATLIMITSRVREQUEST")
  (make-package "SERVO_CTRL::ECATLIMITSRVREQUEST"))
(unless (find-package "SERVO_CTRL::ECATLIMITSRVRESPONSE")
  (make-package "SERVO_CTRL::ECATLIMITSRVRESPONSE"))

(in-package "ROS")





(defclass servo_ctrl::EcatLimitSrvRequest
  :super ros::object
  :slots (_cmd _servo _mode _enable _min _max ))

(defmethod servo_ctrl::EcatLimitSrvRequest
  (:init
   (&key
    ((:cmd __cmd) "")
    ((:servo __servo) "")
    ((:mode __mode) "")
    ((:enable __enable) nil)
    ((:min __min) 0.0)
    ((:max __max) 0.0)
    )
   (send-super :init)
   (setq _cmd (string __cmd))
   (setq _servo (string __servo))
   (setq _mode (string __mode))
   (setq _enable __enable)
   (setq _min (float __min))
   (setq _max (float __max))
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
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:min
   (&optional __min)
   (if __min (setq _min __min)) _min)
  (:max
   (&optional __max)
   (if __max (setq _max __max)) _max)
  (:serialization-length
   ()
   (+
    ;; string _cmd
    4 (length _cmd)
    ;; string _servo
    4 (length _servo)
    ;; string _mode
    4 (length _mode)
    ;; bool _enable
    1
    ;; float32 _min
    4
    ;; float32 _max
    4
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
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;; float32 _min
       (sys::poke _min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max
       (sys::poke _max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _min
     (setq _min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max
     (setq _max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass servo_ctrl::EcatLimitSrvResponse
  :super ros::object
  :slots (_enable _min _max ))

(defmethod servo_ctrl::EcatLimitSrvResponse
  (:init
   (&key
    ((:enable __enable) nil)
    ((:min __min) 0.0)
    ((:max __max) 0.0)
    )
   (send-super :init)
   (setq _enable __enable)
   (setq _min (float __min))
   (setq _max (float __max))
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:min
   (&optional __min)
   (if __min (setq _min __min)) _min)
  (:max
   (&optional __max)
   (if __max (setq _max __max)) _max)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ;; float32 _min
    4
    ;; float32 _max
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;; float32 _min
       (sys::poke _min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max
       (sys::poke _max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _min
     (setq _min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max
     (setq _max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass servo_ctrl::EcatLimitSrv
  :super ros::object
  :slots ())

(setf (get servo_ctrl::EcatLimitSrv :md5sum-) "e3d452c6cafa43f5461e27d1edc8c915")
(setf (get servo_ctrl::EcatLimitSrv :datatype-) "servo_ctrl/EcatLimitSrv")
(setf (get servo_ctrl::EcatLimitSrv :request) servo_ctrl::EcatLimitSrvRequest)
(setf (get servo_ctrl::EcatLimitSrv :response) servo_ctrl::EcatLimitSrvResponse)

(defmethod servo_ctrl::EcatLimitSrvRequest
  (:response () (instance servo_ctrl::EcatLimitSrvResponse :init)))

(setf (get servo_ctrl::EcatLimitSrvRequest :md5sum-) "e3d452c6cafa43f5461e27d1edc8c915")
(setf (get servo_ctrl::EcatLimitSrvRequest :datatype-) "servo_ctrl/EcatLimitSrvRequest")
(setf (get servo_ctrl::EcatLimitSrvRequest :definition-)
      "# cmd: \"get\", \"set\"
string cmd

# servo(case insensitive): LHipYaw,LHipRoll,LHipPitch,LKneePitch,LAnklePitch,LAnkleRoll,RHipYaw,RHipRoll,RHipPitch,RKneePitch,RAnklePitch,RAnkleRoll
string servo

# mode: pos, vel, trq
string mode

# enable/disable limitation
bool enable

# limitation value, the positive direction is detected automatically
float32 min
float32 max
---
bool enable
float32 min
float32 max

")

(setf (get servo_ctrl::EcatLimitSrvResponse :md5sum-) "e3d452c6cafa43f5461e27d1edc8c915")
(setf (get servo_ctrl::EcatLimitSrvResponse :datatype-) "servo_ctrl/EcatLimitSrvResponse")
(setf (get servo_ctrl::EcatLimitSrvResponse :definition-)
      "# cmd: \"get\", \"set\"
string cmd

# servo(case insensitive): LHipYaw,LHipRoll,LHipPitch,LKneePitch,LAnklePitch,LAnkleRoll,RHipYaw,RHipRoll,RHipPitch,RKneePitch,RAnklePitch,RAnkleRoll
string servo

# mode: pos, vel, trq
string mode

# enable/disable limitation
bool enable

# limitation value, the positive direction is detected automatically
float32 min
float32 max
---
bool enable
float32 min
float32 max

")



(provide :servo_ctrl/EcatLimitSrv "e3d452c6cafa43f5461e27d1edc8c915")


