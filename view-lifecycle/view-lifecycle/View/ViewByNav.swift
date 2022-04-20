//
//  ViewByNav.swift
//  view-lifecycle
//
//  Created by Patrick Fuller on 3/18/22.
//

import SwiftUI

struct ViewByNav: View {
    
    var obj = NavViewClassObject()
    var body: some View {
        Text("View by nav")
    }
}

struct ViewByNav_Previews: PreviewProvider {
    static var previews: some View {
        ViewByNav()
    }
}
