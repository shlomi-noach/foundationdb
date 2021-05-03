#!/bin/sh

# Simulation currently has memory leaks. We need to investigate before we can enable leak detection in joshua.
export ASAN_OPTIONS="detect_leaks=0"

OLDBINDIR="${OLDBINDIR:-/app/deploy/global_data/oldBinaries}"
mono bin/TestHarness.exe joshua-run "${OLDBINDIR}" false
