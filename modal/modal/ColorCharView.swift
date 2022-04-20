//
//  ColorCharView.swift
//  modal
//
//  Created by Patrick Fuller on 3/8/22.
//

import SwiftUI

struct ColorCharView: View {
    
    @EnvironmentObject var colorChar: RandomColorChar
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Exit View")
                        .padding(8)
                        .background(.blue)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
                .padding()
            }
            
            Spacer()
            
            Text("Color Char View")
                .font(.largeTitle)
            
            Text(String(colorChar.char))
                .padding(25)
                .overlay(Circle().stroke(lineWidth: 8))
                .foregroundColor(colorChar.color)
                .font(.system(size: 60))
            
            Button {
                colorChar.mutate()
            } label: {
                Text("Mutate")
                    .fontWeight(.black)
                    .font(.title3)
                    .padding()
                    .background(.blue)
                    .cornerRadius(15)
                    .foregroundColor(.white)
                    
            }

            Spacer()
        }
    }
}

struct ColorCharView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCharView().environmentObject(RandomColorChar())
    }
}
