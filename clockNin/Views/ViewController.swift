//
//  ViewController.swift
//  clockNin
//
//  Created by Guilherme Martins on 2018/04/29.
//  Copyright © 2018 com.currency.martins. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var startWork: UIButton!
    @IBOutlet weak var endWork: UIButton!
    @IBOutlet weak var enterBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setupButton(){
        self.startWork = clockNinButton.returnRoundButton(button: startWork)
        self.endWork = clockNinButton.returnRoundButton(button: endWork)
        self.enterBtn = clockNinButton.returnRoundButton(button: self.enterBtn)
    }

}

