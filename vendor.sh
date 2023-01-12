#!/bin/bash
if [ $# -eq 0 ]; then
 echo "no arguments - pass a version number like 3400000 from https://sqlite.org/download.html"
 exit 1
fi

echo "Version: $1";

git checkout --orphan $1
curl -o sqlite-wasm-$1.zip "https://sqlite.org/2022/sqlite-wasm-$1.zip"
unzip sqlite-wasm-$1.zip
mv sqlite-wasm-$1/* .
rm -r sqlite-wasm-$1 sqlite-wasm-$1.zip
echo $1 > version.txt
git status
git add -A
git commit -m "vendoring in $1"
git status
