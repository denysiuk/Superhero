//
//  MainCoordinator.swift
//  SuperheroDenysiuk
//
//  Created by Vladyslav Denysiuk on 15.02.2022.
//

import UIKit

enum UserSex {
    
    case male
    case female
}

protocol MainCoordinatorDelegate: AnyObject {
    
    func chooseHeroDone(with sex: UserSex)
}

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.start()
    }
    
    func start() {
        let viewController = ChooseHeroViewController()
        viewController.coordinator = self
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    private func sexSelected(_ sex: UserSex) {
        let homeScreenViewController = HomeScreenViewController(sex: sex)
        
        self.navigationController.viewControllers = []
        self.navigationController.pushViewController(homeScreenViewController, animated: true)
    }
}

extension MainCoordinator: MainCoordinatorDelegate {
    
    func chooseHeroDone(with sex: UserSex) {
        self.sexSelected(sex)
    }
}
