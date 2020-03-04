//
//  ViewController.swift
//  Fuck SandBox
//
//  Created by Nima Akbarzade on 3/4/20.
//  Copyright © 2020 Nima Akbarzade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    var model = [Apps]()
    
    var name = [""]
    var bundle = [""]
    var version = [""]
    var type = [""]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sandBox = SandBox()
        
        name = sandBox.appsName() as! [String]
        bundle = sandBox.appsBundle() as! [String]
        version = sandBox.appsVersions() as! [String]
        type = sandBox.appsType() as! [String]
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell") as! TableViewCell
        cell.appName.text = name[indexPath.row]
        cell.appBundle.text = bundle[indexPath.row]
        cell.appVersion.text = version[indexPath.row]
        cell.appType.text = type[indexPath.row]
        
        return cell;
    }
}
