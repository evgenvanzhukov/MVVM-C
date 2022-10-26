//
//  ViewControllerExtension.swift
//  MVVM-dynamic
//
//  Created by Evgen on 25/10/2022.
//  Copyright © 2022 Evgen. All rights reserved.
//

import UIKit

protocol CreateAble {
    static func CreateObject() -> Self
}


extension CreateAble where Self : UIViewController {
    
    static func CreateObject() -> Self {
        let id = String(describing: self)
        let sb = UIStoryboard(name: "Main", bundle: nil)
        return sb.instantiateViewController(identifier: id) as! Self
    }
}
