;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::ClearUwbAnchor)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'ClearUwbAnchor (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CLEARUWBANCHOR")
  (make-package "CRUISER_MSGS::CLEARUWBANCHOR"))
(unless (find-package "CRUISER_MSGS::CLEARUWBANCHORREQUEST")
  (make-package "CRUISER_MSGS::CLEARUWBANCHORREQUEST"))
(unless (find-package "CRUISER_MSGS::CLEARUWBANCHORRESPONSE")
  (make-package "CRUISER_MSGS::CLEARUWBANCHORRESPONSE"))

(in-package "ROS")





(defclass cruiser_msgs::ClearUwbAnchorRequest
  :super ros::object
  :slots ())

(defmethod cruiser_msgs::ClearUwbAnchorRequest
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

(defclass cruiser_msgs::ClearUwbAnchorResponse
  :super ros::object
  :slots (_success ))

(defmethod cruiser_msgs::ClearUwbAnchorResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cruiser_msgs::ClearUwbAnchor
  :super ros::object
  :slots ())

(setf (get cruiser_msgs::ClearUwbAnchor :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get cruiser_msgs::ClearUwbAnchor :datatype-) "cruiser_msgs/ClearUwbAnchor")
(setf (get cruiser_msgs::ClearUwbAnchor :request) cruiser_msgs::ClearUwbAnchorRequest)
(setf (get cruiser_msgs::ClearUwbAnchor :response) cruiser_msgs::ClearUwbAnchorResponse)

(defmethod cruiser_msgs::ClearUwbAnchorRequest
  (:response () (instance cruiser_msgs::ClearUwbAnchorResponse :init)))

(setf (get cruiser_msgs::ClearUwbAnchorRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get cruiser_msgs::ClearUwbAnchorRequest :datatype-) "cruiser_msgs/ClearUwbAnchorRequest")
(setf (get cruiser_msgs::ClearUwbAnchorRequest :definition-)
      "

---
bool success


")

(setf (get cruiser_msgs::ClearUwbAnchorResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get cruiser_msgs::ClearUwbAnchorResponse :datatype-) "cruiser_msgs/ClearUwbAnchorResponse")
(setf (get cruiser_msgs::ClearUwbAnchorResponse :definition-)
      "

---
bool success


")



(provide :cruiser_msgs/ClearUwbAnchor "358e233cde0c8a8bcfea4ce193f8fc15")


