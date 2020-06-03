string id
time stamp
int32 errCode
float64[16] joints

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

float64[] current
