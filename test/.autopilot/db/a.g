#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/ds6365/SHA/test/.autopilot/db/a.g.bc ${1+"$@"}
