//
//  NavigationViewTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/4/22.
//

import SwiftUI
//ONE NAVIGATION VIEW PER APP,, STARTING FROM THE BIG HIREARCHY PER APP
struct NavigationViewTest: View {
    var body: some View {
        NavigationView{
            ScrollView{
                
                NavigationLink("Hello, world!", destination:
                                MyOtherScreen())
                
                //               NavigationLink("2nd page", destination: MyOtherScreen())
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
            //  .navigationBarTitleDisplayMode(.automatic)
            // .navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    HStack {
                        
                        NavigationLink(
                            destination: MyOtherScreen(),
                            label:{ Image(systemName: "person.fill")
                            })
                        Image(systemName: "flame.fill")
                        
                    },
                trailing:
                    NavigationLink(
                        destination: MyOtherScreen(),
                        label: {
                            Image(systemName: "gear")
                        })
                    .accentColor(.red)
            )
        }
    }
}


struct MyOtherScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body : some View{
        ZStack{
            Color.green.ignoresSafeArea(.all)
                .navigationTitle("Green Screen!")
            //     .navigationBarHidden(true)
            
            VStack{
                Button("Back Button") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click here",
                               destination: Text("3rd screen!"))
            }
        }
    }
}

struct NavigationViewTest_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewTest()
    }
}
