cmake_minimum_required(VERSION 3.8)
project(hsm_interfaces)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/SimpleMessage.msg"
  "msg/StringArgMessage.msg"
  "msg/NumberArgMessage.msg"
  "srv/DebugPrint.srv"
  "srv/NavigationMoveToPoint.srv"
  "srv/NavigationMoveAlongTraj.srv"
  "srv/NavigationStop.srv"
  "srv/PumpTurnOn.srv"
  "srv/PumpTurnOff.srv"
  "srv/StorageNew.srv"
  "srv/StorageAdd.srv"
  "srv/StorageLoad.srv"
  "srv/TimerStart.srv"
  "srv/TimerStop.srv"
  "srv/TimerTicks.srv"
  "srv/WheelsStop.srv"
  "srv/WheelsForward.srv"
  "srv/WheelsBack.srv"
  "srv/WheelsTurnRight.srv"
  "srv/WheelsTurnLeft.srv"
  DEPENDENCIES geometry_msgs
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the sources carry hand-written licence headers that ament_copyright does not
  # recognise, and the package intentionally ships no CONTRIBUTING.md
  set(ament_cmake_copyright_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
