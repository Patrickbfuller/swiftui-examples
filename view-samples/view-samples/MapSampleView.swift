//
//  MapSampleView.swift
//  view-samples
//
//  Created by Patrick Fuller on 3/8/22.
//

import SwiftUI
import MapKit

struct MapSampleView: View {
    
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 33.865,
            longitude: -78.019
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 0.3,
            longitudeDelta: 0.3
        )
    )
    var body: some View {
        
        Map(coordinateRegion: $region)
    }
}

struct MapSampleView_Previews: PreviewProvider {
    static var previews: some View {
        MapSampleView()
    }
}
