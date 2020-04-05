import Cocoa

public class SceneViewController: NSViewController {
    private(set) var fowardButton: NSButton!
    private(set) var backwardButton: NSButton!
    
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
}

