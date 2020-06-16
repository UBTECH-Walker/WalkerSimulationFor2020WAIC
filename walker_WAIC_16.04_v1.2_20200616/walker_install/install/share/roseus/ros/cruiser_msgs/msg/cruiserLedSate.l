;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::cruiserLedSate)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'cruiserLedSate (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISERLEDSATE")
  (make-package "CRUISER_MSGS::CRUISERLEDSATE"))

(in-package "ROS")
;;//! \htmlinclude cruiserLedSate.msg.html


(defclass cruiser_msgs::cruiserLedSate
  :super ros::object
  :slots (_light_effect _brightness _color _max_times ))

(defmethod cruiser_msgs::cruiserLedSate
  (:init
   (&key
    ((:light_effect __light_effect) 0)
    ((:brightness __brightness) 0)
    ((:color __color) 0)
    ((:max_times __max_times) 0)
    )
   (send-super :init)
   (setq _light_effect (round __light_effect))
   (setq _brightness (round __brightness))
   (setq _color (round __color))
   (setq _max_times (round __max_times))
   self)
  (:light_effect
   (&optional __light_effect)
   (if __light_effect (setq _light_effect __light_effect)) _light_effect)
  (:brightness
   (&optional __brightness)
   (if __brightness (setq _brightness __brightness)) _brightness)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:max_times
   (&optional __max_times)
   (if __max_times (setq _max_times __max_times)) _max_times)
  (:serialization-length
   ()
   (+
    ;; uint32 _light_effect
    4
    ;; uint32 _brightness
    4
    ;; uint32 _color
    4
    ;; uint32 _max_times
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _light_effect
       (write-long _light_effect s)
     ;; uint32 _brightness
       (write-long _brightness s)
     ;; uint32 _color
       (write-long _color s)
     ;; uint32 _max_times
       (write-long _max_times s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _light_effect
     (setq _light_effect (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _brightness
     (setq _brightness (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _color
     (setq _color (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _max_times
     (setq _max_times (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cruiser_msgs::cruiserLedSate :md5sum-) "0a1a1ac30f2125d6b4db07cbb0eb7d41")
(setf (get cruiser_msgs::cruiserLedSate :datatype-) "cruiser_msgs/cruiserLedSate")
(setf (get cruiser_msgs::cruiserLedSate :definition-)
      "uint32 light_effect
uint32 brightness
uint32 color
uint32 max_times


")



(provide :cruiser_msgs/cruiserLedSate "0a1a1ac30f2125d6b4db07cbb0eb7d41")


