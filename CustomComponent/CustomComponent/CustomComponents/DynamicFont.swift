//
//  DynamicFont.swift
//  CustomComponent
//
//  Created by AKASH on 02/09/23.
//

import UIKit

@IBDesignable
extension UIButton {
    @IBInspectable
    var dynamicFontSize: CGFloat {
        get {
            return self.dynamicFontSize
        }
        set {
            let size = newValue * UIScreen.main.bounds.size.width / 430
            titleLabel?.font = UIFont(name: titleLabel?.font.fontName ?? "", size: size)
        }
    }
}

@IBDesignable
extension UILabel {
    @IBInspectable
    var dynamicFontSize: CGFloat {
        get {
            return self.dynamicFontSize
        }
        set {
            let size = newValue * UIScreen.main.bounds.size.width / 430
            self.font = UIFont(name: self.font.fontName, size: size)
        }
    }
}

@IBDesignable
extension UITextView {
    @IBInspectable
    var dynamicFontSize: CGFloat {
        get {
            return self.dynamicFontSize
        }
        set {
            let size = newValue * UIScreen.main.bounds.size.width / 430
            self.font = UIFont(name: self.font?.fontName ?? "", size: size)
        }
    }
}

@IBDesignable
extension UITextField {
    @IBInspectable
    var dynamicFontSize: CGFloat {
        get {
            return self.dynamicFontSize
        }
        set {
            let size = newValue * UIScreen.main.bounds.size.width / 430
            self.font = UIFont(name: self.font?.fontName ?? "", size: size)
        }
    }
}
