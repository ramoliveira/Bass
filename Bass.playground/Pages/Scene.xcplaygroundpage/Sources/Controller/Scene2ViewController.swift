import Cocoa

public class Scene2ViewController: SceneViewController {
    private let character = Characters.scene2
    
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
            self.showLine(index: 0, character: self.character)
        }
    }
    
//    public override func viewWillDisappear() {
//        self.removeLine()
//        delay(seconds: self.removeLineTimeInterval+1) {
//            self.removeBalloon()
//        }
//        super.viewWillDisappear()
//    }
    
    public override func viewDidDisappear() {
        super.viewDidDisappear()
    }
    
//    func addTextToBalloon(line index: Int) {
//        NSAnimationContext.runAnimationGroup { (context) in
//            context.duration = 4
//            context.allowsImplicitAnimation = true
//            self.balloon.textView.animator().alphaValue = 1
//            self.balloon.insideText = self.character.lines[index]
//        }
//        delay(seconds: 5) {
//            NSAnimationContext.runAnimationGroup { (context) in
//                context.duration = 2
//                context.allowsImplicitAnimation = true
//                self.balloon.textView.animator().alphaValue = 0
//                self.balloon.insideText = ""
//            }
//        }
//        delay(seconds: 8) {
//            NSAnimationContext.runAnimationGroup { (context) in
//                context.duration = 4
//                context.allowsImplicitAnimation = true
//                self.balloon.textView.animator().alphaValue = 1
//                self.balloon.insideText = self.character.lines[index+1]
//            }
//        }
//    }
}
