;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::cruiser_diagnostics)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'cruiser_diagnostics (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISER_DIAGNOSTICS")
  (make-package "CRUISER_MSGS::CRUISER_DIAGNOSTICS"))

(in-package "ROS")
;;//! \htmlinclude cruiser_diagnostics.msg.html


(defclass cruiser_msgs::cruiser_diagnostics
  :super ros::object
  :slots (_level _name _message _key _value _data ))

(defmethod cruiser_msgs::cruiser_diagnostics
  (:init
   (&key
    ((:level __level) 0)
    ((:name __name) "")
    ((:message __message) "")
    ((:key __key) 0)
    ((:value __value) 0)
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _level (round __level))
   (setq _name (string __name))
   (setq _message (string __message))
   (setq _key (round __key))
   (setq _value (round __value))
   (setq _data (round __data))
   self)
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; byte _level
    1
    ;; string _name
    4 (length _name)
    ;; string _message
    4 (length _message)
    ;; int32 _key
    4
    ;; int32 _value
    4
    ;; int32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; byte _level
       (write-byte _level s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; int32 _key
       (write-long _key s)
     ;; int32 _value
       (write-long _value s)
     ;; int32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; byte _level
     (setq _level (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _level 127) (setq _level (- _level 256)))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _key
     (setq _key (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cruiser_msgs::cruiser_diagnostics :md5sum-) "2acd95d3e541d4e596dab4dec2608e90")
(setf (get cruiser_msgs::cruiser_diagnostics :datatype-) "cruiser_msgs/cruiser_diagnostics")
(setf (get cruiser_msgs::cruiser_diagnostics :definition-)
      "#topic /cruiser/diagnostics
# level -- ok:0, warn:1, error:2
byte level
string name
string message
int32 key
int32 value
int32 data

")



(provide :cruiser_msgs/cruiser_diagnostics "2acd95d3e541d4e596dab4dec2608e90")


