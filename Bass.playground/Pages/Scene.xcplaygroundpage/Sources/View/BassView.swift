import Cocoa

public class StringView: NSView {
    private(set) var isMoving = false
    
    public override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        self.allowedTouchTypes = [.indirect]
        self.wantsRestingTouches = true
        
        self.wantsLayer = true
        self.shadow = NSShadow()
        self.layer?.backgroundColor = CGColor(red: 0, green: 1, blue: 0, alpha: 1)
        self.layer?.shadowOpacity = 1.0
        self.layer?.shadowColor = CGColor(red: 1, green: 1, blue: 0, alpha: 1)
        self.layer?.shadowOffset = NSSize(width: 0, height: 0)
        self.layer?.shadowRadius = 20
        
        let subView = NSView(frame: NSRect(x: 0, y: 0, width: 12, height: 800))
        subView.wantsLayer = true
        subView.layer?.backgroundColor = CGColor(red: 0.52, green: 1, blue: 0.52, alpha: 1)
        
        self.addSubview(subView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func touchesMoved(with event: NSEvent) {
        let point = event.locationInWindow
        if self.frame.contains(point) && !self.isMoving {
            let initialPosition = self.frame.origin
            let positions: [NSPoint] = [
                NSPoint(x: initialPosition.x + CGFloat(20), y: 0),
                NSPoint(x: initialPosition.x - CGFloat(40), y: 0),
                NSPoint(x: initialPosition.x + CGFloat(40), y: 0),
                NSPoint(x: initialPosition.x - CGFloat(20), y: 0),
                NSPoint(x: initialPosition.x, y: 0)
            ]
            self.moveString(index: 0, positions: positions)
        }
    }
    
    func moveString(index: Int, positions: [NSPoint]) {
        self.isMoving = true
        
        NSAnimationContext.runAnimationGroup({ (context) in
            context.duration = 0.2
            context.allowsImplicitAnimation = true
            
            self.frame.origin.x = positions[index].x
            self.updateLayer()
        }) {
            if index < positions.count-1 {
                self.moveString(index: index+1, positions: positions)
            } else {
                self.isMoving = false
                return
            }
        }
    }
}

public class BassView: NSView {
    private var string1: NSView {
        get {
            let view = NSView(frame: NSRect(x: 100, y: 0, width: 25, height: 800))
            view.wantsLayer = true
            view.shadow = NSShadow()
            view.layer?.backgroundColor = CGColor(red: 0, green: 1, blue: 0, alpha: 1)
            view.layer?.shadowOpacity = 1.0
            view.layer?.shadowColor = CGColor(red: 1, green: 1, blue: 0, alpha: 1)
            view.layer?.shadowOffset = NSSize(width: 0, height: 0)
            view.layer?.shadowRadius = 20
            
            let subView = NSView(frame: NSRect(x: 0, y: 0, width: 12, height: 800))
            subView.wantsLayer = true
            subView.layer?.backgroundColor = CGColor(red: 0.52, green: 1, blue: 0.52, alpha: 1)
            
            view.addSubview(subView)
            
            return view
        }
    }
    private var string2: NSView {
        get {
            let view = NSView(frame: NSRect(x: 300, y: 0, width: 25, height: 800))
            view.wantsLayer = true
            view.shadow = NSShadow()
            view.layer?.backgroundColor = CGColor(red: 1, green: 1, blue: 0, alpha: 1)
            view.layer?.shadowOpacity = 1.0
            view.layer?.shadowColor = CGColor(red: 1, green: 1, blue: 0, alpha: 1)
            view.layer?.shadowOffset = NSSize(width: 0, height: 0)
            view.layer?.shadowRadius = 20
            
            let subView = NSView(frame: NSRect(x: 0, y: 0, width: 12, height: 800))
            subView.wantsLayer = true
            subView.layer?.backgroundColor = CGColor(red: 1, green: 1, blue: 0.52, alpha: 1)
            
            view.addSubview(subView)
            
            return view
        }
    }
    private var string3: NSView {
        get {
            let view = NSView(frame: NSRect(x: 500, y: 0, width: 25, height: 800))
            view.wantsLayer = true
            view.shadow = NSShadow()
            view.layer?.backgroundColor = CGColor(red: 0, green: 0, blue: 1, alpha: 1)
            view.layer?.shadowOpacity = 1.0
            view.layer?.shadowColor = CGColor(red: 0, green: 0, blue: 1, alpha: 1)
            view.layer?.shadowOffset = NSSize(width: 0, height: 0)
            view.layer?.shadowRadius = 20
            
            let subView = NSView(frame: NSRect(x: 0, y: 0, width: 12, height: 800))
            subView.wantsLayer = true
            subView.layer?.backgroundColor = CGColor(red: 0.52, green: 0.52, blue: 1, alpha: 1)
            
            view.addSubview(subView)
            
            return view
        }
    }
    private var string4: NSView {
        get {
            let view = NSView(frame: NSRect(x: 700, y: 0, width: 25, height: 800))
            view.wantsLayer = true
            view.shadow = NSShadow()
            view.layer?.backgroundColor = CGColor(red: 1, green: 0, blue: 0, alpha: 1)
            view.layer?.shadowOpacity = 1.0
            view.layer?.shadowColor = CGColor(red: 1, green: 0, blue: 0, alpha: 1)
            view.layer?.shadowOffset = NSSize(width: 0, height: 0)
            view.layer?.shadowRadius = 20
            
            let subView = NSView(frame: NSRect(x: 0, y: 0, width: 12, height: 800))
            subView.wantsLayer = true
            subView.layer?.backgroundColor = CGColor(red: 1, green: 0.52, blue: 0.52, alpha: 1)
            
            view.addSubview(subView)
            
            return view
        }
    }
    
    
    public override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        self.allowedTouchTypes = [.indirect]
        self.wantsRestingTouches = true
        
        self.wantsLayer = true
        self.layer?.backgroundColor = .black
        
        let string = StringView(frame: NSRect(x: self.frame.midX, y: 0, width: 25, height: 800))
        
        self.addSubview(string)
        self.addSubview(self.string1)
        self.addSubview(self.string2)
        self.addSubview(self.string3)
        self.addSubview(self.string4)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension BassView {
    public override func mouseMoved(with event: NSEvent) {
        let touch = event.touches(for: self).first
        if let touchPosition = touch?.location(in: self) {
            if self.isMousePoint(touchPosition, in: self.frame) {
                print("oi")
            }
        }
    }
    
    public override func touchesBegan(with event: NSEvent) {
        print("touches began")
    }
    
    public override func touchesMoved(with event: NSEvent) {
//        let point = event.locationInWindow
//        if self.string1.frame.contains(point) {
//        } else if self.string2.frame.contains(point) {
//            print("string2")
//        } else if self.string3.frame.contains(point) {
//            print("string3")
//        } else if self.string4.frame.contains(point) {
//            print("string4")
//        }
    }
    
    public override func touchesEnded(with event: NSEvent) {
        print("touches ended")
    }
    
    public override func touchesCancelled(with event: NSEvent) {
        print("touches cancelled")
    }
}
