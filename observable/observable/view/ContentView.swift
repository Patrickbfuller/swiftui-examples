//
//  ContentView.swift
//  observable
//
//  Created by Patrick Fuller on 3/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var fancyTimer = FancyTimer()
    @StateObject var userSettings = UserSettings()
    @StateObject var alphabetTicker = AlphabetTicker()
    
    var body: some View {
        
        NavigationView {
            ZStack {
                VStack(alignment: .trailing, spacing: 30) {
                    
                    NavigationLink("Fancy Timer A >") {
                        TimerViewA()
                    }

                    NavigationLink("Fancy Timer B >") {
                        TimerViewB()
                            .environmentObject(fancyTimer)
                    }
                    NavigationLink("Score Counter >") {
                        ScoreView()
                            .environmentObject(userSettings)
                    }
                    NavigationLink("Alphabet Tally >") {
                        AlphabetTickerView()
                            .environmentObject(alphabetTicker)
                    }
                }
                .font(.largeTitle)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
