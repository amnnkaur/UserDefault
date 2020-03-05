//
//  ViewController.swift
//  UserDefault
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class UserDefaultViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        txtName.text = ""
        txtName.text = ""
    }
    
    @IBAction func btnSave(_ sender: UIButton)
    {
        UserDefaults.standard.set(txtName.text, forKey: "name")
    }
    
    @IBAction func btnRetrieve(_ sender: UIButton)
    {
        let ud = UserDefaults.standard
        let name = ud.string(forKey: "name")
        
        lblName.text = name
    }
    
}

