//
//  StarViewRepresentation.swift
//  swiftui-in-uikit
//
//  Created by Patrick Fuller on 3/7/22.
//

import Foundation
import SwiftUI

struct StarViewRepresentation: UIViewRepresentable {
    
    @Binding var selected: Bool
    
    typealias UIViewType = StarView
    
    func makeUIView(context: Context) -> StarView {
        let starView = StarView()
        return starView
    }
    
    func updateUIView(_ uiView: StarView, context: Context) {
        uiView.selected = self.selected
    }
}
