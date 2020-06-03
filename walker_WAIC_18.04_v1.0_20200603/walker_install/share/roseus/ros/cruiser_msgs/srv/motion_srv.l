;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::motion_srv)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'motion_srv (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::MOTION_SRV")
  (make-package "CRUISER_MSGS::MOTION_SRV"))
(unless (find-package "CRUISER_MSGS::MOTION_SRVREQUEST")
  (make-package "CRUISER_MSGS::MOTION_SRVREQUEST"))
(unless (find-package "CRUISER_MSGS::MOTION_SRVRESPONSE")
  (make-package "CRUISER_MSGS::MOTION_SRVRESPONSE"))

(in-package "ROS")





(defclass cruiser_msgs::motion_srvRequest
  :super ros::object
  :slots (_command _data _actionName _writetime _targetJointPosition ))

(defmethod cruiser_msgs::motion_srvRequest
  (:init
   (&key
    ((:command __command) 0)
    ((:data __data) (make-array 3 :initial-element 0 :element-type :integer))
    ((:actionName __actionName) "")
    ((:writetime __writetime) (make-array 1024 :initial-element 0 :element-type :integer))
    ((:targetJointPosition __targetJointPosition) (make-array 16 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _data __data)
   (setq _actionName (string __actionName))
   (setq _writetime __writetime)
   (setq _targetJointPosition __targetJointPosition)
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:actionName
   (&optional __actionName)
   (if __actionName (setq _actionName __actionName)) _actionName)
  (:writetime
   (&optional __writetime)
   (if __writetime (setq _writetime __writetime)) _writetime)
  (:targetJointPosition
   (&optional __targetJointPosition)
   (if __targetJointPosition (setq _targetJointPosition __targetJointPosition)) _targetJointPosition)
  (:serialization-length
   ()
   (+
    ;; int32 _command
    4
    ;; int32[3] _data
    (* 4    3)
    ;; string _actionName
    4 (length _actionName)
    ;; int32[1024] _writetime
    (* 4    1024)
    ;; float64[16] _targetJointPosition
    (* 8    16)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _command
       (write-long _command s)
     ;; int32[3] _data
     (dotimes (i 3)
       (write-long (elt _data i) s)
       )
     ;; string _actionName
       (write-long (length _actionName) s) (princ _actionName s)
     ;; int32[1024] _writetime
     (dotimes (i 1024)
       (write-long (elt _writetime i) s)
       )
     ;; float64[16] _targetJointPosition
     (dotimes (i 16)
       (sys::poke (elt _targetJointPosition i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _command
     (setq _command (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[3] _data
   (dotimes (i (length _data))
     (setf (elt _data i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; string _actionName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _actionName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32[1024] _writetime
   (dotimes (i (length _writetime))
     (setf (elt _writetime i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; float64[16] _targetJointPosition
   (dotimes (i (length _targetJointPosition))
     (setf (elt _targetJointPosition i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(defclass cruiser_msgs::motion_srvResponse
  :super ros::object
  :slots (_result _readtime _duration _currentJointPosition ))

(defmethod cruiser_msgs::motion_srvResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:readtime __readtime) (make-array 1024 :initial-element 0 :element-type :integer))
    ((:duration __duration) 0)
    ((:currentJointPosition __currentJointPosition) (make-array 16 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _readtime __readtime)
   (setq _duration (round __duration))
   (setq _currentJointPosition __currentJointPosition)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:readtime
   (&optional __readtime)
   (if __readtime (setq _readtime __readtime)) _readtime)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:currentJointPosition
   (&optional __currentJointPosition)
   (if __currentJointPosition (setq _currentJointPosition __currentJointPosition)) _currentJointPosition)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; int32[1024] _readtime
    (* 4    1024)
    ;; int32 _duration
    4
    ;; float64[16] _currentJointPosition
    (* 8    16)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; int32[1024] _readtime
     (dotimes (i 1024)
       (write-long (elt _readtime i) s)
       )
     ;; int32 _duration
       (write-long _duration s)
     ;; float64[16] _currentJointPosition
     (dotimes (i 16)
       (sys::poke (elt _currentJointPosition i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[1024] _readtime
   (dotimes (i (length _readtime))
     (setf (elt _readtime i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; int32 _duration
     (setq _duration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[16] _currentJointPosition
   (dotimes (i (length _currentJointPosition))
     (setf (elt _currentJointPosition i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(defclass cruiser_msgs::motion_srv
  :super ros::object
  :slots ())

(setf (get cruiser_msgs::motion_srv :md5sum-) "e17f72359ddf3560f0cea3ec62c3ae72")
(setf (get cruiser_msgs::motion_srv :datatype-) "cruiser_msgs/motion_srv")
(setf (get cruiser_msgs::motion_srv :request) cruiser_msgs::motion_srvRequest)
(setf (get cruiser_msgs::motion_srv :response) cruiser_msgs::motion_srvResponse)

(defmethod cruiser_msgs::motion_srvRequest
  (:response () (instance cruiser_msgs::motion_srvResponse :init)))

(setf (get cruiser_msgs::motion_srvRequest :md5sum-) "e17f72359ddf3560f0cea3ec62c3ae72")
(setf (get cruiser_msgs::motion_srvRequest :datatype-) "cruiser_msgs/motion_srvRequest")
(setf (get cruiser_msgs::motion_srvRequest :definition-)
      "


















int32 command


int32[3] data

string actionName

int32[1024] writetime

float64[16] targetJointPosition

---

int32 result
int32[1024] readtime

int32 duration
float64[16] currentJointPosition

")

(setf (get cruiser_msgs::motion_srvResponse :md5sum-) "e17f72359ddf3560f0cea3ec62c3ae72")
(setf (get cruiser_msgs::motion_srvResponse :datatype-) "cruiser_msgs/motion_srvResponse")
(setf (get cruiser_msgs::motion_srvResponse :definition-)
      "


















int32 command


int32[3] data

string actionName

int32[1024] writetime

float64[16] targetJointPosition

---

int32 result
int32[1024] readtime

int32 duration
float64[16] currentJointPosition

")



(provide :cruiser_msgs/motion_srv "e17f72359ddf3560f0cea3ec62c3ae72")


