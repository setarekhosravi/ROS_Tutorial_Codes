#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rclpy
from rclpy.node import Node

class MyNode(Node):
    def __init__(self):
        super().__init__("first_node")
        self.create_timer(1.0, self.timer_callback)

    def timer_callback(self):
        self.get_logger().info("Hello")

def main(args= None):
    rclpy.init(args=args)
    node = MyNode()
    rclpy.spin(node) # spin node means keep node alive until you press CTRL+C and kill it, enable all callbacks
    rclpy.shutdown()

if __name__ == '__main__':
    main()