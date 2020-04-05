import Cocoa

public struct ViewControllers {
    public static let controllers: [SceneViewController] = [
        {
//            let viewController = SceneViewController()
            let viewController = Scene1ViewController()
            viewController.view = Views.views[0]
            viewController.name = "Scene1"
            viewController.index = 0
            
            return viewController
        }(),
        {
            let viewController = SceneViewController()
            viewController.view = Views.views[1]
            viewController.name = "Scene2"
            viewController.index = 1
            
            return viewController
        }(),
        {
            let viewController = SceneViewController()
            viewController.view = Views.views[2]
            viewController.name = "Scene3"
            viewController.index = 2
            
            return viewController
        }(),
        {
            let viewController = SceneViewController()
            viewController.view = Views.views[3]
            viewController.name = "Scene4"
            viewController.index = 3
            
            return viewController
        }(),
        {
            let viewController = SceneViewController()
            viewController.view = Views.views[4]
            viewController.name = "Scene5"
            viewController.index = 4
            
            return viewController
        }(),
        {
            let viewController = SceneViewController()
            viewController.view = Views.views[5]
            viewController.name = "Scene6"
            viewController.index = 5
            
            return viewController
        }(),
        {
            let viewController = SceneViewController()
            viewController.view = Views.views[6]
            viewController.name = "Scene7"
            viewController.index = 6
            
            return viewController
        }(),
        {
            let viewController = SceneViewController()
            viewController.view = Views.views[7]
            viewController.name = "Scene8"
            viewController.index = 7
            
            return viewController
        }(),
        {
            let viewController = SceneViewController()
            viewController.view = Views.views[8]
            viewController.name = "Scene9"
            viewController.index = 8
            
            return viewController
        }(),
        {
            let viewController = SceneViewController()
            viewController.view = Views.views[9]
            viewController.name = "Scene10"
            viewController.index = 9
            
            return viewController
        }(),
        {
            let viewController = SceneViewController()
            viewController.view = Views.views[10]
            viewController.name = "Scene11"
            viewController.index = 10
            
            return viewController
        }(),
        {
            let viewController = SceneViewController()
            viewController.view = Views.views[11]
            viewController.name = "Scene12"
            viewController.index = 11
            
            return viewController
        }()
    ]
}
