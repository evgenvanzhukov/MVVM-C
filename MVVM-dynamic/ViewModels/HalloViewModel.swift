//
//  HalloViewModel.swift
//  MVVM-dynamic
//
//  Created by Evgen on 25/10/2022.
//  Copyright © 2022 Evgen. All rights reserved.
//

import Foundation

class HalloViewModel {
    
    let name: String
    weak var coordinator : AppCoordinator?
    
    init(_ name: String){
        self.name = name
    }
}
