For better understanding check out [this article](http://code.haxe.org/category/compilation/compiling-libraries-without-main-class.html).


## Build iOS static library

```shell
haxe build.ios-sim.hxml
haxe build.ios.hxml
lipo -create "out/lib/cpp-ios-armv7/liboutput.iphoneos-v7.a" "out/lib/cpp-ios-armv6/liboutput.iphoneos.a" "out/lib/cpp-ios-armv7s/liboutput.iphoneos-v7s.a" "out/lib/cpp-ios-arm64/liboutput.iphoneos-64.a" "out/lib/cpp-ios-sim/liboutput.iphonesim.a" -output "out/lib/hx.fat-ios.a"
```

## Build macOS static library

```shell
haxe build.macos.hxml
```



- - -

### [Dirty hack] If HXCPP dont wont to build as it is necessary - with `-stdlib=libc++`:

It's actual for hxcpp v <= 3.4.64.

You need create your `Build.xml` and run `haxelib run hxcpp Build.xml` or _simply and dirty_ edit `mac-toolchain.xml` in the hxcpp haxelib package.


Open `/path_to_Haxelibs/hxcpp/3,4,64/toolchain/mac-toolchain.xml` and edit:

In the each nodes named `compiler`, `linker` __and another `linker`__ replace next node:

```xml
<flag value="-stdlib=libstdc++" unless="HXCPP_GCC" />
```

with next two nodes:

```xml
<flag value="-stdlib=libc++" if="HXCPP_CPP11" unless="HXCPP_GCC" />
<flag value="-stdlib=libstdc++" unless="HXCPP_GCC || HXCPP_CPP11" />
```

Symply like [there mac-toolchain.xml#L18-L19](https://github.com/HaxeFoundation/hxcpp/blob/ef15dedce6f8e46c4de90131fc7d3a79795ac7d1/toolchain/mac-toolchain.xml#L18-L19).
