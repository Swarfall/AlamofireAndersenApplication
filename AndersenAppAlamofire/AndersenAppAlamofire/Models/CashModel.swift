//
//  CashModel.swift
//  AndersenAppAlamofire
//
//  Created by admin on 06.11.2019.
//  Copyright © 2019 Viacheslav Savitsky. All rights reserved.
//

import Foundation

struct Exchange: Decodable  {
    var baseCurrency: String?
    var currency: String?
    var saleRateNB: Double?
    var purchaseRateNB: Double?
    
    enum CodingKeys: String, CodingKey {
        case baseCurrency = "baseCurrency"
        case currency
        case sale = "saleRateNB"
        case purchase = "purchaseRateNB"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.baseCurrency = try? container.decode(String.self, forKey: .baseCurrency)
        self.currency = try? container.decode(String.self, forKey: .currency)
        self.saleRateNB = try? container.decode(Double.self, forKey: .sale)
        self.purchaseRateNB = try? container.decode(Double.self, forKey: .purchase)
    }
}


