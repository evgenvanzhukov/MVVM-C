//
//  AppCoordinator.swift
//  MVVM-dynamic
//
//  Created by Evgen on 25/10/2022.
//  Copyright © 2022 Evgen. All rights reserved.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var isLoggerdIn = false
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        if isLoggerdIn {
            showHallo(login: "")
        }
        else {
            showLogin()
        }
    }
    
    func showLogin() {
        let viewController = LoginViewController.CreateObject()
        viewController.coordinator = self
        let viewModel = LoginViewModel()
        viewModel.isLoggedIn = false
        viewController.viewModel = viewModel
        navigationController.pushViewController(viewController, animated: false)
    }
    
    func showHallo(login: String) {
        let halloViewController = HalloViewController.CreateObject()
        halloViewController.coordinator = self
        let viewModel = HalloViewModel(login)
        halloViewController.viewModel = viewModel
        navigationController.viewControllers.removeAll()
        navigationController.pushViewController(halloViewController, animated: true)
    }
    
    func showDetails() {
        let detailsVC = DetailsViewController.CreateObject()
        detailsVC.coordinator = self
        detailsVC.viewModel = DetailsViewModel(UserService.getUserData(login: "admin"))
        navigationController.pushViewController(detailsVC, animated: true)
    }
}
