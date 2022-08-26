//
//  KCNeuSwitch.swift
//  KCNeumorphicKit
//
//  Created by Kushal Choudhary on 31/07/22.
//

import Foundation
import UIKit

open class KCNeuSwitch: UISwitch {
   private let downShadow = CALayer()
    public override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func setDropShadow(ViewBackgroundColor: UIColor, downShadowColorWithAlphaComponent: UIColor, upperShadowColourWithAlphaComponent: UIColor, shadowRadius: CGFloat, shadowCornerRadius: CGFloat){
        downShadow.frame = self.bounds
        downShadow.cornerRadius = shadowCornerRadius
        downShadow.backgroundColor = ViewBackgroundColor.cgColor
        downShadow.shadowColor = downShadowColorWithAlphaComponent.cgColor
        downShadow.shadowOffset = CGSize(width: 3, height: 3)
        downShadow.shadowOpacity = 1
        downShadow.shadowRadius = shadowRadius
        self.layer.insertSublayer(downShadow, at: 0)
        self.layer.cornerRadius = shadowCornerRadius
        self.layer.backgroundColor = ViewBackgroundColor.cgColor
        self.layer.shadowColor = upperShadowColourWithAlphaComponent.cgColor
        self.layer.shadowOffset = CGSize(width: -3, height: -3)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = shadowRadius
        if self.isOn == true{
            downShadow.shadowOffset = CGSize(width: 3, height: 3)
            self.layer.shadowOffset = CGSize(width: -3, height: -3)
        } else {
            downShadow.shadowOffset = CGSize(width: -3, height: -3)
            self.layer.shadowOffset = CGSize(width: 3, height: 3)
        }
    }
}
