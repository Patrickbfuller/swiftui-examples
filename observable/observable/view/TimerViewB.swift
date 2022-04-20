//
//  TimerView.swift
//  observable
//
//  Created by Patrick Fuller on 3/7/22.
//

import SwiftUI

struct TimerViewB: View {
    
    @EnvironmentObject var fancyTimer: FancyTimer
    
    var body: some View {
        VStack(spacing:10) {
            Text("Fancy Timer")
                .font(.title)
            Text("Environment object from higher @StateObject")
                .lineLimit(nil)
            Text("\(self.fancyTimer.value)")
            
        }
    }
}

struct TimerViewB_Previews: PreviewProvider {
    static var previews: some View {
        TimerViewB()
            .environmentObject(FancyTimer())
    }
}
