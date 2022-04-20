//
//  NavViewClassObject.swift
//  view-lifecycle
//
//  Created by Patrick Fuller on 3/18/22.
//

import Foundation

class NavViewClassObject {
    
    init() {
        print("\(NavViewClassObject.Type.self) init-ing")
    }
    
    deinit {
        print("\(NavViewClassObject.Type.self) deinit-ing")
    }
}
