;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::geomagnetism)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'geomagnetism (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::GEOMAGNETISM")
  (make-package "CRUISER_MSGS::GEOMAGNETISM"))

(in-package "ROS")
;;//! \htmlinclude geomagnetism.msg.html


(defclass cruiser_msgs::geomagnetism
  :super ros::object
  :slots (_gyro_x _gyro_y _gyro_z _acc_x _acc_y _acc_z _magnetic_x _magnetic_y _magnetic_z _euler_pitch _euler_roll _euler_yaw _trigger ))

(defmethod cruiser_msgs::geomagnetism
  (:init
   (&key
    ((:gyro_x __gyro_x) 0)
    ((:gyro_y __gyro_y) 0)
    ((:gyro_z __gyro_z) 0)
    ((:acc_x __acc_x) 0)
    ((:acc_y __acc_y) 0)
    ((:acc_z __acc_z) 0)
    ((:magnetic_x __magnetic_x) 0)
    ((:magnetic_y __magnetic_y) 0)
    ((:magnetic_z __magnetic_z) 0)
    ((:euler_pitch __euler_pitch) 0)
    ((:euler_roll __euler_roll) 0)
    ((:euler_yaw __euler_yaw) 0)
    ((:trigger __trigger) nil)
    )
   (send-super :init)
   (setq _gyro_x (round __gyro_x))
   (setq _gyro_y (round __gyro_y))
   (setq _gyro_z (round __gyro_z))
   (setq _acc_x (round __acc_x))
   (setq _acc_y (round __acc_y))
   (setq _acc_z (round __acc_z))
   (setq _magnetic_x (round __magnetic_x))
   (setq _magnetic_y (round __magnetic_y))
   (setq _magnetic_z (round __magnetic_z))
   (setq _euler_pitch (round __euler_pitch))
   (setq _euler_roll (round __euler_roll))
   (setq _euler_yaw (round __euler_yaw))
   (setq _trigger __trigger)
   self)
  (:gyro_x
   (&optional __gyro_x)
   (if __gyro_x (setq _gyro_x __gyro_x)) _gyro_x)
  (:gyro_y
   (&optional __gyro_y)
   (if __gyro_y (setq _gyro_y __gyro_y)) _gyro_y)
  (:gyro_z
   (&optional __gyro_z)
   (if __gyro_z (setq _gyro_z __gyro_z)) _gyro_z)
  (:acc_x
   (&optional __acc_x)
   (if __acc_x (setq _acc_x __acc_x)) _acc_x)
  (:acc_y
   (&optional __acc_y)
   (if __acc_y (setq _acc_y __acc_y)) _acc_y)
  (:acc_z
   (&optional __acc_z)
   (if __acc_z (setq _acc_z __acc_z)) _acc_z)
  (:magnetic_x
   (&optional __magnetic_x)
   (if __magnetic_x (setq _magnetic_x __magnetic_x)) _magnetic_x)
  (:magnetic_y
   (&optional __magnetic_y)
   (if __magnetic_y (setq _magnetic_y __magnetic_y)) _magnetic_y)
  (:magnetic_z
   (&optional __magnetic_z)
   (if __magnetic_z (setq _magnetic_z __magnetic_z)) _magnetic_z)
  (:euler_pitch
   (&optional __euler_pitch)
   (if __euler_pitch (setq _euler_pitch __euler_pitch)) _euler_pitch)
  (:euler_roll
   (&optional __euler_roll)
   (if __euler_roll (setq _euler_roll __euler_roll)) _euler_roll)
  (:euler_yaw
   (&optional __euler_yaw)
   (if __euler_yaw (setq _euler_yaw __euler_yaw)) _euler_yaw)
  (:trigger
   (&optional __trigger)
   (if __trigger (setq _trigger __trigger)) _trigger)
  (:serialization-length
   ()
   (+
    ;; int32 _gyro_x
    4
    ;; int32 _gyro_y
    4
    ;; int32 _gyro_z
    4
    ;; int32 _acc_x
    4
    ;; int32 _acc_y
    4
    ;; int32 _acc_z
    4
    ;; int32 _magnetic_x
    4
    ;; int32 _magnetic_y
    4
    ;; int32 _magnetic_z
    4
    ;; int32 _euler_pitch
    4
    ;; int32 _euler_roll
    4
    ;; int32 _euler_yaw
    4
    ;; bool _trigger
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _gyro_x
       (write-long _gyro_x s)
     ;; int32 _gyro_y
       (write-long _gyro_y s)
     ;; int32 _gyro_z
       (write-long _gyro_z s)
     ;; int32 _acc_x
       (write-long _acc_x s)
     ;; int32 _acc_y
       (write-long _acc_y s)
     ;; int32 _acc_z
       (write-long _acc_z s)
     ;; int32 _magnetic_x
       (write-long _magnetic_x s)
     ;; int32 _magnetic_y
       (write-long _magnetic_y s)
     ;; int32 _magnetic_z
       (write-long _magnetic_z s)
     ;; int32 _euler_pitch
       (write-long _euler_pitch s)
     ;; int32 _euler_roll
       (write-long _euler_roll s)
     ;; int32 _euler_yaw
       (write-long _euler_yaw s)
     ;; bool _trigger
       (if _trigger (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _gyro_x
     (setq _gyro_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _gyro_y
     (setq _gyro_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _gyro_z
     (setq _gyro_z (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _acc_x
     (setq _acc_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _acc_y
     (setq _acc_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _acc_z
     (setq _acc_z (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _magnetic_x
     (setq _magnetic_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _magnetic_y
     (setq _magnetic_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _magnetic_z
     (setq _magnetic_z (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _euler_pitch
     (setq _euler_pitch (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _euler_roll
     (setq _euler_roll (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _euler_yaw
     (setq _euler_yaw (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _trigger
     (setq _trigger (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get cruiser_msgs::geomagnetism :md5sum-) "a11ec4346fd95eab51cf9d95e5a6dc16")
(setf (get cruiser_msgs::geomagnetism :datatype-) "cruiser_msgs/geomagnetism")
(setf (get cruiser_msgs::geomagnetism :definition-)
      "int32 gyro_x
int32 gyro_y
int32 gyro_z
int32 acc_x
int32 acc_y
int32 acc_z
int32 magnetic_x
int32 magnetic_y
int32 magnetic_z
int32 euler_pitch
int32 euler_roll
int32 euler_yaw
bool trigger





")



(provide :cruiser_msgs/geomagnetism "a11ec4346fd95eab51cf9d95e5a6dc16")


