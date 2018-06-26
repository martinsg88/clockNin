//
//  PopupControllerViewController.swift
//  letsworkingIpad
//
//  Created by Guilherme Martins on 2018/06/26.
//  Copyright © 2018 com.martins.dev. All rights reserved.
//

import UIKit

let gotoWork:String = "出勤しました"
let gotoWorkMsg:String = "今日も一日頑張りましょう！"
let leaveWork:String = "退勤しました"
let leaveWorkMsg:String = "お疲れ様でした！"

class PopupControllerViewController: UIAlertController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    class func createNewPopupGoToWork(letsPopUp:UIViewController){
        let pop = PopupControllerViewController(title: gotoWork, message: gotoWorkMsg, preferredStyle: .alert)
        pop.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        letsPopUp.present(pop, animated: true, completion: nil)
    }
    
    class func createNewPopupLeaveWork(letsPopUp:UIViewController){
        let pop = PopupControllerViewController(title: leaveWork, message: leaveWorkMsg, preferredStyle: .alert)
        pop.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        letsPopUp.present(pop, animated: true, completion: nil)
    }
    
}
