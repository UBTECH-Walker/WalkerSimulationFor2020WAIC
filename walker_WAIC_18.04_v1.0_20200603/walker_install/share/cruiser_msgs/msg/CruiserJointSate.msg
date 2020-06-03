int16 joint_num

# Joints name to control in array
# example - ["LShoudlerRoll", "NeckYaw", "NeckPitch"]
string[] name

# Joints index to control in array
uint32[] jointIndex

# Corresponding joints postion
# unit - radian;
# example - [0.54, 1.22, 1.39]
float64[] position

# Corresponding joints max speed
float64[] speed

# Corresponding joints motion time
# unit - millisecond
int64[] duration

