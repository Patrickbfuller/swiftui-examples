//
//  PersonDetailView.swift
//  swiftui-in-uikit
//
//  Created by Patrick Fuller on 3/7/22.
//

import SwiftUI

struct PersonDetailView: View {
    
    @State private var selected: Bool = false
    
    var person: Person
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .cornerRadius(25)
                .foregroundColor(.black)
                .opacity(0.8)
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(.mint, lineWidth: 5)
                )
                .padding()
                .background(.indigo)
            
            VStack(alignment: .center) {
                
                Text("Personal Details")
                    .font(.title)
                
                StarViewRepresentation(selected: $selected)
                    
                    .frame(width: 55, height: 55)
                    .padding()
                
                HStack {
                    Text("This persons name is: ")
                    Text(person.name)
                        .fontWeight(.black)
                    //                        .foregroundColor(.green)
                }
                
                HStack {
                    Text("They have been alive: ")
                    Text("\(person.age) years")
                        .fontWeight(.black)
                    //                        .foregroundColor(.green)
                }
            }
            .foregroundColor(.white)
            .font(.title3)
        }
    }
}

struct PersonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetailView(person: people[0])
    }
}
