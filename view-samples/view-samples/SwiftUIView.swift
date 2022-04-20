//
//  SwiftUIView.swift
//  view-samples
//
//  Created by Patrick Fuller on 3/8/22.
//

import SwiftUI

struct SwiftUIView: View {
    
    @State var color: Color = Color.gray
    var body: some View {
        
        VStack {
            
            ColorPicker("Our Color Picker", selection: $color, supportsOpacity: true)
                .scaleEffect(CGSize(width: 2, height: 2))
                .labelsHidden()
            
            ColorPicker("Our Color Picker", selection: $color, supportsOpacity: true)
                
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
