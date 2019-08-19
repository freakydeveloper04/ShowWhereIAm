//
//  ViewController.swift
//  ShowWhereIAm
//
//  Created by Vaibhav Mehta on 18/08/19.
//  Copyright © 2019 Vaibhav Mehta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    
    @IBAction func mapsButton(_ sender: Any) {
    }
    
    @IBAction func aboutButton(_ sender: Any) {
    }
    
    @IBAction func logoutButtton(_ sender: Any) {
        
        let story = UIStoryboard(name: "Main", bundle: nil)
        let vc = story.instantiateViewController(withIdentifier: "login")
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true, completion: nil)
    }
}

