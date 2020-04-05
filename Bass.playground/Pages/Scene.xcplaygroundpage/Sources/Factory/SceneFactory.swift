import Cocoa

public protocol SceneCreatorProtocol: class {
    init()
    
    var sceneRect: NSRect { get }
    var balloonRect: NSRect { get }
    var balloon: BalloonView { get }
    
    func create() -> SceneView
}

extension SceneCreatorProtocol {
    public var sceneRect: NSRect {
        get {
            return NSRect(x: 0, y: 0, width: 800, height: 800)
        }
    }
    
    public var balloonRect: NSRect {
        get {
            return NSRect(x: 400, y: 200, width: 300, height: 300)
        }
    }
    
    public var balloon: BalloonView {
        get {
            return BalloonView(frame: balloonRect)
        }
    }
}

public class Scene1Creator: SceneCreatorProtocol {
    required public init() {}
    
    public func create() -> SceneView {
        let scene = SceneView(frame: sceneRect)
        
        scene.character = Scene1CharacterCreator().create()
        scene.character.frame.origin.x = 200
        scene.balloon = self.balloon
        
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}

public class Scene2Creator: SceneCreatorProtocol {
    required public init() {}
    
    public func create() -> SceneView {
        let scene = SceneView(frame: sceneRect)
        
        scene.character = Scene2CharacterCreator().create()
        scene.character.frame.origin.x = 200
        scene.balloon = self.balloon
        
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}

public class Scene3Creator: SceneCreatorProtocol {
    required public init() {}
    
    public func create() -> SceneView {
        let scene = SceneView(frame: sceneRect)
        
        scene.character = Scene3CharacterCreator().create()
        scene.character.frame.origin.x = 200
        scene.balloon = self.balloon
        
        let height: CGFloat = 600
        
        let macbook = Items.macbook
        macbook.frame.origin.x = 30
        macbook.frame.origin.y = 555
        let ipad = Items.ipad
        ipad.frame.origin.x = self.sceneRect.width / 5 * 2
        ipad.frame.origin.y = height
        let iphone = Items.iphone
        iphone.frame.origin.x = self.sceneRect.width / 5 * 3
        iphone.frame.origin.y = height
        let airpods = Items.airpods
        airpods.frame.origin.x = self.sceneRect.width / 5 * 4
        airpods.frame.origin.y = height
        
        scene.addSubview(macbook)
        scene.addSubview(ipad)
        scene.addSubview(iphone)
        scene.addSubview(airpods)
        
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}

public class Scene4Creator: SceneCreatorProtocol {
    required public init() {}
    
    public func create() -> SceneView {
        let scene = SceneView(frame: sceneRect)
        
        scene.character = Scene4CharacterCreator().create()
        scene.character.frame.origin.x = 200
        
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}

public class Scene5Creator: SceneCreatorProtocol {
    required public init() {}
    
    public func create() -> SceneView {
        let scene = SceneView(frame: sceneRect)
        
        scene.character = Scene5CharacterCreator().create()
        scene.character.frame.origin.x = 200
        
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}

public class Scene6Creator: SceneCreatorProtocol {
    required public init() {}
    
    public func create() -> SceneView {
        let scene = SceneView(frame: sceneRect)
        
        scene.character = Scene6CharacterCreator().create()
        scene.character.frame.origin.x = 200
        
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}

public class Scene7Creator: SceneCreatorProtocol {
    required public init() {}
    
    public func create() -> SceneView {
        let scene = SceneView(frame: sceneRect)
        
        scene.character = Scene7CharacterCreator().create()
        scene.character.frame.origin.x = 200
        
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}

public class Scene8Creator: SceneCreatorProtocol {
    required public init() {}
    
    public func create() -> SceneView {
        let scene = SceneView(frame: sceneRect)
        
        scene.character = Scene8CharacterCreator().create()
        scene.character.frame.origin.x = 200
        
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}

public class Scene9Creator: SceneCreatorProtocol {
    required public init() {}
    
    public func create() -> SceneView {
        let scene = SceneView(frame: sceneRect)
        
        scene.character = Scene9CharacterCreator().create()
        scene.character.frame.origin.x = 200
        
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}

public class Scene10Creator: SceneCreatorProtocol {
    required public init() {}
    
    public func create() -> SceneView {
        let scene = SceneView(frame: sceneRect)
        
        scene.character = Scene10CharacterCreator().create()
        scene.character.frame.origin.x = 200
        
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}

public class Scene11Creator: SceneCreatorProtocol {
    required public init() {}
    
    public func create() -> SceneView {
        let scene = SceneView(frame: sceneRect)
        
        scene.character = Scene11CharacterCreator().create()
        scene.character.frame.origin.x = 200
        
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}

public class Scene12Creator: SceneCreatorProtocol {
    required public init() {}
    
    public func create() -> SceneView {
        let scene = SceneView(frame: sceneRect)
        
        scene.character = Scene12CharacterCreator().create()
        scene.character.frame.origin.x = 200
        
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}
