//
//  MainPLViewController.swift
//  clockNin
//
//  Created by Guilherme Martins on 2018/06/03.
//  Copyright © 2018 com.currency.martins. All rights reserved.
//

import UIKit

class MainPLViewController: UIViewController {

    var myTimer:Timer = Timer();
    
    override func viewDidLoad() {
        self.myTimer = timeObjectClass.returnTimerSetting(target: self, selector: #selector(changeToLoggedin))
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func changeToLoggedin(){
        NSLog("butts");
        NSLog("butts");
        NSLog("butts");
        NSLog("butts");
        NSLog("butts");
        NSLog("butts");
        NSLog("butts");
    }
}
