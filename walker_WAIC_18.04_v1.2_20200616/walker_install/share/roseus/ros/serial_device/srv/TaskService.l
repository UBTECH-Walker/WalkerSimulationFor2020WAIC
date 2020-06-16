;; Auto-generated. Do not edit!


(when (boundp 'serial_device::TaskService)
  (if (not (find-package "SERIAL_DEVICE"))
    (make-package "SERIAL_DEVICE"))
  (shadow 'TaskService (find-package "SERIAL_DEVICE")))
(unless (find-package "SERIAL_DEVICE::TASKSERVICE")
  (make-package "SERIAL_DEVICE::TASKSERVICE"))
(unless (find-package "SERIAL_DEVICE::TASKSERVICEREQUEST")
  (make-package "SERIAL_DEVICE::TASKSERVICEREQUEST"))
(unless (find-package "SERIAL_DEVICE::TASKSERVICERESPONSE")
  (make-package "SERIAL_DEVICE::TASKSERVICERESPONSE"))

(in-package "ROS")





(defclass serial_device::TaskServiceRequest
  :super ros::object
  :slots (_taskName _taskEnable _useJointOTG _useCartOTG _securityDection _collisionDetection ))

(defmethod serial_device::TaskServiceRequest
  (:init
   (&key
    ((:taskName __taskName) "")
    ((:taskEnable __taskEnable) nil)
    ((:useJointOTG __useJointOTG) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:useCartOTG __useCartOTG) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:securityDection __securityDection) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:collisionDetection __collisionDetection) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _taskName (string __taskName))
   (setq _taskEnable __taskEnable)
   (setq _useJointOTG __useJointOTG)
   (setq _useCartOTG __useCartOTG)
   (setq _securityDection __securityDection)
   (setq _collisionDetection __collisionDetection)
   self)
  (:taskName
   (&optional __taskName)
   (if __taskName (setq _taskName __taskName)) _taskName)
  (:taskEnable
   (&optional __taskEnable)
   (if __taskEnable (setq _taskEnable __taskEnable)) _taskEnable)
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
  (:serialization-length
   ()
   (+
    ;; string _taskName
    4 (length _taskName)
    ;; bool _taskEnable
    1
    ;; bool[] _useJointOTG
    (* 1    (length _useJointOTG)) 4
    ;; bool[] _useCartOTG
    (* 1    (length _useCartOTG)) 4
    ;; bool[] _securityDection
    (* 1    (length _securityDection)) 4
    ;; bool[] _collisionDetection
    (* 1    (length _collisionDetection)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _taskName
       (write-long (length _taskName) s) (princ _taskName s)
     ;; bool _taskEnable
       (if _taskEnable (write-byte -1 s) (write-byte 0 s))
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _taskName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _taskName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _taskEnable
     (setq _taskEnable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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
   ;;
   self)
  )

(defclass serial_device::TaskServiceResponse
  :super ros::object
  :slots (_result _message ))

(defmethod serial_device::TaskServiceResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _result __result)
   (setq _message (string __message))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass serial_device::TaskService
  :super ros::object
  :slots ())

(setf (get serial_device::TaskService :md5sum-) "4fad11411fd801536b613979f3a27f21")
(setf (get serial_device::TaskService :datatype-) "serial_device/TaskService")
(setf (get serial_device::TaskService :request) serial_device::TaskServiceRequest)
(setf (get serial_device::TaskService :response) serial_device::TaskServiceResponse)

(defmethod serial_device::TaskServiceRequest
  (:response () (instance serial_device::TaskServiceResponse :init)))

(setf (get serial_device::TaskServiceRequest :md5sum-) "4fad11411fd801536b613979f3a27f21")
(setf (get serial_device::TaskServiceRequest :datatype-) "serial_device/TaskServiceRequest")
(setf (get serial_device::TaskServiceRequest :definition-)
      "string taskName
bool taskEnable
bool[] useJointOTG
bool[] useCartOTG
bool[] securityDection
bool[] collisionDetection

---

bool result
string message

")

(setf (get serial_device::TaskServiceResponse :md5sum-) "4fad11411fd801536b613979f3a27f21")
(setf (get serial_device::TaskServiceResponse :datatype-) "serial_device/TaskServiceResponse")
(setf (get serial_device::TaskServiceResponse :definition-)
      "string taskName
bool taskEnable
bool[] useJointOTG
bool[] useCartOTG
bool[] securityDection
bool[] collisionDetection

---

bool result
string message

")



(provide :serial_device/TaskService "4fad11411fd801536b613979f3a27f21")


