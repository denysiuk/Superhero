//
//  MainCoordinator.swift
//  SuperheroDenysiuk
//
//  Created by Vladyslav Denysiuk on 15.02.2022.
//

import UIKit

protocol MainCoordinatorDelegate: AnyObject {
    
    func chooseHeroDone()
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
    
//    private sexSelected(_ sex: Sex) {
//        let detailsController = DetailsController(sex: sex)
//    }
}

extension MainCoordinator: MainCoordinatorDelegate {
    
    func chooseHeroDone() {
//        self.nextView()
    }
}
