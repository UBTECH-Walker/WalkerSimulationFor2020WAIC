;; Auto-generated. Do not edit!


(when (boundp 'logger::configure)
  (if (not (find-package "LOGGER"))
    (make-package "LOGGER"))
  (shadow 'configure (find-package "LOGGER")))
(unless (find-package "LOGGER::CONFIGURE")
  (make-package "LOGGER::CONFIGURE"))
(unless (find-package "LOGGER::CONFIGUREREQUEST")
  (make-package "LOGGER::CONFIGUREREQUEST"))
(unless (find-package "LOGGER::CONFIGURERESPONSE")
  (make-package "LOGGER::CONFIGURERESPONSE"))

(in-package "ROS")





(intern "*MODE_QUERY*" (find-package "LOGGER::CONFIGUREREQUEST"))
(shadow '*MODE_QUERY* (find-package "LOGGER::CONFIGUREREQUEST"))
(defconstant logger::configureRequest::*MODE_QUERY* "query")
(intern "*MODE_SET_CAPACITY*" (find-package "LOGGER::CONFIGUREREQUEST"))
(shadow '*MODE_SET_CAPACITY* (find-package "LOGGER::CONFIGUREREQUEST"))
(defconstant logger::configureRequest::*MODE_SET_CAPACITY* "set_capacity")
(intern "*MODE_SET_PATH*" (find-package "LOGGER::CONFIGUREREQUEST"))
(shadow '*MODE_SET_PATH* (find-package "LOGGER::CONFIGUREREQUEST"))
(defconstant logger::configureRequest::*MODE_SET_PATH* "set_path")
(defclass logger::configureRequest
  :super ros::object
  :slots (_node _mode _capacity _path ))

(defmethod logger::configureRequest
  (:init
   (&key
    ((:node __node) "")
    ((:mode __mode) "")
    ((:capacity __capacity) 0)
    ((:path __path) "")
    )
   (send-super :init)
   (setq _node (string __node))
   (setq _mode (string __mode))
   (setq _capacity (round __capacity))
   (setq _path (string __path))
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:capacity
   (&optional __capacity)
   (if __capacity (setq _capacity __capacity)) _capacity)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:serialization-length
   ()
   (+
    ;; string _node
    4 (length _node)
    ;; string _mode
    4 (length _mode)
    ;; int32 _capacity
    4
    ;; string _path
    4 (length _path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _node
       (write-long (length _node) s) (princ _node s)
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; int32 _capacity
       (write-long _capacity s)
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _node
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _capacity
     (setq _capacity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass logger::configureResponse
  :super ros::object
  :slots (_capacity _path _result ))

(defmethod logger::configureResponse
  (:init
   (&key
    ((:capacity __capacity) 0)
    ((:path __path) "")
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _capacity (round __capacity))
   (setq _path (string __path))
   (setq _result __result)
   self)
  (:capacity
   (&optional __capacity)
   (if __capacity (setq _capacity __capacity)) _capacity)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _capacity
    4
    ;; string _path
    4 (length _path)
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _capacity
       (write-long _capacity s)
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _capacity
     (setq _capacity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass logger::configure
  :super ros::object
  :slots ())

(setf (get logger::configure :md5sum-) "f542eb6b685060352c4ca123dd2b40da")
(setf (get logger::configure :datatype-) "logger/configure")
(setf (get logger::configure :request) logger::configureRequest)
(setf (get logger::configure :response) logger::configureResponse)

(defmethod logger::configureRequest
  (:response () (instance logger::configureResponse :init)))

(setf (get logger::configureRequest :md5sum-) "f542eb6b685060352c4ca123dd2b40da")
(setf (get logger::configureRequest :datatype-) "logger/configureRequest")
(setf (get logger::configureRequest :definition-)
      "
string MODE_QUERY=query
string MODE_SET_CAPACITY=set_capacity
string MODE_SET_PATH=set_path

string node

string mode

int32 capacity

string path
---

int32 capacity

string path
bool result

")

(setf (get logger::configureResponse :md5sum-) "f542eb6b685060352c4ca123dd2b40da")
(setf (get logger::configureResponse :datatype-) "logger/configureResponse")
(setf (get logger::configureResponse :definition-)
      "
string MODE_QUERY=query
string MODE_SET_CAPACITY=set_capacity
string MODE_SET_PATH=set_path

string node

string mode

int32 capacity

string path
---

int32 capacity

string path
bool result

")



(provide :logger/configure "f542eb6b685060352c4ca123dd2b40da")


