//
//  PopOverTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/4/22.
//

import SwiftUI

struct PopOverTest: View {
    @State var showNewScreen: Bool = false
    var body: some View {
        ZStack{
            Color.orange
                .ignoresSafeArea(.all)
            
            VStack{
                Button("Button") {
                    showNewScreen.toggle()
                    
                }
                .font(.largeTitle)
                Spacer()
            }
            //Method 1 -SheetTest
                .sheet(isPresented: $showNewScreen, content: {
                    NewScreen()
                })
            
            //Mehod 2 - TRANSITIION
//            ZStack{
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            } .zIndex(2.0)
            //Method 3 - ANIMATION OFFSET (HIDE THE FULL SCREEN)
            
//            NewScreen(showNewScreen: $showNewScreen)
//                .padding(.top, 100)
//                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
//                .animation(.spring())
            
        }
    }
}



struct NewScreen:View {
    @Environment(\.presentationMode) var presentationMode
  //  @Binding var showNewScreen: Bool
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea(.all)
            
            Button {
               // showNewScreen.toggle()
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
    }
}

struct PopOverTest_Previews: PreviewProvider {
    static var previews: some View {
        PopOverTest()
    }
}
