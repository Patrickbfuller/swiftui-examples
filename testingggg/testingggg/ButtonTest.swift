//
//  Button.swift
//  testingggg
//
//  Created by Mirna Helmy on 3/29/22.
//

import SwiftUI

struct ButtonTest: View {
    @State var title: String = "This is my title"
    @State var backgroundColor: Color
    @State var count: Int = 0
  // @State var image: Image
    @State var color: Color
    
    var body: some View {
        
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                Text("\(count)")
              //  Image(image)
                
                Button("Press me!") {
                    //Button action
                    backgroundColor = .brown
                    self.title = "BUTTON WAS PRESSED"
                    count += 1
                }
                .accentColor(.red)
                
                
        //Another way
                Button(action: {
              //Button action
                    backgroundColor = .green
                    self.title = "Button #2 was pressed"
                    count -= 1
                    
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(
                            Color.blue
                        .cornerRadius(10)
                        .shadow(radius: 10))
                           
                })
                
                
                //Another Button
                Button(action: {
                    backgroundColor = .orange
                    self.title = "Button #3 was pressed"
                }, label: {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 75, height: 75)
                        .shadow(radius: 10)
                        .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red))
                    
                })
                
                
                //Another Button
                
                Button(action: {
                    backgroundColor = .white
                    self.title = "Button #4 was pressed"
                }, label: {
                    Text("Finish".uppercased())
                        .font(.caption)
                        .bold()
                        .foregroundColor(color)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(
                            Capsule()
                                .stroke(Color.gray, lineWidth: 2.0)
                        )
                })
            }
        }
    }
}
    

struct ButtonTest_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTest(backgroundColor: Color.white, color: Color.blue)
    }
}
