set(ZLIB_PATCH_SRC 5 CACHE INTEGER "Version of ZLIB to use")
MARK_AS_ADVANCED(ZLIB_PATCH_SRC)
if (ZLIB_PATCH_SRC EQUAL 3)
  set(ZLIB_MD5 debc62758716a169df9f62e6ab2bc634)
elseif (ZLIB_PATCH_SRC EQUAL 5)
  set(ZLIB_MD5 c735eab2d659a96e5a594c9e8541ad63)
elseif (ZLIB_PATCH_SRC EQUAL 7)
  set(ZLIB_MD5 60df6a37c56e7c1366cca812414f7b85)
else ()
  message(FATAL_ERROR "error: invalid zlib patch number: '${ZLIB_PATCH_SRC}' valid: 3, 5 or 7")
endif()

set(ZLIB_MAJOR_SRC 1)
set(ZLIB_MINOR_SRC 2)
#ZLIB_PATH_SRC and md5 is configured in CMakeLists.txt because on some RedHAt system we need to change it
#set(ZLIB_PATCH_SRC 3)
set(ZLIB_VERSION ${ZLIB_MAJOR_SRC}.${ZLIB_MINOR_SRC}.${ZLIB_PATCH_SRC})
set(ZLIB_URL ${LLNL_URL})
set(ZLIB_GZ zlib-${ZLIB_VERSION}.tar.gz)

add_cdat_package(zlib "" "" "")
