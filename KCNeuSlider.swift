//
//  KCNeuSlider.swift
//  KCNeumorphicKit
//
//  Created by Kushal Choudhary on 31/07/22.
//

import Foundation
import UIKit

public class KCNeuSlider: UISlider {
    private let downShadow = CALayer()
    public override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func setDropShadow(tintColor: UIColor){
        self.layer.shadowColor = UIColor.white.withAlphaComponent(0.3).cgColor
        self.layer.shadowRadius = 3
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = CGSize(width: -1.5, height: -1.5)
        self.tintColor = tintColor
    }
}
