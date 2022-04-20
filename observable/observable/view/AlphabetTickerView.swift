//
//  AlphabetTickerView.swift
//  observable
//
//  Created by Patrick Fuller on 3/7/22.
//

import SwiftUI

struct AlphabetTickerView: View {
    
    @EnvironmentObject var alphabetTicker: AlphabetTicker
    
    var body: some View {
        VStack {
            Text("Alphabet Ticker")
            Text(String(alphabetTicker.char))
            Button("Next Character") {
                alphabetTicker.incrementChar()
                
            }
            .padding()
            .background(.blue)
            .cornerRadius(20)
            .foregroundColor(.white)
            .font(.title3)
        }
    }
}

struct AlphabetTickerView_Previews: PreviewProvider {
    static var previews: some View {
        AlphabetTickerView()
            .environmentObject(AlphabetTicker())
    }
}
