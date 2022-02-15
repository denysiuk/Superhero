//
//  MainCoordinator.swift
//  SuperheroDenysiuk
//
//  Created by Vladyslav Denysiuk on 15.02.2022.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = ViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
}
