;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::CruiserJointSate)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'CruiserJointSate (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISERJOINTSATE")
  (make-package "CRUISER_MSGS::CRUISERJOINTSATE"))

(in-package "ROS")
;;//! \htmlinclude CruiserJointSate.msg.html


(defclass cruiser_msgs::CruiserJointSate
  :super ros::object
  :slots (_joint_num _name _jointIndex _position _speed _duration ))

(defmethod cruiser_msgs::CruiserJointSate
  (:init
   (&key
    ((:joint_num __joint_num) 0)
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:jointIndex __jointIndex) (make-array 0 :initial-element 0 :element-type :integer))
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:speed __speed) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:duration __duration) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _joint_num (round __joint_num))
   (setq _name __name)
   (setq _jointIndex __jointIndex)
   (setq _position __position)
   (setq _speed __speed)
   (setq _duration __duration)
   self)
  (:joint_num
   (&optional __joint_num)
   (if __joint_num (setq _joint_num __joint_num)) _joint_num)
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
  (:serialization-length
   ()
   (+
    ;; int16 _joint_num
    2
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
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _joint_num
       (write-word _joint_num s)
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _joint_num
     (setq _joint_num (sys::peek buf ptr- :short)) (incf ptr- 2)
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
   ;;
   self)
  )

(setf (get cruiser_msgs::CruiserJointSate :md5sum-) "892654ee59978ac7b005cc792fc55ba6")
(setf (get cruiser_msgs::CruiserJointSate :datatype-) "cruiser_msgs/CruiserJointSate")
(setf (get cruiser_msgs::CruiserJointSate :definition-)
      "int16 joint_num

# Joints name to control in array
# example - [\"LShoudlerRoll\", \"NeckYaw\", \"NeckPitch\"]
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


")



(provide :cruiser_msgs/CruiserJointSate "892654ee59978ac7b005cc792fc55ba6")


