//
//  LoginCoordinator.swift
//  MyDay
//
//  Created by Jan Provazník on 03/03/2020.
//  Copyright © 2020 Jan Provazník. All rights reserved.
//

import UIKit

class LoginCoordinator: Coordinator {
    
    // MARK: Instance part
    init(window: UIWindow) {
        super.init(window: window)
    }
    
    //MARK: Interface
    func begin() {
        showLoginScreen()
    }
    
    // MARK: Navigation methods
    private func showLoginScreen() {
        let viewModel = LoginViewModel()
        let viewController = LoginViewController()
        changeWindowControllerTo(viewController)
    }
    
    // MARK: Helpers
//    private lazy var api: API = NativeAPI()
//    private lazy var networkManager: NetworkManager = MedicalcNetworkManager(api: api)
}
