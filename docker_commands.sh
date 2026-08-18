#!/bin/bash
set -e
# build into public/, then copy into output/ — output/ is a bind mount and
# `quartz build -o output` fails with EBUSY because it rmdir's its target
npx quartz build
mkdir -p output
cp -R public/. output
