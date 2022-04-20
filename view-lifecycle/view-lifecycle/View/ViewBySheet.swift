//
//  ViewBySheet.swift
//  view-lifecycle
//
//  Created by Patrick Fuller on 3/18/22.
//

import SwiftUI

struct ViewBySheet: View {
    
    var obj = SheetViewClassObject()
    
    var body: some View {
        Text("View by sheet")
    }
}

struct ViewBySheet_Previews: PreviewProvider {
    static var previews: some View {
        ViewBySheet()
    }
}
