//
//  ViewController.swift
//  SesacWeek2
//
//  Created by HeecheolYoon on 2022/07/11.
//

import UIKit

enum ButtonTag: Int, CaseIterable {
    
    case first, second, third, fourth, fifth, sixth, seventh, eighth, ninth
    
    var tagLabel: String {
        switch self {
        case .first:
            return "행복해 "
        case .second:
            return "사랑해 "
        case .third:
            return "좋아해 "
        case .fourth:
            return "당황해 "
        case .fifth:
            return "속상해 "
        case .sixth:
            return "우울해 "
        case .seventh:
            return "심심해 "
        case .eighth:
            return "미워해 "
        case .ninth:
            return "슬퍼해 "
        }
    }
}


class ViewController: UIViewController {
    
    @IBOutlet var countLabel: [UILabel]!
    
    @IBOutlet weak var firstBtn: UIButton!
    
    @IBOutlet weak var resetBtn: UIButton!
    
    let userDefaults = UserDefaults.standard
    
    var emotionTapCount: [Int] = [UserDefaults.standard.integer(forKey: "\(ButtonTag.first.rawValue)"),
                        UserDefaults.standard.integer(forKey: "\(ButtonTag.second.rawValue)"),
                        UserDefaults.standard.integer(forKey: "\(ButtonTag.third.rawValue)"),
                        UserDefaults.standard.integer(forKey: "\(ButtonTag.fourth.rawValue)"),
                        UserDefaults.standard.integer(forKey: "\(ButtonTag.fifth.rawValue)"),
                        UserDefaults.standard.integer(forKey: "\(ButtonTag.sixth.rawValue)"),
                        UserDefaults.standard.integer(forKey: "\(ButtonTag.seventh.rawValue)"),
                        UserDefaults.standard.integer(forKey: "\(ButtonTag.eighth.rawValue)"),
                        UserDefaults.standard.integer(forKey: "\(ButtonTag.ninth.rawValue)")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resetBtn.layer.cornerRadius = 10
        
        print(emotionTapCount)
        
        for i in 0..<countLabel.count {
            countLabel[i].text = ButtonTag.allCases[i].tagLabel + "\(userDefaults.integer(forKey: "\(i)"))"
        }
    }

    func showAlertController() {
        
        // 1. 바탕 만들고 글씨 넣기
        let alert = UIAlertController(title: "타이틀", message: "메세지가 들어갑니다.", preferredStyle: .alert)
        
        // 2. 버튼 만들기(개수 등)
        let ok = UIAlertAction(title: "확인", style: .destructive, handler: nil)
        
        // 3. 버튼 분리되어있는거 하나로 합쳐줌(흰 바탕에 버튼 추가)
        alert.addAction(ok)

        // 4. 띄워줌.
        present(alert, animated: true, completion: nil)
    }
    
    func setTitleText(tag: Int) -> String {
        
        return ButtonTag.allCases[tag].tagLabel + "\(emotionTapCount[tag])"
        
    }

    
    @IBAction func tapBtn(_ sender: UIButton) {
        
        emotionTapCount[sender.tag] += 1
        
        countLabel[sender.tag].text = ButtonTag.allCases[sender.tag].tagLabel + "\(emotionTapCount[sender.tag])"
        userDefaults.set(emotionTapCount[sender.tag], forKey: "\(sender.tag)")
        
    }
    @IBAction func tapResetBtn(_ sender: UIButton) {
        
        //UserDefaults 삭제
        let domain = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: domain)

        for i in 0..<emotionTapCount.count {
            emotionTapCount[i] = 0
            countLabel[i].text = ButtonTag.allCases[i].tagLabel + "0"
        }
    }
}

