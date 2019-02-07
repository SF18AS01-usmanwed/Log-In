//
//  ViewController.swift
//  Log In
//
//  Created by Ousmane Ouedraogo on 2/6/19.
//  Copyright © 2019 Ousmane Ouedraogo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPassWordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func  unwindToLogIn(unwindSegue: UIStoryboardSegue) {
        
        
        print("unwindToRed(unwindSegue:)");
        if let identifier: String = unwindSegue.identifier {
            print("unwindSegue.identifier = \(identifier)");
        }
        if let title: String = unwindSegue.source.title {
            print("unwindSegue.source.title = \(title)");
        }
        if let title: String = unwindSegue.source.navigationItem.title {
            print("unwindSegue.source.navigationItem.title = \(title)");
        }
        if let title: String = unwindSegue.destination.title {
            print("unwindSegue.destination.title = \(title)");
        }
        if let title: String = unwindSegue.destination.navigationItem.title {
            print("unwindSegue.destination.navigationItem.title = \(title)");
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text

        guard let sender = sender as? UIButton else{return}
        
        if sender == forgotPassWordButton{
            segue.destination.navigationItem.title = "forgot PassWord"
            
        }else{
            if sender == forgotUserNameButton{
                segue.destination.navigationItem.title = "forgot User Name"
                
            }else{
                segue.destination.navigationItem.title = textField.text
            }
        }
    }
    
    @IBAction func logInButtonTapped(_ sender: UIButton) {
     
            performSegue(withIdentifier: "LogInButton", sender: logInButton)
        }
    
    @IBAction func forgotUserButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotUserName", sender: forgotUserNameButton)
    }
    
    @IBAction func forgotPassWordTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "forgot PassWord", sender: forgotPassWordButton)
    }
    
    
}

