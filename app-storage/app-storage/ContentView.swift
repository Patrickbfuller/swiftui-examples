//
//  ContentView.swift
//  app-storage
//
//  Created by Patrick Fuller on 3/10/22.
//

import SwiftUI

struct CustomSettings: Codable {
    let fancyMode: Bool
    let name: String
}

struct ContentView: View {
    
    
    @AppStorage("customSettings")
    var settingsData: Data = Data()
    
    @State var output: String = ""
    
    
    @AppStorage("darkMode")
    var isDarkMode: Bool = false
    
    var body: some View {
        VStack {
            
            Text("Object App Storage")
            
            Text(output)
            
            Button {
                guard let settings  = try? JSONDecoder().decode(CustomSettings.self, from: settingsData) else { return }
                output = "customSettingsON: \(settings.fancyMode) name: \(settings.name)"
            } label: {
                Text("Load custom from App Storage")
            }

            
            Button("Save in appstorage") {
                let settings = CustomSettings(fancyMode: true, name: "johndoe")
                
                guard let settingsData = try?
                        JSONEncoder().encode(settings) else { return }
                self.settingsData = settingsData
            }
            
            Divider()
            
            Text(isDarkMode ? "Dark" : "False")
            Toggle("Select Mode", isOn: $isDarkMode)
                .fixedSize()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
