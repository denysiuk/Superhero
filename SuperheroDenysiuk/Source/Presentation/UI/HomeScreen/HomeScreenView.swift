//
//  HomeScreenView.swift
//  SuperheroDenysiuk
//
//  Created by Vladyslav Denysiuk on 18.02.2022.
//

import UIKit

class HomeScreenView: UIView {
    
    // MARK: -
    // MARK: Outlets
    
    @IBOutlet weak var supermanBackgroundImage: UIImageView!
    @IBOutlet weak var supermanLabel: UILabel!
    
    // MARK: -
    // MARK: Variables
    
    var viewController: HomeScreenViewController?
    
    // MARK: -
    // MARK: Public
    
    public func start(viewController: HomeScreenViewController, sex: UserSex) {
        self.viewController = viewController
        
        self.config(with: sex)
    }
    
    // MARK: -
    // MARK: Private
    
    private func config(with sex: UserSex) {
        self.supermanBackgroundImage.homeScreenGradient()
        
        switch sex {
        case .male:
            self.configSuperman()
        case .female:
            self.configSupergirl()
        }
    }
    
    private func configSuperman() {
        self.supermanLabel.text = "Superman"
        self.supermanBackgroundImage.image = UIImage(named: "superman")
    }
    
    private func configSupergirl() {
        self.supermanLabel.text = "Supergirl"
        self.supermanBackgroundImage.image = UIImage(named: "supergirl")
    }
}
