import Cocoa

public class ViewController: NSViewController {
    private(set) var fowardButton: NSButton!
    private(set) var backwardButton: NSButton!
    
//    private var _character: Character!
//    public var character: Character {
//        get {
//            return self._character
//        }
//        set {
//            self._character = newValue
//        }
//    }
//    private var _scene: SceneView!
//    public var scene: SceneView {
//        get {
//            return self._scene
//        }
//        set {
//            self._scene = newValue
//        }
//    }
    
    public override func viewDidLoad() {
        print("OK1")
    }
    
    public override func viewWillAppear() {
        print("OK2")
    }
}

