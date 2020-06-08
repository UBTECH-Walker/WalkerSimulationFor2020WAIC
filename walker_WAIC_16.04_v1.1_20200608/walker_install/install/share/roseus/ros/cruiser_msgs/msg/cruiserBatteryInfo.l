;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::cruiserBatteryInfo)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'cruiserBatteryInfo (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISERBATTERYINFO")
  (make-package "CRUISER_MSGS::CRUISERBATTERYINFO"))

(in-package "ROS")
;;//! \htmlinclude cruiserBatteryInfo.msg.html


(defclass cruiser_msgs::cruiserBatteryInfo
  :super ros::object
  :slots (_battery_level _voltage _charge_status _temperature ))

(defmethod cruiser_msgs::cruiserBatteryInfo
  (:init
   (&key
    ((:battery_level __battery_level) 0)
    ((:voltage __voltage) 0)
    ((:charge_status __charge_status) 0)
    ((:temperature __temperature) 0)
    )
   (send-super :init)
   (setq _battery_level (round __battery_level))
   (setq _voltage (round __voltage))
   (setq _charge_status (round __charge_status))
   (setq _temperature (round __temperature))
   self)
  (:battery_level
   (&optional __battery_level)
   (if __battery_level (setq _battery_level __battery_level)) _battery_level)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:charge_status
   (&optional __charge_status)
   (if __charge_status (setq _charge_status __charge_status)) _charge_status)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:serialization-length
   ()
   (+
    ;; uint32 _battery_level
    4
    ;; uint32 _voltage
    4
    ;; uint32 _charge_status
    4
    ;; uint32 _temperature
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _battery_level
       (write-long _battery_level s)
     ;; uint32 _voltage
       (write-long _voltage s)
     ;; uint32 _charge_status
       (write-long _charge_status s)
     ;; uint32 _temperature
       (write-long _temperature s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _battery_level
     (setq _battery_level (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _voltage
     (setq _voltage (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _charge_status
     (setq _charge_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _temperature
     (setq _temperature (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cruiser_msgs::cruiserBatteryInfo :md5sum-) "7c1736befdc88aac8e2cd081c711d9ba")
(setf (get cruiser_msgs::cruiserBatteryInfo :datatype-) "cruiser_msgs/cruiserBatteryInfo")
(setf (get cruiser_msgs::cruiserBatteryInfo :definition-)
      "uint32 battery_level
uint32 voltage
uint32 charge_status
uint32 temperature


")



(provide :cruiser_msgs/cruiserBatteryInfo "7c1736befdc88aac8e2cd081c711d9ba")


