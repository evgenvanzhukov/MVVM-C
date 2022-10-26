//
//  Coordinator.swift
//  MVVM-dynamic
//
//  Created by Evgen on 25/10/2022.
//  Copyright © 2022 Evgen. All rights reserved.
//

import UIKit

protocol Coordinator {
    var navigationController : UINavigationController {get set}
    
    func start()
    
    func showDetails()
}
