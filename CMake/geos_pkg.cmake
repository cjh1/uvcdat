set( GEOS_MAJOR 3  )
set( GEOS_MINOR 3  )
set( GEOS_PATCH 5  )
set(GEOS_URL ${LLNL_URL})
set(GEOS_BZ2 geos-${GEOS_MAJOR}.${GEOS_MINOR}.${GEOS_PATCH}.tar.bz2)
set(GEOS_MD5 2ba61afb7fe2c5ddf642d82d7b16e75b)

add_cdat_package(GEOS "" "" "" "")
set(GEOS_deps ${matplotlib_pkg})
