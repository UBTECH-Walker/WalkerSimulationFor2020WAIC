;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::GetUwbSupportedMode)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'GetUwbSupportedMode (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::GETUWBSUPPORTEDMODE")
  (make-package "CRUISER_MSGS::GETUWBSUPPORTEDMODE"))
(unless (find-package "CRUISER_MSGS::GETUWBSUPPORTEDMODEREQUEST")
  (make-package "CRUISER_MSGS::GETUWBSUPPORTEDMODEREQUEST"))
(unless (find-package "CRUISER_MSGS::GETUWBSUPPORTEDMODERESPONSE")
  (make-package "CRUISER_MSGS::GETUWBSUPPORTEDMODERESPONSE"))

(in-package "ROS")





(defclass cruiser_msgs::GetUwbSupportedModeRequest
  :super ros::object
  :slots (_mode ))

(defmethod cruiser_msgs::GetUwbSupportedModeRequest
  (:init
   (&key
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; int32 _mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _mode
       (write-long _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cruiser_msgs::GetUwbSupportedModeResponse
  :super ros::object
  :slots (_supported ))

(defmethod cruiser_msgs::GetUwbSupportedModeResponse
  (:init
   (&key
    ((:supported __supported) nil)
    )
   (send-super :init)
   (setq _supported __supported)
   self)
  (:supported
   (&optional __supported)
   (if __supported (setq _supported __supported)) _supported)
  (:serialization-length
   ()
   (+
    ;; bool _supported
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _supported
       (if _supported (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _supported
     (setq _supported (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cruiser_msgs::GetUwbSupportedMode
  :super ros::object
  :slots ())

(setf (get cruiser_msgs::GetUwbSupportedMode :md5sum-) "3c35866e3d60aa551b5343ed0f3e9138")
(setf (get cruiser_msgs::GetUwbSupportedMode :datatype-) "cruiser_msgs/GetUwbSupportedMode")
(setf (get cruiser_msgs::GetUwbSupportedMode :request) cruiser_msgs::GetUwbSupportedModeRequest)
(setf (get cruiser_msgs::GetUwbSupportedMode :response) cruiser_msgs::GetUwbSupportedModeResponse)

(defmethod cruiser_msgs::GetUwbSupportedModeRequest
  (:response () (instance cruiser_msgs::GetUwbSupportedModeResponse :init)))

(setf (get cruiser_msgs::GetUwbSupportedModeRequest :md5sum-) "3c35866e3d60aa551b5343ed0f3e9138")
(setf (get cruiser_msgs::GetUwbSupportedModeRequest :datatype-) "cruiser_msgs/GetUwbSupportedModeRequest")
(setf (get cruiser_msgs::GetUwbSupportedModeRequest :definition-)
      "# mode=0 uwb_loco_mode supported; mode=1 uwb_nav_mode supported
int32 mode
---
bool supported

")

(setf (get cruiser_msgs::GetUwbSupportedModeResponse :md5sum-) "3c35866e3d60aa551b5343ed0f3e9138")
(setf (get cruiser_msgs::GetUwbSupportedModeResponse :datatype-) "cruiser_msgs/GetUwbSupportedModeResponse")
(setf (get cruiser_msgs::GetUwbSupportedModeResponse :definition-)
      "# mode=0 uwb_loco_mode supported; mode=1 uwb_nav_mode supported
int32 mode
---
bool supported

")



(provide :cruiser_msgs/GetUwbSupportedMode "3c35866e3d60aa551b5343ed0f3e9138")


