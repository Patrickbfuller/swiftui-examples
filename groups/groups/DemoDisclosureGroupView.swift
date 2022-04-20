//
//  DemoDisclosureGroupView.swift
//  groups
//
//  Created by Patrick Fuller on 3/10/22.
//

import SwiftUI

struct DemoDisclosureGroupView: View {
    
    /*
     Opening attached to a binding
     */
    
    @State var animalsExpanded: Bool = true
    @State var fruitsExpanded: Bool = true
    let animals = ["🦙", "🐑", "🐐"]
    let fruits = ["🍑", "🍓", "🍒"]
    var body: some View {
        
        List {
            DisclosureGroup(
                isExpanded: $animalsExpanded) {
                    HStack {
                        ForEach(animals, id: \.self) {
                            listedAnimal in
                            Text(listedAnimal)
                        }
                    }
                } label: {
                    Text("Animals")
                }
            DisclosureGroup(isExpanded: $fruitsExpanded) {
                HStack {
                    ForEach(fruits, id: \.self) {
                        listedFruit in
                        
                            Text(listedFruit)
                        
                    }
                }
            } label: {
                Text("Fruits")
            }
            
        }
    }
}

struct DemoDisclosureGroupView_Previews: PreviewProvider {
    static var previews: some View {
        DemoDisclosureGroupView()
    }
}
