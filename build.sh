pub get
pub build --mode=debug
cp index.theme LICENSE build/web
pushd build/web
tar -zcvf lightdm-webkit-theme-litarvan-$(cat ../../version).tar.gz ./*
mv *.tar.gz ../../
popd
