//
//  clockNinButton.swift
//  clockNin
//
//  Created by Guilherme Martins on 2018/05/05.
//  Copyright © 2018 com.currency.martins. All rights reserved.
//

import UIKit

class clockNinButton: UIButton {
    static func returnRoundButton(button: UIButton)->UIButton{
        button.layer.cornerRadius = 0.2 * button.bounds.size.width
        return button
    }
    
    static func returnGreyButton(button: UIButton)->UIButton{
        button.alpha = CGFloat(0.5)
        button.isEnabled = false
        button.isUserInteractionEnabled = false
        return button
    }
    
    static func returnNormalButton(button: UIButton)->UIButton{
        button.alpha = CGFloat(1.0)
        button.isEnabled = true
        button.isUserInteractionEnabled = true
        return button
    }
    
}
