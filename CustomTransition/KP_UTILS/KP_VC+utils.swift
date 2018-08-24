//
//  KP_VC+utils.swift
//  TEVDesigned
//
//  Created by Kirill Pyulzyu on 23.08.2018.
//  Copyright © 2018 EDIT GmbH. All rights reserved.
//

import UIKit

extension UIViewController {
     static func pum() {
        
    }
    
     static func initWith(_ sbName: String = "MainStoryboard", vcId: String) -> Self {
        return self.instatinateFromSB(sbName: sbName, vcId: vcId)
    }

    private static func instatinateFromSB<T>(sbName: String, vcId: String) -> T {
        let sb = UIStoryboard(name: sbName, bundle: nil)
        return sb.instantiateViewController(withIdentifier: vcId) as! T
    }

}
