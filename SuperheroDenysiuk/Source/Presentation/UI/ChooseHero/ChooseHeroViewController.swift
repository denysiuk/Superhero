//
//  ChooseHeroViewController.swift
//  SuperheroDenysiuk
//
//  Created by Vladyslav Denysiuk on 17.02.2022.
//

import UIKit

class ChooseHeroViewController: BaseViewController<ChooseHeroView> {
    
    // MARK: -
    // MARK: Variables
    
    var coordinator: MainCoordinatorDelegate?
    
    // MARK: -
    // MARK: ViewController Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        self.rootView?.start()
    }
}
