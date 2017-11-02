#!/bin/bash

# Needed for the tests.
export CFLAGS="-std=c99 ${CFLAGS}"

if [[ ${HOST} =~ .*darwin.* ]]; then
  export LDFLAGS="${LDFLAGS} -Wl,-rpath,${PREFIX}/lib"
fi

<<<<<<< HEAD
autoreconf -ivf
./configure --prefix=${PREFIX} \
            --with-expat \
            --without-nettle \
            --without-lz4 \
            --without-lzmadec \
            --without-xml2
make -j${CPU_COUNT}
#eval ${LIBRARY_SEARCH_VAR}="${PREFIX}/lib" make check
=======
autoreconf -vfi
./configure --prefix=${PREFIX}  \
            --with-expat        \
            --without-nettle    \
            --without-lz4       \
            --without-lzmadec   \
            --without-xml2
make -j${CPU_COUNT} ${VERBOSE_AT}
>>>>>>> Update to 3.3.2, use cross-compilers, libiconv only needed for macOS
make install
