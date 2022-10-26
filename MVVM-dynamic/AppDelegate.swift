//
//  AppDelegate.swift
//  MVVM-dynamic
//
//  Created by Evgen on 24/10/2022.
//  Copyright © 2022 Evgen. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var coordinator: AppCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)

        let navigationController = UINavigationController()
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        coordinator = AppCoordinator(navigationController: navigationController)
        coordinator?.start()
        return true
    }
}

