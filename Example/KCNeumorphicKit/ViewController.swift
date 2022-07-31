//
//  ViewController.swift
//  KCNeumorphicKit
//
//  Created by KushalChoudhary14sep on 07/31/2022.
//  Copyright (c) 2022 KushalChoudhary14sep. All rights reserved.
//

import UIKit
import KCNeumorphicKit

extension UIColor {
    static let inkwell = UIColor(named: "inkwell")!
    static let neon = UIColor(named: "neon")!
}

class ViewController: UIViewController {
    @IBOutlet weak var neuView: KCNeuView!
    @IBOutlet weak var neuView2: KCNeuView!
    @IBOutlet weak var neuButton: KCNeuButton!
    @IBOutlet weak var neuTextField: KCNeuTextField!
    @IBOutlet weak var neuSearchBar: KCNeuSearchBar!
    @IBOutlet weak var neuSlider: KCNeuSlider!
    @IBOutlet weak var neuSwitch: KCNeuSwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .inkwell
        neuView.layer.cornerRadius = 15
        neuView2.layer.cornerRadius = 15
        self.neuButton.setTitleColor(.neon, for: .normal)
        self.neuTextField.tintColor = .neon
        self.neuSearchBar.tintColor = .neon
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.setupNeuView()
        self.setupNeuView2()
        self.setupNeuButton()
        self.setupNeuTextField()
        self.setupNeuSearchBar()
        self.setupNeuSlider()
        self.setupNeuSwitch()
    }
    
    private func setupNeuView() {
        neuView.setDropShadow(ViewBackgroundColor: .inkwell, downShadowColorWithAlphaComponent: UIColor.black.withAlphaComponent(0.4), upperShadowColourWithAlphaComponent: UIColor.white.withAlphaComponent(0.07), shadowRadius: 3, shadowOffset: 3, shadowCornerRadius: neuView.layer.cornerRadius)
    }
    private func setupNeuView2() {
        neuView2.setInnerShadow(ViewBackgroundColor: .inkwell, downShadowColorWithAlphaComponent: UIColor.black.withAlphaComponent(0.4), upperShadowColourWithAlphaComponent: UIColor.white.withAlphaComponent(0.07), shadowRadius: 3, shadowOffset: 3, shadowCornerRadius: neuView.layer.cornerRadius)
    }
    private func setupNeuButton() {
        neuButton.setDropShadow(ViewBackgroundColor: .inkwell, buttonTitleColour: UIColor.neon,downShadowColorWithAlphaComponent: UIColor.black.withAlphaComponent(0.4), upperShadowColourWithAlphaComponent: UIColor.white.withAlphaComponent(0.07), shadowRadius: 3, shadowCornerRadius: neuButton.frame.size.height / 2)
    }
    private func setupNeuTextField() {
        neuTextField.setDropShadow(ViewBackgroundColor: .inkwell, downShadowColorWithAlphaComponent: UIColor.black.withAlphaComponent(0.4), upperShadowColourWithAlphaComponent: UIColor.white.withAlphaComponent(0.07), shadowRadius: 3, shadowOffset: 2, shadowCornerRadius: 0)

    }
    private func setupNeuSearchBar() {
        neuSearchBar.setupSearchBarUI(SearchBarColour: .inkwell)
        neuSearchBar.setDropShadow(downShadowColorWithAlphaComponent: UIColor.black.withAlphaComponent(0.4), upperShadowColourWithAlphaComponent: UIColor.white.withAlphaComponent(0.07), shadowRadius: 3, shadowOffset: 2, shadowCornerRadius: 5)
    }
    private func setupNeuSlider() {
        neuSlider.setDropShadow(tintColor: .neon)
    }
    private func setupNeuSwitch() {
        neuSwitch.setDropShadow(ViewBackgroundColor: .inkwell, downShadowColorWithAlphaComponent: UIColor.black.withAlphaComponent(0.5), upperShadowColourWithAlphaComponent: UIColor.white.withAlphaComponent(0.15), shadowRadius: 3, shadowCornerRadius: neuSwitch.frame.size.height/2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

