//
//  AppCoordinator.swift
//  MyDay
//
//  Created by Jan Provazník on 16/02/2020.
//  Copyright © 2020 Jan Provazník. All rights reserved.
//

import UIKit

class AppCoordinator: Coordinator {
    
    //MARK: - Instance part
    init() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        super.init(window: window, navigationController: nil)
    }
    
    // MARK: Inteface
    func begin() {
        runLoginFlow()
    }
    
    // MARK: Navigation methods
    private func runLoginFlow() {
        let coordinator = LoginCoordinator(window: window)
        addChildCoordinator(coordinator)
        coordinator.begin()
    }
    
    
    // MARK: Helpers
//    private let database: Database = try! RealmDatabase()
}

