//
//  timeObjectClass.swift
//  clockNin
//
//  Created by Guilherme Martins on 2018/05/06.
//  Copyright © 2018 com.currency.martins. All rights reserved.
//

import UIKit

class timeObjectClass: NSObject {
    
    static public func returnFormatter()->DateFormatter{
        let formatter: DateFormatter = {
            let tmpFormatter = DateFormatter()
            tmpFormatter.dateFormat = "hh:mm a"
            return tmpFormatter
        }()
        
        return formatter
    }

}
