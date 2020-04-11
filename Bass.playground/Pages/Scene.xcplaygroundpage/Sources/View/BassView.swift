import Cocoa

public class BassView: NSView {
    lazy var string1: StringView = {
        return StringView(frame: NSRect(x: 100, y: 0, width: 25, height: 800),
                          baseColor: CGColor(red: 0, green: 1, blue: 0, alpha: 1),
                          shineColor: CGColor(red: 0.52, green: 1, blue: 0.52, alpha: 1),
                          musicalNote: "em1")
    }()
    lazy var string2: StringView = {
        return StringView(frame: NSRect(x: 300, y: 0, width: 25, height: 800),
                          baseColor: CGColor(red: 1, green: 1, blue: 0, alpha: 1),
                          shineColor: CGColor(red: 1, green: 1, blue: 0.52, alpha: 1),
                          musicalNote: "em2")
    }()
    lazy var string3: StringView = {
        return StringView(frame: NSRect(x: 500, y: 0, width: 25, height: 800),
                          baseColor: CGColor(red: 0, green: 0, blue: 1, alpha: 1),
                          shineColor: CGColor(red: 0.52, green: 0.52, blue: 1, alpha: 1),
                          musicalNote: "em3")
    }()
    lazy var string4: StringView = {
        return StringView(frame: NSRect(x: 700, y: 0, width: 25, height: 800),
                          baseColor: CGColor(red: 1, green: 0, blue: 0, alpha: 1),
                          shineColor: CGColor(red: 1, green: 0.52, blue: 0.52, alpha: 1),
                          musicalNote: "em4")
    }()
    
    public override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        self.allowedTouchTypes = [.indirect]
        self.wantsRestingTouches = true
        
        self.wantsLayer = true
        self.layer?.backgroundColor = .black
        
        self.addSubview(string1)
        self.addSubview(string2)
        self.addSubview(string3)
        self.addSubview(string4)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension BassView {
    public override func mouseUp(with event: NSEvent) {
        return
    }
    
    public override func mouseDown(with event: NSEvent) {
        return
    }
    
    public override func touchesMoved(with event: NSEvent) {
        let point = event.locationInWindow
        if self.string1.frame.contains(point) {
            if !self.string1.isMoving {
                self.changeBackgroundColor(to: CGColor(red: 0.33, green: 0.64, blue: 0.33, alpha: 1))
                self.string1.touchesMoved(with: event)
            }
        } else if self.string2.frame.contains(point) {
            if !self.string2.isMoving {
                self.changeBackgroundColor(to: CGColor(red: 0.67, green: 0.67, blue: 0.38, alpha: 1))
                self.string2.touchesMoved(with: event)
            }
            
        } else if self.string3.frame.contains(point) {
            if !self.string3.isMoving {
                self.changeBackgroundColor(to: CGColor(red: 0.35, green: 0.35, blue: 0.75, alpha: 1))
                self.string3.touchesMoved(with: event)
            }
        } else if self.string4.frame.contains(point) {
            if !self.string4.isMoving {
                self.changeBackgroundColor(to: CGColor(red: 0.69, green: 0.35, blue: 0.35, alpha: 1))
                self.string4.touchesMoved(with: event)
            }
        }
    }
    
    public func changeBackgroundColor(to color: CGColor) {
        NSAnimationContext.runAnimationGroup({ (context) in
            context.duration = 0.2
            context.allowsImplicitAnimation = true
            
            self.layer?.backgroundColor = color
            self.updateLayer()
        }) {
            NSAnimationContext.runAnimationGroup { (context) in
                context.duration = 0.5
                context.allowsImplicitAnimation = true
                
                self.layer?.backgroundColor = .black
                self.updateLayer()
            }
        }
    }
}
