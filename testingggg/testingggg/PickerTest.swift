//
//  PickerTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/7/22.
//

import SwiftUI

struct PickerTest: View {
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attribute: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white]
        UISegmentedControl.appearance().setTitleTextAttributes(attribute, for: .selected)
    }
    
    
    
    var body: some View {
//        VStack {
            //            HStack {
            //                Text(selection)
                            Picker(selection: $selection,
                                   label: Text("Picker"),
                                   content: {
//                                Text("Recent").tag("Recent")
//
//                                Text("Oldest").tag("Oldest")
                                ForEach(filterOptions.indices) { index in
                                    Text(filterOptions[index])
                                        .tag(filterOptions[index])
                                }
                            })
                            .pickerStyle(SegmentedPickerStyle())
                            .padding()
                            
            //            }
            
            
            
            //
            //            HStack{
            //                Text("Age:")
            //                Text(selection)
            //            }
            
            
            Picker(
                //selection: .constant(1),
                selection: $selection,
                label:
                    HStack {
                        Text("Filter:")
                        Text(selection)
                    }
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
                ,
                content: {
                    ForEach(filterOptions, id:\.self) { option in
                        HStack {
                            Text(option)
                            Image(systemName: "heart.fill")
                                .tag(option)
                        }
                    }
                    
                    //                       ForEach(18..<100) { number in
                    //                           Text("\(number)")
                    //                               .tag("\(number)")
                    //                       }
                    //                       Text("1").tag("1")
                    //                       Text("2").tag("2")
                    //                       Text("3").tag("3")
                    //                       Text("4").tag("4")
                    //                       Text("5").tag("5")
                    //                       Text("6").tag("6")
                    //                       Text("7").tag("7")
                    //                       Text("8").tag("8")
                    //                       Text("9").tag("9")
                    //                       Text("10").tag("10")
                })
            .pickerStyle(MenuPickerStyle())
        }
//    }
    
    //    func showRecent() {
    //        if $selection {
    //
    //        }
    //    }
}

struct PickerTest_Previews: PreviewProvider {
    static var previews: some View {
        PickerTest()
    }
}
