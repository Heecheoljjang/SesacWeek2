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
    
    @IBOutlet weak var firstImg: UIImageView!
    @IBOutlet weak var secondImg: UIImageView!
    @IBOutlet weak var thirdImg: UIImageView!
    @IBOutlet weak var fourthImg: UIImageView!
    
    @IBOutlet weak var currentSavedLabel: UILabel!
    @IBOutlet weak var saveBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.string(forKey: "date") == nil {
            currentSavedLabel.text = "저장된 날짜가 없습니다."
        } else {
            currentSavedLabel.text = UserDefaults.standard.string(forKey: "date")!
            currentSavedLabel.font = UIFont.systemFont(ofSize: 17, weight: .heavy)
        }

        setView(view: firstView, dayLabel: firstDayLabel, dateLabel: firstDateLabel)
        setView(view: secondView, dayLabel: secondDayLabel, dateLabel: secondDateLabel)
        setView(view: thirdView, dayLabel: thirdDayLabel, dateLabel: thirdDateLabel)
        setView(view: fourthView, dayLabel: fourthDayLabel, dateLabel: fourthDateLabel)
        
        if #available(iOS 14.0, *) {
            datePicker.preferredDatePickerStyle = .inline
        } else {
            datePicker.preferredDatePickerStyle = .wheels
        }
        
        dateChanged(datePicker)
        
        firstDayLabel.text = "D+100"
        secondDayLabel.text = "D+200"
        thirdDayLabel.text = "D+300"
        fourthDayLabel.text = "D+400"
        
        firstImg.image = UIImage(named: "cake")
        firstImg.clipsToBounds = true
        firstImg.layer.cornerRadius = 10
        secondImg.image = UIImage(named: "churros")
        secondImg.clipsToBounds = true
        secondImg.layer.cornerRadius = 10


        thirdImg.image = UIImage(named: "icecream")
        thirdImg.clipsToBounds = true
        thirdImg.layer.cornerRadius = 10

        fourthImg.image = UIImage(named: "macaroon")
        fourthImg.clipsToBounds = true
        fourthImg.layer.cornerRadius = 10

        
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
    
        // 오늘 날짜 기준으로 레이블 설정
        dayLabel.text = ""
        dateLabel.text = ""
        
    }
    
    func setDateLabel(date: Date, label: UILabel) {
        
        let myDate = DateFormatter()
        myDate.dateFormat = "yyyy년\nM월 dd일"
        let result = myDate.string(from: date)
        
        
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
        
        print(datePicker.date.formatted())
    }
    
    @IBAction func tapSaveBtn(_ sender: UIButton) {
        
        // 저장되었다는 alert띄우기
        let alert = UIAlertController(title: "날짜가 저장되었습니다.", message: nil, preferredStyle: .alert)
        let ok = UIAlertAction(title: "확인", style: .default)
        alert.addAction(ok)
        present(alert, animated: true)
        
        // UserDefaults로 저장
        let date = datePicker.date
        
        let myDate = DateFormatter()
        myDate.dateFormat = "yyyy년 M월 dd일"
        
        let result = myDate.string(from: date)
        
        UserDefaults.standard.set(result, forKey: "date")
        
        // currentLabel 텍스트 바꿔주기
        currentSavedLabel.text = result
    }
}
