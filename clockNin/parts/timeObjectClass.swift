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
    
    static public func returnTimerSetting(target: Any, selector: Selector)->Timer{
        let timer = Timer.scheduledTimer(timeInterval: 5.0, target: target , selector: selector, userInfo: nil, repeats: false);
        return timer;
    }

}
