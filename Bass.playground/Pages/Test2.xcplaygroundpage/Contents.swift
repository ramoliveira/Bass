//: [Previous](@previous)
//: [Next](@next)
/*:
 # Oi
 
 Este app é para você pensar de uma forma diferente.
 */
import Cocoa
import PlaygroundSupport

//let controller = NSViewController()
let controller = ViewController()
controller.view = Scene1Creator().create()
    
//SceneView(frame: NSRect(x: 0, y: 0, width: 680, height: 680))
//BassView(frame: NSRect(x: 0, y: 0, width: 800, height: 800))
PlaygroundPage.current.liveView = controller.view
