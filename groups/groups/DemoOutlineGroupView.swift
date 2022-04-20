//
//  DemoOutlineGroupView.swift
//  groups
//
//  Created by Patrick Fuller on 3/10/22.
//

import SwiftUI

struct ListItem: Identifiable {
    let id: UUID = UUID()
    let name: String
    var items: [ListItem]?
    
    static func all() -> [ListItem] {
        let animals = [
            ListItem(name: "🐶"),
            ListItem(name: "🐰")
        ]
        let fruits = [
            ListItem(name: "🍑"),
            ListItem(name: "🍓"),
            ListItem(name: "🍉")
        ]
        let cars = [
            ListItem(name: "🚗"),
            ListItem(name: "🚙"),
            ListItem(name: "🏎"),
            ListItem(name: "🚕"),
        ]
        
        return [
            ListItem(
                name: "Animals",
                items: animals
            ),
            ListItem(
                name: "Fruits",
                items: fruits
            ),
            ListItem(
                name: "Vehicles",
                items: cars
            ),
        ]
    }
}

struct DemoOutlineGroupView: View {
    
    /*
     Opening handled WITHOUT a binding
     */
    var body: some View {
        List {
            ForEach(ListItem.all()) { category in
                Section(header: Text("header"))
                {
                    OutlineGroup(
                        category,
                        children: \.items
                    ) { item in
                        Text(item.name)
                    }
                }
            }
        }
    }
}

struct DemoOutlineView_Previews: PreviewProvider {
    static var previews: some View {
        DemoOutlineGroupView()
    }
}
