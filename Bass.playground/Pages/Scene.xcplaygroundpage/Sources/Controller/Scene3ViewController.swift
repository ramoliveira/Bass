import Cocoa

public class Scene3ViewController: SceneViewController {
    private let character = Characters.scene3
    
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
        delay(seconds: self.showLineTimeInternaval+self.showBallonTimeInterval+1) {
            self.showItems()
        }
    }
    
    public override func viewWillDisappear() {
        super.viewWillDisappear()
    }
    
    public override func viewDidDisappear() {
        super.viewDidDisappear()
    }
    
    func showItems() {
        let macbook = MacbookView().create()
        macbook.frame.origin.x = 30
        macbook.frame.origin.y = 555
        macbook.isHidden = true
        self.view.addSubview(macbook)
        let ipad = IpadView().create()
        ipad.frame.origin.x = self.view.frame.width / 5 * 2
        ipad.frame.origin.y = 600
        ipad.isHidden = true
        self.view.addSubview(ipad)
        let iphone = IphoneView().create()
        iphone.frame.origin.x = self.view.frame.width / 5 * 3
        iphone.frame.origin.y = 600
        iphone.isHidden = true
        self.view.addSubview(iphone)
        let airpods = AirPodsView().create()
        airpods.frame.origin.x = self.view.frame.width / 5 * 4
        airpods.frame.origin.y = 600
        airpods.isHidden = true
        self.view.addSubview(airpods)
        
        NSAnimationContext.runAnimationGroup({ (context) in
            context.duration = 2
            context.allowsImplicitAnimation = true
            
            macbook.animator().isHidden = false
        }) {
            NSAnimationContext.runAnimationGroup({ (context) in
                context.duration = 2
                context.allowsImplicitAnimation = true
                
                ipad.animator().isHidden = false
            }) {
                NSAnimationContext.runAnimationGroup({ (context) in
                    context.duration = 2
                    context.allowsImplicitAnimation = true
                    
                    iphone.animator().isHidden = false
                }) {
                    NSAnimationContext.runAnimationGroup { (context) in
                        context.duration = 2
                        context.allowsImplicitAnimation = true
                        
                        airpods.animator().isHidden = false
                    }
                }
            }
        }
    }
}
