//
//  ViewController.swift
//  LoginTesting
//
//  Created by shahzeb yousaf on 25/11/2019.
//  Copyright © 2019 shahzeb yousaf. All rights reserved.
// App ID: 2578875818859612

import UIKit
import FacebookCore
import FacebookLogin
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let loginButton = FBLoginButton(frame: .zero, permissions: [.publicProfile])
        loginButton.center = view.center
        view.addSubview(loginButton)
        
        if let access = AccessToken.current{
            print("User is logged in with access \(access)")
            let vc = storyboard?.instantiateViewController(identifier: "main")
            navigationController?.pushViewController(vc!, animated: true)
        }else{
            print("User is currently logged out.")
        }
       
        
    }
    

}

