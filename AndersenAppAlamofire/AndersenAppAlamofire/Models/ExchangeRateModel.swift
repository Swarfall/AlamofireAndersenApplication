//
//  ExchangeRateModel.swift
//  AndersenAppAlamofire
//
//  Created by admin on 06.11.2019.
//  Copyright © 2019 Viacheslav Savitsky. All rights reserved.
//

import Foundation

struct ExchangeRate: Decodable {
    enum CodingKeys: String, CodingKey {
        case exchangeRate
    }
    let exchangeRate: [Exchange]
}
