//
//  SheetTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/1/22.
//

import SwiftUI

struct SheetTest: View {
    @State var showSheet: Bool = false
    
    var body: some View {
        
        ZStack{
            Color.green
                .ignoresSafeArea()
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
            //DO NOT ADD more than ONE sheet per view, don't even add any conditional logic
            .sheet(isPresented: $showSheet, content: {
             SecondScreen()
            })
            
            //to cover the whole screen not just a sheet
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
        }
        
        
    }
}


struct SecondScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
        ZStack(alignment: .topLeading){
            Color.red
                .ignoresSafeArea()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
               // Text("Button")
                 //   .foregroundColor(.red)
                    .foregroundColor(.white)
                 //   .font(.headline)
                    .font(.largeTitle)
                    .padding(20)
               //     .background(Color.white.cornerRadius(10))
            })
        }
    }
}


struct SheetTest_Previews: PreviewProvider {
    static var previews: some View {
        SheetTest()
       // SecondScreen()
    }
}

