;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::diagnosticReportData)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'diagnosticReportData (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::DIAGNOSTICREPORTDATA")
  (make-package "CRUISER_MSGS::DIAGNOSTICREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude diagnosticReportData.msg.html


(defclass cruiser_msgs::diagnosticReportData
  :super ros::object
  :slots (_key _data ))

(defmethod cruiser_msgs::diagnosticReportData
  (:init
   (&key
    ((:key __key) 0)
    ((:data __data) "")
    )
   (send-super :init)
   (setq _key (round __key))
   (setq _data (string __data))
   self)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int16 _key
    2
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _key
       (write-word _key s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _key
     (setq _key (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cruiser_msgs::diagnosticReportData :md5sum-) "95276667cdb3126b4b795b4f8eee5706")
(setf (get cruiser_msgs::diagnosticReportData :datatype-) "cruiser_msgs/diagnosticReportData")
(setf (get cruiser_msgs::diagnosticReportData :definition-)
      "#topic \"/cruiser/diag_report\"
int16 key
string data
")



(provide :cruiser_msgs/diagnosticReportData "95276667cdb3126b4b795b4f8eee5706")


