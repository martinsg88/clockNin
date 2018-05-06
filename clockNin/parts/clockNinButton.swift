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
}
