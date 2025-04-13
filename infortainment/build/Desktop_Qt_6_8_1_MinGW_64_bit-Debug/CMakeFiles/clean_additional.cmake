# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appinfortainment_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appinfortainment_autogen.dir\\ParseCache.txt"
  "appinfortainment_autogen"
  )
endif()
