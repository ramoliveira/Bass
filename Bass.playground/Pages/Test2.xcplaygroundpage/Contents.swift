//: [Previous](@previous)
//: [Next](@next)
/*:
 # Oi
 
 Este app é para você pensar de uma forma diferente.
 */

import Cocoa
import PlaygroundSupport

let controller = ViewControllers.controllers[0]
//let controller = SceneViewController()
//controller.view = Scene1Creator().create()
    
//BassView(frame: NSRect(x: 0, y: 0, width: 800, height: 800))
PlaygroundPage.current.liveView = controller.view
