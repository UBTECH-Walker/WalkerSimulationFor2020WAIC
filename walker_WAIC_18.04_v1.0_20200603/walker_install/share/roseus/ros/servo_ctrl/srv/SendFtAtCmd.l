;; Auto-generated. Do not edit!


(when (boundp 'servo_ctrl::SendFtAtCmd)
  (if (not (find-package "SERVO_CTRL"))
    (make-package "SERVO_CTRL"))
  (shadow 'SendFtAtCmd (find-package "SERVO_CTRL")))
(unless (find-package "SERVO_CTRL::SENDFTATCMD")
  (make-package "SERVO_CTRL::SENDFTATCMD"))
(unless (find-package "SERVO_CTRL::SENDFTATCMDREQUEST")
  (make-package "SERVO_CTRL::SENDFTATCMDREQUEST"))
(unless (find-package "SERVO_CTRL::SENDFTATCMDRESPONSE")
  (make-package "SERVO_CTRL::SENDFTATCMDRESPONSE"))

(in-package "ROS")





(defclass servo_ctrl::SendFtAtCmdRequest
  :super ros::object
  :slots (_ft_id _at_cmd ))

(defmethod servo_ctrl::SendFtAtCmdRequest
  (:init
   (&key
    ((:ft_id __ft_id) "")
    ((:at_cmd __at_cmd) "")
    )
   (send-super :init)
   (setq _ft_id (string __ft_id))
   (setq _at_cmd (string __at_cmd))
   self)
  (:ft_id
   (&optional __ft_id)
   (if __ft_id (setq _ft_id __ft_id)) _ft_id)
  (:at_cmd
   (&optional __at_cmd)
   (if __at_cmd (setq _at_cmd __at_cmd)) _at_cmd)
  (:serialization-length
   ()
   (+
    ;; string _ft_id
    4 (length _ft_id)
    ;; string _at_cmd
    4 (length _at_cmd)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ft_id
       (write-long (length _ft_id) s) (princ _ft_id s)
     ;; string _at_cmd
       (write-long (length _at_cmd) s) (princ _at_cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ft_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ft_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _at_cmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _at_cmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass servo_ctrl::SendFtAtCmdResponse
  :super ros::object
  :slots (_success _at_res _message ))

(defmethod servo_ctrl::SendFtAtCmdResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:at_res __at_res) "")
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _at_res (string __at_res))
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:at_res
   (&optional __at_res)
   (if __at_res (setq _at_res __at_res)) _at_res)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _at_res
    4 (length _at_res)
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _at_res
       (write-long (length _at_res) s) (princ _at_res s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _at_res
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _at_res (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass servo_ctrl::SendFtAtCmd
  :super ros::object
  :slots ())

(setf (get servo_ctrl::SendFtAtCmd :md5sum-) "6047a75169370a000cccb1c1e8fefc47")
(setf (get servo_ctrl::SendFtAtCmd :datatype-) "servo_ctrl/SendFtAtCmd")
(setf (get servo_ctrl::SendFtAtCmd :request) servo_ctrl::SendFtAtCmdRequest)
(setf (get servo_ctrl::SendFtAtCmd :response) servo_ctrl::SendFtAtCmdResponse)

(defmethod servo_ctrl::SendFtAtCmdRequest
  (:response () (instance servo_ctrl::SendFtAtCmdResponse :init)))

(setf (get servo_ctrl::SendFtAtCmdRequest :md5sum-) "6047a75169370a000cccb1c1e8fefc47")
(setf (get servo_ctrl::SendFtAtCmdRequest :datatype-) "servo_ctrl/SendFtAtCmdRequest")
(setf (get servo_ctrl::SendFtAtCmdRequest :definition-)
      "
string ft_id
string at_cmd
---
bool success
string at_res
string message

")

(setf (get servo_ctrl::SendFtAtCmdResponse :md5sum-) "6047a75169370a000cccb1c1e8fefc47")
(setf (get servo_ctrl::SendFtAtCmdResponse :datatype-) "servo_ctrl/SendFtAtCmdResponse")
(setf (get servo_ctrl::SendFtAtCmdResponse :definition-)
      "
string ft_id
string at_cmd
---
bool success
string at_res
string message

")



(provide :servo_ctrl/SendFtAtCmd "6047a75169370a000cccb1c1e8fefc47")


