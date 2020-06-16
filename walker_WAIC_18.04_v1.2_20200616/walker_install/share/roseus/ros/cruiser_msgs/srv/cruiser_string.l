;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::cruiser_string)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'cruiser_string (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISER_STRING")
  (make-package "CRUISER_MSGS::CRUISER_STRING"))
(unless (find-package "CRUISER_MSGS::CRUISER_STRINGREQUEST")
  (make-package "CRUISER_MSGS::CRUISER_STRINGREQUEST"))
(unless (find-package "CRUISER_MSGS::CRUISER_STRINGRESPONSE")
  (make-package "CRUISER_MSGS::CRUISER_STRINGRESPONSE"))

(in-package "ROS")





(defclass cruiser_msgs::cruiser_stringRequest
  :super ros::object
  :slots (_priority _str ))

(defmethod cruiser_msgs::cruiser_stringRequest
  (:init
   (&key
    ((:priority __priority) 0)
    ((:str __str) "")
    )
   (send-super :init)
   (setq _priority (round __priority))
   (setq _str (string __str))
   self)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:str
   (&optional __str)
   (if __str (setq _str __str)) _str)
  (:serialization-length
   ()
   (+
    ;; uint32 _priority
    4
    ;; string _str
    4 (length _str)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _priority
       (write-long _priority s)
     ;; string _str
       (write-long (length _str) s) (princ _str s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _priority
     (setq _priority (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _str
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _str (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cruiser_msgs::cruiser_stringResponse
  :super ros::object
  :slots (_str ))

(defmethod cruiser_msgs::cruiser_stringResponse
  (:init
   (&key
    ((:str __str) "")
    )
   (send-super :init)
   (setq _str (string __str))
   self)
  (:str
   (&optional __str)
   (if __str (setq _str __str)) _str)
  (:serialization-length
   ()
   (+
    ;; string _str
    4 (length _str)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _str
       (write-long (length _str) s) (princ _str s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _str
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _str (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cruiser_msgs::cruiser_string
  :super ros::object
  :slots ())

(setf (get cruiser_msgs::cruiser_string :md5sum-) "be3d0e35ecd74786b92f4acafccf0d4a")
(setf (get cruiser_msgs::cruiser_string :datatype-) "cruiser_msgs/cruiser_string")
(setf (get cruiser_msgs::cruiser_string :request) cruiser_msgs::cruiser_stringRequest)
(setf (get cruiser_msgs::cruiser_string :response) cruiser_msgs::cruiser_stringResponse)

(defmethod cruiser_msgs::cruiser_stringRequest
  (:response () (instance cruiser_msgs::cruiser_stringResponse :init)))

(setf (get cruiser_msgs::cruiser_stringRequest :md5sum-) "be3d0e35ecd74786b92f4acafccf0d4a")
(setf (get cruiser_msgs::cruiser_stringRequest :datatype-) "cruiser_msgs/cruiser_stringRequest")
(setf (get cruiser_msgs::cruiser_stringRequest :definition-)
      "uint32 priority
string str
---
# time in millisecond. 1000 stands for 1s
string str


")

(setf (get cruiser_msgs::cruiser_stringResponse :md5sum-) "be3d0e35ecd74786b92f4acafccf0d4a")
(setf (get cruiser_msgs::cruiser_stringResponse :datatype-) "cruiser_msgs/cruiser_stringResponse")
(setf (get cruiser_msgs::cruiser_stringResponse :definition-)
      "uint32 priority
string str
---
# time in millisecond. 1000 stands for 1s
string str


")



(provide :cruiser_msgs/cruiser_string "be3d0e35ecd74786b92f4acafccf0d4a")


