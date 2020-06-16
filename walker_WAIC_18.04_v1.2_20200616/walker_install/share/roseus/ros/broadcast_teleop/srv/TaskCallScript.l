;; Auto-generated. Do not edit!


(when (boundp 'broadcast_teleop::TaskCallScript)
  (if (not (find-package "BROADCAST_TELEOP"))
    (make-package "BROADCAST_TELEOP"))
  (shadow 'TaskCallScript (find-package "BROADCAST_TELEOP")))
(unless (find-package "BROADCAST_TELEOP::TASKCALLSCRIPT")
  (make-package "BROADCAST_TELEOP::TASKCALLSCRIPT"))
(unless (find-package "BROADCAST_TELEOP::TASKCALLSCRIPTREQUEST")
  (make-package "BROADCAST_TELEOP::TASKCALLSCRIPTREQUEST"))
(unless (find-package "BROADCAST_TELEOP::TASKCALLSCRIPTRESPONSE")
  (make-package "BROADCAST_TELEOP::TASKCALLSCRIPTRESPONSE"))

(in-package "ROS")





(defclass broadcast_teleop::TaskCallScriptRequest
  :super ros::object
  :slots (_task_id _cmd ))

(defmethod broadcast_teleop::TaskCallScriptRequest
  (:init
   (&key
    ((:task_id __task_id) "")
    ((:cmd __cmd) "")
    )
   (send-super :init)
   (setq _task_id (string __task_id))
   (setq _cmd (string __cmd))
   self)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:serialization-length
   ()
   (+
    ;; string _task_id
    4 (length _task_id)
    ;; string _cmd
    4 (length _cmd)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _task_id
       (write-long (length _task_id) s) (princ _task_id s)
     ;; string _cmd
       (write-long (length _cmd) s) (princ _cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _task_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _cmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass broadcast_teleop::TaskCallScriptResponse
  :super ros::object
  :slots (_success _message ))

(defmethod broadcast_teleop::TaskCallScriptResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass broadcast_teleop::TaskCallScript
  :super ros::object
  :slots ())

(setf (get broadcast_teleop::TaskCallScript :md5sum-) "d091270bbc490f371f9855f018f74a07")
(setf (get broadcast_teleop::TaskCallScript :datatype-) "broadcast_teleop/TaskCallScript")
(setf (get broadcast_teleop::TaskCallScript :request) broadcast_teleop::TaskCallScriptRequest)
(setf (get broadcast_teleop::TaskCallScript :response) broadcast_teleop::TaskCallScriptResponse)

(defmethod broadcast_teleop::TaskCallScriptRequest
  (:response () (instance broadcast_teleop::TaskCallScriptResponse :init)))

(setf (get broadcast_teleop::TaskCallScriptRequest :md5sum-) "d091270bbc490f371f9855f018f74a07")
(setf (get broadcast_teleop::TaskCallScriptRequest :datatype-) "broadcast_teleop/TaskCallScriptRequest")
(setf (get broadcast_teleop::TaskCallScriptRequest :definition-)
      "#cctv_task service

string task_id

# command: start or stop
string cmd

---

# indicate status
bool success

# informational, e.g. for error messages
string message
")

(setf (get broadcast_teleop::TaskCallScriptResponse :md5sum-) "d091270bbc490f371f9855f018f74a07")
(setf (get broadcast_teleop::TaskCallScriptResponse :datatype-) "broadcast_teleop/TaskCallScriptResponse")
(setf (get broadcast_teleop::TaskCallScriptResponse :definition-)
      "#cctv_task service

string task_id

# command: start or stop
string cmd

---

# indicate status
bool success

# informational, e.g. for error messages
string message
")



(provide :broadcast_teleop/TaskCallScript "d091270bbc490f371f9855f018f74a07")


