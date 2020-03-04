//
//  ViewController.swift
//  Fuck SandBox
//
//  Created by Nima Akbarzade on 3/4/20.
//  Copyright © 2020 Nima Akbarzade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let instanceOfCustomObject = SandBox()
        instanceOfCustomObject.retrieveData()
        
    }


}

