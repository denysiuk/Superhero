//
//  HomeScreenViewController.swift
//  SuperheroDenysiuk
//
//  Created by Vladyslav Denysiuk on 18.02.2022.
//

import UIKit

class HomeScreenViewController: BaseViewController<HomeScreenView> {
    
    // MARK: -
    // MARK: Variables
    
    let sex: UserSex
    
    var coordinator: MainCoordinatorDelegate?
    
    // MARK: -
    // MARK: ViewController Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        self.rootView?.start(viewController: self, sex: self.sex)
    }
    
    // MARK: -
    // MARK: Initializing
    
    init(sex: UserSex) {
        self.sex = sex
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
