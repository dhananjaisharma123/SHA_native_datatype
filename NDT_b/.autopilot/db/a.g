#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/ds6365/SHA/NDT_b/.autopilot/db/a.g.bc ${1+"$@"}
