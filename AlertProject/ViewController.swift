//
//  ViewController.swift
//  AlertProject
//
//  Created by Nigar Alaskarova on 03.02.24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordText2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signupClicked(_ sender: Any) {
        /*
         let alert = UIAlertController(title: "Error!", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
         let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
         print ("Clicked")
         }
         alert.addAction(okButton)
         self.present(alert, animated: true, completion: nil)
         } */
        
        if usernameText.text == "" {
            messageAlert(titleInput: "Error!", messageInput: "Username not found!")
        } else if passwordText.text == "" {
            messageAlert(titleInput: "Error!", messageInput: "Password not found!")
        } else if passwordText.text != passwordText2.text {
            messageAlert(titleInput: "Error!", messageInput: "Password do not match!")
        } else {
            messageAlert(titleInput: "Success", messageInput: "User OK")
        }
        
    }
    
    func messageAlert(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
}
