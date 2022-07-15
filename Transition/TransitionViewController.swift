//
//  TransitionViewController.swift
//  SesacWeek2
//
//  Created by HeecheolYoon on 2022/07/15.
//

import UIKit

class TransitionViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("First", #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("First", #function)
        myLabel.text = "\(Int.random(in: 1...100))"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("First", #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("First", #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("First", #function)
    }
    
    @IBAction func unwindTransitionVC(_ sender: UIStoryboardSegue) {
        
    }
}
