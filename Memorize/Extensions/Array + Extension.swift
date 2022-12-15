//
//  Array + Extension.swift
//  Memorize
//
//  Created by Eugene Kotovich on 13.11.2022.
//

import Foundation

extension Array {
    var oneAndOnly: Element? {
        if count == 1 {
            return first
        } else {
            return nil
        }
    }
}
