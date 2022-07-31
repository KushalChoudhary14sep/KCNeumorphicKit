//
//  KCNeuTextField.swift
//  KCNeumorphicKit
//
//  Created by Kushal Choudhary on 31/07/22.
//

import Foundation
import UIKit

public class KCNeuTextField: UITextField, UITextFieldDelegate {
    
    private let downShadow = CALayer()
    private let upperShadow = CALayer()
    private var dropShadowEnabled = Bool()
    
    private var dropViewBackgroundColor = UIColor.clear
    private var dropDownShadowColorWithAlphaComponent = UIColor.clear
    private var dropUpperShadowColourWithAlphaComponent = UIColor.clear
    private var dropShadowRadius = CGFloat()
    private var dropShadowOffset = Int()
    private var dropShadowCornerRadius = CGFloat()
    
    private var innerViewBackgroundColor = UIColor.clear
    private var innerDownShadowColorWithAlphaComponent = UIColor.clear
    private var innerUpperShadowColourWithAlphaComponent = UIColor.clear
    private var innerShadowRadius = CGFloat()
    private var innerShadowOffset = Int()
    private var innerShadowCornerRadius = CGFloat()
    
    public override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    required init(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)!
        addTarget(self, action: #selector(activate), for: .editingDidBegin)
        addTarget(self, action: #selector(deActivate), for: .editingDidEnd)
     }
    
    public func setDropShadow(ViewBackgroundColor: UIColor, downShadowColorWithAlphaComponent: UIColor, upperShadowColourWithAlphaComponent: UIColor, shadowRadius: CGFloat, shadowOffset: Int,shadowCornerRadius: CGFloat){
        downShadow.frame = self.bounds
        downShadow.cornerRadius = shadowCornerRadius
        downShadow.backgroundColor = ViewBackgroundColor.cgColor
        downShadow.shadowColor = downShadowColorWithAlphaComponent.cgColor
        downShadow.shadowOffset = CGSize(width: shadowOffset, height: shadowOffset)
        downShadow.shadowOpacity = 1
        downShadow.shadowRadius = shadowRadius
        self.layer.insertSublayer(downShadow, at: 0)
        self.layer.cornerRadius = shadowCornerRadius
        self.backgroundColor = ViewBackgroundColor
        self.layer.shadowColor = upperShadowColourWithAlphaComponent.cgColor
        self.layer.shadowOffset = CGSize(width: -shadowOffset, height: -shadowOffset)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = shadowRadius
        self.dropShadowEnabled = true
        self.innerViewBackgroundColor = ViewBackgroundColor
        self.innerDownShadowColorWithAlphaComponent = downShadowColorWithAlphaComponent
        self.innerUpperShadowColourWithAlphaComponent = upperShadowColourWithAlphaComponent
        self.innerShadowRadius = shadowRadius
        self.innerShadowOffset = shadowOffset
        self.innerShadowCornerRadius = shadowCornerRadius
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
        self.backgroundColor = ViewBackgroundColor
        self.layer.shadowColor = upperShadowColourWithAlphaComponent.cgColor
        self.layer.shadowOffset = CGSize(width: shadowOffset, height: shadowOffset)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = shadowRadius
        self.dropShadowEnabled = false
        self.dropViewBackgroundColor = ViewBackgroundColor
        self.dropDownShadowColorWithAlphaComponent = downShadowColorWithAlphaComponent
        self.dropUpperShadowColourWithAlphaComponent = upperShadowColourWithAlphaComponent
        self.dropShadowRadius = shadowRadius
        self.dropShadowOffset = shadowOffset
        self.dropShadowCornerRadius = shadowCornerRadius
    }
    
    @objc private func activate() {
        if dropShadowEnabled {
            self.setInnerShadow(ViewBackgroundColor: self.innerViewBackgroundColor, downShadowColorWithAlphaComponent: self.innerDownShadowColorWithAlphaComponent, upperShadowColourWithAlphaComponent: self.innerUpperShadowColourWithAlphaComponent, shadowRadius: self.innerShadowRadius, shadowOffset: self.innerShadowOffset, shadowCornerRadius: self.innerShadowCornerRadius)
        } else {
            self.setDropShadow(ViewBackgroundColor: self.dropViewBackgroundColor, downShadowColorWithAlphaComponent: self.dropDownShadowColorWithAlphaComponent, upperShadowColourWithAlphaComponent: self.dropUpperShadowColourWithAlphaComponent, shadowRadius: self.dropShadowRadius, shadowOffset: self.dropShadowOffset, shadowCornerRadius: self.dropShadowCornerRadius)
        }
    }

    @objc private func deActivate() {
        if self.text?.count ?? 0 < 1{
            if dropShadowEnabled {
                self.setInnerShadow(ViewBackgroundColor: self.innerViewBackgroundColor, downShadowColorWithAlphaComponent: self.innerDownShadowColorWithAlphaComponent, upperShadowColourWithAlphaComponent: self.innerUpperShadowColourWithAlphaComponent, shadowRadius: self.innerShadowRadius, shadowOffset: self.innerShadowOffset, shadowCornerRadius: self.innerShadowCornerRadius)
            } else {
                self.setDropShadow(ViewBackgroundColor: self.dropViewBackgroundColor, downShadowColorWithAlphaComponent: self.dropDownShadowColorWithAlphaComponent, upperShadowColourWithAlphaComponent: self.dropUpperShadowColourWithAlphaComponent, shadowRadius: self.dropShadowRadius, shadowOffset: self.dropShadowOffset, shadowCornerRadius: self.dropShadowCornerRadius)
            }
        }
    }
    
    public override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 15, dy: 0)
    }
}
