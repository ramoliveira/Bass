import Cocoa

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
        self.present(ViewControllers.controllers[1], animator: TransitionAnimator())
    }
}
