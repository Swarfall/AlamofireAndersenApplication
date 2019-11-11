//
//  ViewController.swift
//  AndersenAppAlamofire
//
//  Created by admin on 06.11.2019.
//  Copyright © 2019 Viacheslav Savitsky. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var dateTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapSearchButton(_ sender: Any) {
        if dateTextField.text == nil {
            presentOneActionButtonAlert(title: "Date is empty", message: "Write date", buttonTitle: "OK")
        } else {
            let vc = storyboard?.instantiateViewController(identifier: "CashViewController") as! CashViewController
            vc.dateString = dateTextField.text ?? ""
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}

