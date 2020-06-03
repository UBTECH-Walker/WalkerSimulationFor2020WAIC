;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::EskinMsg)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'EskinMsg (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::ESKINMSG")
  (make-package "CRUISER_MSGS::ESKINMSG"))

(in-package "ROS")
;;//! \htmlinclude EskinMsg.msg.html


(defclass cruiser_msgs::EskinMsg
  :super ros::object
  :slots (_Name _E_skin _message ))

(defmethod cruiser_msgs::EskinMsg
  (:init
   (&key
    ((:Name __Name) "")
    ((:E_skin __E_skin) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _Name (string __Name))
   (setq _E_skin (round __E_skin))
   (setq _message (string __message))
   self)
  (:Name
   (&optional __Name)
   (if __Name (setq _Name __Name)) _Name)
  (:E_skin
   (&optional __E_skin)
   (if __E_skin (setq _E_skin __E_skin)) _E_skin)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _Name
    4 (length _Name)
    ;; uint32 _E_skin
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Name
       (write-long (length _Name) s) (princ _Name s)
     ;; uint32 _E_skin
       (write-long _E_skin s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _E_skin
     (setq _E_skin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cruiser_msgs::EskinMsg :md5sum-) "77d3caef613d1fc8fbecb5c35a4b92d0")
(setf (get cruiser_msgs::EskinMsg :datatype-) "cruiser_msgs/EskinMsg")
(setf (get cruiser_msgs::EskinMsg :definition-)
      "string Name
uint32 E_skin
string message


")



(provide :cruiser_msgs/EskinMsg "77d3caef613d1fc8fbecb5c35a4b92d0")


