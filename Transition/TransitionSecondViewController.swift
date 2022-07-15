//
//  TransitionSecondViewController.swift
//  SesacWeek2
//
//  Created by HeecheolYoon on 2022/07/15.
//

import UIKit

enum UserDefaultsKey: String {
    case happyEmotion
}

class TransitionSecondViewController: UIViewController {

    @IBOutlet weak var myTextView: UITextView!
    /*
     1. 앱 켜면 데이터 가지고와서 텍스트뷰에 보여주어야함.
     -> 뷰디드로드나 뷰윌어피어에 구현
     2. 바뀐 데이터 저장해줘야함.
     */
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var upBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tapUpBtn(upBtn)
        
        print("Second", #function)
        
        //가지고와야함.가지고오는 코드는 동일한데 타입에 따라 뒷부분만다름
        if UserDefaults.standard.string(forKey: "nickname") != nil {
            myTextView.text = UserDefaults.standard.string(forKey: "nickname")
        } else {
            myTextView.text = "없음"
        }
        print(UserDefaults.standard.string(forKey: "phoneNumber"))
        print(UserDefaults.standard.integer(forKey: "age"))
        print(UserDefaults.standard.bool(forKey: "inapp"))
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("Second", #function)

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("Second", #function)

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("Second", #function)

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("Second", #function)

    }
    
    @IBAction func tapSaveBtn(_ sender: UIButton) {
        UserDefaults.standard.set(myTextView.text, forKey: "nickname")
        print("저장됨")
    }
    
    
    @IBAction func tapUpBtn(_ sender: Any) {
        
//        var count = UserDefaults.standard.integer(forKey: "emotion")
//
//        count += 1
//
//        UserDefaults.standard.set(count, forKey: "emotion")
//
//        numberLabel.text = "\(count)"
        
        //기존 데이터 값 가져오기
        let currentValue = UserDefaults.standard.integer(forKey: "happyEmotion")
        
        //감정 + 1
        let updateValue = currentValue + 1
        
        //새로운 값 저장
        UserDefaults.standard.set(updateValue, forKey: "happyEmotion")
        
        //레이블에 새로운 내용 보여주기
        numberLabel.text = "\(UserDefaults.standard.integer(forKey: "happyEmotion"))"
        
        //지우기
        UserDefaults.standard.removeObject(forKey: "")
        
        //전체 다 삭제
    }
    
}
