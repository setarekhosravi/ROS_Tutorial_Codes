#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rclpy
from rclpy.node import Node

class MyNode(Node):
    def __init__(self):
        super().__init__("first_node")
        self.get_logger().info("Hello from ROS2")

def main(args= None):
    rclpy.init(args=args)
    node = MyNode()
    rclpy.spin(node) # spin node means keep node alive until you press CTRL+C and kill it
    rclpy.shutdown()

if __name__ == '__main__':
    main()