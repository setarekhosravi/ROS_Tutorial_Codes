#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy

if __name__=="__main__":
    rospy.init_node("my_first_pytho_node")

    rospy.loginfo("This node has been started!")

    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        rospy.loginfo("Hello")
        rate.sleep()