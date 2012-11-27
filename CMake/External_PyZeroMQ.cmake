set(zero_install_dir "${cdat_EXTERNALS}")

ExternalProject_Add(PyZeroMQ
  URL ${PYZMQ_URL}/${PYZMQ_GZ}
  CONFIGURE_COMMAND ${PYTHON_EXECUTABLE} setup.py configure --zmq=${zero_install_dir}
  BUILD_COMMAND  ${PYTHON_EXECUTABLE} setup.py build
  INSTALL_COMMAND  ${PYTHON_EXECUTABLE} setup.py install
  BUILD_IN_SOURCE 1
  DEPENDS ${PyZeroMQ_DEPENDENCIES}
)
