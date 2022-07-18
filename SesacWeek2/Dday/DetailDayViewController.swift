//
//  DetailDayViewController.swift
//  SesacWeek2
//
//  Created by HeecheolYoon on 2022/07/17.
//

import UIKit

class DetailDayViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet var oneHundredLabel: [UILabel]!
    
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateLabel.textAlignment = .center
        dateLabel.font = UIFont.systemFont(ofSize: 35, weight: .heavy)
        
        for i in 0..<oneHundredLabel.count {
            oneHundredLabel[i].font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        }
        
        if let date = UserDefaults.standard.string(forKey: "date") {
            
            // 큰 날짜 레이블
            dateLabel.text = date
            print(date)
            // string -> date 변환
        
            dateFormatter.dateFormat = "yyyy년 M월 d일"
            dateFormatter.locale = Locale(identifier: "ko-KR")
            
            let result = dateFormatter.date(from: date)!
            
            oneHundredLabel[0].text = "100일 뒤의 날짜는 \(dateToString(date: result.addingTimeInterval(86400 * 100)))"
            oneHundredLabel[1].text = "200일 뒤의 날짜는 \(dateToString(date: result.addingTimeInterval(86400 * 200)))"
            oneHundredLabel[2].text = "300일 뒤의 날짜는 \(dateToString(date: result.addingTimeInterval(86400 * 300)))"
            oneHundredLabel[3].text = "400일 뒤의 날짜는 \(dateToString(date: result.addingTimeInterval(86400 * 400)))"
            oneHundredLabel[4].text = "500일 뒤의 날짜는 \(dateToString(date: result.addingTimeInterval(86400 * 500)))"
            oneHundredLabel[5].text = "600일 뒤의 날짜는 \(dateToString(date: result.addingTimeInterval(86400 * 600)))"
            oneHundredLabel[6].text = "700일 뒤의 날짜는 \(dateToString(date: result.addingTimeInterval(86400 * 700)))"
        }
    }
    func dateToString(date: Date) -> String {

        dateFormatter.dateFormat = "yyyy년 M월 d일"
        
        return dateFormatter.string(from: date)
    }
    @IBAction func tapDismiss(_ sender: UIButton) {
        self.dismiss(animated: true)
        
    }
}
