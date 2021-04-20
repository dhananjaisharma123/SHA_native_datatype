#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/ds6365/SHA/NDT_part_pipeline/.autopilot/db/a.g.bc ${1+"$@"}
