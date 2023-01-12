Vendoring in a new version into a branch, which can then be [configured to host on gh-pages](https://github.com/bgrins/sqlite-wasm-static-assets/settings/pages):

```
./vendor.sh 3400000
```

Creates https://github.com/bgrins/sqlite-wasm-static-assets/tree/3400000. From that branch you can preview locally with a static file server like:

```
python3 -m http.server
```
