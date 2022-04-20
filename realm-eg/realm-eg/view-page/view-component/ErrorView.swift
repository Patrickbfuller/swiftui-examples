//
//  ErrorView.swift
//  realm-eg
//
//  Created by Patrick Fuller on 4/19/22.
//

import SwiftUI
import RealmSwift

struct ErrorView: View {
    var error: Error
        
    var body: some View {
        VStack {
            Text("Error opening the realm: \(error.localizedDescription)")
        }
    }
}
