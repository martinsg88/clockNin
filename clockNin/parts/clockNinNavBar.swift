//
//  clockNinNavBar.swift
//  clockNin
//
//  Created by Guilherme Martins on 2018/04/29.
//  Copyright © 2018 com.currency.martins. All rights reserved.
//

import UIKit

let red:CGFloat = 15.0
let green:CGFloat = 255.0
let blue:CGFloat = 255.0
let alpha:CGFloat = 1.0

class clockNinNavBar: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupMyNaviBar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setupMyNaviBar(){
        self.navigationBar.tintColor = clockNinNavBar.getUIColorForNavBar()
    }
    
    static func getUIColorForNavBar()->UIColor{
         return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
}
