#!/usr/bin/env pytohn3

import rospy

if __name__ == '__main__':
    rospy.init_node('my_first_python_node')

    rospy.loginfo('This node has been initialized!')

    rospy.sleep(1)

    rospy.loginfo("Exit now")