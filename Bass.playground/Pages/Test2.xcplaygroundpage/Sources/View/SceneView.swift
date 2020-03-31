import Cocoa

public class SceneView: NSView {
    private let character = Scene1CharacterCreator().create()
    private var balloon: NSImageView!
    
    public override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        
        self.wantsLayer = true
        self.layer?.backgroundColor = CGColor(red: 0.95, green: 0.92, blue: 0.71, alpha: 1)
        
        let balloon = Balloon(frame: NSRect(x: 200, y: 200, width: 300, height: 300))
        balloon.insideText = character.lines[0]
        self.addSubview(balloon)
        
        self.addSubview(self.character)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

