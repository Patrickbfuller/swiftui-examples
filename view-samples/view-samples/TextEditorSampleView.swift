//
//  TextEditorSampleView.swift
//  view-samples
//
//  Created by Patrick Fuller on 3/8/22.
//

import SwiftUI

struct TextEditorSampleView: View {
    
    @State var description: String = "start text here"
    
    init() {
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        VStack {
            Text("Our Text Editor")
                .font(.title)
            TextEditor(text: $description)
                .font(.system(size: 25, weight: .black, design: .monospaced))
                .foregroundColor(.mint)
                .padding()
                .background(.black)
                .cornerRadius(10)
                .padding()
        }
    }
}

struct TextEditorSampleView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorSampleView()
    }
}
