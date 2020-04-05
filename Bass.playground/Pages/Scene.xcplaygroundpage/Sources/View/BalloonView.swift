import Cocoa

public class BalloonView: NSImageView {
    private var _textView: NSTextView = NSTextView()
    public var textView: NSTextView {
        get {
            return self._textView
        }
        set {
            self._textView = newValue
        }
    }
    
    private var _insideText: NSString = "" {
//        willSet {
//            if newValue.length == 0 {
//                return
//            }
//            self._insideText = newValue
//            self._textView.string = newValue as! String
//        }
        willSet {
            self.removeTextAndAddText(text: newValue as! String)
        }
    }
    public var insideText: NSString {
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
        
        self.textView = NSTextView(frame: NSRect(x: 0, y: 40, width: self.frame.width, height: self.frame.height/2))
        self.textView.string = "Oi"
        self.textView.textColor = .black
        self.textView.backgroundColor = .clear
        
        if let fontURL = Bundle.main.url(forResource: "BalooThambi2-Regular", withExtension: "ttf") {
            CTFontManagerRegisterFontsForURL(fontURL as CFURL, CTFontManagerScope.process, nil)
        }
    
        if let font = NSFont(name: "Baloo Thambi 2 Regular", size: 24) {
            self.textView.font = font
        }
        self.textView.alignment = .center
        self.textView.isEditable = false
        self.textView.isHidden = false
        
        self.addSubview(self.textView)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addText(text: String) {
        NSAnimationContext.runAnimationGroup { (context) in
            context.duration = 1
            self.textView.alphaValue = 1
            self.textView.string = text
        }
    }
    
    func removeText() {
        NSAnimationContext.runAnimationGroup { (context) in
            context.duration = 1
            self.textView.alphaValue = 0
        }
    }
    
    func removeTextAndAddText(text: String) {
        NSAnimationContext.runAnimationGroup({ (context) in
            context.duration = 1
            self.textView.alphaValue = 0
        }) {
            self.addText(text: text)
        }
    }
}
