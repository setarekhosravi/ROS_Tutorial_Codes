#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
import numpy as np
from std_msgs.msg import Int64

if __name__=="__main__":
    rospy.init_node("number_publisher")

    publisher = rospy.Publisher("/number", Int64, queue_size=10)

    rate = rospy.Rate(20)

    while not rospy.is_shutdown():
        msg = Int64()
        msg.data = np.random.randint(1,20)
        publisher.publish(msg)
        rate.sleep()

    rospy.loginfo("Node has been stopped!")