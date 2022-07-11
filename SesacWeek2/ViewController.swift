//
//  ViewController.swift
//  SesacWeek2
//
//  Created by HeecheolYoon on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myView.layer.cornerRadius = 20
        myView.layer.shadowRadius = 20
        myView.layer.shadowOpacity = 0.8
        //myView.layer.shadowOffset
        //myView.layer.shadowPath
        myView.layer.shadowColor = UIColor.yellow.cgColor
        
    }
}

