Vendoring in a new version into a branch, which can then be [configured to host on gh-pages](https://github.com/bgrins/sqlite-wasm-static-assets/settings/pages):

```
./vendor.sh 3400000
```

Previewing locally:
```
python3 -m http.server
```
