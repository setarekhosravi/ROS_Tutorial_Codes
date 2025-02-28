#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
import numpy as np
from std_msgs.msg import Int64

counter = 0
publisher = None

def callback_number_counter(msg):
    global counter
    counter += msg.data
    new_msg = Int64()
    new_msg.data = counter
    publisher.publish(new_msg)
    

if __name__=="__main__":
    rospy.init_node("number_counter")

    subscriber = rospy.Subscriber("/number", Int64, callback=callback_number_counter)

    publisher = rospy.Publisher("/number_count", Int64, queue_size=10)

    rospy.spin()