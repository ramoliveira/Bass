import Cocoa

public struct Items {
    public static let airpods = AirPodsView().create()
    
    public static let beef = BeefView().create()
    
    public static let ipad = IpadView().create()
    
    public static let laydownIpad = LaydownIpadView().create()
    
    public static let iphone = IphoneView().create()
    
    public static let macbook = MacbookView().create()
    
    public static let openedMacbook = OpenedMacbookView().create()
    
    public static let iphoneTelephone = IphoneTelephoneView().create()
}
