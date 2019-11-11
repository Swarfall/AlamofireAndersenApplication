//
//  CashCell.swift
//  AndersenAppAlamofire
//
//  Created by admin on 06.11.2019.
//  Copyright © 2019 Viacheslav Savitsky. All rights reserved.
//

import UIKit

class CashCell: UITableViewCell {
    
    @IBOutlet weak var baseCurrencyLabel: UILabel!
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var baseValueLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(model: Exchange) {
        guard let baseValue = model.baseCurrency else { return }
        baseCurrencyLabel.text = baseValue
        
        guard let currencyValue = model.currency else { return }
        currencyLabel.text = currencyValue
        
        guard let baseVal = model.saleRateNB else { return }
        baseValueLabel.text = "\(baseVal)"
        
        guard let valueLab = model.purchaseRateNB else { return }
        valueLabel.text = "\(valueLab)"
    }
}
