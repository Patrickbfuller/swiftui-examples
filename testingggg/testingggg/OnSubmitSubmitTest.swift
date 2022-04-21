//
//  OnSubmitSubmitLabelTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/19/22.
//

import SwiftUI
//As of iOS 15, we can use the new .submitLabel modifier to change the color and text of the submit button on the keyboard. Even more importantly, we can also use .onSubmit to run custom functions when users click on the submit button! These features were not available before iOS 15 in SwiftUI.

struct OnSubmitSubmitTest: View {
    @State var text: String = ""
    var body: some View {
        VStack {
            TextField("Placeholder...", text: $text)
                .submitLabel(.route)
                .onSubmit {
                    print("Something to the console!")
                }
            
            
            TextField("Placeholder...", text: $text)
                .submitLabel(.next)
                .onSubmit {
                    print("Something to the console!")
                }
            
            
            TextField("Placeholder...", text: $text)
                .submitLabel(.search)
                .onSubmit {
                    print("Something to the console!")
                }
        }
    }
}

struct OnSubmitSubmitTest_Previews: PreviewProvider {
    static var previews: some View {
        OnSubmitSubmitTest()
    }
}
