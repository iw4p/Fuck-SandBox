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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let sandBox = SandBox()
        name = sandBox.appsName() as! [String]
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath);
        cell.textLabel?.text = name[indexPath.row]
        return cell;
    }
}
