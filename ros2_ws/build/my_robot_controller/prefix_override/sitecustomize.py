import sys
if sys.prefix == '/usr':
    sys.real_prefix = sys.prefix
    sys.prefix = sys.exec_prefix = '/home/setare/Vision/Work/Tutorials/ROS2/ros2_ws/install/my_robot_controller'
