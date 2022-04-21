//
//  TextEditorTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/7/22.
//

import SwiftUI

struct TextEditorTest: View {
    @State var textEditorText: String = "This is the starting text."
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                 //   .foregroundColor(.red)
                    .colorMultiply(Color.gray)
                    .cornerRadius(10)
                Button {
                    savedText = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Text(savedText)
                Spacer()
            }
            .padding()
           // .background(Color.green)
            .navigationTitle("TextEditorTest!")
        }
    }
}

struct TextEditorTest_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorTest()
    }
}
