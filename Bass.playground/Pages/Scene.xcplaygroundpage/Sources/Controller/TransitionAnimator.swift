import Cocoa

public class TransitionAnimator: NSObject, NSViewControllerPresentationAnimator {
    public func animatePresentation(of viewController: NSViewController, from fromViewController: NSViewController) {
        let bottomViewController = fromViewController
        let topViewController = viewController
        
        topViewController.view.wantsLayer = true
        topViewController.view.layerContentsRedrawPolicy = .onSetNeedsDisplay
        
        topViewController.view.alphaValue = 0
        bottomViewController.view.addSubview(topViewController.view)
        
        topViewController.view.frame = bottomViewController.view.frame
        
        NSAnimationContext.runAnimationGroup({ (context) in
            context.duration = 2
            
            topViewController.view.animator().alphaValue = 1.0
        }, completionHandler: nil)
    }
    
    public func animateDismissal(of viewController: NSViewController, from fromViewController: NSViewController) {
        let _ = fromViewController
        let topViewController = viewController
        
        topViewController.view.wantsLayer = true
        topViewController.view.layerContentsRedrawPolicy = .onSetNeedsDisplay
        
        NSAnimationContext.runAnimationGroup({ (context) in
            context.duration = 2
            
            topViewController.view.animator().alphaValue = 0.0
        }) {
            topViewController.view.removeFromSuperview()
        }
    }
}
