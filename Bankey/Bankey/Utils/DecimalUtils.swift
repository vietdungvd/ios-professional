//
//  DecimalUtils.swift
//  Bankey
//
//  Created by Finsify iOS on 5/5/22.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
