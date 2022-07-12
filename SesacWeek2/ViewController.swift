//
//  ViewController.swift
//  SesacWeek2
//
//  Created by HeecheolYoon on 2022/07/11.
//

import UIKit

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
    
    var count = [0,0,0,0,0,0,0,0,0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstLabel.text = ""
        secondLabel.text = ""
        thirdLabel.text = ""
        fourthLabel.text = ""
        fifthLabel.text = ""
        sixthLabel.text = ""
        seventhLabel.text = ""
        eighthLabel.text = ""
        ninthLabel.text = ""
        
    }
    
    func changeLabel() {
        firstLabel.text = "\(count[0])"
        secondLabel.text = "\(count[1])"
        thirdLabel.text = "\(count[2])"
        fourthLabel.text = "\(count[3])"
        fifthLabel.text = "\(count[4])"
        sixthLabel.text = "\(count[5])"
        seventhLabel.text = "\(count[6])"
        eighthLabel.text = "\(count[7])"
        ninthLabel.text = "\(count[8])"
    }
    
    func showAlertController() {
        
        // 1. 바탕 만들고 글씨 넣기
        let alert = UIAlertController(title: "타이틀", message: "메세지가 들어갑니다.", preferredStyle: .alert)
        // 2. 버튼 만들기(개수 등)
        let ok = UIAlertAction(title: "확인", style: .destructive, handler: nil)
        let hi = UIAlertAction(title: "hi", style: .cancel, handler: nil)
        let bye = UIAlertAction(title: "bye", style: .destructive, handler: nil)
        let good = UIAlertAction(title: "good", style: .default, handler: nil)
        let dd = UIAlertAction(title: "good", style: .default, handler: nil)
        let aa = UIAlertAction(title: "good", style: .default, handler: nil)
        let ddd = UIAlertAction(title: "good", style: .default, handler: nil)
        let dddd = UIAlertAction(title: "good", style: .default, handler: nil)
        let ddddd = UIAlertAction(title: "good", style: .default, handler: nil)
        let ss = UIAlertAction(title: "hi", style: .default, handler: nil)
        let sss = UIAlertAction(title: "bye", style: .destructive, handler: nil)
        let ssss = UIAlertAction(title: "good", style: .default, handler: nil)
        let sssss = UIAlertAction(title: "good", style: .default, handler: nil)
        let ssssss = UIAlertAction(title: "good", style: .default, handler: nil)
        let sssssss = UIAlertAction(title: "good", style: .default, handler: nil)
        let ssssssss = UIAlertAction(title: "good", style: .default, handler: nil)
        let sssssssss = UIAlertAction(title: "good", style: .default, handler: nil)
        // 3. 버튼 분리되어있는거 하나로 합쳐줌(흰 바탕에 버튼 추가)
        alert.addAction(ok)
        alert.addAction(hi)
        alert.addAction(good)
        alert.addAction(bye)
        alert.addAction(dd)
        alert.addAction(ddd)
        alert.addAction(dddd)
        alert.addAction(ddddd)
        alert.addAction(aa)
        alert.addAction(ss)
        alert.addAction(sss)
        alert.addAction(ssss)
        alert.addAction(sssss)
        alert.addAction(ssssss)
        alert.addAction(sssssss)
        alert.addAction(ssssssss)
        alert.addAction(sssssssss)
        // 4. 띄워줌.
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func tapBtn(_ sender: UIButton) {
        
        count[sender.tag] += 1
        
        changeLabel()
        
        showAlertController()
        
    }
}

