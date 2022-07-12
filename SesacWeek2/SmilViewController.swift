//
//  SmilViewController.swift
//  SesacWeek2
//
//  Created by HeecheolYoon on 2022/07/11.
//

// 예전 코드
import UIKit

class SmilViewController: UIViewController {
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    @IBOutlet weak var fifthLabel: UILabel!
    @IBOutlet weak var sixthLabel: UILabel!
    @IBOutlet weak var seventhLabel: UILabel!
    @IBOutlet weak var eighthLabel: UILabel!
    @IBOutlet weak var ninthLabel: UILabel!
    
    @IBOutlet weak var firstImg: UIImageView!
    @IBOutlet weak var secondImg: UIImageView!
    @IBOutlet weak var thirdImg: UIImageView!
    @IBOutlet weak var fourthImg: UIImageView!
    @IBOutlet weak var fifthImg: UIImageView!
    @IBOutlet weak var sixthImg: UIImageView!
    @IBOutlet weak var seventhImg: UIImageView!
    @IBOutlet weak var eighthImg: UIImageView!
    @IBOutlet weak var ninthImg: UIImageView!
    
    
    var first: Int = 0
    var second: Int = 0
    var third: Int = 0
    var fourth: Int = 0
    var fifth: Int = 0
    var sixth: Int = 0
    var seventh: Int = 0
    var eighth: Int = 0
    var ninth: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        firstImg.image = UIImage(named: "sesac_slime1")
        secondImg.image = UIImage(named: "sesac_slime2")
        thirdImg.image = UIImage(named: "sesac_slime3")
        fourthImg.image = UIImage(named: "sesac_slime4")
        fifthImg.image = UIImage(named: "sesac_slime5")
        sixthImg.image = UIImage(named: "sesac_slime6")
        seventhImg.image = UIImage(named: "sesac_slime7")
        eighthImg.image = UIImage(named: "sesac_slime8")
        ninthImg.image = UIImage(named: "sesac_slime9")
        
        firstLabel.text = "행복해 \(first)"
        secondLabel.text = "사랑해 \(second)"
        thirdLabel.text = "좋아해 \(third)"
        fourthLabel.text = "당황해 \(fourth)"
        fifthLabel.text = "속상해 \(fifth)"
        sixthLabel.text = "우울해 \(sixth)"
        seventhLabel.text = "심심해 \(seventh)"
        eighthLabel.text = "미워해 \(eighth)"
        ninthLabel.text = "슬퍼해 \(eighth)"
    }
    
    @IBAction func tapEmotionBtn(_ sender: UITapGestureRecognizer) {
        
        if sender.view?.tag == 1 {
            first += 1
            firstLabel.text = "행복해 \(first)"
        } else if sender.view?.tag == 2 {
            second += 1
            secondLabel.text = "사랑해 \(second)"
        } else if sender.view?.tag == 3 {
            third += 1
            thirdLabel.text = "좋아해 \(third)"
        } else if sender.view?.tag == 4 {
            fourth += 1
            fourthLabel.text = "당황해 \(fourth)"
        } else if sender.view?.tag == 5 {
            fifth += 1
            fifthLabel.text = "속상해 \(fifth)"
        } else if sender.view?.tag == 6 {
            sixth += 1
            sixthLabel.text = "우울해 \(sixth)"
        } else if sender.view?.tag == 7 {
            seventh += 1
            seventhLabel.text = "심심해 \(seventh)"
        } else if sender.view?.tag == 8 {
            eighth += 1
            eighthLabel.text = "미워해 \(eighth)"
        } else {
            ninth += 1
            ninthLabel.text = "슬퍼해 \(ninth)"
        }
        
    }
    

}
