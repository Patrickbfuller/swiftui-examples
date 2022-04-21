//
//  Initializer.swift
//  testingggg
//
//  Created by Mirna Helmy on 3/28/22.
//

import SwiftUI

struct InitializerAndenum: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
//    init(count: Int, title: String) {
//
//        self.count = count
//        self.title = title
//
//        if title == "Apple" {
//            self.backgroundColor = .red
//        } else {
//            self.backgroundColor = .orange
//        }
//    }
//
    
    
    init(count: Int, fruit: Fruit) {
        
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    
    enum Fruit {
        case apple
        case orange
    }
    
    
    
    var body: some View {
        VStack(spacing: 12 ){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text("\(title)")
                .font(.headline)
                .foregroundColor(.white)
            
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)

    }
}

struct InitializerANDenum_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
        InitializerAndenum(count: 5, fruit: .apple)
        InitializerAndenum(count: 20, fruit: .orange)
        }
    }
}
