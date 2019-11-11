//
//  SearchButton.swift
//  AndersenAppAlamofire
//
//  Created by admin on 06.11.2019.
//  Copyright © 2019 Viacheslav Savitsky. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class SearchButton: UIButton {

        @IBInspectable var cornerRadius: Double {
             get {
               return Double(self.layer.cornerRadius)
             }set {
               self.layer.cornerRadius = CGFloat(newValue)
             }
        }
        @IBInspectable var borderWidth: Double {
              get {
                return Double(self.layer.borderWidth)
              }
              set {
               self.layer.borderWidth = CGFloat(newValue)
              }
        }
        @IBInspectable var borderColor: UIColor? {
             get {
                return UIColor(cgColor: self.layer.borderColor!)
             }
             set {
                self.layer.borderColor = newValue?.cgColor
             }
        }
        @IBInspectable var shadowColor: UIColor? {
            get {
               return UIColor(cgColor: self.layer.shadowColor!)
            }
            set {
               self.layer.shadowColor = newValue?.cgColor
            }
        }
        @IBInspectable var shadowOpacity: Float {
            get {
               return self.layer.shadowOpacity
            }
            set {
               self.layer.shadowOpacity = newValue
           }
        }
        
}

    extension CGColor {
        private var UIColor: UIKit.UIColor {
            return UIKit.UIColor(cgColor: self)
        }
    }

