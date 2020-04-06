import Cocoa

public struct Constants {
    public static let balloon = BalloonView(frame: NSRect(x: 400, y: 200, width: 300, height: 300))
}


func delay(seconds: TimeInterval, block: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: block)
}

