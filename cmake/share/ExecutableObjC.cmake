#
# Input:
#
# EXECUTABLE_BASE_NAME
# EXECUTABLE_ALL_LOAD_LIBRARIES
#
#
# Optional:
#
# EXECUTABLE_OPTIMIZABLE_LOAD_LIBRARIES
# C_DEPENDENCY_LIBRARIES
# OS_SPECIFIC_LIBRARIES
#
set( EXECUTABLE_VERSION 3)

foreach( library ${EXECUTABLE_ALL_LOAD_LIBRARIES})
   list( APPEND EXECUTABLE_FORCE_ALL_LOAD_LIBRARIES "${FORCE_LOAD_PREFIX}${library}")
endforeach()

###

target_link_libraries( "${EXECUTABLE_NAME}"
${BEGIN_ALL_LOAD}
${EXECUTABLE_FORCE_ALL_LOAD_LIBRARIES}
${END_ALL_LOAD}
${EXECUTABLE_NORMAL_LOAD_LIBRARIES}
${C_DEPENDENCY_LIBRARIES}
${OS_SPECIFIC_LIBRARIES}
)

#
# need this for .aam projects
#
set_target_properties( "${EXECUTABLE_NAME}"
   PROPERTIES LINKER_LANGUAGE C
)

#
# For noobs add a line so they find the output
#
add_custom_command(
  TARGET "${EXECUTABLE_NAME}"
  POST_BUILD
  COMMAND echo "Your executable \"$<TARGET_FILE:${EXECUTABLE_NAME}>\" is now ready to run"
  VERBATIM
)