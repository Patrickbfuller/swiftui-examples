//
//  RandomColorChar.swift
//  modal
//
//  Created by Patrick Fuller on 3/8/22.
//

import Foundation
import SwiftUI
class RandomColorChar: ObservableObject {
    
    @Published var randomRed: CGFloat = 0
    @Published var randomGreen: CGFloat = 0
    @Published var randomBlue: CGFloat = 0

    @Published var randomCharInt = 0
    
    var color: Color {
        Color(red: randomRed, green: randomGreen, blue: randomBlue)
    }
    
    var char: Character {
        Character(UnicodeScalar(randomCharInt + 65) ?? "A")
    }
    
    init() {
        mutate()
    }
    
    func mutate() {
        randomRed = CGFloat.random(in: 0...1)
        randomGreen = CGFloat.random(in: 0...1)
        randomBlue = CGFloat.random(in: 0...1)
        randomCharInt = Int.random(in: 0...26)
    }
    
}
