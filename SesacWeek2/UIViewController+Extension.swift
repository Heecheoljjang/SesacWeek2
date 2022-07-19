//
//  UIViewController+Extension.swift
//  SesacWeek2
//
//  Created by HeecheolYoon on 2022/07/19.
//

import UIKit

extension UIViewController {
    
    func showAlert(alertTitle: String, alertMessage: String?, buttonTitle: String, buttonStyle: UIAlertAction.Style) {

        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)

        let ok = UIAlertAction(title: buttonTitle, style: buttonStyle, handler: nil)
        
        alert.addAction(ok)

        present(alert, animated: true, completion: nil)
    }
}
