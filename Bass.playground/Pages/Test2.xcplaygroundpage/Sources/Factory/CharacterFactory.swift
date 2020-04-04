import Cocoa

// Produ
public protocol CharacterCreator {
    var characterRect: NSRect { get }
    
    func create() -> CharacterView
}

extension CharacterCreator {
    public var characterRect: NSRect {
        get {
            return NSRect(x: 0, y: 0, width: 300, height: 300)
        }
    }
}

// Creator
public class Scene1CharacterCreator: CharacterCreator {
    public func create() -> CharacterView {
        let character = CharacterView(frame: characterRect)
        
        character.lines = ["Welcome, please follow me"]
        
        if let image =  NSImage(named: "character.png") {
            character.imageView = NSImageView(image: image)
            character.imageView.frame = character.frame
            character.addSubview(character.imageView)
        }
        
        return character
    }
}

public class Scene2CharacterCreator: CharacterCreator {
    public func create() -> CharacterView {
        let character = CharacterView(frame: characterRect)
        
        character.lines = ["Let's do an exercise", "Rethink how everything is and why it is that way"]
        
        if let image =  NSImage(named: "character.png") {
            character.imageView = NSImageView(image: image)
            character.imageView.frame = character.frame
            character.addSubview(character.imageView)
        }
        
        return character
    }
}

public class Scene3CharacterCreator: CharacterCreator {
    public func create() -> CharacterView {
        let character = CharacterView(frame: characterRect)
        
        character.lines = ["Imagine some Apple products"]
        
        if let image =  NSImage(named: "character.png") {
            character.imageView = NSImageView(image: image)
            character.imageView.frame = character.frame
            character.addSubview(character.imageView)
        }
        
        return character
    }
}

public class Scene4CharacterCreator: CharacterCreator {
    public func create() -> CharacterView {
        let character = CharacterView(frame: characterRect)
        
        character.lines = ["What an iPad and meat have in common?", "A meat chopping board!"]
        
        if let image =  NSImage(named: "character-butcher.png") {
            character.imageView = NSImageView(image: image)
            character.imageView.frame = character.frame
            character.addSubview(character.imageView)
        }
        
        return character
    }
}

public class Scene5CharacterCreator: CharacterCreator {
    public func create() -> CharacterView {
        let character = CharacterView(frame: characterRect)
        
        character.lines = ["Ok...", "That was a bad one", "Let's try one more time"]
        
        if let image =  NSImage(named: "character-butcher.png") {
            character.imageView = NSImageView(image: image)
            character.imageView.frame = character.frame
            character.addSubview(character.imageView)
        }
        
        return character
    }
}

public class Scene6CharacterCreator: CharacterCreator {
    public func create() -> CharacterView {
        let character = CharacterView(frame: characterRect)
        
        character.lines = ["What an AirPods and a Doctor have in common?", "A stethoscope!"]
        
        if let image =  NSImage(named: "character-doctor.png") {
            character.imageView = NSImageView(image: image)
            character.imageView.frame = character.frame
            character.addSubview(character.imageView)
        }
        
        return character
    }
}

public class Scene7CharacterCreator: CharacterCreator {
    public func create() -> CharacterView {
        let character = CharacterView(frame: characterRect)
        
        character.lines = ["Imagine using an AirPods as a stethoscope", "Pretty clever, huh?", "Give me a break, I nailed this time"]
        
        if let image =  NSImage(named: "character-doctor.png") {
            character.imageView = NSImageView(image: image)
            character.imageView.frame = character.frame
            character.addSubview(character.imageView)
        }
        
        return character
    }
}

public class Scene8CharacterCreator: CharacterCreator {
    public func create() -> CharacterView {
        let character = CharacterView(frame: characterRect)
        
        character.lines = ["What can I do with an iPhone?", "Almost everything have been done with an iPhone", "What a daunting task"]
        
        if let image =  NSImage(named: "character-telephonist.png") {
            character.imageView = NSImageView(image: image)
            character.imageView.frame = character.frame
            character.addSubview(character.imageView)
        }
        
        return character
    }
}

public class Scene9CharacterCreator: CharacterCreator {
    public func create() -> CharacterView {
        let character = CharacterView(frame: characterRect)
        
        character.lines = ["Wait, I got a revolutionary idea!", "Maybe if an iPhone be used as a telephone...", "Hang on, they already did this"]
        
        if let image =  NSImage(named: "character-telephonist.png") {
            character.imageView = NSImageView(image: image)
            character.imageView.frame = character.frame
            character.addSubview(character.imageView)
        }
        
        return character
    }
}

public class Scene10CharacterCreator: CharacterCreator {
    public func create() -> CharacterView {
        let character = CharacterView(frame: characterRect)
        
        character.lines = ["Ok, I got lazy after that win", "I guess that this whole show wasn't so creative. As I promissed that would be"]
        
        if let image =  NSImage(named: "character.png") {
            character.imageView = NSImageView(image: image)
            character.imageView.frame = character.frame
            character.addSubview(character.imageView)
        }
        
        return character
    }
}

public class Scene11CharacterCreator: CharacterCreator {
    public func create() -> CharacterView {
        let character = CharacterView(frame: characterRect)
        
        character.lines = ["Wait, I showed 4 Apple products, and I \"rethought\" only three"]
        
        if let image =  NSImage(named: "character.png") {
            character.imageView = NSImageView(image: image)
            character.imageView.frame = character.frame
            character.addSubview(character.imageView)
        }
        
        return character
    }
}

public class Scene12CharacterCreator: CharacterCreator {
    public func create() -> CharacterView {
        let character = CharacterView(frame: characterRect)
        
        character.lines = ["This time I will make it"]
        
        if let image =  NSImage(named: "character.png") {
            character.imageView = NSImageView(image: image)
            character.imageView.frame = character.frame
            character.addSubview(character.imageView)
        }
        
        return character
    }
}
