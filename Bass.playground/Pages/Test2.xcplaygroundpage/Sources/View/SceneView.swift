import Cocoa

public class SceneView: NSView {
    private var _character: CharacterView!
    public var character: CharacterView {
        get {
            return self._character
        }
        set {
            self._character = newValue
        }
    }
    
    private var _balloon: NSImageView!
    public var balloon: NSImageView {
        get {
            return self._balloon
        }
        set {
            self._balloon = newValue
        }
    }
    
    private var _items: [NSImageView]!
    public var items: [NSImageView] {
        get {
            return self._items
        }
        set {
            self._items = newValue
        }
    }
    
    public var isBackwardButtonEnabled = false
    
    public override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        
        self.wantsLayer = true
        self.layer?.backgroundColor = CGColor(red: 0.95, green: 0.92, blue: 0.71, alpha: 1)
        
        let balloon = BalloonView(frame: NSRect(x: 200, y: 200, width: 300, height: 300))
        self.addSubview(balloon)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

