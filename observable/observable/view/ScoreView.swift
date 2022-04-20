//
//  ScoreView.swift
//  observable
//
//  Created by Patrick Fuller on 3/7/22.
//

import SwiftUI

struct ScoreView: View {
    
    @EnvironmentObject var userSettings: UserSettings

    var body: some View {
        VStack {
            
            Spacer()
            
            HStack {
                Text("User Setting Score")
                Text("\(userSettings.score)")
            }
            
            HStack {
                Button("Increment Score") {
                    userSettings.score += 1
                }
                .padding()
                .background(.purple)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            
            Spacer()
            
            FancyScoreView(score: self.$userSettings.score)
            
            Spacer()
        }
        
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
            .environmentObject(UserSettings())
    }
}
