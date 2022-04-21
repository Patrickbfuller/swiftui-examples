//
//  ColorPickerTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/8/22.
//

import SwiftUI

struct ColorPickerTest: View {
    @State var backgroundColor: Color = .green
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea(.all)
            ColorPicker("Select a color",
                        selection: $backgroundColor,
                        supportsOpacity: true)
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        }
    }
}

struct ColorPickerTest_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerTest()
    }
}
