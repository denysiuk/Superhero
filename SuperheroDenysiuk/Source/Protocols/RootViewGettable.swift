//
//  RootViewGettable.swift
//  SuperheroDenysiuk
//
//  Created by Vladyslav Denysiuk on 17.02.2022.
//

import UIKit

protocol RootViewGettable: UIViewController {
    
    associatedtype RootView: UIView
    
    var rootView: RootView? { get }
}

extension RootViewGettable {
    
    var rootView: RootView? {
        self.view as? RootView
    }
}
