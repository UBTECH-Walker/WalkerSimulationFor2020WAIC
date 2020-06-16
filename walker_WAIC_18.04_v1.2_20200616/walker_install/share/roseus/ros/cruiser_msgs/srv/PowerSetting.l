;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::PowerSetting)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'PowerSetting (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::POWERSETTING")
  (make-package "CRUISER_MSGS::POWERSETTING"))
(unless (find-package "CRUISER_MSGS::POWERSETTINGREQUEST")
  (make-package "CRUISER_MSGS::POWERSETTINGREQUEST"))
(unless (find-package "CRUISER_MSGS::POWERSETTINGRESPONSE")
  (make-package "CRUISER_MSGS::POWERSETTINGRESPONSE"))

(in-package "ROS")





(defclass cruiser_msgs::PowerSettingRequest
  :super ros::object
  :slots (_cmd _year _month _day _hour _min _sec _timerEnable _fullPowerOn _flag ))

(defmethod cruiser_msgs::PowerSettingRequest
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:year __year) 0)
    ((:month __month) 0)
    ((:day __day) 0)
    ((:hour __hour) 0)
    ((:min __min) 0)
    ((:sec __sec) 0)
    ((:timerEnable __timerEnable) nil)
    ((:fullPowerOn __fullPowerOn) nil)
    ((:flag __flag) 0)
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _year (round __year))
   (setq _month (round __month))
   (setq _day (round __day))
   (setq _hour (round __hour))
   (setq _min (round __min))
   (setq _sec (round __sec))
   (setq _timerEnable __timerEnable)
   (setq _fullPowerOn __fullPowerOn)
   (setq _flag (round __flag))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:year
   (&optional __year)
   (if __year (setq _year __year)) _year)
  (:month
   (&optional __month)
   (if __month (setq _month __month)) _month)
  (:day
   (&optional __day)
   (if __day (setq _day __day)) _day)
  (:hour
   (&optional __hour)
   (if __hour (setq _hour __hour)) _hour)
  (:min
   (&optional __min)
   (if __min (setq _min __min)) _min)
  (:sec
   (&optional __sec)
   (if __sec (setq _sec __sec)) _sec)
  (:timerEnable
   (&optional __timerEnable)
   (if __timerEnable (setq _timerEnable __timerEnable)) _timerEnable)
  (:fullPowerOn
   (&optional __fullPowerOn)
   (if __fullPowerOn (setq _fullPowerOn __fullPowerOn)) _fullPowerOn)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; uint8 _cmd
    1
    ;; uint16 _year
    2
    ;; uint8 _month
    1
    ;; uint8 _day
    1
    ;; uint8 _hour
    1
    ;; uint8 _min
    1
    ;; uint8 _sec
    1
    ;; bool _timerEnable
    1
    ;; bool _fullPowerOn
    1
    ;; uint8 _flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cmd
       (write-byte _cmd s)
     ;; uint16 _year
       (write-word _year s)
     ;; uint8 _month
       (write-byte _month s)
     ;; uint8 _day
       (write-byte _day s)
     ;; uint8 _hour
       (write-byte _hour s)
     ;; uint8 _min
       (write-byte _min s)
     ;; uint8 _sec
       (write-byte _sec s)
     ;; bool _timerEnable
       (if _timerEnable (write-byte -1 s) (write-byte 0 s))
     ;; bool _fullPowerOn
       (if _fullPowerOn (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _flag
       (write-byte _flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cmd
     (setq _cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _year
     (setq _year (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _month
     (setq _month (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _day
     (setq _day (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hour
     (setq _hour (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _min
     (setq _min (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sec
     (setq _sec (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _timerEnable
     (setq _timerEnable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fullPowerOn
     (setq _fullPowerOn (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _flag
     (setq _flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass cruiser_msgs::PowerSettingResponse
  :super ros::object
  :slots (_year _month _day _hour _min _sec _manual _adapter _station _timer _state _success ))

(defmethod cruiser_msgs::PowerSettingResponse
  (:init
   (&key
    ((:year __year) 0)
    ((:month __month) 0)
    ((:day __day) 0)
    ((:hour __hour) 0)
    ((:min __min) 0)
    ((:sec __sec) 0)
    ((:manual __manual) nil)
    ((:adapter __adapter) nil)
    ((:station __station) nil)
    ((:timer __timer) nil)
    ((:state __state) 0)
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _year (round __year))
   (setq _month (round __month))
   (setq _day (round __day))
   (setq _hour (round __hour))
   (setq _min (round __min))
   (setq _sec (round __sec))
   (setq _manual __manual)
   (setq _adapter __adapter)
   (setq _station __station)
   (setq _timer __timer)
   (setq _state (round __state))
   (setq _success __success)
   self)
  (:year
   (&optional __year)
   (if __year (setq _year __year)) _year)
  (:month
   (&optional __month)
   (if __month (setq _month __month)) _month)
  (:day
   (&optional __day)
   (if __day (setq _day __day)) _day)
  (:hour
   (&optional __hour)
   (if __hour (setq _hour __hour)) _hour)
  (:min
   (&optional __min)
   (if __min (setq _min __min)) _min)
  (:sec
   (&optional __sec)
   (if __sec (setq _sec __sec)) _sec)
  (:manual
   (&optional __manual)
   (if __manual (setq _manual __manual)) _manual)
  (:adapter
   (&optional __adapter)
   (if __adapter (setq _adapter __adapter)) _adapter)
  (:station
   (&optional __station)
   (if __station (setq _station __station)) _station)
  (:timer
   (&optional __timer)
   (if __timer (setq _timer __timer)) _timer)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; uint16 _year
    2
    ;; uint8 _month
    1
    ;; uint8 _day
    1
    ;; uint8 _hour
    1
    ;; uint8 _min
    1
    ;; uint8 _sec
    1
    ;; bool _manual
    1
    ;; bool _adapter
    1
    ;; bool _station
    1
    ;; bool _timer
    1
    ;; uint8 _state
    1
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _year
       (write-word _year s)
     ;; uint8 _month
       (write-byte _month s)
     ;; uint8 _day
       (write-byte _day s)
     ;; uint8 _hour
       (write-byte _hour s)
     ;; uint8 _min
       (write-byte _min s)
     ;; uint8 _sec
       (write-byte _sec s)
     ;; bool _manual
       (if _manual (write-byte -1 s) (write-byte 0 s))
     ;; bool _adapter
       (if _adapter (write-byte -1 s) (write-byte 0 s))
     ;; bool _station
       (if _station (write-byte -1 s) (write-byte 0 s))
     ;; bool _timer
       (if _timer (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _state
       (write-byte _state s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _year
     (setq _year (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _month
     (setq _month (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _day
     (setq _day (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hour
     (setq _hour (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _min
     (setq _min (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sec
     (setq _sec (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _manual
     (setq _manual (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _adapter
     (setq _adapter (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _station
     (setq _station (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _timer
     (setq _timer (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cruiser_msgs::PowerSetting
  :super ros::object
  :slots ())

(setf (get cruiser_msgs::PowerSetting :md5sum-) "273350ed07798e9062484e197194752f")
(setf (get cruiser_msgs::PowerSetting :datatype-) "cruiser_msgs/PowerSetting")
(setf (get cruiser_msgs::PowerSetting :request) cruiser_msgs::PowerSettingRequest)
(setf (get cruiser_msgs::PowerSetting :response) cruiser_msgs::PowerSettingResponse)

(defmethod cruiser_msgs::PowerSettingRequest
  (:response () (instance cruiser_msgs::PowerSettingResponse :init)))

(setf (get cruiser_msgs::PowerSettingRequest :md5sum-) "273350ed07798e9062484e197194752f")
(setf (get cruiser_msgs::PowerSettingRequest :datatype-) "cruiser_msgs/PowerSettingRequest")
(setf (get cruiser_msgs::PowerSettingRequest :definition-)
      "uint8 cmd
uint16 year
uint8 month
uint8 day
uint8 hour
uint8 min
uint8 sec
bool timerEnable
bool fullPowerOn
uint8 flag

---
uint16 year
uint8 month
uint8 day
uint8 hour
uint8 min
uint8 sec
bool manual
bool adapter
bool station
bool timer
uint8 state

bool success


")

(setf (get cruiser_msgs::PowerSettingResponse :md5sum-) "273350ed07798e9062484e197194752f")
(setf (get cruiser_msgs::PowerSettingResponse :datatype-) "cruiser_msgs/PowerSettingResponse")
(setf (get cruiser_msgs::PowerSettingResponse :definition-)
      "uint8 cmd
uint16 year
uint8 month
uint8 day
uint8 hour
uint8 min
uint8 sec
bool timerEnable
bool fullPowerOn
uint8 flag

---
uint16 year
uint8 month
uint8 day
uint8 hour
uint8 min
uint8 sec
bool manual
bool adapter
bool station
bool timer
uint8 state

bool success


")



(provide :cruiser_msgs/PowerSetting "273350ed07798e9062484e197194752f")


