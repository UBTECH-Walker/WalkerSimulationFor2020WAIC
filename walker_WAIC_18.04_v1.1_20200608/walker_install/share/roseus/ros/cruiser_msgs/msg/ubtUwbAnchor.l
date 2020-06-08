;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::ubtUwbAnchor)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'ubtUwbAnchor (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::UBTUWBANCHOR")
  (make-package "CRUISER_MSGS::UBTUWBANCHOR"))

(in-package "ROS")
;;//! \htmlinclude ubtUwbAnchor.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cruiser_msgs::ubtUwbAnchor
  :super ros::object
  :slots (_header _id _distance _rQua _rssi _fpRssi ))

(defmethod cruiser_msgs::ubtUwbAnchor
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:distance __distance) (make-array 0 :initial-element 0 :element-type :integer))
    ((:rQua __rQua) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rssi __rssi) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:fpRssi __fpRssi) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id __id)
   (setq _distance __distance)
   (setq _rQua __rQua)
   (setq _rssi __rssi)
   (setq _fpRssi __fpRssi)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:rQua
   (&optional __rQua)
   (if __rQua (setq _rQua __rQua)) _rQua)
  (:rssi
   (&optional __rssi)
   (if __rssi (setq _rssi __rssi)) _rssi)
  (:fpRssi
   (&optional __fpRssi)
   (if __fpRssi (setq _fpRssi __fpRssi)) _fpRssi)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16[] _id
    (* 2    (length _id)) 4
    ;; uint16[] _distance
    (* 2    (length _distance)) 4
    ;; float32[] _rQua
    (* 4    (length _rQua)) 4
    ;; float32[] _rssi
    (* 4    (length _rssi)) 4
    ;; float32[] _fpRssi
    (* 4    (length _fpRssi)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16[] _id
     (write-long (length _id) s)
     (dotimes (i (length _id))
       (write-word (elt _id i) s)
       )
     ;; uint16[] _distance
     (write-long (length _distance) s)
     (dotimes (i (length _distance))
       (write-word (elt _distance i) s)
       )
     ;; float32[] _rQua
     (write-long (length _rQua) s)
     (dotimes (i (length _rQua))
       (sys::poke (elt _rQua i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _rssi
     (write-long (length _rssi) s)
     (dotimes (i (length _rssi))
       (sys::poke (elt _rssi i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _fpRssi
     (write-long (length _fpRssi) s)
     (dotimes (i (length _fpRssi))
       (sys::poke (elt _fpRssi i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16[] _id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _id i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _distance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _distance (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _distance i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; float32[] _rQua
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rQua (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rQua i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _rssi
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rssi (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rssi i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _fpRssi
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fpRssi (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _fpRssi i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get cruiser_msgs::ubtUwbAnchor :md5sum-) "ad5f07f4e526d0fa73b93b5ba13bceb5")
(setf (get cruiser_msgs::ubtUwbAnchor :datatype-) "cruiser_msgs/ubtUwbAnchor")
(setf (get cruiser_msgs::ubtUwbAnchor :definition-)
      "std_msgs/Header header
uint16[] id
uint16[] distance
float32[] rQua
float32[] rssi
float32[] fpRssi

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



(provide :cruiser_msgs/ubtUwbAnchor "ad5f07f4e526d0fa73b93b5ba13bceb5")


