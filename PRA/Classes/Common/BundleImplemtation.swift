//
//  BundleImplemtation.swift
//  PRA
//
//  Created by Pranesh Vallabh on 2023/01/06.
//

import Foundation

public protocol BundleOfPra: AnyObject {
    static func bundle() -> Bundle
}

public class BundleOfPraBundle: BundleOfPra {
    public static func bundle() -> Bundle {
        var ourBundle: Bundle?
        #if SWIFT_PACKAGE
        ourBundle = Bundle.module
        #endif

        if ourBundle != nil {
            return ourBundle!
        }

        let classBundle = Bundle(for: BundleOfPraBundle.self)
        let resourceBundlePath = classBundle.path(forResource: "BundleOfPraBundle.Resources", ofType: "bundle")
        let bundle = Bundle(path: resourceBundlePath!)
        return bundle!
    }
}
