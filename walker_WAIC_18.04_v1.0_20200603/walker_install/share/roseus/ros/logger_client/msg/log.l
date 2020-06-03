;; Auto-generated. Do not edit!


(when (boundp 'logger_client::log)
  (if (not (find-package "LOGGER_CLIENT"))
    (make-package "LOGGER_CLIENT"))
  (shadow 'log (find-package "LOGGER_CLIENT")))
(unless (find-package "LOGGER_CLIENT::LOG")
  (make-package "LOGGER_CLIENT::LOG"))

(in-package "ROS")
;;//! \htmlinclude log.msg.html


(defclass logger_client::log
  :super ros::object
  :slots (_level _time _time_us _node _file _function _line _content ))

(defmethod logger_client::log
  (:init
   (&key
    ((:level __level) "")
    ((:time __time) 0)
    ((:time_us __time_us) 0)
    ((:node __node) "")
    ((:file __file) "")
    ((:function __function) "")
    ((:line __line) 0)
    ((:content __content) "")
    )
   (send-super :init)
   (setq _level (string __level))
   (setq _time (round __time))
   (setq _time_us (round __time_us))
   (setq _node (string __node))
   (setq _file (string __file))
   (setq _function (string __function))
   (setq _line (round __line))
   (setq _content (string __content))
   self)
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:time_us
   (&optional __time_us)
   (if __time_us (setq _time_us __time_us)) _time_us)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:file
   (&optional __file)
   (if __file (setq _file __file)) _file)
  (:function
   (&optional __function)
   (if __function (setq _function __function)) _function)
  (:line
   (&optional __line)
   (if __line (setq _line __line)) _line)
  (:content
   (&optional __content)
   (if __content (setq _content __content)) _content)
  (:serialization-length
   ()
   (+
    ;; string _level
    4 (length _level)
    ;; int64 _time
    8
    ;; int64 _time_us
    8
    ;; string _node
    4 (length _node)
    ;; string _file
    4 (length _file)
    ;; string _function
    4 (length _function)
    ;; int32 _line
    4
    ;; string _content
    4 (length _content)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _level
       (write-long (length _level) s) (princ _level s)
     ;; int64 _time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _time) (= (length (_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_time . bv) 0) 0) s)
              (write-long (ash (elt (_time . bv) 1) -1) s))
             ((and (class _time) (= (length (_time . bv)) 1)) ;; big1
              (write-long (elt (_time . bv) 0) s)
              (write-long (if (>= _time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _time s)(write-long (if (>= _time 0) 0 #xffffffff) s)))
     ;; int64 _time_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _time_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _time_us) (= (length (_time_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_time_us . bv) 0) 0) s)
              (write-long (ash (elt (_time_us . bv) 1) -1) s))
             ((and (class _time_us) (= (length (_time_us . bv)) 1)) ;; big1
              (write-long (elt (_time_us . bv) 0) s)
              (write-long (if (>= _time_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _time_us s)(write-long (if (>= _time_us 0) 0 #xffffffff) s)))
     ;; string _node
       (write-long (length _node) s) (princ _node s)
     ;; string _file
       (write-long (length _file) s) (princ _file s)
     ;; string _function
       (write-long (length _function) s) (princ _function s)
     ;; int32 _line
       (write-long _line s)
     ;; string _content
       (write-long (length _content) s) (princ _content s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _level
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _level (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _time
#+(or :alpha :irix6 :x86_64)
      (setf _time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _time_us
#+(or :alpha :irix6 :x86_64)
      (setf _time_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _time_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _node
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _file
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _function
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _function (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _line
     (setq _line (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _content
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _content (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get logger_client::log :md5sum-) "7212572e30c271c75a76de908bf7c5bc")
(setf (get logger_client::log :datatype-) "logger_client/log")
(setf (get logger_client::log :definition-)
      "string level
int64 time
int64 time_us
string node
string file
string function
int32 line
string content

")



(provide :logger_client/log "7212572e30c271c75a76de908bf7c5bc")


