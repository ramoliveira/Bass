import Cocoa

public struct ViewControllers {
    public static let controllers: [NSViewController] = [
        {
            let viewController = Scene1ViewController()
            viewController.view = Views.views[0]
            viewController.name = "Scene1"
            viewController.index = 0
            
            return viewController
        }(),
        {
            let viewController = Scene2ViewController()
            viewController.view = Views.views[1]
            viewController.name = "Scene2"
            viewController.index = 1
            
            return viewController
        }(),
        {
            let viewController = Scene3ViewController()
            viewController.view = Views.views[2]
            viewController.name = "Scene3"
            viewController.index = 2
            
            return viewController
        }(),
        {
            let viewController = Scene4ViewController()
            viewController.view = Views.views[3]
            viewController.name = "Scene4"
            viewController.index = 3
            
            return viewController
        }(),
        {
            let viewController = Scene5ViewController()
            viewController.view = Views.views[4]
            viewController.name = "Scene5"
            viewController.index = 4
            
            return viewController
        }(),
        {
            let viewController = Scene6ViewController()
            viewController.view = Views.views[5]
            viewController.name = "Scene6"
            viewController.index = 5
            
            return viewController
        }(),
        {
            let viewController = Scene7ViewController()
            viewController.view = Views.views[6]
            viewController.name = "Scene7"
            viewController.index = 6
            
            return viewController
        }(),
        {
            let viewController = Scene8ViewController()
            viewController.view = Views.views[7]
            viewController.name = "Scene8"
            viewController.index = 7
            
            return viewController
        }(),
        {
            let viewController = Scene9ViewController()
            viewController.view = Views.views[8]
            viewController.name = "Scene9"
            viewController.index = 8
            
            return viewController
        }(),
        {
            let viewController = Scene10ViewController()
            viewController.view = Views.views[9]
            viewController.name = "Scene10"
            viewController.index = 9
            
            return viewController
        }(),
        {
            let viewController = Scene11ViewController()
            viewController.view = Views.views[10]
            viewController.name = "Scene11"
            viewController.index = 10
            
            return viewController
        }(),
        {
            let viewController = Scene12ViewController()
            viewController.view = Views.views[11]
            viewController.name = "Scene12"
            viewController.index = 11
            
            return viewController
        }(),
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
