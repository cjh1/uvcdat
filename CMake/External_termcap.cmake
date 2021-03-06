
set(termcap_source "${CMAKE_CURRENT_BINARY_DIR}/build/termcap")
set(termcap_install "${cdat_EXTERNALS}")

ExternalProject_Add(termcap
  DOWNLOAD_DIR ${CMAKE_CURRENT_BINARY_DIR}
  SOURCE_DIR ${termcap_source}
  INSTALL_DIR ${termcap_install}
  URL ${TCAP_URL}/${TCAP_GZ}
  URL_MD5 ${TCAP_MD5}
  BUILD_IN_SOURCE 1
  PATCH_COMMAND ""
  CONFIGURE_COMMAND ${CMAKE_COMMAND} -DINSTALL_DIR=<INSTALL_DIR> -DWORKING_DIR=<SOURCE_DIR> -P ${cdat_CMAKE_BINARY_DIR}/cdat_configure_step.cmake
  DEPENDS ${termcap_DEPENDENCIES}
  ${EP_LOG_OPTIONS}
)
