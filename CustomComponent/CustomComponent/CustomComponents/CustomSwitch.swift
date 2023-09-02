//
//  CustomSwitch.swift
//  CustomComponent
//
//  Created by AKASH on 02/09/23.
//

import UIKit

@IBDesignable
class CustomSwitch: UISwitch {
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return self.layer.shadowRadius
        }
        set {
            let radius = newValue * UIScreen.main.bounds.size.height / 812
            layer.shadowRadius = radius
        }
    }

    @IBInspectable
    var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }

    @IBInspectable
    var shadowOffset: CGSize {
        get {
            return self.layer.shadowOffset
        }
        set {
            let offSet = CGSize(width: newValue.width * UIScreen.main.bounds.size.width / 375,
                                height: newValue.height * UIScreen.main.bounds.size.height / 812)
            layer.shadowOffset = offSet
        }
    }

    @IBInspectable
    var shadowColor: UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = nil
            }
        }
    }
}
