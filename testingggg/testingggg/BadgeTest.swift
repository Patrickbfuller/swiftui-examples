//
//  BadgeTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/18/22.
//

import SwiftUI
// Badges can be a crucial part of your application, especially if you are using the native SwiftUI TabView. By adding a badge to a tab, you can notify user's that they have a new alert/notification on that screen!

//Works  only only with
//List
//TabView

struct BadgeTest: View {
    var body: some View {
        
        List {
            Text("Hello, world!")
                .badge("NEW ITEMS!")
            Text("Hello, world!")
                .badge(5)
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
        }
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(5)
//
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//            //won't show anything if it's 0
//                .badge(0)
//
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge("NEW")
//        }
        
    }
}

struct BadgeTest_Previews: PreviewProvider {
    static var previews: some View {
        BadgeTest()
    }
}
