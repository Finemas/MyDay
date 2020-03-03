//
//  FormField.swift
//  MyDay
//
//  Created by Jan Provazník on 21/02/2020.
//  Copyright © 2020 Jan Provazník. All rights reserved.
//

import Foundation
import RxSwift
import RxRelay

protocol FormField {
    var title: String { get }
    var value: Observable<String> { get }
    var isValid: Observable<Bool> { get }
}

// MARK: -
class TextInputField: FormField {
    var title: String
    var value: Observable<String> {
        return text.asObservable()
    }
    
    var isValid: Observable<Bool> {
        return text.map({ self.validator($0) }).asObservable()
    }
    
    let text = BehaviorRelay<String>(value: "")
    let validator: (String) -> Bool
    
    init(title: String, validator: @escaping (String) -> Bool) {
        self.title = title
        self.validator = validator
    }
}

// MARK: -
class ProtectedTextInputField: TextInputField {

    var protected = BehaviorRelay<Bool>(value: true)
}
