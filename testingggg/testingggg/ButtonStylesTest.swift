//
//  ButtonStylesTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/18/22.
//

import SwiftUI


//.buttonStyle to add pre-made backgrounds to our buttons. We will also learn how to use the .buttonBorderShape to control the shape and corner radius of the button. Lastly, we will look at the new .controlSize modifier which can help us automatically resize our Buttons to a pre-set sizes!



//control size it sets the "label" size

struct ButtonStylesTest: View {
    var body: some View {
        VStack{
            Button("Button Title") {
            
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.large)
            .buttonStyle(.plain)
         
            
            
            
            Button("Button Title") {
            
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
         //   .buttonStyle(.automatic)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .buttonBorderShape(.capsule)
            

            
            
            Button("Button Title") {
            
            }
             //.frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.automatic)
            
            
            
            Button("Button Title") {
            
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            //that changes for light and dark mode
         //   .buttonStyle(.bordered)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)
            .buttonBorderShape(.roundedRectangle)
            
            
            
            Button("Button Title") {
            
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
         //   .buttonStyle(.borderless)
            .buttonStyle(.borderedProminent)
            .controlSize(.mini)
            .buttonBorderShape(.roundedRectangle(radius: 10))
        }
        
    }
}

struct ButtonStylesTest_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesTest()
            
    }
}
