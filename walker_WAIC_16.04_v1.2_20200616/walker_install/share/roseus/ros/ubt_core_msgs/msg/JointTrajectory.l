;; Auto-generated. Do not edit!


(when (boundp 'ubt_core_msgs::JointTrajectory)
  (if (not (find-package "UBT_CORE_MSGS"))
    (make-package "UBT_CORE_MSGS"))
  (shadow 'JointTrajectory (find-package "UBT_CORE_MSGS")))
(unless (find-package "UBT_CORE_MSGS::JOINTTRAJECTORY")
  (make-package "UBT_CORE_MSGS::JOINTTRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude JointTrajectory.msg.html


(defclass ubt_core_msgs::JointTrajectory
  :super ros::object
  :slots (_mode _position _velocity _effort _acceleration ))

(defmethod ubt_core_msgs::JointTrajectory
  (:init
   (&key
    ((:mode __mode) 0)
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity __velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:effort __effort) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:acceleration __acceleration) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _effort __effort)
   (setq _acceleration __acceleration)
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:effort
   (&optional __effort)
   (if __effort (setq _effort __effort)) _effort)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:serialization-length
   ()
   (+
    ;; int32 _mode
    4
    ;; float64[] _position
    (* 8    (length _position)) 4
    ;; float64[] _velocity
    (* 8    (length _velocity)) 4
    ;; float64[] _effort
    (* 8    (length _effort)) 4
    ;; float64[] _acceleration
    (* 8    (length _acceleration)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _mode
       (write-long _mode s)
     ;; float64[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _velocity
     (write-long (length _velocity) s)
     (dotimes (i (length _velocity))
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _effort
     (write-long (length _effort) s)
     (dotimes (i (length _effort))
       (sys::poke (elt _effort i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _acceleration
     (write-long (length _acceleration) s)
     (dotimes (i (length _acceleration))
       (sys::poke (elt _acceleration i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _effort i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _acceleration
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acceleration (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _acceleration i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get ubt_core_msgs::JointTrajectory :md5sum-) "e9cd8f555650318d9b4f9cd4dce763db")
(setf (get ubt_core_msgs::JointTrajectory :datatype-) "ubt_core_msgs/JointTrajectory")
(setf (get ubt_core_msgs::JointTrajectory :definition-)
      "int32 mode
float64[] position
float64[] velocity
float64[] effort
float64[] acceleration

")



(provide :ubt_core_msgs/JointTrajectory "e9cd8f555650318d9b4f9cd4dce763db")


