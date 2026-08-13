# Message constants

# Timer module
int16 MSG_TIMER_TICK =                    11
int16 MSG_TIMER_TICK_1S =                 12 
int16 MSG_TIMER_TICK_1M =                 13
# MSG_TIMER_ELAPSED -> string arg msg    (14)

# Navigation module
int16 MSG_NAVIGATION_PATH_FOUND =         21
int16 MSG_NAVIGATION_PATH_NOT_FOUND =     22
int16 MSG_NAVIGATION_MOVE_COMPLETED =     23
int16 MSG_NAVIGATION_COLLISION_WARNING =  24
int16 MSG_NAVIGATION_COLLISION_DETECTED = 25
# MSG_NAVIGATION_STOP_COMPLETED          (26) -> moved to the Wheels module
int16 MSG_NAVIGATION_RIGHT_OPEN_SPACE =   27
int16 MSG_NAVIGATION_POINT_PASSED =       28

# Wheels module
int16 MSG_WHEELS_STOP_COMPLETED =         31

# Message code
int16 code
