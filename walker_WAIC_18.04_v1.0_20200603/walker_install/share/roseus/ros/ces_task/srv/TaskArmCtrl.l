;; Auto-generated. Do not edit!


(when (boundp 'ces_task::TaskArmCtrl)
  (if (not (find-package "CES_TASK"))
    (make-package "CES_TASK"))
  (shadow 'TaskArmCtrl (find-package "CES_TASK")))
(unless (find-package "CES_TASK::TASKARMCTRL")
  (make-package "CES_TASK::TASKARMCTRL"))
(unless (find-package "CES_TASK::TASKARMCTRLREQUEST")
  (make-package "CES_TASK::TASKARMCTRLREQUEST"))
(unless (find-package "CES_TASK::TASKARMCTRLRESPONSE")
  (make-package "CES_TASK::TASKARMCTRLRESPONSE"))

(in-package "ROS")





(intern "*CMD_START*" (find-package "CES_TASK::TASKARMCTRLREQUEST"))
(shadow '*CMD_START* (find-package "CES_TASK::TASKARMCTRLREQUEST"))
(defconstant ces_task::TaskArmCtrlRequest::*CMD_START* "start")
(intern "*CMD_STOP*" (find-package "CES_TASK::TASKARMCTRLREQUEST"))
(shadow '*CMD_STOP* (find-package "CES_TASK::TASKARMCTRLREQUEST"))
(defconstant ces_task::TaskArmCtrlRequest::*CMD_STOP* "stop")
(defclass ces_task::TaskArmCtrlRequest
  :super ros::object
  :slots (_task_id _useJointOTG _useCartOTG _securityDection _collisionDetection _demander _executor _cmd ))

(defmethod ces_task::TaskArmCtrlRequest
  (:init
   (&key
    ((:task_id __task_id) "")
    ((:useJointOTG __useJointOTG) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:useCartOTG __useCartOTG) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:securityDection __securityDection) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:collisionDetection __collisionDetection) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:demander __demander) "")
    ((:executor __executor) "")
    ((:cmd __cmd) "")
    )
   (send-super :init)
   (setq _task_id (string __task_id))
   (setq _useJointOTG __useJointOTG)
   (setq _useCartOTG __useCartOTG)
   (setq _securityDection __securityDection)
   (setq _collisionDetection __collisionDetection)
   (setq _demander (string __demander))
   (setq _executor (string __executor))
   (setq _cmd (string __cmd))
   self)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:useJointOTG
   (&optional __useJointOTG)
   (if __useJointOTG (setq _useJointOTG __useJointOTG)) _useJointOTG)
  (:useCartOTG
   (&optional __useCartOTG)
   (if __useCartOTG (setq _useCartOTG __useCartOTG)) _useCartOTG)
  (:securityDection
   (&optional __securityDection)
   (if __securityDection (setq _securityDection __securityDection)) _securityDection)
  (:collisionDetection
   (&optional __collisionDetection)
   (if __collisionDetection (setq _collisionDetection __collisionDetection)) _collisionDetection)
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
    ;; bool[] _useJointOTG
    (* 1    (length _useJointOTG)) 4
    ;; bool[] _useCartOTG
    (* 1    (length _useCartOTG)) 4
    ;; bool[] _securityDection
    (* 1    (length _securityDection)) 4
    ;; bool[] _collisionDetection
    (* 1    (length _collisionDetection)) 4
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
     ;; bool[] _useJointOTG
     (write-long (length _useJointOTG) s)
     (dotimes (i (length _useJointOTG))
       (if (elt _useJointOTG i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _useCartOTG
     (write-long (length _useCartOTG) s)
     (dotimes (i (length _useCartOTG))
       (if (elt _useCartOTG i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _securityDection
     (write-long (length _securityDection) s)
     (dotimes (i (length _securityDection))
       (if (elt _securityDection i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _collisionDetection
     (write-long (length _collisionDetection) s)
     (dotimes (i (length _collisionDetection))
       (if (elt _collisionDetection i) (write-byte -1 s) (write-byte 0 s))
       )
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
   ;; bool[] _useJointOTG
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _useJointOTG (make-list n))
     (dotimes (i n)
     (setf (elt _useJointOTG i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _useCartOTG
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _useCartOTG (make-list n))
     (dotimes (i n)
     (setf (elt _useCartOTG i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _securityDection
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _securityDection (make-list n))
     (dotimes (i n)
     (setf (elt _securityDection i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _collisionDetection
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _collisionDetection (make-list n))
     (dotimes (i n)
     (setf (elt _collisionDetection i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; string _demander
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _demander (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _executor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _executor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _cmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ces_task::TaskArmCtrlResponse
  :super ros::object
  :slots (_owner _success _message ))

(defmethod ces_task::TaskArmCtrlResponse
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

(defclass ces_task::TaskArmCtrl
  :super ros::object
  :slots ())

(setf (get ces_task::TaskArmCtrl :md5sum-) "6487bd4cf07aded076310cb84cded15c")
(setf (get ces_task::TaskArmCtrl :datatype-) "ces_task/TaskArmCtrl")
(setf (get ces_task::TaskArmCtrl :request) ces_task::TaskArmCtrlRequest)
(setf (get ces_task::TaskArmCtrl :response) ces_task::TaskArmCtrlResponse)

(defmethod ces_task::TaskArmCtrlRequest
  (:response () (instance ces_task::TaskArmCtrlResponse :init)))

(setf (get ces_task::TaskArmCtrlRequest :md5sum-) "6487bd4cf07aded076310cb84cded15c")
(setf (get ces_task::TaskArmCtrlRequest :datatype-) "ces_task/TaskArmCtrlRequest")
(setf (get ces_task::TaskArmCtrlRequest :definition-)
      "
string task_id


bool[] useJointOTG
bool[] useCartOTG
bool[] securityDection
bool[] collisionDetection



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

(setf (get ces_task::TaskArmCtrlResponse :md5sum-) "6487bd4cf07aded076310cb84cded15c")
(setf (get ces_task::TaskArmCtrlResponse :datatype-) "ces_task/TaskArmCtrlResponse")
(setf (get ces_task::TaskArmCtrlResponse :definition-)
      "
string task_id


bool[] useJointOTG
bool[] useCartOTG
bool[] securityDection
bool[] collisionDetection



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



(provide :ces_task/TaskArmCtrl "6487bd4cf07aded076310cb84cded15c")


