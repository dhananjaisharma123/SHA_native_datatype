#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/ds6365/SHA/Not_d_mod/.autopilot/db/a.g.bc ${1+"$@"}
