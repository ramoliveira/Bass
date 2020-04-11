import Cocoa

public struct ViewControllers {
    public static let controllers: [NSViewController] = [
        {
            let viewController = IntroBassViewController()
            viewController.view = IntroView(frame: NSRect(x: 0, y: 0, width: 800, height: 800))
            
            return viewController
        }(),
        {
            let viewController = NSViewController()
            viewController.view = BassView(frame: NSRect(x: 0, y: 0, width: 800, height: 800))
            
            return viewController
        }()
    ]
}
