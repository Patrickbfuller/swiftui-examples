//
//  SheetViewClassObject.swift
//  view-lifecycle
//
//  Created by Patrick Fuller on 3/18/22.
//

import Foundation


class SheetViewClassObject {
    
    init() {
        print("\(SheetViewClassObject.Type.self) init-ing")
    }
    
    deinit {
        print("\(SheetViewClassObject.Type.self) deinit-ing")
    }
}
