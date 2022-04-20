//
//  Hw.swift
//  testingggg
//
//  Created by Mirna Helmy on 3/18/22.
//

import SwiftUI

struct ForEachTest: View {
    
    @State var title: String
    
    let shopping = [ "cars",
                     "toys",
                     "cake",
                     "toyagain",
                     "different car",
                     "enough"]
    var body: some View {
        VStack {
           
            
        ForEach( shopping, id: \.self) { items in
           
                Text(items)

            
            }
            
            VStack {
                Text(title)
                    .padding()
                Button("Button1") {
                  title = "Hello"
                   
                }.padding()
            }

            Button("Button2") {
                title = "Hey, it's me"
                    
            }.padding()

              
          
   
            
            Image(systemName: "heart.fill")
                .font(.system(size: 200))
                .foregroundColor(Color(.red))
            
        }
    }
}
 
struct ForEachTest_Previews: PreviewProvider {
    static var previews: some View {
        ForEachTest(title: "")
    }
}
