//
//  ViewController.swift
//  AutoLayoutReprise
//
//  Created by César on 23/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickFacebook(_ sender: Any) {
        
        let alertOK = UIAlertAction(title: "OK", style: .default)
        
        let alertCancel = UIAlertAction(title: "Cancel", style: .cancel)
        
        let myAlert = UIAlertController(title: "Question", message: "Do you want to Log In with Facebook?", preferredStyle: .alert)
        
        myAlert.addAction(alertOK)
        
        myAlert.addAction(alertCancel)
        
        self.present(myAlert, animated: true)
        
        
    }
    
    @IBAction func clickEmail(_ sender: Any) {
        /*
        
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "Second") as? SecondViewController{
            self.view.window?.rootViewController = controller
        }
        
        */
    }
}

