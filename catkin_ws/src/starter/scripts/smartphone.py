#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from std_msgs.msg import String

def callback_receive_radio_data(msg):
    rospy.loginfo("Message have received: ")
    rospy.loginfo(msg)

if __name__=="__main__":
    rospy.init_node("smartphone")

    subscriber = rospy.Subscriber("/robot_news_radio", String, callback=callback_receive_radio_data)

    rospy.spin()