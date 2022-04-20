//
//  TimerView.swift
//  observable
//
//  Created by Patrick Fuller on 3/7/22.
//

import SwiftUI

struct TimerViewA: View {
    
    @StateObject var fancyTimer = FancyTimer()
    
    var body: some View {
        VStack(spacing:10) {
            Text("Fancy Timer")
                .font(.title)
            Text("@StateObject declared in this view")
                .lineLimit(nil)
            Text("\(self.fancyTimer.value)")
            
        }
    }
}

struct TimerViewA_Previews: PreviewProvider {
    static var previews: some View {
        TimerViewA()
    }
}
