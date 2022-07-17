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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateLabel.textAlignment = .center
        dateLabel.font = UIFont.systemFont(ofSize: 35, weight: .heavy)
        
        for i in 0...6 {
            oneHundredLabel[i].font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        }
        
        if let date = UserDefaults.standard.string(forKey: "date") {
            
            // 큰 날짜 레이블
            dateLabel.text = date
            print(date)
            // string -> date 변환
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy년 M월 d일"
            dateFormatter.locale = Locale(identifier: "ko-KR")
            
            let result = dateFormatter.date(from: date)!
            
                        
            print(result)
            let hundred = result.addingTimeInterval(86400 * 100)
            let twoHundred = result.addingTimeInterval(86400 * 200)
            let threeHundred = result.addingTimeInterval(86400 * 300)
            let fourHundred = result.addingTimeInterval(86400 * 400)
            let fiveHundred = result.addingTimeInterval(86400 * 500)
            let sixHundred = result.addingTimeInterval(86400 * 600)
            let sevenHundred = result.addingTimeInterval(86400 * 700)

            oneHundredLabel[0].text = "100일 뒤의 날짜는 \(dateToString(date: hundred))"
            oneHundredLabel[1].text = "200일 뒤의 날짜는 \(dateToString(date: twoHundred))"
            oneHundredLabel[2].text = "300일 뒤의 날짜는 \(dateToString(date: threeHundred))"
            oneHundredLabel[3].text = "400일 뒤의 날짜는 \(dateToString(date: fourHundred))"
            oneHundredLabel[4].text = "500일 뒤의 날짜는 \(dateToString(date: fiveHundred))"
            oneHundredLabel[5].text = "600일 뒤의 날짜는 \(dateToString(date: sixHundred))"
            oneHundredLabel[6].text = "700일 뒤의 날짜는 \(dateToString(date: sevenHundred))"
        }
    }
    func dateToString(date: Date) -> String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy년 M월 d일"
        
        let result = dateFormatter.string(from: date)
        
        return result
    }
    @IBAction func tapDismiss(_ sender: UIButton) {
        self.dismiss(animated: true)
        
    }
}
