//
//  ViewController.swift
//  AlertMessageApp
//
//  Created by Özge Poyraz on 4.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userID: UITextField!
    @IBOutlet weak var userPassword: UITextField!
    @IBOutlet weak var userPasswordAgain: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonClicked(_ sender: Any) {
        
      
        
        if userPassword.text == "" || userPasswordAgain.text == "" || userID.text == ""{
            makeAlert(title: "Error", message: "Fields can not be left blank!")
        }
        
        if userPassword.text != userPasswordAgain.text{
            makeAlert(title: "Error", message: "Password do not match!")
        }
        
    }
    
    func makeAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: title, style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
        
    }
    
}

