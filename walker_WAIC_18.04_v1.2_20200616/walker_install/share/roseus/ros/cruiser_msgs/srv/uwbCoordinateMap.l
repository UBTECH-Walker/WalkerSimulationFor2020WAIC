;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::uwbCoordinateMap)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'uwbCoordinateMap (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::UWBCOORDINATEMAP")
  (make-package "CRUISER_MSGS::UWBCOORDINATEMAP"))
(unless (find-package "CRUISER_MSGS::UWBCOORDINATEMAPREQUEST")
  (make-package "CRUISER_MSGS::UWBCOORDINATEMAPREQUEST"))
(unless (find-package "CRUISER_MSGS::UWBCOORDINATEMAPRESPONSE")
  (make-package "CRUISER_MSGS::UWBCOORDINATEMAPRESPONSE"))

(in-package "ROS")





(defclass cruiser_msgs::uwbCoordinateMapRequest
  :super ros::object
  :slots (_intput_x _intput_y _intput_theta _theta_valid_flag ))

(defmethod cruiser_msgs::uwbCoordinateMapRequest
  (:init
   (&key
    ((:intput_x __intput_x) 0.0)
    ((:intput_y __intput_y) 0.0)
    ((:intput_theta __intput_theta) 0.0)
    ((:theta_valid_flag __theta_valid_flag) nil)
    )
   (send-super :init)
   (setq _intput_x (float __intput_x))
   (setq _intput_y (float __intput_y))
   (setq _intput_theta (float __intput_theta))
   (setq _theta_valid_flag __theta_valid_flag)
   self)
  (:intput_x
   (&optional __intput_x)
   (if __intput_x (setq _intput_x __intput_x)) _intput_x)
  (:intput_y
   (&optional __intput_y)
   (if __intput_y (setq _intput_y __intput_y)) _intput_y)
  (:intput_theta
   (&optional __intput_theta)
   (if __intput_theta (setq _intput_theta __intput_theta)) _intput_theta)
  (:theta_valid_flag
   (&optional __theta_valid_flag)
   (if __theta_valid_flag (setq _theta_valid_flag __theta_valid_flag)) _theta_valid_flag)
  (:serialization-length
   ()
   (+
    ;; float32 _intput_x
    4
    ;; float32 _intput_y
    4
    ;; float32 _intput_theta
    4
    ;; bool _theta_valid_flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _intput_x
       (sys::poke _intput_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _intput_y
       (sys::poke _intput_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _intput_theta
       (sys::poke _intput_theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _theta_valid_flag
       (if _theta_valid_flag (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _intput_x
     (setq _intput_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _intput_y
     (setq _intput_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _intput_theta
     (setq _intput_theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _theta_valid_flag
     (setq _theta_valid_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cruiser_msgs::uwbCoordinateMapResponse
  :super ros::object
  :slots (_result _output_x _output_y _output_theta ))

(defmethod cruiser_msgs::uwbCoordinateMapResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:output_x __output_x) 0.0)
    ((:output_y __output_y) 0.0)
    ((:output_theta __output_theta) 0.0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _output_x (float __output_x))
   (setq _output_y (float __output_y))
   (setq _output_theta (float __output_theta))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:output_x
   (&optional __output_x)
   (if __output_x (setq _output_x __output_x)) _output_x)
  (:output_y
   (&optional __output_y)
   (if __output_y (setq _output_y __output_y)) _output_y)
  (:output_theta
   (&optional __output_theta)
   (if __output_theta (setq _output_theta __output_theta)) _output_theta)
  (:serialization-length
   ()
   (+
    ;; uint32 _result
    4
    ;; float32 _output_x
    4
    ;; float32 _output_y
    4
    ;; float32 _output_theta
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _result
       (write-long _result s)
     ;; float32 _output_x
       (sys::poke _output_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _output_y
       (sys::poke _output_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _output_theta
       (sys::poke _output_theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _output_x
     (setq _output_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _output_y
     (setq _output_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _output_theta
     (setq _output_theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cruiser_msgs::uwbCoordinateMap
  :super ros::object
  :slots ())

(setf (get cruiser_msgs::uwbCoordinateMap :md5sum-) "795d5cb78f54a9363452cba320578b0f")
(setf (get cruiser_msgs::uwbCoordinateMap :datatype-) "cruiser_msgs/uwbCoordinateMap")
(setf (get cruiser_msgs::uwbCoordinateMap :request) cruiser_msgs::uwbCoordinateMapRequest)
(setf (get cruiser_msgs::uwbCoordinateMap :response) cruiser_msgs::uwbCoordinateMapResponse)

(defmethod cruiser_msgs::uwbCoordinateMapRequest
  (:response () (instance cruiser_msgs::uwbCoordinateMapResponse :init)))

(setf (get cruiser_msgs::uwbCoordinateMapRequest :md5sum-) "795d5cb78f54a9363452cba320578b0f")
(setf (get cruiser_msgs::uwbCoordinateMapRequest :datatype-) "cruiser_msgs/uwbCoordinateMapRequest")
(setf (get cruiser_msgs::uwbCoordinateMapRequest :definition-)
      "float32 intput_x
float32 intput_y
float32 intput_theta
bool theta_valid_flag
---
uint32 result
float32 output_x
float32 output_y
float32 output_theta


")

(setf (get cruiser_msgs::uwbCoordinateMapResponse :md5sum-) "795d5cb78f54a9363452cba320578b0f")
(setf (get cruiser_msgs::uwbCoordinateMapResponse :datatype-) "cruiser_msgs/uwbCoordinateMapResponse")
(setf (get cruiser_msgs::uwbCoordinateMapResponse :definition-)
      "float32 intput_x
float32 intput_y
float32 intput_theta
bool theta_valid_flag
---
uint32 result
float32 output_x
float32 output_y
float32 output_theta


")



(provide :cruiser_msgs/uwbCoordinateMap "795d5cb78f54a9363452cba320578b0f")


