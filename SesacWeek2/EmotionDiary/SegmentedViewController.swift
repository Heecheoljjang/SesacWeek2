//
//  SegmentedViewController.swift
//  SesacWeek2
//
//  Created by HeecheolYoon on 2022/07/12.
//

import UIKit

enum MusicType: Int {
    
    case all = 0
    case korea = 1
    case other = 2
    
}

class SegmentedViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        segmentControlValueChanged(segmentControl)
        
    }

    @IBAction func segmentControlValueChanged(_ sender: UISegmentedControl) {
        
        if segmentControl.selectedSegmentIndex == MusicType.all.rawValue {
            
        }
        
//        if segmentControl.selectedSegmentIndex == 0 {
//            myLabel.text = "첫번째 세그먼트 선택"
//        } else if segmentControl.selectedSegmentIndex == 1 {
//            myLabel.text = "두번째 세그먼트 선택"
//        } else if segmentControl.selectedSegmentIndex == 2 {
//            myLabel.text = "세번째 세그먼트 선택"
//        } else {
//            myLabel.text = "오류"
//        }
    }
}
