//
//  Apps.swift
//  Fuck SandBox
//
//  Created by Nima Akbarzade on 3/5/20.
//  Copyright © 2020 Nima Akbarzade. All rights reserved.
//

import Foundation

import UIKit


class Apps:NSObject{

    var name:String?
    var bundle:String?
    var type:String?
    var version : Int?

    init(name:String,bundle:String,type:String,version:Int) {
        self.name = name
        self.bundle = bundle
        self.type = type
        self.version = version

    }
}
