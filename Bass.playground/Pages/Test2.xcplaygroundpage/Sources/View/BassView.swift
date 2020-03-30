import Cocoa

public class BassView: NSView {
    public override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        self.allowedTouchTypes = [.indirect]
        self.wantsRestingTouches = true
        
        self.wantsLayer = true
        self.layer?.backgroundColor = .white
        
        let rect = NSRect(x: 0, y: 0, width: 200, height: 200)
        let view = NSView(frame: rect)
        view.wantsLayer = true
        view.layer?.backgroundColor = .black
        
        self.addSubview(view)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension BassView {
    public override func touchesBegan(with event: NSEvent) {
        print("touches began")
    }
    
    public override func touchesMoved(with event: NSEvent) {
        print("touches moved")
    }
    
    public override func touchesEnded(with event: NSEvent) {
        print("touches ended")
    }
    
    public override func touchesCancelled(with event: NSEvent) {
        print("touches cancelled")
    }
}
