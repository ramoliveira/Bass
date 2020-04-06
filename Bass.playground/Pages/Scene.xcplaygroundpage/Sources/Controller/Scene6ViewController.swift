import Cocoa

public class Scene6ViewController: SceneViewController {
    private let character = Characters.scene6
    
    public override func viewWillAppear() {
        super.viewWillAppear()
        
        self.character.frame.origin.x = 200
        
        self.view.addSubview(self.character)
        self.view.addSubview(self.balloon)
    }
    
    public override func viewDidAppear() {
        super.viewDidAppear()
    }
    
    public override func viewWillDisappear() {
        super.viewWillDisappear()
    }
    
    public override func viewDidDisappear() {
        super.viewDidDisappear()
    }
}
