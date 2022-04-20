//
//  SliderTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/8/22.
//

import SwiftUI

struct SliderTest: View {
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    
    
    var body: some View {
        VStack {
            Text("Rating:")
            // Text("\(sliderValue)")
            Text(String(format: "%.2f", sliderValue))
                .foregroundColor(color)
            //   Slider(value: $sliderValue)
            //  Slider(value: $sliderValue, in: 1...5)
            //            Slider(value: $sliderValue, in: 1...5,
            //                 //how much do you want it to slide by
            //                   step:1
            //                   //step: 0.5
            //            )
            
            Slider(
                   value: $sliderValue,
                   in: 1...5,
                   onEditingChanged: { (_) in
                       color = .green
                        },
                    minimumValueLabel: Text("1"),
                    maximumValueLabel: Text("5"),
                    label: {
                        Text("Title")
            })
            .accentColor(.red)
            .padding()
        }
    }
}

struct SliderTest_Previews: PreviewProvider {
    static var previews: some View {
        SliderTest()
    }
}
