;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::uwbRelocalizition)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'uwbRelocalizition (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::UWBRELOCALIZITION")
  (make-package "CRUISER_MSGS::UWBRELOCALIZITION"))
(unless (find-package "CRUISER_MSGS::UWBRELOCALIZITIONREQUEST")
  (make-package "CRUISER_MSGS::UWBRELOCALIZITIONREQUEST"))
(unless (find-package "CRUISER_MSGS::UWBRELOCALIZITIONRESPONSE")
  (make-package "CRUISER_MSGS::UWBRELOCALIZITIONRESPONSE"))

(in-package "ROS")





(intern "*TRIGGER_RELOCALIZITION*" (find-package "CRUISER_MSGS::UWBRELOCALIZITIONREQUEST"))
(shadow '*TRIGGER_RELOCALIZITION* (find-package "CRUISER_MSGS::UWBRELOCALIZITIONREQUEST"))
(defconstant cruiser_msgs::uwbRelocalizitionRequest::*TRIGGER_RELOCALIZITION* 0)
(intern "*GET_STATUS*" (find-package "CRUISER_MSGS::UWBRELOCALIZITIONREQUEST"))
(shadow '*GET_STATUS* (find-package "CRUISER_MSGS::UWBRELOCALIZITIONREQUEST"))
(defconstant cruiser_msgs::uwbRelocalizitionRequest::*GET_STATUS* 1)
(defclass cruiser_msgs::uwbRelocalizitionRequest
  :super ros::object
  :slots (_data ))

(defmethod cruiser_msgs::uwbRelocalizitionRequest
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(intern "*STATE_IDLE*" (find-package "CRUISER_MSGS::UWBRELOCALIZITIONRESPONSE"))
(shadow '*STATE_IDLE* (find-package "CRUISER_MSGS::UWBRELOCALIZITIONRESPONSE"))
(defconstant cruiser_msgs::uwbRelocalizitionResponse::*STATE_IDLE* 0)
(intern "*STATE_ESTMATING*" (find-package "CRUISER_MSGS::UWBRELOCALIZITIONRESPONSE"))
(shadow '*STATE_ESTMATING* (find-package "CRUISER_MSGS::UWBRELOCALIZITIONRESPONSE"))
(defconstant cruiser_msgs::uwbRelocalizitionResponse::*STATE_ESTMATING* 1)
(intern "*STATE_SUCCESS*" (find-package "CRUISER_MSGS::UWBRELOCALIZITIONRESPONSE"))
(shadow '*STATE_SUCCESS* (find-package "CRUISER_MSGS::UWBRELOCALIZITIONRESPONSE"))
(defconstant cruiser_msgs::uwbRelocalizitionResponse::*STATE_SUCCESS* 2)
(intern "*STATE_FAIL*" (find-package "CRUISER_MSGS::UWBRELOCALIZITIONRESPONSE"))
(shadow '*STATE_FAIL* (find-package "CRUISER_MSGS::UWBRELOCALIZITIONRESPONSE"))
(defconstant cruiser_msgs::uwbRelocalizitionResponse::*STATE_FAIL* 3)
(intern "*TRIGGER_SUCCESS*" (find-package "CRUISER_MSGS::UWBRELOCALIZITIONRESPONSE"))
(shadow '*TRIGGER_SUCCESS* (find-package "CRUISER_MSGS::UWBRELOCALIZITIONRESPONSE"))
(defconstant cruiser_msgs::uwbRelocalizitionResponse::*TRIGGER_SUCCESS* 4)
(defclass cruiser_msgs::uwbRelocalizitionResponse
  :super ros::object
  :slots (_status ))

(defmethod cruiser_msgs::uwbRelocalizitionResponse
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cruiser_msgs::uwbRelocalizition
  :super ros::object
  :slots ())

(setf (get cruiser_msgs::uwbRelocalizition :md5sum-) "ce1b6b26da28ea681dfc3a90266c2fdd")
(setf (get cruiser_msgs::uwbRelocalizition :datatype-) "cruiser_msgs/uwbRelocalizition")
(setf (get cruiser_msgs::uwbRelocalizition :request) cruiser_msgs::uwbRelocalizitionRequest)
(setf (get cruiser_msgs::uwbRelocalizition :response) cruiser_msgs::uwbRelocalizitionResponse)

(defmethod cruiser_msgs::uwbRelocalizitionRequest
  (:response () (instance cruiser_msgs::uwbRelocalizitionResponse :init)))

(setf (get cruiser_msgs::uwbRelocalizitionRequest :md5sum-) "ce1b6b26da28ea681dfc3a90266c2fdd")
(setf (get cruiser_msgs::uwbRelocalizitionRequest :datatype-) "cruiser_msgs/uwbRelocalizitionRequest")
(setf (get cruiser_msgs::uwbRelocalizitionRequest :definition-)
      "int32 TRIGGER_RELOCALIZITION =0
int32 GET_STATUS =1
int32 data
---
int32 STATE_IDLE =0
int32 STATE_ESTMATING =1
int32 STATE_SUCCESS = 2
int32 STATE_FAIL = 3
int32 TRIGGER_SUCCESS = 4
int32 status


")

(setf (get cruiser_msgs::uwbRelocalizitionResponse :md5sum-) "ce1b6b26da28ea681dfc3a90266c2fdd")
(setf (get cruiser_msgs::uwbRelocalizitionResponse :datatype-) "cruiser_msgs/uwbRelocalizitionResponse")
(setf (get cruiser_msgs::uwbRelocalizitionResponse :definition-)
      "int32 TRIGGER_RELOCALIZITION =0
int32 GET_STATUS =1
int32 data
---
int32 STATE_IDLE =0
int32 STATE_ESTMATING =1
int32 STATE_SUCCESS = 2
int32 STATE_FAIL = 3
int32 TRIGGER_SUCCESS = 4
int32 status


")



(provide :cruiser_msgs/uwbRelocalizition "ce1b6b26da28ea681dfc3a90266c2fdd")


