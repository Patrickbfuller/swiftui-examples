//
//  TabViewTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/11/22.
//

import SwiftUI

struct TabViewTest: View {
    @State var selectedTab: Int = 0
    let icons: [String] = [
    "heart.fill", "globe", "house.fill", "person.fill"
    ]
    var body: some View {
        
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(.red)
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(.blue)
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(.green)
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 300))
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
    
        
        
        // If you use selection, don't forget to add TAG
   
//            TabView(selection: $selectedTab) {
//                HomeView(selectedTab: $selectedTab)
//
//                    .tabItem {
//                        Image(systemName: "house.fill")
//                        Text("Home")
//                    }
//                    .tag(0)
//                Text("BROWSE TAB")
//                    .tabItem {
//                        Image(systemName: "globe")
//                        Text("Browse")
//                    }
//                    .tag(1)
//                Text("PROFILE TAB")
//                    .tabItem {
//                        Image(systemName: "person.fill")
//                        Text("Profile")
//                    }
//                    .tag(2)
//            }
//
//            .accentColor(.red)
            
    }
}

struct TabViewTest_Previews: PreviewProvider {
    static var previews: some View {
        TabViewTest()
    }
}

struct HomeView: View {
    @Binding var selectedTab: Int
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            
            VStack{
            Text("Home Tab")
                .font(.largeTitle)
                .foregroundColor(.white)
            
            
            Button(action: {
                selectedTab = 2
            }, label: {
                Text("Go to profile")
                    .font(.headline)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(10)
            })
            }
        }
    }
}
