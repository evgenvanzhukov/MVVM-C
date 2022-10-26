//
//  UserService.swift
//  MVVM-dynamic
//
//  Created by Evgen on 25/10/2022.
//  Copyright © 2022 Evgen. All rights reserved.
//

import Foundation

class UserService {
    
    static func getExistUsers() -> [User] {
        return [User(login: "admin",password: "admin")]
    }
    
    static func getUserData(login: String) -> UserData {
        return UserData(name: login,
                        city: "Moskow",
                        email: "\(login)@kremlon.gov",
                        phone: "+7(111)111-11-11")
    }
}
