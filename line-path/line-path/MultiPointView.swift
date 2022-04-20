//
//  MultiPointView.swift
//  line-path
//
//  Created by Patrick Fuller on 4/6/22.
//

import SwiftUI

struct MultiPointView: View {
    
    
    
    init(rawData: [DataObject]) {
    }
    
    
    struct CurvedLine: Shape {
                
        func path(in rect: CGRect) -> Path {
            
            let points = [
                CGPoint(x: 0, y: 0),
                CGPoint(x: 100, y: 100),
                CGPoint(x: 200, y: 100),
                CGPoint(x: 300, y: 300),
                CGPoint(x: 1010, y: 0),
                CGPoint(x: 1100, y: 100),
                CGPoint(x: 1200, y: 100),
                CGPoint(x: 1300, y: 300),
            ]
            
            let minX = points.map { point in point.x }.min()
            let maxX = points.map { point in point.x }.max()
            let minY = points.map { point in point.y }.min()
            let maxY = points.map { point in point.y }.max()
            guard let minX = minX, let maxX = maxX, let minY = minY, let maxY = maxY
            else {
                print("ERROR LOG: problem scaling data")
                return Path()
            }
            
            let scaledPoints = points.map { unscaledPoint -> CGPoint in
                // scale x with x scale
                let x = unscaledPoint.x * rect.width / (maxX - minX)
                // vertically invert and scale y with y scale
                let y = rect.maxY - ( unscaledPoint.y * rect.height / (maxY - minY))
                return CGPoint(x: x, y: y)
            }
            
            var path = Path()
            
            path.move(to: scaledPoints[0])
            for point in scaledPoints[1...] {
                path.addLine(to: point)
            }
            
            return path
        }
    }
    
    var body: some View {
        CurvedLine()
            .stroke(.mint, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
//            .stroke()
            .padding()
    }
}

struct MultiPointView_Previews: PreviewProvider {
    static var previews: some View {
        MultiPointView(rawData: DataObject.sampleData)
    }
}
