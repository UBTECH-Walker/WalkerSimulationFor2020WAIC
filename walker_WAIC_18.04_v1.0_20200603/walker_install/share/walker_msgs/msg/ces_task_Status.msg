# task status defines
string MODE_FREERUN=freerun
string MODE_CONTINOUS=continous
string MODE_ONESHOT=oneshot

##############################################

# time stamp must be filled
Header header

# current show name
string show_name

# current run mode
string show_mode

# task queue
string[3] group_queue

# current group
string group

# current task
string task

# progress
string progress

# wait for trigger flag
bool waiting_trigger

# retrying
bool retrying
