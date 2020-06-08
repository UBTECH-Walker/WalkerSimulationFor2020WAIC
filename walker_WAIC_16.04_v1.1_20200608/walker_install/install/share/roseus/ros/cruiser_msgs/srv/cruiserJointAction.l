;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::cruiserJointAction)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'cruiserJointAction (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISERJOINTACTION")
  (make-package "CRUISER_MSGS::CRUISERJOINTACTION"))
(unless (find-package "CRUISER_MSGS::CRUISERJOINTACTIONREQUEST")
  (make-package "CRUISER_MSGS::CRUISERJOINTACTIONREQUEST"))
(unless (find-package "CRUISER_MSGS::CRUISERJOINTACTIONRESPONSE")
  (make-package "CRUISER_MSGS::CRUISERJOINTACTIONRESPONSE"))

(in-package "ROS")





(defclass cruiser_msgs::cruiserJointActionRequest
  :super ros::object
  :slots (_action_name _action_time ))

(defmethod cruiser_msgs::cruiserJointActionRequest
  (:init
   (&key
    ((:action_name __action_name) "")
    ((:action_time __action_time) 0)
    )
   (send-super :init)
   (setq _action_name (string __action_name))
   (setq _action_time (round __action_time))
   self)
  (:action_name
   (&optional __action_name)
   (if __action_name (setq _action_name __action_name)) _action_name)
  (:action_time
   (&optional __action_time)
   (if __action_time (setq _action_time __action_time)) _action_time)
  (:serialization-length
   ()
   (+
    ;; string _action_name
    4 (length _action_name)
    ;; int16 _action_time
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _action_name
       (write-long (length _action_name) s) (princ _action_name s)
     ;; int16 _action_time
       (write-word _action_time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _action_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _action_time
     (setq _action_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass cruiser_msgs::cruiserJointActionResponse
  :super ros::object
  :slots (_result ))

(defmethod cruiser_msgs::cruiserJointActionResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cruiser_msgs::cruiserJointAction
  :super ros::object
  :slots ())

(setf (get cruiser_msgs::cruiserJointAction :md5sum-) "385edf431acc9bbbd7c1e0ee768e259d")
(setf (get cruiser_msgs::cruiserJointAction :datatype-) "cruiser_msgs/cruiserJointAction")
(setf (get cruiser_msgs::cruiserJointAction :request) cruiser_msgs::cruiserJointActionRequest)
(setf (get cruiser_msgs::cruiserJointAction :response) cruiser_msgs::cruiserJointActionResponse)

(defmethod cruiser_msgs::cruiserJointActionRequest
  (:response () (instance cruiser_msgs::cruiserJointActionResponse :init)))

(setf (get cruiser_msgs::cruiserJointActionRequest :md5sum-) "385edf431acc9bbbd7c1e0ee768e259d")
(setf (get cruiser_msgs::cruiserJointActionRequest :datatype-) "cruiser_msgs/cruiserJointActionRequest")
(setf (get cruiser_msgs::cruiserJointActionRequest :definition-)
      "


string action_name



int16 action_time

---

string result


")

(setf (get cruiser_msgs::cruiserJointActionResponse :md5sum-) "385edf431acc9bbbd7c1e0ee768e259d")
(setf (get cruiser_msgs::cruiserJointActionResponse :datatype-) "cruiser_msgs/cruiserJointActionResponse")
(setf (get cruiser_msgs::cruiserJointActionResponse :definition-)
      "


string action_name



int16 action_time

---

string result


")



(provide :cruiser_msgs/cruiserJointAction "385edf431acc9bbbd7c1e0ee768e259d")


