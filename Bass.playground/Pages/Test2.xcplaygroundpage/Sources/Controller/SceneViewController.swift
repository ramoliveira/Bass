import Cocoa

public class SceneViewController: NSViewController {
    private(set) var fowardButton: NSButton!
    private(set) var backwardButton: NSButton!
    
    private var _nextViewController: SceneViewController?
    public var nextViewController: SceneViewController? {
        get {
            return self._nextViewController
        }
        set {
            self._nextViewController = newValue
        }
    }
    private var _previousViewController: SceneViewController?
    public var previousViewController: SceneViewController? {
        get {
            return self._nextViewController
        }
        set {
            self._nextViewController = newValue
        }
    }
    
    public var name: String = ""
    public var index: Int = 0
    
//    private var _character: CharacterView!
//    public var character: CharacterView {
//        get {
//            return self._character
//        }
//        set {
//            self._character = newValue
//        }
//    }
//    private var _scene: SceneView!
//    public var scene: SceneView {
//        get {
//            return self._scene
//        }
//        set {
//            self._scene = newValue
//        }
//    }
    
    public override func viewWillAppear() {
        self.backwardButton = NSButton(title: "Backward", target: self, action: #selector(pressedBackwardButton))
        self.backwardButton.frame = NSRect(x: self.view.frame.width * 0.05, y: self.view.frame.midY, width: 100, height: 100)
        self.backwardButton.bezelStyle = .rounded
        
        self.fowardButton = NSButton(title: "Foward", target: self, action: #selector(pressedFowardButton))
        self.fowardButton.frame = NSRect(x: self.view.frame.width * 0.8, y: self.view.frame.midY, width: 100, height: 100)
        self.fowardButton.bezelStyle = .rounded
        
        self.fowardButton.needsDisplay = true
        self.backwardButton.needsDisplay = true
        
        self.view.addSubview(self.backwardButton)
        self.view.addSubview(self.fowardButton)
    }
    
    @objc func pressedBackwardButton() {
        if self.index == 0 {
            return
        } else {
            let viewController = ViewControllers.controllers[self.index-1]
            print("voltando para \(viewController.name)")
            self.presentAsSheet(viewController)
        }
    }
    
    @objc func pressedFowardButton() {
        if self.index == ViewControllers.controllers.count-1 {
            return
        } else {
            let viewController = ViewControllers.controllers[self.index+1]
            print("indo para \(viewController.name)")
            self.presentAsSheet(viewController)
        }
    }
}

