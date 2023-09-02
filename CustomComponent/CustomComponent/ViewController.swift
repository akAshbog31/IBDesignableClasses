//
//  ViewController.swift
//  CustomComponent
//
//  Created by AKASH on 02/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class Utils {
    class func dynamicHeight(_ height: CGFloat) -> CGFloat {
        return UIScreen.main.bounds.height / 812 * height
    }
    
    class func dynamicWidth(_ width: CGFloat) -> CGFloat {
        return UIScreen.main.bounds.width / 375 * width
    }
}




