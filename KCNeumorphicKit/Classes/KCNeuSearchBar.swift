//
//  KCNeuSearchBar.swift
//  KCNeumorphicKit
//
//  Created by Kushal Choudhary on 31/07/22.
//

import Foundation
import UIKit

open class KCNeuSearchBar: UISearchBar{
    let downShadow = CAShapeLayer()
    public override class func awakeFromNib() {
        super.awakeFromNib()
    }
    public func setDropShadow(downShadowColorWithAlphaComponent: UIColor, upperShadowColourWithAlphaComponent: UIColor, shadowRadius: CGFloat, shadowOffset: Int, shadowCornerRadius: CGFloat){
        downShadow.frame = self.bounds
        downShadow.cornerRadius = shadowCornerRadius
        downShadow.shadowColor = downShadowColorWithAlphaComponent.cgColor
        downShadow.shadowOffset = CGSize(width: shadowOffset, height: shadowOffset)
        downShadow.shadowOpacity = 1
        downShadow.shadowRadius = shadowRadius
        self.layer.insertSublayer(downShadow, at: 0)
        self.layer.cornerRadius = shadowCornerRadius
        self.layer.shadowColor = upperShadowColourWithAlphaComponent.cgColor
        self.layer.shadowOffset = CGSize(width: -shadowOffset, height: -shadowOffset)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = shadowRadius
        
    }
    
    public func setupSearchBarUI(SearchBarColour: UIColor){
        self.barTintColor = SearchBarColour
        self.layer.cornerRadius = self.frame.size.height/2
        self.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner]
        self.searchTextPositionAdjustment = UIOffset(horizontal: 10, vertical: 0)
        if let textField = self.value(forKey: "searchField") as? UITextField {
            
            textField.borderStyle = UITextField.BorderStyle.roundedRect
            textField.layer.cornerRadius = textField.frame.size.height / 2
            textField.layer.masksToBounds = true
            textField.backgroundColor = SearchBarColour
            textField.attributedPlaceholder = NSAttributedString(string: textField.placeholder ?? "Search", attributes: [NSAttributedStringKey.foregroundColor : UIColor.lightGray])
            
            if let leftView = textField.leftView as? UIImageView {
                leftView.image = leftView.image?.withRenderingMode(.alwaysTemplate)
                leftView.tintColor = UIColor.lightGray
            }
        }
    }
    }
