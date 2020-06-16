;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::cruiserSensorBoardStatus)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'cruiserSensorBoardStatus (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISERSENSORBOARDSTATUS")
  (make-package "CRUISER_MSGS::CRUISERSENSORBOARDSTATUS"))

(in-package "ROS")
;;//! \htmlinclude cruiserSensorBoardStatus.msg.html


(defclass cruiser_msgs::cruiserSensorBoardStatus
  :super ros::object
  :slots (_sensor_board_abnormal ))

(defmethod cruiser_msgs::cruiserSensorBoardStatus
  (:init
   (&key
    ((:sensor_board_abnormal __sensor_board_abnormal) 0)
    )
   (send-super :init)
   (setq _sensor_board_abnormal (round __sensor_board_abnormal))
   self)
  (:sensor_board_abnormal
   (&optional __sensor_board_abnormal)
   (if __sensor_board_abnormal (setq _sensor_board_abnormal __sensor_board_abnormal)) _sensor_board_abnormal)
  (:serialization-length
   ()
   (+
    ;; uint32 _sensor_board_abnormal
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _sensor_board_abnormal
       (write-long _sensor_board_abnormal s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _sensor_board_abnormal
     (setq _sensor_board_abnormal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cruiser_msgs::cruiserSensorBoardStatus :md5sum-) "7c0773c157c86740d50fb4f7ef626929")
(setf (get cruiser_msgs::cruiserSensorBoardStatus :datatype-) "cruiser_msgs/cruiserSensorBoardStatus")
(setf (get cruiser_msgs::cruiserSensorBoardStatus :definition-)
      "uint32 sensor_board_abnormal



")



(provide :cruiser_msgs/cruiserSensorBoardStatus "7c0773c157c86740d50fb4f7ef626929")


