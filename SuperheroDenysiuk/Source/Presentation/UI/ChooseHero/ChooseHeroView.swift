//
//  ChooseHeroView.swift
//  SuperheroDenysiuk
//
//  Created by Vladyslav Denysiuk on 17.02.2022.
//

import UIKit

class ChooseHeroView: UIView {
    
    // MARK: -
    // MARK: Outlets
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBOutlet var maleButton: UIButton?
    @IBOutlet var femaleButton: UIButton?
    
    // MARK: -
    // MARK: Public
    
    public func start() {
        config()
    }
    
    // MARK: -
    // MARK: Private
    
    private func config() {
        backgroundImage.gradient()
        
        self.titleLabel.text = "SUPERHERO"
        self.descriptionLabel.text = "выберите героя"
        
        self.maleButton?.layer.cornerRadius = 30
        self.maleButton?.titleLabel?.text = "SUPERMAN"
        
        self.femaleButton?.layer.cornerRadius = 30
        self.femaleButton?.titleLabel?.text = "SUPERGIRL"
    }
}
