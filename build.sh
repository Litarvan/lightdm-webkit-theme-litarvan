pub build --mode=release
cp index.theme build/web
pushd build/web
zip -r lightdm-webkit-theme-litarvan-$(cat ../../version).zip ./*
mv *.zip ../../
popd