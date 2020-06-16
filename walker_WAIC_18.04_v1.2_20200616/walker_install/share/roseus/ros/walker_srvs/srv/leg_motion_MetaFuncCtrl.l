;; Auto-generated. Do not edit!


(when (boundp 'walker_srvs::leg_motion_MetaFuncCtrl)
  (if (not (find-package "WALKER_SRVS"))
    (make-package "WALKER_SRVS"))
  (shadow 'leg_motion_MetaFuncCtrl (find-package "WALKER_SRVS")))
(unless (find-package "WALKER_SRVS::LEG_MOTION_METAFUNCCTRL")
  (make-package "WALKER_SRVS::LEG_MOTION_METAFUNCCTRL"))
(unless (find-package "WALKER_SRVS::LEG_MOTION_METAFUNCCTRLREQUEST")
  (make-package "WALKER_SRVS::LEG_MOTION_METAFUNCCTRLREQUEST"))
(unless (find-package "WALKER_SRVS::LEG_MOTION_METAFUNCCTRLRESPONSE")
  (make-package "WALKER_SRVS::LEG_MOTION_METAFUNCCTRLRESPONSE"))

(in-package "ROS")





(intern "*FUNC_DYNAMIC*" (find-package "WALKER_SRVS::LEG_MOTION_METAFUNCCTRLREQUEST"))
(shadow '*FUNC_DYNAMIC* (find-package "WALKER_SRVS::LEG_MOTION_METAFUNCCTRLREQUEST"))
(defconstant walker_srvs::leg_motion_MetaFuncCtrlRequest::*FUNC_DYNAMIC* "dynamic")
(intern "*FUNC_BALANCE*" (find-package "WALKER_SRVS::LEG_MOTION_METAFUNCCTRLREQUEST"))
(shadow '*FUNC_BALANCE* (find-package "WALKER_SRVS::LEG_MOTION_METAFUNCCTRLREQUEST"))
(defconstant walker_srvs::leg_motion_MetaFuncCtrlRequest::*FUNC_BALANCE* "balance")
(intern "*FUNC_COMPLIANCE*" (find-package "WALKER_SRVS::LEG_MOTION_METAFUNCCTRLREQUEST"))
(shadow '*FUNC_COMPLIANCE* (find-package "WALKER_SRVS::LEG_MOTION_METAFUNCCTRLREQUEST"))
(defconstant walker_srvs::leg_motion_MetaFuncCtrlRequest::*FUNC_COMPLIANCE* "compliance")
(intern "*FUNC_TAICHI*" (find-package "WALKER_SRVS::LEG_MOTION_METAFUNCCTRLREQUEST"))
(shadow '*FUNC_TAICHI* (find-package "WALKER_SRVS::LEG_MOTION_METAFUNCCTRLREQUEST"))
(defconstant walker_srvs::leg_motion_MetaFuncCtrlRequest::*FUNC_TAICHI* "taichi")
(intern "*FUNC_YOGA*" (find-package "WALKER_SRVS::LEG_MOTION_METAFUNCCTRLREQUEST"))
(shadow '*FUNC_YOGA* (find-package "WALKER_SRVS::LEG_MOTION_METAFUNCCTRLREQUEST"))
(defconstant walker_srvs::leg_motion_MetaFuncCtrlRequest::*FUNC_YOGA* "yoga")
(intern "*FUNC_JUMP*" (find-package "WALKER_SRVS::LEG_MOTION_METAFUNCCTRLREQUEST"))
(shadow '*FUNC_JUMP* (find-package "WALKER_SRVS::LEG_MOTION_METAFUNCCTRLREQUEST"))
(defconstant walker_srvs::leg_motion_MetaFuncCtrlRequest::*FUNC_JUMP* "jump")
(intern "*CMD_START*" (find-package "WALKER_SRVS::LEG_MOTION_METAFUNCCTRLREQUEST"))
(shadow '*CMD_START* (find-package "WALKER_SRVS::LEG_MOTION_METAFUNCCTRLREQUEST"))
(defconstant walker_srvs::leg_motion_MetaFuncCtrlRequest::*CMD_START* "start")
(intern "*CMD_STOP*" (find-package "WALKER_SRVS::LEG_MOTION_METAFUNCCTRLREQUEST"))
(shadow '*CMD_STOP* (find-package "WALKER_SRVS::LEG_MOTION_METAFUNCCTRLREQUEST"))
(defconstant walker_srvs::leg_motion_MetaFuncCtrlRequest::*CMD_STOP* "stop")
(defclass walker_srvs::leg_motion_MetaFuncCtrlRequest
  :super ros::object
  :slots (_func_name _param_json _cmd ))

(defmethod walker_srvs::leg_motion_MetaFuncCtrlRequest
  (:init
   (&key
    ((:func_name __func_name) "")
    ((:param_json __param_json) "")
    ((:cmd __cmd) "")
    )
   (send-super :init)
   (setq _func_name (string __func_name))
   (setq _param_json (string __param_json))
   (setq _cmd (string __cmd))
   self)
  (:func_name
   (&optional __func_name)
   (if __func_name (setq _func_name __func_name)) _func_name)
  (:param_json
   (&optional __param_json)
   (if __param_json (setq _param_json __param_json)) _param_json)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:serialization-length
   ()
   (+
    ;; string _func_name
    4 (length _func_name)
    ;; string _param_json
    4 (length _param_json)
    ;; string _cmd
    4 (length _cmd)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _func_name
       (write-long (length _func_name) s) (princ _func_name s)
     ;; string _param_json
       (write-long (length _param_json) s) (princ _param_json s)
     ;; string _cmd
       (write-long (length _cmd) s) (princ _cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _func_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _func_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _param_json
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _param_json (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _cmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass walker_srvs::leg_motion_MetaFuncCtrlResponse
  :super ros::object
  :slots (_success _message ))

(defmethod walker_srvs::leg_motion_MetaFuncCtrlResponse
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

(defclass walker_srvs::leg_motion_MetaFuncCtrl
  :super ros::object
  :slots ())

(setf (get walker_srvs::leg_motion_MetaFuncCtrl :md5sum-) "192892ca52f2915109ae2e297dfadb46")
(setf (get walker_srvs::leg_motion_MetaFuncCtrl :datatype-) "walker_srvs/leg_motion_MetaFuncCtrl")
(setf (get walker_srvs::leg_motion_MetaFuncCtrl :request) walker_srvs::leg_motion_MetaFuncCtrlRequest)
(setf (get walker_srvs::leg_motion_MetaFuncCtrl :response) walker_srvs::leg_motion_MetaFuncCtrlResponse)

(defmethod walker_srvs::leg_motion_MetaFuncCtrlRequest
  (:response () (instance walker_srvs::leg_motion_MetaFuncCtrlResponse :init)))

(setf (get walker_srvs::leg_motion_MetaFuncCtrlRequest :md5sum-) "192892ca52f2915109ae2e297dfadb46")
(setf (get walker_srvs::leg_motion_MetaFuncCtrlRequest :datatype-) "walker_srvs/leg_motion_MetaFuncCtrlRequest")
(setf (get walker_srvs::leg_motion_MetaFuncCtrlRequest :definition-)
      "# functions
string FUNC_DYNAMIC=dynamic
string FUNC_BALANCE=balance
string FUNC_COMPLIANCE=compliance
string FUNC_TAICHI=taichi
string FUNC_YOGA=yoga
string FUNC_JUMP=jump

# command
string CMD_START=start
string CMD_STOP=stop

# members
string func_name
string param_json # json format parameters
string cmd
---
bool success
string message

")

(setf (get walker_srvs::leg_motion_MetaFuncCtrlResponse :md5sum-) "192892ca52f2915109ae2e297dfadb46")
(setf (get walker_srvs::leg_motion_MetaFuncCtrlResponse :datatype-) "walker_srvs/leg_motion_MetaFuncCtrlResponse")
(setf (get walker_srvs::leg_motion_MetaFuncCtrlResponse :definition-)
      "# functions
string FUNC_DYNAMIC=dynamic
string FUNC_BALANCE=balance
string FUNC_COMPLIANCE=compliance
string FUNC_TAICHI=taichi
string FUNC_YOGA=yoga
string FUNC_JUMP=jump

# command
string CMD_START=start
string CMD_STOP=stop

# members
string func_name
string param_json # json format parameters
string cmd
---
bool success
string message

")



(provide :walker_srvs/leg_motion_MetaFuncCtrl "192892ca52f2915109ae2e297dfadb46")


