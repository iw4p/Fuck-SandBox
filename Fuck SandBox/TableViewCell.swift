//
//  TableViewCell.swift
//  Fuck SandBox
//
//  Created by Nima Akbarzade on 3/5/20.
//  Copyright © 2020 Nima Akbarzade. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var appName: UILabel!
    @IBOutlet var appBundle: UILabel!
    @IBOutlet var appVersion: UILabel!
    @IBOutlet var appType: UILabel!
    
    func setApp(app: Apps) {
        appName.text = app.name
        appBundle.text = app.bundle
        appVersion.text = app.version
        appType.text = app.type
    }
    
    
}
