//
//  IfTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 3/31/22.
//

import SwiftUI

struct IfTest: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    
    
    var body: some View {
        VStack (spacing: 20){
            
            //isloading?
            Button("IS LOADING:\(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
                //done loading//
            } else  {
                //whatever you wanna show
                }
        
            
            Button("Circle Button:\(showCircle.description)") {
                showCircle.toggle()
            }
            
            Button("Rectangle Button:\(showRectangle.description)") {
                showRectangle.toggle()
            }
            
            
            
            
            //just if
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            //if, and
            if showCircle && showRectangle {
                Circle()
                    .frame(width: 100, height: 100)
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
            //if, or
            if showCircle || showRectangle {
                Circle()
                    .frame(width: 100, height: 100)
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
            
            //if else
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            } else {
                
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
            
            //if not
            if !showRectangle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            
            
            
            // if, else if, else
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            } else if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            } else {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 200, height: 100)
                
            }
            
          //  Spacer()
        }
    }
}



struct IfTest_Previews: PreviewProvider {
    static var previews: some View {
        IfTest()
    }
}
