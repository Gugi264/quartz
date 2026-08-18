#!/bin/bash
set -e
# build into public/, then copy into output/ — output/ is a bind mount and
# `quartz build -o output` fails with EBUSY because it rmdir's its target
npx quartz build
mkdir -p output
# clear the mount's *contents* (not the mount itself) so deleted pages don't
# linger in output/ forever and get republished by the rsync
find output -mindepth 1 -delete
cp -R public/. output
