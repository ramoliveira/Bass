import Cocoa

public class Scene1ViewController: SceneViewController {
    private let character = Characters.scene1
    
    public override func viewWillAppear() {
        super.viewWillAppear()
        
        self.character.frame.origin.x = 200
        
        self.view.addSubview(self.character)
        self.view.addSubview(self.balloon)
        
        self.balloon.isHidden = true
        self.balloon.textView.isHidden = true
    }
    
    public override func viewDidAppear() {
        super.viewDidAppear()
        self.showBalloon()
        delay(seconds: self.showBallonTimeInterval+1) {
            self.showLine(index: 0)
        }
    }
    
    public override func viewDidDisappear() {
        super.viewDidDisappear()
        if !self.balloon.isHidden {
            self.balloon.isHidden = true
        }
        if !self.balloon.textView.isHidden {
            self.balloon.textView.isHidden = true
        }
    }
    
    func showLine(index: Int) {
        self.balloon.insideText = self.character.lines[index]

        NSAnimationContext.runAnimationGroup({ (context) in
            context.duration = 4
            context.allowsImplicitAnimation = true

            self.balloon.textView.animator().isHidden = false
        }) {
            delay(seconds: 2) {
                NSAnimationContext.runAnimationGroup { (context) in
                    context.duration = 4
                    context.allowsImplicitAnimation = true

                    self.balloon.textView.animator().isHidden = true
                    self.removeBalloon()
                }
            }
        }
    }
}
