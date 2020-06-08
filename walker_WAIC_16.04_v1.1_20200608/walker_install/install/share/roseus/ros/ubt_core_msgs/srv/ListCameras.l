;; Auto-generated. Do not edit!


(when (boundp 'ubt_core_msgs::ListCameras)
  (if (not (find-package "UBT_CORE_MSGS"))
    (make-package "UBT_CORE_MSGS"))
  (shadow 'ListCameras (find-package "UBT_CORE_MSGS")))
(unless (find-package "UBT_CORE_MSGS::LISTCAMERAS")
  (make-package "UBT_CORE_MSGS::LISTCAMERAS"))
(unless (find-package "UBT_CORE_MSGS::LISTCAMERASREQUEST")
  (make-package "UBT_CORE_MSGS::LISTCAMERASREQUEST"))
(unless (find-package "UBT_CORE_MSGS::LISTCAMERASRESPONSE")
  (make-package "UBT_CORE_MSGS::LISTCAMERASRESPONSE"))

(in-package "ROS")





(defclass ubt_core_msgs::ListCamerasRequest
  :super ros::object
  :slots ())

(defmethod ubt_core_msgs::ListCamerasRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass ubt_core_msgs::ListCamerasResponse
  :super ros::object
  :slots (_cameras ))

(defmethod ubt_core_msgs::ListCamerasResponse
  (:init
   (&key
    ((:cameras __cameras) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _cameras __cameras)
   self)
  (:cameras
   (&optional __cameras)
   (if __cameras (setq _cameras __cameras)) _cameras)
  (:serialization-length
   ()
   (+
    ;; string[] _cameras
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _cameras)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _cameras
     (write-long (length _cameras) s)
     (dolist (elem _cameras)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _cameras
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cameras (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _cameras i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass ubt_core_msgs::ListCameras
  :super ros::object
  :slots ())

(setf (get ubt_core_msgs::ListCameras :md5sum-) "855b31192ab61744e7deb992d94db7ff")
(setf (get ubt_core_msgs::ListCameras :datatype-) "ubt_core_msgs/ListCameras")
(setf (get ubt_core_msgs::ListCameras :request) ubt_core_msgs::ListCamerasRequest)
(setf (get ubt_core_msgs::ListCameras :response) ubt_core_msgs::ListCamerasResponse)

(defmethod ubt_core_msgs::ListCamerasRequest
  (:response () (instance ubt_core_msgs::ListCamerasResponse :init)))

(setf (get ubt_core_msgs::ListCamerasRequest :md5sum-) "855b31192ab61744e7deb992d94db7ff")
(setf (get ubt_core_msgs::ListCamerasRequest :datatype-) "ubt_core_msgs/ListCamerasRequest")
(setf (get ubt_core_msgs::ListCamerasRequest :definition-)
      "---
string[]    cameras

")

(setf (get ubt_core_msgs::ListCamerasResponse :md5sum-) "855b31192ab61744e7deb992d94db7ff")
(setf (get ubt_core_msgs::ListCamerasResponse :datatype-) "ubt_core_msgs/ListCamerasResponse")
(setf (get ubt_core_msgs::ListCamerasResponse :definition-)
      "---
string[]    cameras

")



(provide :ubt_core_msgs/ListCameras "855b31192ab61744e7deb992d94db7ff")


