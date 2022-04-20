//
//  AlphabetTicker.swift
//  observable
//
//  Created by Patrick Fuller on 3/7/22.
//

import SwiftUI
import Combine

class AlphabetTicker: ObservableObject {
    
    @Published var number = 0
    
    var char: Character {
        get {
            Character(UnicodeScalar(number + 65) ?? UnicodeScalar(65))
        }
    }
    
    func incrementChar() {
        number += 1
        number %= 26
    }
}
