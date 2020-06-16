;; Auto-generated. Do not edit!


(when (boundp 'serial_device::TaskCallSerial)
  (if (not (find-package "SERIAL_DEVICE"))
    (make-package "SERIAL_DEVICE"))
  (shadow 'TaskCallSerial (find-package "SERIAL_DEVICE")))
(unless (find-package "SERIAL_DEVICE::TASKCALLSERIAL")
  (make-package "SERIAL_DEVICE::TASKCALLSERIAL"))
(unless (find-package "SERIAL_DEVICE::TASKCALLSERIALREQUEST")
  (make-package "SERIAL_DEVICE::TASKCALLSERIALREQUEST"))
(unless (find-package "SERIAL_DEVICE::TASKCALLSERIALRESPONSE")
  (make-package "SERIAL_DEVICE::TASKCALLSERIALRESPONSE"))

(in-package "ROS")





(defclass serial_device::TaskCallSerialRequest
  :super ros::object
  :slots (_task_id _cmd ))

(defmethod serial_device::TaskCallSerialRequest
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

(defclass serial_device::TaskCallSerialResponse
  :super ros::object
  :slots (_success _message ))

(defmethod serial_device::TaskCallSerialResponse
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

(defclass serial_device::TaskCallSerial
  :super ros::object
  :slots ())

(setf (get serial_device::TaskCallSerial :md5sum-) "d091270bbc490f371f9855f018f74a07")
(setf (get serial_device::TaskCallSerial :datatype-) "serial_device/TaskCallSerial")
(setf (get serial_device::TaskCallSerial :request) serial_device::TaskCallSerialRequest)
(setf (get serial_device::TaskCallSerial :response) serial_device::TaskCallSerialResponse)

(defmethod serial_device::TaskCallSerialRequest
  (:response () (instance serial_device::TaskCallSerialResponse :init)))

(setf (get serial_device::TaskCallSerialRequest :md5sum-) "d091270bbc490f371f9855f018f74a07")
(setf (get serial_device::TaskCallSerialRequest :datatype-) "serial_device/TaskCallSerialRequest")
(setf (get serial_device::TaskCallSerialRequest :definition-)
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

(setf (get serial_device::TaskCallSerialResponse :md5sum-) "d091270bbc490f371f9855f018f74a07")
(setf (get serial_device::TaskCallSerialResponse :datatype-) "serial_device/TaskCallSerialResponse")
(setf (get serial_device::TaskCallSerialResponse :definition-)
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



(provide :serial_device/TaskCallSerial "d091270bbc490f371f9855f018f74a07")


