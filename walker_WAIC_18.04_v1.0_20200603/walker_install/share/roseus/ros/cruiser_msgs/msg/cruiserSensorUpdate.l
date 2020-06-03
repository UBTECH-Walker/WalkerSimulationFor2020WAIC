;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::cruiserSensorUpdate)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'cruiserSensorUpdate (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISERSENSORUPDATE")
  (make-package "CRUISER_MSGS::CRUISERSENSORUPDATE"))

(in-package "ROS")
;;//! \htmlinclude cruiserSensorUpdate.msg.html


(defclass cruiser_msgs::cruiserSensorUpdate
  :super ros::object
  :slots (_data1 _data2 _data3 _data4 _data5 _data6 ))

(defmethod cruiser_msgs::cruiserSensorUpdate
  (:init
   (&key
    ((:data1 __data1) 0)
    ((:data2 __data2) 0)
    ((:data3 __data3) 0)
    ((:data4 __data4) 0)
    ((:data5 __data5) 0)
    ((:data6 __data6) 0)
    )
   (send-super :init)
   (setq _data1 (round __data1))
   (setq _data2 (round __data2))
   (setq _data3 (round __data3))
   (setq _data4 (round __data4))
   (setq _data5 (round __data5))
   (setq _data6 (round __data6))
   self)
  (:data1
   (&optional __data1)
   (if __data1 (setq _data1 __data1)) _data1)
  (:data2
   (&optional __data2)
   (if __data2 (setq _data2 __data2)) _data2)
  (:data3
   (&optional __data3)
   (if __data3 (setq _data3 __data3)) _data3)
  (:data4
   (&optional __data4)
   (if __data4 (setq _data4 __data4)) _data4)
  (:data5
   (&optional __data5)
   (if __data5 (setq _data5 __data5)) _data5)
  (:data6
   (&optional __data6)
   (if __data6 (setq _data6 __data6)) _data6)
  (:serialization-length
   ()
   (+
    ;; uint32 _data1
    4
    ;; uint32 _data2
    4
    ;; uint32 _data3
    4
    ;; uint32 _data4
    4
    ;; uint32 _data5
    4
    ;; uint32 _data6
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _data1
       (write-long _data1 s)
     ;; uint32 _data2
       (write-long _data2 s)
     ;; uint32 _data3
       (write-long _data3 s)
     ;; uint32 _data4
       (write-long _data4 s)
     ;; uint32 _data5
       (write-long _data5 s)
     ;; uint32 _data6
       (write-long _data6 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _data1
     (setq _data1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _data2
     (setq _data2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _data3
     (setq _data3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _data4
     (setq _data4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _data5
     (setq _data5 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _data6
     (setq _data6 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cruiser_msgs::cruiserSensorUpdate :md5sum-) "ca7cc81c4478bf5d727f35a1887362ee")
(setf (get cruiser_msgs::cruiserSensorUpdate :datatype-) "cruiser_msgs/cruiserSensorUpdate")
(setf (get cruiser_msgs::cruiserSensorUpdate :definition-)
      "uint32 data1
uint32 data2
uint32 data3
uint32 data4
uint32 data5
uint32 data6


")



(provide :cruiser_msgs/cruiserSensorUpdate "ca7cc81c4478bf5d727f35a1887362ee")


