//
//  Cell.swift
//  previewing
//
//  Created by Patrick Fuller on 3/7/22.
//


import SwiftUI

struct Cell: View {
    
    var dayDesc: DayDesc
    var body: some View {
        HStack {
            Image("golf")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(.green))
                .shadow(radius: 15)
            
            VStack(alignment: .leading) {
                Text(dayDesc.dayOfWeek)
                    .font(.title)
                Text(dayDesc.activity)
            }
        }
        .padding()
    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Cell(dayDesc: dayDescriptions[0])
                .previewLayout(.sizeThatFits)
                .environment(
                    \.sizeCategory,
                     .small)
            Cell(dayDesc: dayDescriptions[0])
                .previewLayout(.sizeThatFits)
                .environment(
                    \.sizeCategory,
                     .extraExtraExtraLarge)
        }
    }
}
