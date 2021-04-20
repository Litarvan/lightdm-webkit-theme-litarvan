#!/usr/bin/env bash

echo Building LightDM Webkit theme Litarvan v$(cat version)...
echo

rm -f lightdm-webkit-theme-litarvan-$(cat version).tar.gz
npm ci
rm -rf dist/
npm run-script build
cp LICENSE dist/
pushd dist && tar zcvf ../lightdm-webkit-theme-litarvan-$(cat ../version).tar.gz ./* && popd
