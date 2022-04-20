//
//  SwipeActionsTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/18/22.
//

import SwiftUI

struct SwipeActionsTest: View {
    
    //Another great feature coming from the iOS 15 updates for SwiftUI is the .swipeActions() modifier! Previously, we List rows were limited to only 1 swipe action - swipe to delete. Now, however, we can totally customize these rows and add a whole bunch of buttons to them. In this video we will implement a few different variations of list row actions, each with different colors, titles, and swiping from both the leading and the trailing edge.
    
  
    @State var fruits: [String] = [
       "apple", "orange", "banana", "peach"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                
                //using $0 instead of "fruit in" and Text(fruit) before
                Text($0.capitalized)
                    .swipeActions(edge: .leading, allowsFullSwipe: true, content: {
                        Button("Share") {
                            
                        }
                        .tint(.yellow)
                    })
                
                
                
                    .swipeActions(edge: .trailing,
                                  //it's better to be false if we have multible buttons
                                  allowsFullSwipe: false) {
                        Button("Save") {
                            
                        }
                        .tint(.green)
                        
                        Button("Junk") {
                            
                        }
                        .tint(.blue)
                        
                        
                        Button("Archive") {
                            
                        }
                        .tint(.black)
                    }
            }
           // .onDelete(perform: delete)
            }
        }
    
    func delete(indexSet: IndexSet) {
        
    }
}

struct SwipeActionsTest_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionsTest()
    }
}
