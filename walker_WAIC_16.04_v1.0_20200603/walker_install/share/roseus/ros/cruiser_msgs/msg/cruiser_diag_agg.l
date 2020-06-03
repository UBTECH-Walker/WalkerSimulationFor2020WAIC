;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::cruiser_diag_agg)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'cruiser_diag_agg (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISER_DIAG_AGG")
  (make-package "CRUISER_MSGS::CRUISER_DIAG_AGG"))

(in-package "ROS")
;;//! \htmlinclude cruiser_diag_agg.msg.html


(defclass cruiser_msgs::cruiser_diag_agg
  :super ros::object
  :slots (_status _msg _key _value _data ))

(defmethod cruiser_msgs::cruiser_diag_agg
  (:init
   (&key
    ((:status __status) 0)
    ((:msg __msg) "")
    ((:key __key) 0)
    ((:value __value) 0)
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _msg (string __msg))
   (setq _key (round __key))
   (setq _value (round __value))
   (setq _data (round __data))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
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
    ;; byte _status
    1
    ;; string _msg
    4 (length _msg)
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
     ;; byte _status
       (write-byte _status s)
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
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
   ;; byte _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _key
     (setq _key (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cruiser_msgs::cruiser_diag_agg :md5sum-) "68999ce2b5e8dd878bf64d6dbfe7c7dc")
(setf (get cruiser_msgs::cruiser_diag_agg :datatype-) "cruiser_msgs/cruiser_diag_agg")
(setf (get cruiser_msgs::cruiser_diag_agg :definition-)
      "#topic /cruiser/diag_agg
byte status
string msg
int32 key
int32 value
int32 data
")



(provide :cruiser_msgs/cruiser_diag_agg "68999ce2b5e8dd878bf64d6dbfe7c7dc")


