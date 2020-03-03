//
//  ViewController.swift
//  MyDay
//
//  Created by Jan Provazník on 16/02/2020.
//  Copyright © 2020 Jan Provazník. All rights reserved.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func setupView() {
        view.addSubview(formStackView)
        formStackView.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
        }
        
        formStackView.addArrangedSubview(usernameTextField)
        formStackView.addArrangedSubview(passwordTextField)
//        formStackView.addArrangedSubview(loginButton)
    }
    
    private lazy var formStackView: UIStackView = {
        let formStackView = UIStackView()
        formStackView.alignment = .center
        formStackView.axis = .vertical
        formStackView.distribution = .fill
        formStackView.spacing = 20
        return formStackView
    }()
    
    private lazy var usernameTextField: UITextField = {
        let textField = UITextField()
        textField.textContentType = .username
        textField.placeholder = "username"
        return textField
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.textContentType = .password
        textField.isSecureTextEntry = true
        return textField
    }()
    
//    private lazy var loginButton: UIButton = {
//        let loginButton = UIButton()
//        loginButton.setTitle("Login", for: .normal)
//        return loginButton
//    }()
}
