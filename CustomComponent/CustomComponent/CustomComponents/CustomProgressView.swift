//
//  CustomProgressView.swift
//  CustomComponent
//
//  Created by AKASH on 02/09/23.
//

import UIKit

@IBDesignable
class CustomProgressView: UIProgressView {
    @IBInspectable
    var height: CGFloat {
        get {
            return self.frame.height
        }

        set {
            let height = newValue * UIScreen.main.bounds.size.height / 812
            self.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }

    @IBInspectable
    var width: CGFloat {
        get {
            return self.frame.width
        }

        set {
            let width = newValue * UIScreen.main.bounds.size.width / 375
            self.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
    }

    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        }

        set {
            let radius = newValue * UIScreen.main.bounds.size.height / 812
            layer.cornerRadius = radius
        }
    }

    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return self.layer.borderWidth
        }
        set {
            let width = newValue * UIScreen.main.bounds.size.width / 375
            layer.borderWidth = width
        }
    }

    @IBInspectable
    var borderColor: UIColor? {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.borderColor = color.cgColor
            } else {
                layer.borderColor = nil
            }
        }
    }

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
