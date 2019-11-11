//
//  CashViewController.swift
//  AndersenAppAlamofire
//
//  Created by admin on 06.11.2019.
//  Copyright © 2019 Viacheslav Savitsky. All rights reserved.
//

import UIKit
import Alamofire

class CashViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var listData: [Exchange] = []
    var dateString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getDataWithRequest()
        tableView.register(UINib(nibName: "CashCell", bundle: nil), forCellReuseIdentifier: "CashCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }
    
        func getDataWithRequest() {
            var parameters: [String: Any] = [:]
            parameters["date"] = dateString
            
            Alamofire.request("https://api.privatbank.ua/p24api/exchange_rates?json", method: .get, parameters: parameters, encoding: URLEncoding.default, headers: nil).responseJSON { (response) in

                switch response.result {
                case .success:
                    do {
                        let root = try JSONDecoder().decode(ExchangeRate.self, from: response.data!)
                        self.listData = root.exchangeRate
                        
                        print(self.listData)
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                    } catch let error{
                       print(error)
                    }
                case .failure(let error):
                    print(error)
                }
            }
    }
}

extension CashViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CashCell", for: indexPath) as! CashCell
        cell.update(model: listData[indexPath.row])
        return cell
    }
}
