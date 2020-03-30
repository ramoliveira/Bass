import Cocoa

public class SceneView: NSView {
    public override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        
        self.wantsLayer = true
        self.layer?.backgroundColor = CGColor(red: 0.95, green: 0.92, blue: 0.71, alpha: 1)
        
//        if let image =  NSImage(named: "character.png") {
//            let imageView = NSImageView(image: image)
//            imageView.frame = NSRect(x: 0, y: 0, width: 300, height: 300)
//            self.addSubview(imageView)
//        }
        
//        let character = CharacterView(frame: NSRect(x: 0, y: 0, width: 300, height: 300))
        let character = Scene8CharacterCreator().create()
        self.addSubview(character)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

