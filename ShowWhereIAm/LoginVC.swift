//
//  LoginVC.swift
//  ShowWhereIAm
//
//  Created by Vaibhav Mehta on 18/08/19.
//  Copyright © 2019 Vaibhav Mehta. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {


    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var numberText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let number = Int.random(in: 0 ..< 10)
        print("number", number)
        
        numberLabel.text = "\(number)"
        
        let Tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(DismissKeyboard))
        
        view.addGestureRecognizer(Tap)

    }
    func DismissKeyboard(){
        
        view.endEditing(true)
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        
        
            if(numberLabel.text == numberText.text){
                
                let story = UIStoryboard(name: "Main", bundle: nil)
                let vcc = story.instantiateViewController(withIdentifier: "homescreen")
                vcc.modalPresentationStyle = .overCurrentContext
                self.present(vcc, animated: true, completion: nil)
        }
        
            else{
                
                let alert = UIAlertController(title: "Alert", message: "Invalid", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Try Again", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
        }
    }
    
}
