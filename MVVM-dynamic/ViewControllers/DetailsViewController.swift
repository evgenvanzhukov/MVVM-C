//
//  DetailsViewController.swift
//  MVVM-dynamic
//
//  Created by Evgen on 25/10/2022.
//  Copyright © 2022 Evgen. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController, CreateAble {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelPhone: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelCity: UILabel!
    
    weak var coordinator: AppCoordinator?
    var viewModel: DetailsViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    func updateUI() {
        labelName.text = viewModel?.user?.name
        labelCity.text = viewModel?.user?.city
        labelPhone.text = viewModel?.user?.phone
        labelEmail.text = viewModel?.user?.email
    }

}
