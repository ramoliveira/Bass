import Cocoa

public class SceneViewController: NSViewController {
    private(set) var fowardButton: NSButton!
    private(set) var backwardButton: NSButton!
    
    // Balloon
    internal let balloon = BalloonView(frame: NSRect(x: 400, y: 200, width: 300, height: 300))
    
    // TimeInterval's
    internal let showBallonTimeInterval: TimeInterval = 2
    internal let removeBallonTimeInterval: TimeInterval = 2
    internal let showLineTimeInternaval: TimeInterval = 4
    internal let removeLineTimeInterval: TimeInterval = 4
    
    // Public Attribute
    public var name: String = ""
    public var index: Int = 0
    
    public override func viewWillAppear() {
        super.viewWillAppear()
        self.attachButtons()
    }
    
    @objc func pressedBackwardButton() {
        if self.index == 0 {
            return
        } else {
            let viewController = ViewControllers.controllers[self.index-1]
            view.window?.contentViewController = viewController
        }
    }
    
    @objc func pressedFowardButton() {
        if self.index == ViewControllers.controllers.count-1 {
            return
        } else {
            let viewController = ViewControllers.controllers[self.index+1]
            view.window?.contentViewController = viewController
        }
    }
    
    func attachButtons() {
        self.backwardButton = NSButton(title: "Backward", target: self, action: #selector(pressedBackwardButton))
        self.backwardButton.frame = NSRect(x: self.view.frame.width * 0.05, y: self.view.frame.midY, width: 100, height: 100)
        self.backwardButton.bezelStyle = .rounded
        
        self.fowardButton = NSButton(title: "Foward", target: self, action: #selector(pressedFowardButton))
        self.fowardButton.frame = NSRect(x: self.view.frame.width * 0.8, y: self.view.frame.midY, width: 100, height: 100)
        self.fowardButton.bezelStyle = .rounded
        
        self.fowardButton.needsDisplay = true
        self.backwardButton.needsDisplay = true
        
        if self.index != 0 {
            self.view.addSubview(self.backwardButton)
        }
        self.view.addSubview(self.fowardButton)
    }
    
    func showLine(index: Int, character: CharacterView) {
        self.balloon.insideText = character.lines[index]
        
        NSAnimationContext.runAnimationGroup({ (context) in
            context.duration = self.showLineTimeInternaval
            context.allowsImplicitAnimation = true
            
            self.balloon.textView.animator().isHidden = false
        }) {
            delay(seconds: 2) {
                if index < character.lines.count-1 {
                    self.removeLine(index: index, character: character)
                } else {
                    self.resetBalloon()
                }
            }
        }
    }
    
    func removeLine(index: Int, character: CharacterView) {
        NSAnimationContext.runAnimationGroup({ (context) in
            context.duration = self.removeLineTimeInterval
            context.allowsImplicitAnimation = true
            
            self.balloon.textView.animator().isHidden = true
        }) {
            self.showLine(index: index+1, character: character)
        }
    }
    
    func removeLine() {
        NSAnimationContext.runAnimationGroup { (context) in
            context.duration = self.removeLineTimeInterval
            context.allowsImplicitAnimation = true
            
            self.balloon.textView.animator().isHidden = true
        }
    }
    
    func resetBalloon() {
        NSAnimationContext.runAnimationGroup({ (context) in
            context.duration = self.removeBallonTimeInterval
            context.allowsImplicitAnimation = true
            
            self.balloon.textView.animator().isHidden = true
        }, completionHandler: nil)
    }
    
    func showBalloon() {
        NSAnimationContext.runAnimationGroup { (context) in
            context.duration = self.showBallonTimeInterval
            context.allowsImplicitAnimation = true
            
            self.balloon.animator().isHidden = false
        }
    }
    
    func showBalloon(completion: @escaping ()->Void) {
        NSAnimationContext.runAnimationGroup({ (context) in
            context.duration = self.showBallonTimeInterval
            context.allowsImplicitAnimation = true
            
            self.balloon.animator().isHidden = false
        }, completionHandler: completion)
    }
    
    func removeBalloon() {
        NSAnimationContext.runAnimationGroup { (context) in
            context.duration = self.removeBallonTimeInterval
            context.allowsImplicitAnimation = true
            
            self.balloon.animator().isHidden = true
        }
    }
}

