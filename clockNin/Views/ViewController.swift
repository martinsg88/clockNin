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
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var logBtn: UIBarButtonItem!
    
    @IBOutlet weak var userNameInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    
    var timer: Timer?
    
    let formatter:DateFormatter = timeObjectClass.returnFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupButton()
        self.setupTimer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.timer?.invalidate()
    }
    
    func setupButton(){
        self.startWork = clockNinButton.returnRoundButton(button: startWork)
        self.endWork = clockNinButton.returnRoundButton(button: endWork)
        self.enterBtn = clockNinButton.returnRoundButton(button: self.enterBtn)
        self.disableBtns()
    }
    
    @IBAction func didTapEnterBtn(_ sender: Any) {
        if((self.userNameInput.text?.count)! > 0 && (self.passwordInput.text?.count)! > 0){
            self.enableBtns()
        }
    }
    
    private func enableBtns(){
        self.startWork = clockNinButton.returnNormalButton(button: self.startWork)
        self.endWork = clockNinButton.returnNormalButton(button: self.endWork)
    }
    
    private func disableBtns(){
        self.startWork = clockNinButton.returnGreyButton(button: self.startWork)
        self.endWork = clockNinButton.returnGreyButton(button: self.endWork)

    }
    
    private func setupTimer(){
        self.timer = Timer.scheduledTimer(timeInterval: 60, target: self, selector: #selector(self.getTimeOfDate), userInfo: nil, repeats: true)
        self.getTimeOfDate()
    }
    
    @objc private func getTimeOfDate() {
        let curDate = Date()
        self.timeLabel.text = formatter.string(from: curDate)
    }
    
    

}

