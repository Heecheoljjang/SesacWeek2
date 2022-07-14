//
//  DdayViewController.swift
//  SesacWeek2
//
//  Created by HeecheolYoon on 2022/07/13.
//

import UIKit

class DdayViewController: UIViewController {
    
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var fourthView: UIView!
    
    @IBOutlet weak var firstDayLabel: UILabel!
    @IBOutlet weak var firstDateLabel: UILabel!
    @IBOutlet weak var secondDayLabel: UILabel!
    @IBOutlet weak var secondDateLabel: UILabel!
    @IBOutlet weak var thirdDayLabel: UILabel!
    @IBOutlet weak var thirdDateLabel: UILabel!
    @IBOutlet weak var fourthDayLabel: UILabel!
    @IBOutlet weak var fourthDateLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setView(view: firstView, dayLabel: firstDayLabel, dateLabel: firstDateLabel)
        setView(view: secondView, dayLabel: secondDayLabel, dateLabel: secondDateLabel)
        setView(view: thirdView, dayLabel: thirdDayLabel, dateLabel: thirdDateLabel)
        setView(view: fourthView, dayLabel: fourthDayLabel, dateLabel: fourthDateLabel)
        
        if #available(iOS 14.0, *) {
            datePicker.preferredDatePickerStyle = .inline
        } else {
            datePicker.preferredDatePickerStyle = .wheels
        }
        
        firstDayLabel.text = "D+100"
        secondDayLabel.text = "D+200"
        thirdDayLabel.text = "D+300"
        fourthDayLabel.text = "D+400"
        
    }
    
    func setView(view: UIView, dayLabel: UILabel, dateLabel: UILabel) {
        
        // 뷰 설정
        view.layer.cornerRadius = 10
        view.clipsToBounds = false
        view.layer.shadowOpacity = 0.5
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowRadius = 5
        
        // 레이블 설정
        dayLabel.textAlignment = .center
        dayLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        dayLabel.textColor = .white
        dateLabel.textAlignment = .center
        dateLabel.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        dateLabel.textColor = .white
        
        dayLabel.text = ""
        dateLabel.text = ""
        
    }
    
    func setDateLabel(date: Date, label: UILabel) {
        
        let year = DateFormatter()
        year.dateFormat = "yyyy년\n"
        let day = DateFormatter()
        day.dateFormat = "M월 dd일"
        let result = year.string(from: date) + day.string(from: date)
        
        label.text = result
    }
    
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        
        let hundredDate = sender.date.addingTimeInterval(86400 * 100)
        let twohundredDate = sender.date.addingTimeInterval(86400 * 200)
        let threehundredDate = sender.date.addingTimeInterval(86400 * 300)
        let fourhundredDate = sender.date.addingTimeInterval(86400 * 400)

        setDateLabel(date: hundredDate, label: firstDateLabel)
        setDateLabel(date: twohundredDate, label: secondDateLabel)
        setDateLabel(date: threehundredDate, label: thirdDateLabel)
        setDateLabel(date: fourhundredDate, label: fourthDateLabel)
    }
}
