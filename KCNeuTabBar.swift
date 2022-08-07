//
//  KCNeuTabBar.swift
//  KCNeumorphicKit
//
//  Created by Kushal Choudhary on 31/07/22.
//

import Foundation
import UIKit

open class KCNeuTabBar: UITabBar {
    public func setDropShadow(ViewBackgroundColor: UIColor, upperShadowColourWithAlphaComponent: UIColor, shadowRadius: CGFloat){
        self.tintColor = ViewBackgroundColor
        self.layer.shadowColor = upperShadowColourWithAlphaComponent.cgColor
        self.layer.shadowOffset = CGSize(width: -5, height: -5)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = shadowRadius
    }
}
