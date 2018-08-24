//
// Created by Kirill Pyulzyu on 21.08.2018.
// Copyright (c) 2018 EDIT GmbH. All rights reserved.
//

import UIKit

//MARK: instantiate from xib
extension UIView {
     static func xib() -> Self {
        return initFromXib()
    }


    private static func initFromXib<T>() -> T {
        return UINib(nibName: String(describing: self), bundle: nil).instantiate(withOwner: nil, options: nil).first as! T
    }


}


//MARK: inspectable
extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return 0;
        }

        set {
            if newValue == -1 {
                self.layer.cornerRadius = self.frame.height / 2
            }
            else {
                self.layer.cornerRadius = newValue
            }
        }
    }

    @IBInspectable var shadow: Bool {
        get {
            return false
        }

        set {
            if newValue == true {
                self.layer.shadowColor = UIColor.black.cgColor
                self.layer.shadowOffset = CGSize(width: 2, height: 2)
                self.layer.shadowOpacity = 0.35
                self.layer.shadowRadius = 5
            }
        }
    }
}

//MARK: frame

extension UIView {
    var left: Double {
        set {
            var frame = self.frame
            frame.origin.x = CGFloat(newValue)
            self.frame = frame
        }
        
        get {
            return Double(self.frame.minX)
        }
    }
    
    var top: Double {
        set {
            var frame = self.frame
            frame.origin.y = CGFloat(newValue)
            self.frame = frame
        }
        
        get {
            return Double(self.frame.minY)
        }
    }
    
    var width: Double {
        set {
            var frame = self.frame
            frame.size.width = CGFloat(newValue)
            self.frame = frame
        }
        
        get {
            return Double(self.frame.width)
        }
    }
    
    var height: Double {
        set {
            var frame = self.frame
            frame.size.height = CGFloat(newValue)
            self.frame = frame
        }
        
        get {
            return Double(self.frame.height)
        }
    }
    
    var right: Double {
        set {
            var frame = self.frame
            frame.origin.x = CGFloat(newValue) - frame.width
            self.frame = frame
        }
        
        get {
            return Double(self.frame.maxX)
        }
    }
    
    var bottom: Double {
        set {
            var frame = self.frame
            frame.origin.y = CGFloat(newValue) - frame.height
            self.frame = frame
        }
        
        get {
            return Double(self.frame.maxY)
        }
    }
}


