import Cocoa

public protocol ItemCreator: class {
    var itemRect: NSRect { get }
    
    func create() -> ItemView
}

extension ItemCreator {
    public var itemRect: NSRect {
        get {
            return NSRect(x: 0, y: 0, width: 150, height: 150)
        }
    }
}

public class AirPodsView: ItemCreator {
    public func create() -> ItemView {
        let item = ItemView(frame: self.itemRect)
        if let image = NSImage(named: "airpods.png") {
            item.image = image
        }
        
        return item
    }
}

public class BeefView: ItemCreator {
    public func create() -> ItemView {
        let item = ItemView(frame: self.itemRect)
        if let image = NSImage(named: "beef.png") {
            item.image = image
        }
        
        return item
    }
}

public class IpadView: ItemCreator {
    public func create() -> ItemView {
        let item = ItemView(frame: self.itemRect)
        if let image = NSImage(named: "ipad.png") {
            item.image = image
        }
        
        return item
    }
}

public class LaydownIpadView: ItemCreator {
    public func create() -> ItemView {
        let item = ItemView(frame: self.itemRect)
        if let image = NSImage(named: "laydown-ipad.png") {
            item.image = image
        }
        
        return item
    }
}

public class IphoneView: ItemCreator {
    public func create() -> ItemView {
        let item = ItemView(frame: self.itemRect)
        if let image = NSImage(named: "iphone.png") {
            item.image = image
        }
        
        return item
    }
}

public class MacbookView: ItemCreator {
    public func create() -> ItemView {
        let item = ItemView(frame: NSRect(x: 0, y: 0, width: 250, height: 250))
        if let image = NSImage(named: "macbook.png") {
            item.image = image
        }
        
        return item
    }
}

public class OpenedMacbookView: ItemCreator {
    public func create() -> ItemView {
        let item = ItemView(frame: self.itemRect)
        if let image = NSImage(named: "opened-macbook.png") {
            item.image = image
        }
        
        return item
    }
}

public class IphoneTelephoneView: ItemCreator {
    public func create() -> ItemView {
        let item = ItemView(frame: self.itemRect)
        if let image = NSImage(named: "iphone-telephone.png") {
            item.image = image
        }
        
        return item
    }
}
