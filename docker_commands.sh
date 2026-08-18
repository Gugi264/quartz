#!/bin/bash
npx quartz build
mkdir -p output
cp -R public/. output

