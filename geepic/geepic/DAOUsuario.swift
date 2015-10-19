//
//  DAOUsuario.swift
//  geepic
//
//  Created by Ramon Honorio on 10/15/15.
//  Copyright © 2015 Ramon Honorio. All rights reserved.
//

import UIKit
import Parse

class DAOUsuario {

    func signUp() -> Bool{
        do {
            try PFUser.currentUser()?.signUp()
//            print("Sign up success!")
            return true
        } catch {
//            print("Sign up failed!")
            return false
        }
    }
    
    func login(username: String, password: String) {
        PFUser.logInWithUsernameInBackground(username, password: password) { (user, error) -> Void in
            if let _ = error as NSError? {
                print(error?.description)
            }
        }
    }
    
}
