#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/ds6365/SHA/solution6/.autopilot/db/a.g.bc ${1+"$@"}
