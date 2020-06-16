;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::JointResult)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'JointResult (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::JOINTRESULT")
  (make-package "CRUISER_MSGS::JOINTRESULT"))

(in-package "ROS")
;;//! \htmlinclude JointResult.msg.html


(defclass cruiser_msgs::JointResult
  :super ros::object
  :slots (_id _stamp _errCode _joints _name _jointIndex _position _speed _duration _current ))

(defmethod cruiser_msgs::JointResult
  (:init
   (&key
    ((:id __id) "")
    ((:stamp __stamp) (instance ros::time :init))
    ((:errCode __errCode) 0)
    ((:joints __joints) (make-array 16 :initial-element 0.0 :element-type :float))
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:jointIndex __jointIndex) (make-array 0 :initial-element 0 :element-type :integer))
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:speed __speed) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:duration __duration) (make-array 0 :initial-element 0 :element-type :integer))
    ((:current __current) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _stamp __stamp)
   (setq _errCode (round __errCode))
   (setq _joints __joints)
   (setq _name __name)
   (setq _jointIndex __jointIndex)
   (setq _position __position)
   (setq _speed __speed)
   (setq _duration __duration)
   (setq _current __current)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:errCode
   (&optional __errCode)
   (if __errCode (setq _errCode __errCode)) _errCode)
  (:joints
   (&optional __joints)
   (if __joints (setq _joints __joints)) _joints)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:jointIndex
   (&optional __jointIndex)
   (if __jointIndex (setq _jointIndex __jointIndex)) _jointIndex)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; time _stamp
    8
    ;; int32 _errCode
    4
    ;; float64[16] _joints
    (* 8    16)
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; uint32[] _jointIndex
    (* 4    (length _jointIndex)) 4
    ;; float64[] _position
    (* 8    (length _position)) 4
    ;; float64[] _speed
    (* 8    (length _speed)) 4
    ;; int64[] _duration
    (* 8    (length _duration)) 4
    ;; float64[] _current
    (* 8    (length _current)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; int32 _errCode
       (write-long _errCode s)
     ;; float64[16] _joints
     (dotimes (i 16)
       (sys::poke (elt _joints i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; uint32[] _jointIndex
     (write-long (length _jointIndex) s)
     (dotimes (i (length _jointIndex))
       (write-long (elt _jointIndex i) s)
       )
     ;; float64[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _speed
     (write-long (length _speed) s)
     (dotimes (i (length _speed))
       (sys::poke (elt _speed i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int64[] _duration
     (write-long (length _duration) s)
     (dotimes (i (length _duration))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _duration i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _duration i)) (= (length ((elt _duration i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _duration i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _duration i) . bv) 1) -1) s))
             ((and (class (elt _duration i)) (= (length ((elt _duration i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _duration i) . bv) 0) s)
              (write-long (if (>= (elt _duration i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _duration i) s)(write-long (if (>= (elt _duration i) 0) 0 #xffffffff) s)))
       )
     ;; float64[] _current
     (write-long (length _current) s)
     (dotimes (i (length _current))
       (sys::poke (elt _current i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _errCode
     (setq _errCode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[16] _joints
   (dotimes (i (length _joints))
     (setf (elt _joints i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; uint32[] _jointIndex
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _jointIndex (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _jointIndex i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _speed
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _speed (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _speed i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int64[] _duration
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _duration (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _duration i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _duration i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; float64[] _current
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _current i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get cruiser_msgs::JointResult :md5sum-) "60682833e270feaa2ef1ee50b6380b52")
(setf (get cruiser_msgs::JointResult :datatype-) "cruiser_msgs/JointResult")
(setf (get cruiser_msgs::JointResult :definition-)
      "string id
time stamp
int32 errCode
float64[16] joints

string[] name

# Joints index to control in array
uint32[] jointIndex

# Corresponding joints postion
# unit - radian;
# example - [0.54, 1.22, 1.39]
float64[] position

# Corresponding joints max speed
float64[] speed

# Corresponding joints motion time
# unit - millisecond
int64[] duration

float64[] current

")



(provide :cruiser_msgs/JointResult "60682833e270feaa2ef1ee50b6380b52")


