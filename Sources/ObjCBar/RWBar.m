#import "include/RWBar.h"

// BROKEN: Importing a module that I would expect to exist (ObjCFoo) does not work. Two ways:
//   1. fatal error: module 'RWFoo' not found. I would expect that the module `RWFoo` exists since
//      it imports property into the Swift target (spm-module-repro).
//
//   2. Xcode generated project error: `Use of '@import' when modules are disabled. The target
//      generated in Xcode doesn't have modules enabled for C and Objective-C.
@import ObjCFoo;

// Importing header by filename directly from a different target works (slightly unexpected).
// UNCOMMENT THIS IMPORT TO FIX THE BUILD.
// #import "RWFoo.h"

@implementation RWBar

- (int)numberOfPopsicles {
  // Use the imported `RWFoo` class.
  RWFoo *foo = [[RWFoo alloc] init];
  return 9 + [foo magicNumber];
}

@end
