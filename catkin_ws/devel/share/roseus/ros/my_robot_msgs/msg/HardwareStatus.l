;; Auto-generated. Do not edit!


(when (boundp 'my_robot_msgs::HardwareStatus)
  (if (not (find-package "MY_ROBOT_MSGS"))
    (make-package "MY_ROBOT_MSGS"))
  (shadow 'HardwareStatus (find-package "MY_ROBOT_MSGS")))
(unless (find-package "MY_ROBOT_MSGS::HARDWARESTATUS")
  (make-package "MY_ROBOT_MSGS::HARDWARESTATUS"))

(in-package "ROS")
;;//! \htmlinclude HardwareStatus.msg.html


(defclass my_robot_msgs::HardwareStatus
  :super ros::object
  :slots (_temprature _are_motors_up _debug_message ))

(defmethod my_robot_msgs::HardwareStatus
  (:init
   (&key
    ((:temprature __temprature) 0)
    ((:are_motors_up __are_motors_up) nil)
    ((:debug_message __debug_message) "")
    )
   (send-super :init)
   (setq _temprature (round __temprature))
   (setq _are_motors_up __are_motors_up)
   (setq _debug_message (string __debug_message))
   self)
  (:temprature
   (&optional __temprature)
   (if __temprature (setq _temprature __temprature)) _temprature)
  (:are_motors_up
   (&optional (__are_motors_up :null))
   (if (not (eq __are_motors_up :null)) (setq _are_motors_up __are_motors_up)) _are_motors_up)
  (:debug_message
   (&optional __debug_message)
   (if __debug_message (setq _debug_message __debug_message)) _debug_message)
  (:serialization-length
   ()
   (+
    ;; int64 _temprature
    8
    ;; bool _are_motors_up
    1
    ;; string _debug_message
    4 (length _debug_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _temprature
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _temprature (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _temprature) (= (length (_temprature . bv)) 2)) ;; bignum
              (write-long (ash (elt (_temprature . bv) 0) 0) s)
              (write-long (ash (elt (_temprature . bv) 1) -1) s))
             ((and (class _temprature) (= (length (_temprature . bv)) 1)) ;; big1
              (write-long (elt (_temprature . bv) 0) s)
              (write-long (if (>= _temprature 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _temprature s)(write-long (if (>= _temprature 0) 0 #xffffffff) s)))
     ;; bool _are_motors_up
       (if _are_motors_up (write-byte -1 s) (write-byte 0 s))
     ;; string _debug_message
       (write-long (length _debug_message) s) (princ _debug_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _temprature
#+(or :alpha :irix6 :x86_64)
      (setf _temprature (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _temprature (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _are_motors_up
     (setq _are_motors_up (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _debug_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _debug_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get my_robot_msgs::HardwareStatus :md5sum-) "2bc72ec2d9975b511745c94cc00f1be1")
(setf (get my_robot_msgs::HardwareStatus :datatype-) "my_robot_msgs/HardwareStatus")
(setf (get my_robot_msgs::HardwareStatus :definition-)
      "int64 temprature
bool are_motors_up
string debug_message
")



(provide :my_robot_msgs/HardwareStatus "2bc72ec2d9975b511745c94cc00f1be1")


