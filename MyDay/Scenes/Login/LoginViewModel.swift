//
//  LoginViewModel.swift
//  MyDay
//
//  Created by Jan Provazník on 21/02/2020.
//  Copyright © 2020 Jan Provazník. All rights reserved.
//

import Foundation
import RxRelay

class LoginViewModel {
    let usernameTextField = TextInputField(title: "username", validator: { !$0.isEmpty })
    let passwordTextField = ProtectedTextInputField(title: "password", validator: { !$0.isEmpty })
}
