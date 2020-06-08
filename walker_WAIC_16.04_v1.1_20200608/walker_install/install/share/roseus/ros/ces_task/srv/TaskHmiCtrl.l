;; Auto-generated. Do not edit!


(when (boundp 'ces_task::TaskHmiCtrl)
  (if (not (find-package "CES_TASK"))
    (make-package "CES_TASK"))
  (shadow 'TaskHmiCtrl (find-package "CES_TASK")))
(unless (find-package "CES_TASK::TASKHMICTRL")
  (make-package "CES_TASK::TASKHMICTRL"))
(unless (find-package "CES_TASK::TASKHMICTRLREQUEST")
  (make-package "CES_TASK::TASKHMICTRLREQUEST"))
(unless (find-package "CES_TASK::TASKHMICTRLRESPONSE")
  (make-package "CES_TASK::TASKHMICTRLRESPONSE"))

(in-package "ROS")





(defclass ces_task::TaskHmiCtrlRequest
  :super ros::object
  :slots (_adb_cmd ))

(defmethod ces_task::TaskHmiCtrlRequest
  (:init
   (&key
    ((:adb_cmd __adb_cmd) "")
    )
   (send-super :init)
   (setq _adb_cmd (string __adb_cmd))
   self)
  (:adb_cmd
   (&optional __adb_cmd)
   (if __adb_cmd (setq _adb_cmd __adb_cmd)) _adb_cmd)
  (:serialization-length
   ()
   (+
    ;; string _adb_cmd
    4 (length _adb_cmd)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _adb_cmd
       (write-long (length _adb_cmd) s) (princ _adb_cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _adb_cmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _adb_cmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ces_task::TaskHmiCtrlResponse
  :super ros::object
  :slots (_success _message ))

(defmethod ces_task::TaskHmiCtrlResponse
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

(defclass ces_task::TaskHmiCtrl
  :super ros::object
  :slots ())

(setf (get ces_task::TaskHmiCtrl :md5sum-) "d451323ce918ea804b0b0df774879b87")
(setf (get ces_task::TaskHmiCtrl :datatype-) "ces_task/TaskHmiCtrl")
(setf (get ces_task::TaskHmiCtrl :request) ces_task::TaskHmiCtrlRequest)
(setf (get ces_task::TaskHmiCtrl :response) ces_task::TaskHmiCtrlResponse)

(defmethod ces_task::TaskHmiCtrlRequest
  (:response () (instance ces_task::TaskHmiCtrlResponse :init)))

(setf (get ces_task::TaskHmiCtrlRequest :md5sum-) "d451323ce918ea804b0b0df774879b87")
(setf (get ces_task::TaskHmiCtrlRequest :datatype-) "ces_task/TaskHmiCtrlRequest")
(setf (get ces_task::TaskHmiCtrlRequest :definition-)
      "
string adb_cmd
---

bool success


string message


")

(setf (get ces_task::TaskHmiCtrlResponse :md5sum-) "d451323ce918ea804b0b0df774879b87")
(setf (get ces_task::TaskHmiCtrlResponse :datatype-) "ces_task/TaskHmiCtrlResponse")
(setf (get ces_task::TaskHmiCtrlResponse :definition-)
      "
string adb_cmd
---

bool success


string message


")



(provide :ces_task/TaskHmiCtrl "d451323ce918ea804b0b0df774879b87")


