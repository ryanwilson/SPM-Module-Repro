import ObjCFoo
import ObjCBar

struct spm_module_repro {
  func hello() {
    // Use the class from ObjCFoo.
    let foo = RWFoo()
    print("Magic number: \(foo.magicNumber())")

    // Use the class from ObjCBar (which uses ObjCFoo).
    let bar = RWBar()
    print("Number of popsicles: \(bar.numberOfPopsicles())")
  }
}
