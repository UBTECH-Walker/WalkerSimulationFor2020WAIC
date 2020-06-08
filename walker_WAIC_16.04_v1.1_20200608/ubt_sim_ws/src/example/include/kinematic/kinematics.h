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

#ifndef KINEMATICS_H
#define KINEMATICS_H

#include <math.h>
#include <ros/ros.h>
#include "sensor_msgs/JointState.h"

/**
 * @namespace kinematic
 */
namespace kinematic{

#define PI 3.1415926
#define pi 3.1415926

    //define the struct of translation and orientation
    typedef struct {
        double orientation[9];
        double translation[3];
    }Frame;

   //define the joints of leg
    typedef struct {
        Frame joint1;
        Frame joint2;
        Frame joint3;
        Frame joint4;
        Frame joint5;
        Frame joint6;
        Frame foot;
        Frame waist;
        double jacobian[36];
    }Walker_Leg;

    //define the struct of attitude
    typedef struct {
        double roll;
        double pitch;
        double yaw;
    }Pose;

    /**
     * @class Kinematics of leg
     */
    class Kinematics{
    public:
        /**
         * @brief constructor
         */
        Kinematics();

        /**
         * @brief destructor
         */
        ~Kinematics();        

        /**
         * @name
         * @brief
         * @param input, joint_encoder:joint angle(rad)
         *               imu: attitude(rad)
         * @param output the state of joints about leg
         */
        bool FK_leg(const sensor_msgs::JointState& joint_encoder, Pose *imu,
                              Walker_Leg *pL, Walker_Leg *pR);

        /**
         * @name
         * @brief
         * @param input,  Lfoot_XYZRPY: the x,y,z,rx,ry and rz of the left ankle
         *                Waist_XYZRPY: the x,y,z,rx,ry and rz of the waist
         *                Rfoot_XYZRPY: the x,y,z,rx,ry and rz of the right ankle
         * @param output, Ltheta: the joints' angle of left leg
         *                Rtheta: the joints' angle of right leg
         */
        bool IK_leg(double Lfoot_XYZRPY[], double Waist_XYZRPY[], double Rfoot_XYZRPY[], double Ltheta[], double Rtheta[]);

    private:
        /**
         * @name
         * @brief
         * @param input
         * @param output
         */
        void Frame_init(double RPY[], double x, double y, double z, Frame &frame);

        /**
         * @name Cross
         * @brief
         * @param input
         * @param output
         */

        void Cross(double u[], double v[], double new_vec[]);

        /**
         * @name
         * @brief
         * @param input
         * @param output
         */
        void RPYtoRotm(double RPY[], double rotm[]);

        /**
         * @name
         * @brief
         * @param input
         * @param output
         */
        void Matrix_Multiplication(double a[], double b[], int m,
                                   int n, int k, double c[]);

        /**
         * @name
         * @brief
         * @param inputs
         * @param outputs
         */
        void Matrix_Substraction(double a[], double b[], int n, double c[]);

        /**
         * @name
         * @brief
         * @param input
         * @param output
         */
        void Matrix_TransPose(double* Matrix, int m, int n, double* Matrix_TransPose);

        /**
         * @name
         * @brief
         * @param input
         * @param output
         */
        double norm_2(double v[]);

        /**
         * @name
         * @brief
         * @param input
         * @return
         */
        int sign(double x);

    };

}//namespace gait

#endif //KINEMATICS_H
