//
//  OnTabGestureTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/12/22.
//

import SwiftUI

struct OnTabGestureTest: View {
    @State var isSelected: Bool = false
    var body: some View {
        VStack(spacing: 40) {
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
            //Button
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth:.infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            })
            
            //ontab gesture
            
            Text("TAP GESTURE")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth:.infinity)
                .background(Color.blue)
                .cornerRadius(25)
            //                .onTapGesture {
            //                    isSelected.toggle()
            //                }
            //change happen after 2 tabs
                .onTapGesture(count: 2, perform: { isSelected.toggle()
                })
            
            
            
            Spacer()
        }
        .padding(40)
    }
}

struct OnTabGestureTest_Previews: PreviewProvider {
    static var previews: some View {
        OnTabGestureTest()
    }
}
