//
//  HalloViewController.swift
//  MVVM-dynamic
//
//  Created by Evgen on 25/10/2022.
//  Copyright © 2022 Evgen. All rights reserved.
//

import UIKit

class HalloViewController: UIViewController, CreateAble {

    @IBOutlet weak var labelName: UILabel!
    var viewModel = HalloViewModel("")
    var coordinator: Coordinator?
    
    @IBAction func detailsBtnPressed(_ sender: Any) {
        coordinator?.showDetails()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = viewModel.name
    }

}
