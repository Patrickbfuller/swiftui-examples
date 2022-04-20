//
//  FancyTimer.swift
//  observable
//
//  Created by Patrick Fuller on 3/7/22.
//

import SwiftUI
import Combine

class FancyTimer: ObservableObject {
    
    @Published var value: Int = 0
    
    init() {
        
        DispatchQueue.main.async {
            let _ = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
                self.value += 1
            }
        }
    }
    
}
