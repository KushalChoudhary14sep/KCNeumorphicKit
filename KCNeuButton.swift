//
//  KCNeuButton.swift
//  KCNeumorphicKit
//
//  Created by Kushal Choudhary on 31/07/22.
//

import Foundation
import UIKit

open class KCNeuButton: UIButton{
    private let downShadow = CALayer()
    private var titleColour = UIColor()
    public func setDropShadow(ViewBackgroundColor: UIColor, buttonTitleColour: UIColor,downShadowColorWithAlphaComponent: UIColor, upperShadowColourWithAlphaComponent: UIColor, shadowRadius: CGFloat, shadowCornerRadius: CGFloat){
        downShadow.frame = self.bounds
        downShadow.cornerRadius = shadowCornerRadius
        downShadow.backgroundColor = ViewBackgroundColor.cgColor
        downShadow.shadowColor = downShadowColorWithAlphaComponent.cgColor
        downShadow.shadowOffset = CGSize(width: 5, height: 5)
        downShadow.shadowOpacity = 1
        downShadow.shadowRadius = shadowRadius
        self.layer.insertSublayer(downShadow, at: 0)
        self.layer.cornerRadius = shadowCornerRadius
        self.layer.backgroundColor = ViewBackgroundColor.cgColor
        self.layer.shadowColor = upperShadowColourWithAlphaComponent.cgColor
        self.layer.shadowOffset = CGSize(width: -5, height: -5)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = shadowRadius
        self.titleColour = buttonTitleColour
    }
    
    override open var isHighlighted: Bool {
        didSet { isHighlighted ? isTapped() : isReleased() }
    }
    override open var isEnabled: Bool {
        didSet{ isHighlighted ? isReleased() : isTapped() }
    }
    
    private func isTapped(){
        downShadow.shadowOffset = CGSize(width: -5, height: -5)
        self.layer.shadowOffset = CGSize(width: 5, height: 5)
        self.setTitleColor(titleColour.withAlphaComponent(0.5), for: .normal)
    }
    
    private func isReleased(){
        downShadow.shadowOffset = CGSize(width: 5, height: 5)
        self.layer.shadowOffset = CGSize(width: -5, height: -5)
        self.setTitleColor(titleColour.withAlphaComponent(1), for: .normal)
    }
    
}
