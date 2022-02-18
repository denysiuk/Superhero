//
//  UIVIew+Gradient.swift
//  SuperheroDenysiuk
//
//  Created by Vladyslav Denysiuk on 17.02.2022.
//

import UIKit

extension UIView {
    
    public func gradient() {
        let gradient = CAGradientLayer()
        
        gradient.frame = self.bounds
        
        let blackColor = UIColor(named: "ChooseHeroBackgroundColors/Black")?.cgColor
        let grayColor = UIColor(named: "ChooseHeroBackgroundColors/Gray")?.cgColor
        
        guard let blackColor = blackColor,
              let grayColor = grayColor
        else { return }
        
        gradient.colors = [
            grayColor,
            blackColor,
            grayColor
        ]
        
        self.layer.addSublayer(gradient)
    }
}
