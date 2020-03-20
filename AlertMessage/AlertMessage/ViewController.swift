//
//  ViewController.swift
//  AlertMessage
//
//  Created by Jim Theodoropoulos on 19/3/20.
//  Copyright © 2020 Jim Theodoropoulos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpClicked(_ sender: Any) {
    
    if userNameText.text == "" {
        makeAlert(titleInput: "Error", messageInput: "Empty username")

    
    }else if passwordText.text == "" {
        makeAlert(titleInput: "Error", messageInput: "Empty password")
        
    } else if password2Text.text != passwordText.text {
        makeAlert(titleInput: "Error", messageInput: "Passwords dont match")

        
    } else {
        makeAlert(titleInput: "Success", messageInput: "User Created")
        
        }
    }
    func makeAlert(titleInput : String, messageInput: String) {
        let alert = UIAlertController(title:titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title:"OK",style: UIAlertAction.Style.default ,handler: nil)
        alert.addAction((okButton))
        self.present(alert, animated: true, completion: nil )
        
    }
                 
  }
          

