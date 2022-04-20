//
//  Binding.swift
//  testingggg
//
//  Created by Mirna Helmy on 3/30/22.
//

import SwiftUI

struct BindingTest: View {
    @State var backgroundColor: Color
    @State var title: String = "is it working?"
    @State var forground: Color = Color.gray
    
    var body: some View {
        ZStack{
          backgroundColor
            
            PlayButton(backgroundColor: $backgroundColor,
                       buttonColor: .red,
                       title: $title,
            forground: $forground)
        }.ignoresSafeArea()
    }
}


struct PlayButton: View {
    //Binding is in child, and @State var "$" in the parent one8
    @Binding var backgroundColor: Color
    @State var buttonColor: Color
    @Binding var title: String
    @Binding var forground: Color
    
    var body: some View {
        Button(action: {
            
            backgroundColor = Color.red
            buttonColor = Color.black
            
        }, label: {
            Text(title)
                .padding()
                .foregroundColor(forground)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}



struct BindingTest_Previews: PreviewProvider {
    static var previews: some View {
        BindingTest(backgroundColor: .green)
    }
}


