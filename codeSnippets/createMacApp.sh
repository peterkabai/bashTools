#!/bin/sh

appname=$1;
script=$2;

dir="${appname}.app/Contents/MacOS";
mkdir -p "${dir}";
cp "$script" "${dir}/${appname}";
chmod +x "${dir}/${appname}";