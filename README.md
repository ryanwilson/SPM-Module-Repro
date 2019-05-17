# Swift Package Manager Obj-C Module Issue

This project demonstrates an issue with two C based targets depending on each other. When a C based
target (`ObjCBar`) depends on another C based target (`ObjCFoo`), currently the only way to import
public headers is using the filenames directly (`#import "RWFoo.h"`). I would expect that I could
import the module generated from the `ObjCFoo` target via `@import ObjCFoo;` in `ObjCBar` similar to
how the Swift target works (`@import ObjCFoo`), but the build fails.

As a secondary issue, generating an Xcode project with this fails for a different reason: modules
are disabled for C and Objective-C targets in the generated Xcode project.

Steps to reproduce:

Check out this repo.

Run `swift build` at the root of this repo. Observe the error.

In order to fix the issue, comment out line 9 and uncomment line 13. Run `swift build` again.
