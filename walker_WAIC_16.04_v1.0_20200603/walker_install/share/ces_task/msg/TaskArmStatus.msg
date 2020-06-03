# owner ids
string OWNER_NONE=none
string OWNER_SDK=sdk
string OWNER_LEGS=legs
string OWNER_ARMS=arms
string OWNER_REMOTER=remoter
string OWNER_HOST=host


# task ids
## common task
string TASK_GREETINGS=CES/cesGreetings
string TASK_HANDSHAKE=function/functionHybirdEffort
string TASK_STANDBY=walk/walkDynamic
string TASK_CHARGE=CES/cesRecharge
string TASK_SWINGWHILEWALKE=walk/walkDynamic
string TASK_WALKINHAND=walk/walkDynamicWithHand
string TASK_DANCE=function/functionDance
string TASK_ENDPOINTCTRL=function/functionEndpointControl
string TASK_HYBIRDTRQCTRL=function/functionHybirdEffort
string TASK_HYBIRDPOSCTRL=function/functionHybirdPosition
string TASK_NULLSPACECTRL=function/functionNullspaceControl
string TASK_VISUALSERVO=function/functionVisualServo
string TASK_WHOLEBODYCTRL=function/functionWholeBodyControl
string TASK_DRAWING=function/functionDrawing
string TASK_SAYGOODBYE=CES/cesSayGoodbye

## open door task
string TASK_OPENDOOR=CES/ces100OpenDoor

## handle bag task
string TASK_GETBAG=CES/cesPickBag
string TASK_HANGBAG=CES/ces101PlaceBag

## get water task
string TASK_GETWATER=CES/ces102OpenRefrigerator
string TASK_PLACEWATER=CES/ces104PlaceWater
string TASK_WALKWITHWATER=walk/walkDynamic

## get food task
string TASK_GETFOOD=CES/ces103PickChips
string TASK_WALKWITHFOOD=walk/walkDynamic
string TASK_GIVEFOOD=CES/cesDeliveryChips
string TASK_RELEASEFOOD=CES/cesReleaseChips

## get umbrella task
string TASK_GETUMBRELLA=CES/ces105PickUmbrella
string TASK_GIVEUMBRELLA=CES/cesDeliveryUmbrella
string TASK_RELEASEUMBRELLA=CES/cesReleaseUmbrella


# task status defines
string TASK_STATUS_IDLE=idle
string TASK_STATUS_BUSY=busy
string TASK_STATUS_STOP=stopped
string TASK_STATUS_ABORT=abort
string TASK_STATUS_FAILED=fail

##############################################

# time stamp must be filled
Header header

# current task id
string task_id

# who send request
string demander

# who execute task
string executor

# current status
string task_status

# progress info(optional)
string process_info
