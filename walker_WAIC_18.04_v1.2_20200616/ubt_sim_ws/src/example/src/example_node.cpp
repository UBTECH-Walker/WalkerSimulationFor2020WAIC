// Copyright 2012-2020 Ubtech Robotics Corp. Ltd.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


#include <ros/ros.h>

#include <geometry_msgs/Point.h>
#include <geometry_msgs/Twist.h>
#include <std_msgs/Int64.h>
#include <std_msgs/String.h>

#include <string.h>

#include <ubt_core_msgs/JointCommand.h>
//gait srv msgs
#include "walker_srvs/leg_motion_MetaFuncCtrl.h"
//leg kinematic lib
#include "kinematic/kinematics.h"

#include <sstream>

std::string leg_status;
// subscribe the leg status topic
void subWalkerStatus(const std_msgs::String &msgs) {
  leg_status = msgs.data;
  std::cout << "status  " << leg_status << std::endl;
}

int64_t step_num = 0;
// subscribe the step number topic
void subWalkerStepNum(const std_msgs::Int64 &msgs) {
  step_num = msgs.data;
  std::cout << "step_num  " << step_num << std::endl;
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "example_node", ros::init_options::AnonymousName);

  ros::NodeHandle n;

  //pub left arm joints' data
  ros::Publisher test_pub = n.advertise<ubt_core_msgs::JointCommand>(
      "/walker/leftLimb/controller", 10);
  //pub walking velocity
  ros::Publisher walker_vel =
      n.advertise<geometry_msgs::Twist>("/nav/cmd_vel_nav", 10);

  //sub gait status
  ros::Subscriber walker_status_sub =
      n.subscribe("/Leg/leg_status", 10, &subWalkerStatus);
  //sub gait step num
  ros::Subscriber walker_step_num_sub =
      n.subscribe("/Leg/StepNum", 10, &subWalkerStepNum);

  //gait start and stop service
  ros::ServiceClient client =
      n.serviceClient<walker_srvs::leg_motion_MetaFuncCtrl>(
          "/Leg/TaskScheduler");

  //left arm data test
  ubt_core_msgs::JointCommand left_arm_data;
  left_arm_data.names.resize(7);
  left_arm_data.command.resize(7);

  //gait velocity data test
  geometry_msgs::Twist vel_ctrl;

  //gait service data test
  walker_srvs::leg_motion_MetaFuncCtrl walker_walking;
  walker_walking.request.func_name = "dynamic";
  walker_walking.request.cmd = "start";

  ros::Rate loop_rate(1000);

  double time = 0.0;
  bool is_first = false;
  const size_t limb_joint_count = 7;
  while (ros::ok()) {
    time += 0.001;

    // control arm joints
    left_arm_data.mode = 5;
    for (size_t ll = 0; ll < limb_joint_count; ll++) {
      left_arm_data.command[ll] = 0.5 * sin(time * 2 * PI / 1.0);
    }
    test_pub.publish(left_arm_data);

    // call walker walking
    if (leg_status == "standing" && step_num == 0 && !is_first) {
      walker_walking.request.func_name = "dynamic";
      walker_walking.request.cmd = "start";
      if (client.call(walker_walking)) {
        ROS_INFO("call success!!!");
      }
    }

    // control walking velocity and direction
    if (leg_status == "dynamic") {
      vel_ctrl.linear.x = 0.1;
      vel_ctrl.angular.z = 0.1;
      walker_vel.publish(vel_ctrl);
    }

    // call walker stop
    if (leg_status == "dynamic" && step_num > 10 && !is_first) {
      walker_walking.request.func_name = "dynamic";
      walker_walking.request.cmd = "stop";
      is_first = true;
      if (client.call(walker_walking)) {
        ROS_INFO("call success!!!");
      }
    }

    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}
