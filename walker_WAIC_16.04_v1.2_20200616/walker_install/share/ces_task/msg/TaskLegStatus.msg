# owner ids
string OWNER_NONE=none
string OWNER_SDK=sdk
string OWNER_LEGS=legs
string OWNER_ARMS=arms
string OWNER_REMOTER=remoter
string OWNER_HOST=host

# task ids
## tasks for legs
string TASK_NAV2CENTER=nav2Center
string TASK_NAV2GATE=nav2Gate
string TASK_NAV2GETBAG=nav2GetBag
string TASK_NAV2HangBAG=nav2HangBag
string TASK_NAV2DANCE=nav2Dance
string TASK_NAV2WATER=nav2GetWater
string TASK_NAV2FOOD=nav2Food
string TASK_NAV2SOFA=nav2Sofa
string TASK_NAV2NoticeDate=nav2NoticeDate
string TASK_NAV2UMBRELLA=nav2Umbrella
string TASK_NAV2GIVEUMBRELLA=nav2GiveUmbrella
string TASK_NAV2CHARGE=nav2Charge
string TASK_NAV2ENDPOINT=nav2Endpoint
string TASK_NAV2DRAW=nav2Draw
string TASK_FASTWALK=doFastwalk
string TASK_MARKTIME=markTime
string TASK_STANDBY=standby
string TASK_DANCE=dance

# task status defines
string TASK_STATUS_IDLE=idle
string TASK_STATUS_BUSY=busy
string TASK_STATUS_STOP=stopped
string TASK_STATUS_ABORT=abort
string TASK_STATUS_FAILED=fail

# legs status defines
string LEG_STATUS_INIT=standInit
string LEG_STATUS_STANDING=standing
string LEG_STATUS_SCRIPTING=scripting
string LEG_STATUS_NAV=navigating
string LEG_STATUS_ARMCTRL=armCtrl
string LEG_STATUS_VISIONCTRL=visionCtrl
string LEG_STATUS_KEYBOARDCTRL=keyboardCtrl
string LEG_STATUS_REMOTERCTRL=remoterCtrl

##############################################

# time stamp must be filled
Header header

# current task id
string task_id

# who send request
string demander

# who execute task
string executor

# current task status
string task_status

# current leg status
string legs_status

# progress info(optional)
string process_info
