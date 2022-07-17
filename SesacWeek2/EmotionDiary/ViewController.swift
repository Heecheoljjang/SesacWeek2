//
//  ViewController.swift
//  SesacWeek2
//
//  Created by HeecheolYoon on 2022/07/11.
//

import UIKit

enum ButtonTag: Int {
    
    case first = 0
    case second = 1
    case third = 2
    case fourth = 3
    case fifth = 4
    case sixth = 5
    case seventh = 6
    case eighth = 7
    case ninth = 8
    
}

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    @IBOutlet weak var fifthLabel: UILabel!
    @IBOutlet weak var sixthLabel: UILabel!
    @IBOutlet weak var seventhLabel: UILabel!
    @IBOutlet weak var eighthLabel: UILabel!
    @IBOutlet weak var ninthLabel: UILabel!
    
    @IBOutlet weak var firstBtn: UIButton!
    
    @IBOutlet weak var resetBtn: UIButton!
    var count: [Int] = [UserDefaults.standard.integer(forKey: "\(ButtonTag.first.rawValue)"),
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
        
        print(count)
        
        firstLabel.text = "행복해 \(UserDefaults.standard.integer(forKey: "\(ButtonTag.first.rawValue)"))"
        secondLabel.text = "사랑해 \(UserDefaults.standard.integer(forKey: "\(ButtonTag.second.rawValue)"))"
        thirdLabel.text = "좋아해 \(UserDefaults.standard.integer(forKey: "\(ButtonTag.third.rawValue)"))"
        fourthLabel.text = "당황해 \(UserDefaults.standard.integer(forKey: "\(ButtonTag.fourth.rawValue)"))"
        fifthLabel.text = "속상해 \(UserDefaults.standard.integer(forKey: "\(ButtonTag.fifth.rawValue)"))"
        sixthLabel.text = "우울해 \(UserDefaults.standard.integer(forKey: "\(ButtonTag.sixth.rawValue)"))"
        seventhLabel.text = "심심해 \(UserDefaults.standard.integer(forKey: "\(ButtonTag.seventh.rawValue)"))"
        eighthLabel.text = "미워해 \(UserDefaults.standard.integer(forKey: "\(ButtonTag.eighth.rawValue)"))"
        ninthLabel.text = "슬퍼해 \(UserDefaults.standard.integer(forKey: "\(ButtonTag.ninth.rawValue)"))"
    
    }

    func showAlertController() {
        
        // 1. 바탕 만들고 글씨 넣기
        let alert = UIAlertController(title: "타이틀", message: "메세지가 들어갑니다.", preferredStyle: .alert)
        // 2. 버튼 만들기(개수 등)
        let ok = UIAlertAction(title: "확인", style: .destructive, handler: nil)
        //let hi = UIAlertAction(title: "hi", style: .cancel, handler: nil)
        //let bye = UIAlertAction(title: "bye", style: .destructive, handler: nil)
        //let good = UIAlertAction(title: "good", style: .default, handler: nil)
        
        // 3. 버튼 분리되어있는거 하나로 합쳐줌(흰 바탕에 버튼 추가)
        alert.addAction(ok)
        //alert.addAction(hi)
        //alert.addAction(good)
        //alert.addAction(bye)
        // 4. 띄워줌.
        present(alert, animated: true, completion: nil)
    }
    
    func setTitleText(tag: Int) -> String {
        
        switch tag {
        case 0: return "행복해 \(count[tag])"
        case 1: return "사랑해 \(count[tag])"
        case 2: return "좋아해 \(count[tag])"
        case 3: return "당황해 \(count[tag])"
        case 4: return "속상해 \(count[tag])"
        case 5: return "우울해 \(count[tag])"
        case 6: return "심심해 \(count[tag])"
        case 7: return "미워해 \(count[tag])"
        case 8: return "슬퍼해 \(count[tag])"
        
        default:
            return "오류"
        }
    }
    
    @IBAction func tapBtn(_ sender: UIButton) {
        
        count[sender.tag] += 1
        
        if sender.tag == ButtonTag.first.rawValue {
            firstLabel.text = "행복해 \(count[sender.tag])"
            UserDefaults.standard.set(count[sender.tag], forKey: "\(ButtonTag.first.rawValue)")
            print("tag: \(sender.tag), cound[sender.tag]: \(count[sender.tag])")
            print(UserDefaults.standard.integer(forKey: "\(ButtonTag.first.rawValue)"))
        } else if sender.tag == ButtonTag.second.rawValue {
            secondLabel.text = "사랑해 \(count[sender.tag])"
            UserDefaults.standard.set(count[sender.tag], forKey: "\(ButtonTag.second.rawValue)")
        } else if sender.tag == ButtonTag.third.rawValue {
            thirdLabel.text = "좋아해 \(count[sender.tag])"
            UserDefaults.standard.set(count[sender.tag], forKey: "\(ButtonTag.third.rawValue)")
        } else if sender.tag == ButtonTag.fourth.rawValue {
            fourthLabel.text = "당황해 \(count[sender.tag])"
            UserDefaults.standard.set(count[sender.tag], forKey: "\(ButtonTag.fourth.rawValue)")
        } else if sender.tag == ButtonTag.fifth.rawValue {
            fifthLabel.text = "속상해 \(count[sender.tag])"
            UserDefaults.standard.set(count[sender.tag], forKey: "\(ButtonTag.fifth.rawValue)")
        } else if sender.tag == ButtonTag.sixth.rawValue {
            sixthLabel.text = "우울해 \(count[sender.tag])"
            UserDefaults.standard.set(count[sender.tag], forKey: "\(ButtonTag.sixth.rawValue)")
        } else if sender.tag == ButtonTag.seventh.rawValue {
            seventhLabel.text = "심심해 \(count[sender.tag])"
            UserDefaults.standard.set(count[sender.tag], forKey: "\(ButtonTag.seventh.rawValue)")
        } else if sender.tag == ButtonTag.eighth.rawValue {
            eighthLabel.text = "미워해 \(count[sender.tag])"
            UserDefaults.standard.set(count[sender.tag], forKey: "\(ButtonTag.eighth.rawValue)")
        } else if sender.tag == ButtonTag.ninth.rawValue {
            ninthLabel.text = "슬퍼해 \(count[sender.tag])"
            UserDefaults.standard.set(count[sender.tag], forKey: "\(ButtonTag.ninth.rawValue)")
        }
        
        
    }
    @IBAction func tapResetBtn(_ sender: UIButton) {
        
        //UserDefaults 삭제
        UserDefaults.standard.removeObject(forKey: "\(ButtonTag.first.rawValue)")
        UserDefaults.standard.removeObject(forKey: "\(ButtonTag.second.rawValue)")
        UserDefaults.standard.removeObject(forKey: "\(ButtonTag.third.rawValue)")
        UserDefaults.standard.removeObject(forKey: "\(ButtonTag.fourth.rawValue)")
        UserDefaults.standard.removeObject(forKey: "\(ButtonTag.fifth.rawValue)")
        UserDefaults.standard.removeObject(forKey: "\(ButtonTag.sixth.rawValue)")
        UserDefaults.standard.removeObject(forKey: "\(ButtonTag.seventh.rawValue)")
        UserDefaults.standard.removeObject(forKey: "\(ButtonTag.eighth.rawValue)")
        UserDefaults.standard.removeObject(forKey: "\(ButtonTag.ninth.rawValue)")
        
        firstLabel.text = "행복해 0"
        secondLabel.text = "사랑해 0"
        thirdLabel.text = "좋아해 0"
        fourthLabel.text = "당황해 0"
        fifthLabel.text = "속상해 0"
        sixthLabel.text = "우울해 0"
        seventhLabel.text = "심심해 0"
        eighthLabel.text = "미워해 0"
        ninthLabel.text = "슬퍼해 0"
        
        for i in 0...8 {
            count[i] = 0
        }
        
    }
}

