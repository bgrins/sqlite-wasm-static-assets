Vendoring in a new version into a branch, which can then be configured to host on gh-pages:

```
git checkout --orphan 3400000
curl -o sqlite-wasm-3400000.zip "https://sqlite.org/2022/sqlite-wasm-3400000.zip"
unzip sqlite-wasm-3400000.zip
mv sqlite-wasm-3400000/* .
rm -r sqlite-wasm-3400000 sqlite-wasm-3400000.zip
echo 3400000 > version.txt
```

Previewing locally:
```
python3 -m http.server
```
