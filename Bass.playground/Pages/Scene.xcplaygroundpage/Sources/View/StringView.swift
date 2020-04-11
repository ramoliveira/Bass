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
