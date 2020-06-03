;; Auto-generated. Do not edit!


(when (boundp 'ces_task::TaskLegCtrl)
  (if (not (find-package "CES_TASK"))
    (make-package "CES_TASK"))
  (shadow 'TaskLegCtrl (find-package "CES_TASK")))
(unless (find-package "CES_TASK::TASKLEGCTRL")
  (make-package "CES_TASK::TASKLEGCTRL"))
(unless (find-package "CES_TASK::TASKLEGCTRLREQUEST")
  (make-package "CES_TASK::TASKLEGCTRLREQUEST"))
(unless (find-package "CES_TASK::TASKLEGCTRLRESPONSE")
  (make-package "CES_TASK::TASKLEGCTRLRESPONSE"))

(in-package "ROS")





(intern "*CMD_START*" (find-package "CES_TASK::TASKLEGCTRLREQUEST"))
(shadow '*CMD_START* (find-package "CES_TASK::TASKLEGCTRLREQUEST"))
(defconstant ces_task::TaskLegCtrlRequest::*CMD_START* "start")
(intern "*CMD_STOP*" (find-package "CES_TASK::TASKLEGCTRLREQUEST"))
(shadow '*CMD_STOP* (find-package "CES_TASK::TASKLEGCTRLREQUEST"))
(defconstant ces_task::TaskLegCtrlRequest::*CMD_STOP* "stop")
(defclass ces_task::TaskLegCtrlRequest
  :super ros::object
  :slots (_task_id _demander _executor _cmd ))

(defmethod ces_task::TaskLegCtrlRequest
  (:init
   (&key
    ((:task_id __task_id) "")
    ((:demander __demander) "")
    ((:executor __executor) "")
    ((:cmd __cmd) "")
    )
   (send-super :init)
   (setq _task_id (string __task_id))
   (setq _demander (string __demander))
   (setq _executor (string __executor))
   (setq _cmd (string __cmd))
   self)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:demander
   (&optional __demander)
   (if __demander (setq _demander __demander)) _demander)
  (:executor
   (&optional __executor)
   (if __executor (setq _executor __executor)) _executor)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:serialization-length
   ()
   (+
    ;; string _task_id
    4 (length _task_id)
    ;; string _demander
    4 (length _demander)
    ;; string _executor
    4 (length _executor)
    ;; string _cmd
    4 (length _cmd)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _task_id
       (write-long (length _task_id) s) (princ _task_id s)
     ;; string _demander
       (write-long (length _demander) s) (princ _demander s)
     ;; string _executor
       (write-long (length _executor) s) (princ _executor s)
     ;; string _cmd
       (write-long (length _cmd) s) (princ _cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _task_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _demander
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _demander (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _executor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _executor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _cmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ces_task::TaskLegCtrlResponse
  :super ros::object
  :slots (_owner _success _message ))

(defmethod ces_task::TaskLegCtrlResponse
  (:init
   (&key
    ((:owner __owner) "")
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _owner (string __owner))
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:owner
   (&optional __owner)
   (if __owner (setq _owner __owner)) _owner)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _owner
    4 (length _owner)
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _owner
       (write-long (length _owner) s) (princ _owner s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _owner
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _owner (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ces_task::TaskLegCtrl
  :super ros::object
  :slots ())

(setf (get ces_task::TaskLegCtrl :md5sum-) "5edc546c7fcff5cab9b3ccbc31c1ea7e")
(setf (get ces_task::TaskLegCtrl :datatype-) "ces_task/TaskLegCtrl")
(setf (get ces_task::TaskLegCtrl :request) ces_task::TaskLegCtrlRequest)
(setf (get ces_task::TaskLegCtrl :response) ces_task::TaskLegCtrlResponse)

(defmethod ces_task::TaskLegCtrlRequest
  (:response () (instance ces_task::TaskLegCtrlResponse :init)))

(setf (get ces_task::TaskLegCtrlRequest :md5sum-) "5edc546c7fcff5cab9b3ccbc31c1ea7e")
(setf (get ces_task::TaskLegCtrlRequest :datatype-) "ces_task/TaskLegCtrlRequest")
(setf (get ces_task::TaskLegCtrlRequest :definition-)
      "
string task_id


string demander


string executor


string CMD_START=start
string CMD_STOP=stop
string cmd

---


string owner


bool success


string message

")

(setf (get ces_task::TaskLegCtrlResponse :md5sum-) "5edc546c7fcff5cab9b3ccbc31c1ea7e")
(setf (get ces_task::TaskLegCtrlResponse :datatype-) "ces_task/TaskLegCtrlResponse")
(setf (get ces_task::TaskLegCtrlResponse :definition-)
      "
string task_id


string demander


string executor


string CMD_START=start
string CMD_STOP=stop
string cmd

---


string owner


bool success


string message

")



(provide :ces_task/TaskLegCtrl "5edc546c7fcff5cab9b3ccbc31c1ea7e")


