Header header

# switch values
byte SW_UP=0
byte SW_DOWN=1
byte SW_MID=2

# switches, prefix 'b' for bool key, prefix 't' for triple state key
byte bSwa
byte bSwb
byte bSwc
byte bSwe
byte tSwf
byte bSwh

# directions
float32 DIR_MAX=100.0
float32 DIR_MIN=-100.0
float32 dir_lr
float32 dir_ud

# throttle
float32 throttle_lr
float32 throttle_ud

# whether all values are validate
bool valid

# whether the remoter is online or not
bool online
