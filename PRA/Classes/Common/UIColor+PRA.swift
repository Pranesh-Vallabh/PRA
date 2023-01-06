//
//  UIColor+PRA.swift
//  PRA
//
//  Created by Pranesh Vallabh on 2023/01/06.
//

import UIKit

public extension UIColor {

    static var skyColor: UIColor {
        if #available(iOS 11.0, *) {
            return .purple
           return UIColor(named: "SKy", in: BundleOfPraBundle.bundle(), compatibleWith: nil)!
        } else {
            return .green
        }
    }
}

