#!/bin/bash

echo Building LightDM Webkit theme Litarvan v$(cat version)...
echo

npm install
rm -r dist/
npm run-script build
pushd dist && tar zcvf ../lightdm-webkit-theme-litarvan-$(cat ../version).tar.gz ./* && popd