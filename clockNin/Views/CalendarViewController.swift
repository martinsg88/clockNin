//
//  CalendarViewController.swift
//  clockNin
//
//  Created by Guilherme Martins on 2018/05/06.
//  Copyright © 2018 com.currency.martins. All rights reserved.
//

import UIKit

class CalendarViewController: UIViewController, FSCalendarDelegate, FSCalendarDataSource, FSCalendarDelegateAppearance {
    @IBOutlet weak var fieldName: UITextField!
    @IBOutlet weak var EndTime: UITextField!
    @IBOutlet weak var StartTime: UITextField!
    @IBOutlet weak var calendarHome: FSCalendar!
    
    var datesWithEvent = ["2018-05-16"]
    var datesWithMultipleEvents = ["2018-05-16"]
    
    fileprivate var dateFormatter2: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func calendar(_ calendar: FSCalendar, willDisplay cell: FSCalendarCell, for date: Date, at monthPosition: FSCalendarMonthPosition) {
        //>>> todo
    }
    
    func calendar(_ calendar: FSCalendar, didDeselect date: Date, at monthPosition: FSCalendarMonthPosition) {
        let testDateString: String = "2018-05-15";
        let testDateFormatter = DateFormatter()
        testDateFormatter.dateFormat = "yyyy-MM-dd";
        let testDate:Date = testDateFormatter.date(from: testDateString)!
        
        if(date == testDate){
            self.fieldName.text = "Test Event"
            self.EndTime.text = "20:00"
            self.StartTime.text = "10:00"
        }else{
            self.fieldName.text = ""
            self.EndTime.text = ""
            self.StartTime.text = ""
        }
        
    }
    
    func calendar(_ calendar: FSCalendar, appearance: FSCalendarAppearance, eventColorFor date: Date) -> UIColor? {
        let dateString = self.dateFormatter2.string(from: date)
        for d in datesWithMultipleEvents{
            let date = d
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
            let dateFromString : NSDate = dateFormatter.date(from: date)! as NSDate
            dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
            let datenew = dateFormatter.string(from: dateFromString as Date)
            
            
            if datenew.contains(dateString) {
                return UIColor.init(red: 10, green: 200, blue: 399, alpha: 300)
            }
        }
        return nil
    }
    
    func calendar(_ calendar: FSCalendar, numberOfEventsFor date: Date) -> Int {
        
        let dateString = self.dateFormatter2.string(from: date)
        
        if self.datesWithEvent.contains(dateString) {
            return 0
        }
        
        if self.datesWithMultipleEvents.contains(dateString) {
            return 0
        }
        
        return 0
    }
    

}
