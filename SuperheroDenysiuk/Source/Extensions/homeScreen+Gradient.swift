//
//  UIVIew+Gradient.swift
//  SuperheroDenysiuk
//
//  Created by Vladyslav Denysiuk on 17.02.2022.
//

import UIKit

extension UIView {
    
    public func homeScreenGradient() {
        let homeScreenGradient = CAGradientLayer()
        
        homeScreenGradient.frame = self.bounds
        
        let blackColor = UIColor(named: "ChooseHeroBackgroundColors/Black")?.cgColor
        let transparentColor = UIColor(named: "ChooseHeroBackgroundColors/Transparent")?.cgColor
        
        guard let blackColor = blackColor,
              let transparentColor = transparentColor
        else { return }
        
        homeScreenGradient.colors = [
            transparentColor,
            blackColor
        ]
        
        self.layer.addSublayer(homeScreenGradient)
    }
}
