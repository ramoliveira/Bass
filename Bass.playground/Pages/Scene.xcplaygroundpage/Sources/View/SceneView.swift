import Cocoa

public class SceneView: NSView {
//    private var _character: CharacterView!
//    public var character: CharacterView {
//        get {
//            return self._character
//        }
//        set {
//            self._character = newValue
//        }
//    }
//    
//    private var _balloon: BalloonView!
//    public var balloon: BalloonView {
//        get {
//            return self._balloon
//        }
//        set {
//            self._balloon = newValue
//        }
//    }
    
    public override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        
        self.wantsLayer = true
        self.layer?.backgroundColor = CGColor(red: 0.95, green: 0.92, blue: 0.71, alpha: 1)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

