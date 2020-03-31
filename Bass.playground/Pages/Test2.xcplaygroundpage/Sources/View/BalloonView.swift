import Cocoa

public class Balloon: NSImageView {
    private var _txtField: NSTextField = NSTextField()
    public var txtField: NSTextField {
        get {
            return self._txtField
        }
        set {
            self._txtField = newValue
        }
    }
    
    private var _insideText: String = "" {
        willSet {
            if newValue.count == 0 {
                return
            }
            self._insideText = newValue
            self._txtField.stringValue = newValue
        }
    }
    public var insideText: String {
        get {
            return self._insideText
        }
        set {
            self._insideText = newValue
        }
    }
    
    public override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        
        if let image =  NSImage(named: "balloon.png") {
            self.image = image
        }
        
        self.txtField.frame = NSRect(x: 0, y: 40, width: self.frame.width, height: self.frame.height/2)
        self.txtField.stringValue = "Test"
        self.txtField.backgroundColor = .clear
        self.txtField.textColor = .black
        self.txtField.alignment = .center
        self.txtField.isBezeled = false
        self.txtField.isEditable = false
        
        self.txtField.font = NSFont(name: "Helvetica", size: 20)
        
        self.addSubview(self.txtField)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
