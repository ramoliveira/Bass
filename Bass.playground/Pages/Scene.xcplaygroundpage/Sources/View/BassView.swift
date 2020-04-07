import Cocoa
import AVFoundation

public class StringView: NSView {
    private(set) var isMoving = false
    private(set) var player: AVAudioPlayer?
    private(set) var musicalNote: String = ""
    
    convenience init(frame frameRect: NSRect, baseColor: CGColor, shineColor: CGColor, musicalNote: String) {
        self.init(frame: frameRect)
        self.allowedTouchTypes = [.indirect]
        self.wantsRestingTouches = true
        
        self.wantsLayer = true
        self.shadow = NSShadow()
        self.layer?.backgroundColor = baseColor
        self.layer?.shadowOpacity = 1.0
        self.layer?.shadowColor = baseColor
        self.layer?.shadowOffset = NSSize(width: 0, height: 0)
        self.layer?.shadowRadius = 20
        
        let subView = NSView(frame: NSRect(x: 0, y: 0, width: 12, height: 800))
        subView.wantsLayer = true
        subView.layer?.backgroundColor = shineColor
        
        self.addSubview(subView)
        
        self.musicalNote = musicalNote
    }
    
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
            self.playSong()
            let initialPosition = self.frame.origin
            let positions: [NSPoint] = [
                NSPoint(x: initialPosition.x + CGFloat(10), y: 0),
                NSPoint(x: initialPosition.x - CGFloat(30), y: 0),
                NSPoint(x: initialPosition.x + CGFloat(30), y: 0),
                NSPoint(x: initialPosition.x - CGFloat(10), y: 0),
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
    
    func playSong() {
        do {
            guard let url = Bundle.main.url(forResource: self.musicalNote, withExtension: "m4a") else { return }
            
            self.player = try AVAudioPlayer(contentsOf: url, fileTypeHint: url.pathExtension)
            guard let player = self.player else { return }
            player.prepareToPlay()
            player.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
}

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
//    public override func touchesBegan(with event: NSEvent) {
//        print("touches began")
//    }
    
    public override func touchesMoved(with event: NSEvent) {
        let point = event.locationInWindow
        if self.string1.frame.contains(point) {
            if !self.string1.isMoving {
                self.changeBackgroundColor(to: CGColor(red: 0.33, green: 0.64, blue: 0.33, alpha: 1))
            }
            self.string1.touchesMoved(with: event)
        } else if self.string2.frame.contains(point) {
            if !self.string2.isMoving {
                self.changeBackgroundColor(to: CGColor(red: 0.67, green: 0.67, blue: 0.38, alpha: 1))
            }
            self.string2.touchesMoved(with: event)
        } else if self.string3.frame.contains(point) {
            if !self.string3.isMoving {
                self.changeBackgroundColor(to: CGColor(red: 0.35, green: 0.35, blue: 0.75, alpha: 1))
            }
            self.string3.touchesMoved(with: event)
        } else if self.string4.frame.contains(point) {
            if !self.string4.isMoving {
                self.changeBackgroundColor(to: CGColor(red: 0.69, green: 0.35, blue: 0.35, alpha: 1))
            }
            self.string4.touchesMoved(with: event)
        }
    }
    
//    public override func touchesEnded(with event: NSEvent) {
//        print("touches ended")
//    }
//
//    public override func touchesCancelled(with event: NSEvent) {
//        print("touches cancelled")
//    }
    
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
