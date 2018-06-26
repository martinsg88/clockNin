//
//  ViewController.swift
//  letsworkingIpad
//
//  Created by Guilherme Martins on 2018/06/26.
//  Copyright © 2018 com.martins.dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var workingBtn: UIButton!
    @IBOutlet weak var leaveBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func didTapLeaveWork(_ sender: Any) {
        PopupControllerViewController.createNewPopupLeaveWork(letsPopUp: self)
    }
    
    @IBAction func didTapGoToWork(_ sender: Any) {
        PopupControllerViewController.createNewPopupGoToWork(letsPopUp: self)
    }
    

}

