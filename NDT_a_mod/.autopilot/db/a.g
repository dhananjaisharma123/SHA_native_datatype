#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/ds6365/SHA/NDT_a_mod/.autopilot/db/a.g.bc ${1+"$@"}
