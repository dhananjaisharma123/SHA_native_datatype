#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/ds6365/SHA/native_dataType/.autopilot/db/a.g.bc ${1+"$@"}
