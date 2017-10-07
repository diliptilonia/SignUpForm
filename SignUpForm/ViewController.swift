//
//  ViewController.swift
//  SignUpForm
//
//  Created by francois buisson on 06/10/17.
//  Copyright © 2017 dilipGurjar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var imageBaseView: UIView!
    @IBOutlet weak var profilePhoto: UIImageView!
    @IBOutlet weak var fNameTextFiled: UITextField!
    @IBOutlet weak var lNameTextFiled: UITextField!
    @IBOutlet weak var firstPassTextFiled: UITextField!
    @IBOutlet weak var secondPassTextFiled: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       imageBaseView.layer.cornerRadius = 40
       imageBaseView.layer.borderColor = UIColor.lightGray.cgColor
       imageBaseView.layer.borderWidth = 0.5
        
        fNameTextFiled.layer.cornerRadius = 30
        lNameTextFiled.layer.cornerRadius = 30
        firstPassTextFiled.layer.cornerRadius = 30
        secondPassTextFiled.layer.cornerRadius = 30
        
    }

   
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        let FName = fNameTextFiled.text
        let LName = lNameTextFiled.text
        let password1 = firstPassTextFiled.text
        let password2 = secondPassTextFiled.text
        
        // password lenght count
       // let passLenght = password1?.count
        
        if (FName?.isEmpty)! {
            alertView(title: "First Name", message: "Please check you First Name is Empty")
        } else if (LName?.isEmpty)! {
            alertView(title: "Last Name", message: "Please check your last name is empty")
        } else if (password1?.count)! < 8 {
            alertView(title: "Password", message: "Password lenght should be 8 charaters")
        } else if password2 != password1 {
            alertView(title: "Password", message: "Password does not match")
        }
        
    }
    
    // Alert View which is call in signUpButtonPressed Button
    func alertView(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okay = UIAlertAction(title: "OK", style: .default, handler: { action in
        })
        let cancle = UIAlertAction(title: "cancle", style: .cancel, handler: { (action) in
            
        })
        
        alert.addAction(okay)
        alert.addAction(cancle)
        self.present(alert, animated: true, completion: nil)
    }
    

    
   
    
    
    
}



