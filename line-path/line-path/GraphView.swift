//
//  GraphView.swift
//  line-path
//
//  Created by Patrick Fuller on 4/6/22.
//

import SwiftUI

struct GraphView: View {
    
    enum Representation {
        case empty
        case singlePoint
        case multiplePoints
    }
    var representation = Representation.multiplePoints
    
    let rawData: [DataObject]
    
    init(rawData: [DataObject]) {
        self.rawData = rawData
        guard !rawData.isEmpty else {
            representation = .empty
            return
        }
        guard rawData.count > 1 else {
            representation = .singlePoint
            return
        }
    }
    
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 20).foregroundColor(.mint.opacity(0.2))
            if representation == .empty {
                EmptyGraphView()
            } else if representation == .singlePoint {
                SinglePointView()
            } else {
                MultiPointView(rawData: DataObject.sampleData)
            }
            
        }
        
        .padding()
        .border(.orange, width: 1)
    }
}

struct GraphView_Previews: PreviewProvider {
    static var previews: some View {
        GraphView(rawData: DataObject.sampleData)
    }
}

struct DataObject {
    var value: Double
    var date: Date
    
    static let sampleData: [DataObject] = [
        DataObject(value: 0.0, date: Date.now),
        DataObject(value: 0.5, date: Date.now + 1),
        DataObject(value: 0.1, date: Date.now + 2)
    ]
    
}
