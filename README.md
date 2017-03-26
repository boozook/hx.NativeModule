## Build Haxe-part static libraries

```shell
haxe build.macos.hxml
haxe build.ios-sim.hxml
haxe build.ios.hxml
lipo -create out/lib/cpp-ios-a*/liboutput.*.a -output out/lib/hx.fat-ios.a
```

* See [hx/readme.md](hx/README.md).



## Build Xcode project

```shell
cd ios; xcodebuild
cd macos; xcodebuild
```

* How to create Xcode-project - see [ios/readme.md](ios/README.md).
* How to create Xcode-project - see [macos/readme.md](macos/README.md).
