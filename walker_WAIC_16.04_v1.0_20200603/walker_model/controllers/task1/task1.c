/*
 * File:          task1.c
 * Date:
 * Description:
 * Author:
 * Modifications:
 */

/*
 * You may need to add include files like <webots/distance_sensor.h> or
 * <webots/motor.h>, etc.
 */
#include <webots/robot.h>
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <webots/led.h>
#include <webots/position_sensor.h>


/*
 * You may want to add macros here.
 */
static int time_step = -1;
static WbDeviceTag floorlight,switchposition;

/*
 * This is the main program.
 * The arguments of the main function can be specified by the
 * "controllerArgs" field of the Robot node
 */
int main(int argc, char **argv) {
  /* necessary to initialize webots stuff */
  double position;
  wb_robot_init();
  time_step = wb_robot_get_basic_time_step();
  floorlight = wb_robot_get_device("floorlight");
  switchposition = wb_robot_get_device("switchposition");
  wb_position_sensor_enable(switchposition,1);
  
  /*
   * You should declare here WbDeviceTag variables for storing
   * robot devices like this:
   *  WbDeviceTag my_sensor = wb_robot_get_device("my_sensor");
   *  WbDeviceTag my_actuator = wb_robot_get_device("my_actuator");
   */

  /* main loop
   * Perform simulation steps of TIME_STEP milliseconds
   * and leave the loop when the simulation is over
   */
  while (wb_robot_step(time_step) != -1) {
    /*
     * Read the sensors :
     * Enter here functions to read sensor data, like:
     *  double val = wb_distance_sensor_get_value(my_sensor);
     */
    position = wb_position_sensor_get_value(switchposition);
   // printf("%f\n", position);
    
    if (position > 0.1) wb_led_set(floorlight,1);
    if (position < 0.02) wb_led_set(floorlight,0);
    /* Process sensor data here */

    /*
     * Enter here functions to send actuator commands, like:
     * wb_motor_set_position(my_actuator, 10.0);
     */
  };

  /* Enter your cleanup code here */

  /* This is necessary to cleanup webots resources */
  wb_robot_cleanup();

  return 0;
}
