import Cocoa

public class CharacterView: NSView {
    private var _lines: [String]! {
        willSet {
            if newValue.count == 0 {
                return
            }
            self._lines = newValue
        }
    }
    public var lines: [String] {
        get {
            return self._lines
        }
        set {
            self._lines = newValue
        }
    }
    
    private var _imageView: NSImageView!
    public var imageView: NSImageView {
        get {
            return self._imageView
        }
        set {
            self._imageView = newValue
        }
    }
}
