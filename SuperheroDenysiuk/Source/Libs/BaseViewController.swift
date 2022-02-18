//
//  BaseViewController.swift
//  SuperheroDenysiuk
//
//  Created by Vladyslav Denysiuk on 17.02.2022.
//

import UIKit

class BaseViewController<RootViewType: UIView>: UIViewController, RootViewGettable {
    
    // MARK: -
    // MARK: Type Inferences
    
    typealias RootView = RootViewType
}
