1. Open Xcode;
1. Create new project from template `iOS "Single View Application"`;
1. rename `Supporting Files/main.m` to `Supporting Files/main.mm`
1. rename `AppDelegate.m` to `AppDelegate.mm`
1. Go to `Project Build Settings` -> `Search Paths` -> `Header Search Paths` and add:
	1. __full path__ to `hx.NativeModule/hx/out/lib/cpp-ios-sim/include` directory & set "recursive"
	1. __full path__ to `your-haxelibs/hxcpp/3,4,64/include` directory & set "recursive"
	1. `/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1` & set "__non-__recursive"
1. Go to `Target Settings` -> `General` tab -> `Linked Frameworks and Libraries` and drag-n-drop `hx.NativeModule/hx/out/lib/hx.fat-ios.a` into there _(or you can and any combination of libs from `hx.NativeModule/hx/out/lib/cpp-ios-*/hx.*.a/` for any arch. I use the fat-lib for example.)_
1. Open `Supporting Files/main.mm` and:
	* `#import <hxcpp.h>` _(or `HxcppConfig.*.h` from `out/lib/cpp-ios-*/`)_
	* `HX_TOP_OF_STACK hx::Boot(); __boot_all();` into the body of method `main`
1. Open `AppDelegate.mm` and:
	* `#import "Foo.h"`
	* `fzzr::example::Foo_obj::test();` into the body of method `applicatio: didFinishLaunchingWithOptions:`

That's all.
