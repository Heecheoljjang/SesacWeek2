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
    var count = [0,0,0,0,0,0,0,0,0]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstLabel.text = "행복해 \(count[0])"
        secondLabel.text = "사랑해 \(count[1])"
        thirdLabel.text = "좋아해 \(count[2])"
        fourthLabel.text = "당황해 \(count[3])"
        fifthLabel.text = "속상해 \(count[4])"
        sixthLabel.text = "우울해 \(count[5])"
        seventhLabel.text = "심심해 \(count[6])"
        eighthLabel.text = "미워해 \(count[7])"
        ninthLabel.text = "슬퍼해 \(count[8])"
        
        //firstLabel.text = setUserNickName()
        //view.backgroundColor = example().0
        
        //firstBtn.setImage(example().2, for: .normal)
        
    }

    
//    func changeLabel() {
//        firstLabel.text = "행복해 \(count[ButtonTag.first.rawValue])"
//        secondLabel.text = "사랑해 \(count[ButtonTag.second.rawValue])"
//        thirdLabel.text = "좋아해 \(count[ButtonTag.third.rawValue])"
//        fourthLabel.text = "당황해 \(count[ButtonTag.fourth.rawValue])"
//        fifthLabel.text = "속상해 \(count[ButtonTag.fifth.rawValue])"
//        sixthLabel.text = "우울해 \(count[ButtonTag.sixth.rawValue])"
//        seventhLabel.text = "심심해 \(count[ButtonTag.seventh.rawValue])"
//        eighthLabel.text = "미워해 \(count[ButtonTag.eighth.rawValue])"
//        ninthLabel.text = "슬퍼해 \(count[ButtonTag.ninth.rawValue])"
//
//    }
//
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
            firstLabel.text = setTitleText(tag: sender.tag)
        } else if sender.tag == ButtonTag.second.rawValue {
            secondLabel.text = setTitleText(tag: sender.tag)
        } else if sender.tag == ButtonTag.third.rawValue {
            thirdLabel.text = setTitleText(tag: sender.tag)
        } else if sender.tag == ButtonTag.fourth.rawValue {
            fourthLabel.text = setTitleText(tag: sender.tag)
        } else if sender.tag == ButtonTag.fifth.rawValue {
            fifthLabel.text = setTitleText(tag: sender.tag)
        } else if sender.tag == ButtonTag.sixth.rawValue {
            sixthLabel.text = setTitleText(tag: sender.tag)
        } else if sender.tag == ButtonTag.seventh.rawValue {
            seventhLabel.text = setTitleText(tag: sender.tag)
        } else if sender.tag == ButtonTag.eighth.rawValue {
            eighthLabel.text = setTitleText(tag: sender.tag)
        } else if sender.tag == ButtonTag.ninth.rawValue {
            ninthLabel.text = setTitleText(tag: sender.tag)
        }
        
        
    }
    @IBAction func tapResetBtn(_ sender: UIButton) {
        
        for i in 0...8 {
            count[i] = 0
        }
        
        firstLabel.text = "행복해 \(count[0])"
        secondLabel.text = "사랑해 \(count[1])"
        thirdLabel.text = "좋아해 \(count[2])"
        fourthLabel.text = "당황해 \(count[3])"
        fifthLabel.text = "속상해 \(count[4])"
        sixthLabel.text = "우울해 \(count[5])"
        seventhLabel.text = "심심해 \(count[6])"
        eighthLabel.text = "미워해 \(count[7])"
        ninthLabel.text = "슬퍼해 \(count[8])"
        
    }
}

