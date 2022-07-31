//
//  KCNeuView.swift
//  KCNeumorphicKit
//
//  Created by Kushal Choudhary on 31/07/22.
//

import Foundation
import UIKit

public class KCNeuView: UIView{
    let downShadow = CAShapeLayer()
    public func setDropShadow(ViewBackgroundColor: UIColor, downShadowColorWithAlphaComponent: UIColor, upperShadowColourWithAlphaComponent: UIColor, shadowRadius: CGFloat, shadowOffset: Int, shadowCornerRadius: CGFloat){
        downShadow.frame = self.bounds
        downShadow.cornerRadius = shadowCornerRadius
        downShadow.backgroundColor = ViewBackgroundColor.cgColor
        downShadow.shadowColor = downShadowColorWithAlphaComponent.cgColor
        downShadow.shadowOffset = CGSize(width: shadowOffset, height: shadowOffset)
        downShadow.shadowOpacity = 1
        downShadow.shadowRadius = shadowRadius
        self.layer.insertSublayer(downShadow, at: 0)
        self.layer.cornerRadius = shadowCornerRadius
        self.layer.backgroundColor = ViewBackgroundColor.cgColor
        self.layer.shadowColor = upperShadowColourWithAlphaComponent.cgColor
        self.layer.shadowOffset = CGSize(width: -shadowOffset, height: -shadowOffset)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = shadowRadius
    }
    
    public func setInnerShadow(ViewBackgroundColor: UIColor, downShadowColorWithAlphaComponent: UIColor, upperShadowColourWithAlphaComponent: UIColor, shadowRadius: CGFloat, shadowOffset: Int, shadowCornerRadius: CGFloat){
        downShadow.frame = self.bounds
        downShadow.cornerRadius = shadowCornerRadius
        downShadow.backgroundColor = ViewBackgroundColor.cgColor
        downShadow.shadowColor = downShadowColorWithAlphaComponent.cgColor
        downShadow.shadowOffset = CGSize(width: -shadowOffset, height: -shadowOffset)
        downShadow.shadowOpacity = 1
        downShadow.shadowRadius = shadowRadius
        self.layer.insertSublayer(downShadow, at: 0)
        self.layer.cornerRadius = shadowCornerRadius
        self.layer.backgroundColor = ViewBackgroundColor.cgColor
        self.layer.shadowColor = upperShadowColourWithAlphaComponent.cgColor
        self.layer.shadowOffset = CGSize(width: shadowOffset, height: shadowOffset)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = shadowRadius
    }
}

