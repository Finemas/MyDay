//
//  Array.swift
//  MyDay
//
//  Created by Jan Provazník on 16/02/2020.
//  Copyright © 2020 Jan Provazník. All rights reserved.
//

import Foundation

// MARK: Equatable implementation
extension Array where Element: Equatable {
    /**
     Remove first collection element that is equal to the given `object`
     - Parameter object: Object to remove
     Source: http://stackoverflow.com/questions/24938948/array-extension-to-remove-object-by-value
     */
    mutating func remove(_ object: Element) -> Element? {
        if let index = firstIndex(of: object) {
            return remove(at: index)
        }
        return nil
    }
}
