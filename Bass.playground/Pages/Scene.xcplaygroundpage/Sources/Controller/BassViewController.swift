import Cocoa

public class IntroView: NSView {
    private var text: NSTextView!
    private var nstext: NSText!
    
    public override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)

        self.wantsLayer = true
        self.layer?.backgroundColor = .black

//        self.text = NSTextView(frame: NSRect(x: 50, y: 400, width: 700, height: 300))
//        self.text.string = "Bass"
//        self.text.textColor = NSColor(red: 1, green: 0, blue: 0, alpha: 1)
//
//        if let fontURL = Bundle.main.url(forResource: "Lovelo-LineLight", withExtension: "ttf") {
//            CTFontManagerRegisterFontsForURL(fontURL as CFURL, CTFontManagerScope.process, nil)
//        }
//
//        if let font = NSFont(name: "Lovelo Line Light", size: 250) {
//            self.text.font = font
//        }
//
//        self.text.alignment = .center
//        self.text.isEditable = false
//        self.text.isHidden = false
//
//        self.text.shadow = NSShadow()
//        self.text.layer?.shadowOpacity = 1.0
//        self.text.layer?.shadowColor = CGColor(red: 1, green: 0, blue: 0, alpha: 1)
//        self.text.layer?.shadowOffset = NSSize(width: 0, height: 0)
//        self.text.layer?.shadowRadius = 20
//        self.text.updateLayer()
//
//        self.addSubview(self.text)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class TransitionAnimator: NSObject, NSViewControllerPresentationAnimator {
    public func animatePresentation(of viewController: NSViewController, from fromViewController: NSViewController) {
        let bottomViewController = fromViewController
        let topViewController = viewController
        
        topViewController.view.wantsLayer = true
        topViewController.view.layerContentsRedrawPolicy = .onSetNeedsDisplay
        
        topViewController.view.alphaValue = 0
        bottomViewController.view.addSubview(topViewController.view)
        
        topViewController.view.frame = bottomViewController.view.frame
        
        NSAnimationContext.runAnimationGroup({ (context) in
            context.duration = 2
            
            topViewController.view.animator().alphaValue = 1.0
        }, completionHandler: nil)
    }
    
    public func animateDismissal(of viewController: NSViewController, from fromViewController: NSViewController) {
        let _ = fromViewController
        let topViewController = viewController
        
        topViewController.view.wantsLayer = true
        topViewController.view.layerContentsRedrawPolicy = .onSetNeedsDisplay
        
        NSAnimationContext.runAnimationGroup({ (context) in
            context.duration = 2
            
            topViewController.view.animator().alphaValue = 0.0
        }) {
            topViewController.view.removeFromSuperview()
        }
    }
    
    
}

public class IntroBassViewController: NSViewController {
    
    private(set) var startButton: NSButton!
    private(set) var titleImage: NSImageView!
    
    public override func viewWillAppear() {
        super.viewWillAppear()
        if let image = NSImage(named: "title.png") {
            self.titleImage = NSImageView(image: image)
        }
        self.titleImage.frame = NSRect(x: 50, y: 400, width: 700, height: 300)
        
        self.startButton = NSButton(image: NSImage(named: "startButton.png")!, target: self, action: #selector(startButtonPressed))
        self.startButton.frame = NSRect(x: 100, y: 200, width: 600, height: 300)
        self.startButton.isBordered = false
        
        self.view.addSubview(self.titleImage)
        self.view.addSubview(self.startButton)
    }
    
    @objc func startButtonPressed() {
        self.present(ViewControllers.controllers[13], animator: TransitionAnimator())
    }
}

