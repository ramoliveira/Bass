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
            return NSRect(x: 0, y: 0, width: 680, height: 680)
        }
    }
    
    public var balloonRect: NSRect {
        get {
            return NSRect(x: 200, y: 200, width: 300, height: 300)
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
        scene.isBackwardButtonEnabled = false
        
        scene.character = Scene1CharacterCreator().create()
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}

public class Scene2Creator: SceneCreatorProtocol {
    required public init() {}
    
    public func create() -> SceneView {
        let scene = SceneView(frame: sceneRect)
        scene.isBackwardButtonEnabled = true
        
        scene.character = Scene2CharacterCreator().create()
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}

public class Scene3Creator: SceneCreatorProtocol {
    required public init() {}
    
    public func create() -> SceneView {
        let scene = SceneView(frame: sceneRect)
        scene.isBackwardButtonEnabled = true
        
        scene.character = Scene3CharacterCreator().create()
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}

public class Scene4Creator: SceneCreatorProtocol {
    required public init() {}
    
    public func create() -> SceneView {
        let scene = SceneView(frame: sceneRect)
        scene.isBackwardButtonEnabled = true
        
        scene.character = Scene4CharacterCreator().create()
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}

public class Scene5Creator: SceneCreatorProtocol {
    required public init() {}
    
    public func create() -> SceneView {
        let scene = SceneView(frame: sceneRect)
        scene.isBackwardButtonEnabled = true
        
        scene.character = Scene5CharacterCreator().create()
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}

public class Scene6Creator: SceneCreatorProtocol {
    required public init() {}
    
    public func create() -> SceneView {
        let scene = SceneView(frame: sceneRect)
        scene.isBackwardButtonEnabled = true
        
        scene.character = Scene6CharacterCreator().create()
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}

public class Scene7Creator: SceneCreatorProtocol {
    required public init() {}
    
    public func create() -> SceneView {
        let scene = SceneView(frame: sceneRect)
        scene.isBackwardButtonEnabled = true
        
        scene.character = Scene7CharacterCreator().create()
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}

public class Scene8Creator: SceneCreatorProtocol {
    required public init() {}
    
    public func create() -> SceneView {
        let scene = SceneView(frame: sceneRect)
        scene.isBackwardButtonEnabled = true
        
        scene.character = Scene8CharacterCreator().create()
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}

public class Scene9Creator: SceneCreatorProtocol {
    required public init() {}
    
    public func create() -> SceneView {
        let scene = SceneView(frame: sceneRect)
        scene.isBackwardButtonEnabled = true
        
        scene.character = Scene9CharacterCreator().create()
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}

public class Scene10Creator: SceneCreatorProtocol {
    required public init() {}
    
    public func create() -> SceneView {
        let scene = SceneView(frame: sceneRect)
        scene.isBackwardButtonEnabled = true
        
        scene.character = Scene10CharacterCreator().create()
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}

public class Scene11Creator: SceneCreatorProtocol {
    required public init() {}
    
    public func create() -> SceneView {
        let scene = SceneView(frame: sceneRect)
        scene.isBackwardButtonEnabled = true
        
        scene.character = Scene11CharacterCreator().create()
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}

public class Scene12Creator: SceneCreatorProtocol {
    required public init() {}
    
    public func create() -> SceneView {
        let scene = SceneView(frame: sceneRect)
        scene.isBackwardButtonEnabled = true
        
        scene.character = Scene12CharacterCreator().create()
        scene.addSubview(scene.character)
        scene.addSubview(balloon)
        
        return scene
    }
}
