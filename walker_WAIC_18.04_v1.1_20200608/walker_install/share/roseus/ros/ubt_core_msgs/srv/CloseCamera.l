;; Auto-generated. Do not edit!


(when (boundp 'ubt_core_msgs::CloseCamera)
  (if (not (find-package "UBT_CORE_MSGS"))
    (make-package "UBT_CORE_MSGS"))
  (shadow 'CloseCamera (find-package "UBT_CORE_MSGS")))
(unless (find-package "UBT_CORE_MSGS::CLOSECAMERA")
  (make-package "UBT_CORE_MSGS::CLOSECAMERA"))
(unless (find-package "UBT_CORE_MSGS::CLOSECAMERAREQUEST")
  (make-package "UBT_CORE_MSGS::CLOSECAMERAREQUEST"))
(unless (find-package "UBT_CORE_MSGS::CLOSECAMERARESPONSE")
  (make-package "UBT_CORE_MSGS::CLOSECAMERARESPONSE"))

(in-package "ROS")





(defclass ubt_core_msgs::CloseCameraRequest
  :super ros::object
  :slots (_name ))

(defmethod ubt_core_msgs::CloseCameraRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ubt_core_msgs::CloseCameraResponse
  :super ros::object
  :slots (_err ))

(defmethod ubt_core_msgs::CloseCameraResponse
  (:init
   (&key
    ((:err __err) 0)
    )
   (send-super :init)
   (setq _err (round __err))
   self)
  (:err
   (&optional __err)
   (if __err (setq _err __err)) _err)
  (:serialization-length
   ()
   (+
    ;; int32 _err
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _err
       (write-long _err s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _err
     (setq _err (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ubt_core_msgs::CloseCamera
  :super ros::object
  :slots ())

(setf (get ubt_core_msgs::CloseCamera :md5sum-) "1067b4a7f008fe1ff4bd9668312773fd")
(setf (get ubt_core_msgs::CloseCamera :datatype-) "ubt_core_msgs/CloseCamera")
(setf (get ubt_core_msgs::CloseCamera :request) ubt_core_msgs::CloseCameraRequest)
(setf (get ubt_core_msgs::CloseCamera :response) ubt_core_msgs::CloseCameraResponse)

(defmethod ubt_core_msgs::CloseCameraRequest
  (:response () (instance ubt_core_msgs::CloseCameraResponse :init)))

(setf (get ubt_core_msgs::CloseCameraRequest :md5sum-) "1067b4a7f008fe1ff4bd9668312773fd")
(setf (get ubt_core_msgs::CloseCameraRequest :datatype-) "ubt_core_msgs/CloseCameraRequest")
(setf (get ubt_core_msgs::CloseCameraRequest :definition-)
      "string          name
---
int32           err

")

(setf (get ubt_core_msgs::CloseCameraResponse :md5sum-) "1067b4a7f008fe1ff4bd9668312773fd")
(setf (get ubt_core_msgs::CloseCameraResponse :datatype-) "ubt_core_msgs/CloseCameraResponse")
(setf (get ubt_core_msgs::CloseCameraResponse :definition-)
      "string          name
---
int32           err

")



(provide :ubt_core_msgs/CloseCamera "1067b4a7f008fe1ff4bd9668312773fd")


