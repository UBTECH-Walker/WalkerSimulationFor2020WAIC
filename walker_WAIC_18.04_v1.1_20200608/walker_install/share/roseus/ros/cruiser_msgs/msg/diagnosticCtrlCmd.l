;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::diagnosticCtrlCmd)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'diagnosticCtrlCmd (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::DIAGNOSTICCTRLCMD")
  (make-package "CRUISER_MSGS::DIAGNOSTICCTRLCMD"))

(in-package "ROS")
;;//! \htmlinclude diagnosticCtrlCmd.msg.html


(defclass cruiser_msgs::diagnosticCtrlCmd
  :super ros::object
  :slots (_key _ctrlflag ))

(defmethod cruiser_msgs::diagnosticCtrlCmd
  (:init
   (&key
    ((:key __key) 0)
    ((:ctrlflag __ctrlflag) 0)
    )
   (send-super :init)
   (setq _key (round __key))
   (setq _ctrlflag (round __ctrlflag))
   self)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:ctrlflag
   (&optional __ctrlflag)
   (if __ctrlflag (setq _ctrlflag __ctrlflag)) _ctrlflag)
  (:serialization-length
   ()
   (+
    ;; int16 _key
    2
    ;; int16 _ctrlflag
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _key
       (write-word _key s)
     ;; int16 _ctrlflag
       (write-word _ctrlflag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _key
     (setq _key (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _ctrlflag
     (setq _ctrlflag (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get cruiser_msgs::diagnosticCtrlCmd :md5sum-) "31951abf4e94f1645603ca9e8079c519")
(setf (get cruiser_msgs::diagnosticCtrlCmd :datatype-) "cruiser_msgs/diagnosticCtrlCmd")
(setf (get cruiser_msgs::diagnosticCtrlCmd :definition-)
      "#topic \"/cruiser/diag_ctrl_cmd\"
int16 key
int16 ctrlflag
")



(provide :cruiser_msgs/diagnosticCtrlCmd "31951abf4e94f1645603ca9e8079c519")


