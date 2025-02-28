#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from my_robot_msgs.msg import HardwareStatus

if __name__=="__main__":
    rospy.init_node("hardware_status_publisher")

    publisher = rospy.Publisher("/my_robot/hardware_status", HardwareStatus, queue_size=10)

    rate = rospy.Rate(5)

    while not rospy.is_shutdown():
        msg = HardwareStatus()
        msg.temprature = 45
        msg.are_motors_up = True
        msg.debug_message = "Everything is running well!"
        publisher.publish(msg)
        rate.sleep()