;; Auto-generated. Do not edit!


(when (boundp 'walker_teleop::Flysky)
  (if (not (find-package "WALKER_TELEOP"))
    (make-package "WALKER_TELEOP"))
  (shadow 'Flysky (find-package "WALKER_TELEOP")))
(unless (find-package "WALKER_TELEOP::FLYSKY")
  (make-package "WALKER_TELEOP::FLYSKY"))

(in-package "ROS")
;;//! \htmlinclude Flysky.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*SW_UP*" (find-package "WALKER_TELEOP::FLYSKY"))
(shadow '*SW_UP* (find-package "WALKER_TELEOP::FLYSKY"))
(defconstant walker_teleop::Flysky::*SW_UP* 0)
(intern "*SW_DOWN*" (find-package "WALKER_TELEOP::FLYSKY"))
(shadow '*SW_DOWN* (find-package "WALKER_TELEOP::FLYSKY"))
(defconstant walker_teleop::Flysky::*SW_DOWN* 1)
(intern "*SW_MID*" (find-package "WALKER_TELEOP::FLYSKY"))
(shadow '*SW_MID* (find-package "WALKER_TELEOP::FLYSKY"))
(defconstant walker_teleop::Flysky::*SW_MID* 2)
(intern "*DIR_MAX*" (find-package "WALKER_TELEOP::FLYSKY"))
(shadow '*DIR_MAX* (find-package "WALKER_TELEOP::FLYSKY"))
(defconstant walker_teleop::Flysky::*DIR_MAX* 100.0)
(intern "*DIR_MIN*" (find-package "WALKER_TELEOP::FLYSKY"))
(shadow '*DIR_MIN* (find-package "WALKER_TELEOP::FLYSKY"))
(defconstant walker_teleop::Flysky::*DIR_MIN* -100.0)
(defclass walker_teleop::Flysky
  :super ros::object
  :slots (_header _bSwa _bSwb _bSwc _bSwe _tSwf _bSwh _dir_lr _dir_ud _throttle_lr _throttle_ud _valid _online ))

(defmethod walker_teleop::Flysky
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:bSwa __bSwa) 0)
    ((:bSwb __bSwb) 0)
    ((:bSwc __bSwc) 0)
    ((:bSwe __bSwe) 0)
    ((:tSwf __tSwf) 0)
    ((:bSwh __bSwh) 0)
    ((:dir_lr __dir_lr) 0.0)
    ((:dir_ud __dir_ud) 0.0)
    ((:throttle_lr __throttle_lr) 0.0)
    ((:throttle_ud __throttle_ud) 0.0)
    ((:valid __valid) nil)
    ((:online __online) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _bSwa (round __bSwa))
   (setq _bSwb (round __bSwb))
   (setq _bSwc (round __bSwc))
   (setq _bSwe (round __bSwe))
   (setq _tSwf (round __tSwf))
   (setq _bSwh (round __bSwh))
   (setq _dir_lr (float __dir_lr))
   (setq _dir_ud (float __dir_ud))
   (setq _throttle_lr (float __throttle_lr))
   (setq _throttle_ud (float __throttle_ud))
   (setq _valid __valid)
   (setq _online __online)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:bSwa
   (&optional __bSwa)
   (if __bSwa (setq _bSwa __bSwa)) _bSwa)
  (:bSwb
   (&optional __bSwb)
   (if __bSwb (setq _bSwb __bSwb)) _bSwb)
  (:bSwc
   (&optional __bSwc)
   (if __bSwc (setq _bSwc __bSwc)) _bSwc)
  (:bSwe
   (&optional __bSwe)
   (if __bSwe (setq _bSwe __bSwe)) _bSwe)
  (:tSwf
   (&optional __tSwf)
   (if __tSwf (setq _tSwf __tSwf)) _tSwf)
  (:bSwh
   (&optional __bSwh)
   (if __bSwh (setq _bSwh __bSwh)) _bSwh)
  (:dir_lr
   (&optional __dir_lr)
   (if __dir_lr (setq _dir_lr __dir_lr)) _dir_lr)
  (:dir_ud
   (&optional __dir_ud)
   (if __dir_ud (setq _dir_ud __dir_ud)) _dir_ud)
  (:throttle_lr
   (&optional __throttle_lr)
   (if __throttle_lr (setq _throttle_lr __throttle_lr)) _throttle_lr)
  (:throttle_ud
   (&optional __throttle_ud)
   (if __throttle_ud (setq _throttle_ud __throttle_ud)) _throttle_ud)
  (:valid
   (&optional __valid)
   (if __valid (setq _valid __valid)) _valid)
  (:online
   (&optional __online)
   (if __online (setq _online __online)) _online)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; byte _bSwa
    1
    ;; byte _bSwb
    1
    ;; byte _bSwc
    1
    ;; byte _bSwe
    1
    ;; byte _tSwf
    1
    ;; byte _bSwh
    1
    ;; float32 _dir_lr
    4
    ;; float32 _dir_ud
    4
    ;; float32 _throttle_lr
    4
    ;; float32 _throttle_ud
    4
    ;; bool _valid
    1
    ;; bool _online
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; byte _bSwa
       (write-byte _bSwa s)
     ;; byte _bSwb
       (write-byte _bSwb s)
     ;; byte _bSwc
       (write-byte _bSwc s)
     ;; byte _bSwe
       (write-byte _bSwe s)
     ;; byte _tSwf
       (write-byte _tSwf s)
     ;; byte _bSwh
       (write-byte _bSwh s)
     ;; float32 _dir_lr
       (sys::poke _dir_lr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dir_ud
       (sys::poke _dir_ud (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _throttle_lr
       (sys::poke _throttle_lr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _throttle_ud
       (sys::poke _throttle_ud (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _online
       (if _online (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; byte _bSwa
     (setq _bSwa (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _bSwa 127) (setq _bSwa (- _bSwa 256)))
   ;; byte _bSwb
     (setq _bSwb (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _bSwb 127) (setq _bSwb (- _bSwb 256)))
   ;; byte _bSwc
     (setq _bSwc (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _bSwc 127) (setq _bSwc (- _bSwc 256)))
   ;; byte _bSwe
     (setq _bSwe (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _bSwe 127) (setq _bSwe (- _bSwe 256)))
   ;; byte _tSwf
     (setq _tSwf (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _tSwf 127) (setq _tSwf (- _tSwf 256)))
   ;; byte _bSwh
     (setq _bSwh (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _bSwh 127) (setq _bSwh (- _bSwh 256)))
   ;; float32 _dir_lr
     (setq _dir_lr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dir_ud
     (setq _dir_ud (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _throttle_lr
     (setq _throttle_lr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _throttle_ud
     (setq _throttle_ud (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _online
     (setq _online (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get walker_teleop::Flysky :md5sum-) "163a5835c0ba7d7356ed3e23c0843803")
(setf (get walker_teleop::Flysky :datatype-) "walker_teleop/Flysky")
(setf (get walker_teleop::Flysky :definition-)
      "Header header

# switch values
byte SW_UP=0
byte SW_DOWN=1
byte SW_MID=2

# switches, prefix 'b' for bool key, prefix 't' for triple state key
byte bSwa
byte bSwb
byte bSwc
byte bSwe
byte tSwf
byte bSwh

# directions
float32 DIR_MAX=100.0
float32 DIR_MIN=-100.0
float32 dir_lr
float32 dir_ud

# throttle
float32 throttle_lr
float32 throttle_ud

# whether all values are validate
bool valid

# whether the remoter is online or not
bool online

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :walker_teleop/Flysky "163a5835c0ba7d7356ed3e23c0843803")


