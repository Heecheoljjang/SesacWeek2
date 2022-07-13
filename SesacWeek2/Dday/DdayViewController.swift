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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setView(view: firstView, dayLabel: firstDayLabel, dateLabel: firstDateLabel)
        setView(view: secondView, dayLabel: secondDayLabel, dateLabel: secondDateLabel)
        setView(view: thirdView, dayLabel: thirdDayLabel, dateLabel: thirdDateLabel)
        setView(view: fourthView, dayLabel: fourthDayLabel, dateLabel: fourthDateLabel)
        
    }
    
    func setView(view: UIView, dayLabel: UILabel, dateLabel: UILabel) {
        
        // 뷰 설정
        view.layer.cornerRadius = 5
        view.clipsToBounds = false
        view.layer.shadowOpacity = 0.5
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowRadius = 5
        
        // 레이블 설정
        dayLabel.textAlignment = .center
        dayLabel.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        dayLabel.textColor = .white
        dateLabel.textAlignment = .center
        dateLabel.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        dateLabel.textColor = .white
        
    }
}
