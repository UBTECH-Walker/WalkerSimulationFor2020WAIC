;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::MapJson)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'MapJson (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::MAPJSON")
  (make-package "CRUISER_MSGS::MAPJSON"))

(in-package "ROS")
;;//! \htmlinclude MapJson.msg.html


(defclass cruiser_msgs::MapJson
  :super ros::object
  :slots (_data ))

(defmethod cruiser_msgs::MapJson
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get cruiser_msgs::MapJson :md5sum-) "f43a8e1b362b75baa741461b46adc7e0")
(setf (get cruiser_msgs::MapJson :datatype-) "cruiser_msgs/MapJson")
(setf (get cruiser_msgs::MapJson :definition-)
      "uint8[] data


")



(provide :cruiser_msgs/MapJson "f43a8e1b362b75baa741461b46adc7e0")


