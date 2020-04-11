import Cocoa

public class IntroView: NSView {
    private var text: NSTextView!
    private var nstext: NSText!
    
    public override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)

        self.wantsLayer = true
        self.layer?.backgroundColor = .black
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
