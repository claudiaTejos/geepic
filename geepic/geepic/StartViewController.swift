//
//  StartViewController.swift
//  geepic
//
//  Created by Ramon Honorio on 10/15/15.
//  Copyright © 2015 Ramon Honorio. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginAction(sender: AnyObject) {
    }
    
    @IBOutlet weak var signUpAction: UIButton!

}
