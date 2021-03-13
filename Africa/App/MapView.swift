//
//  MapView.swift
//  Africa
//
//  Created by Seunghun Yang on 2021/03/12.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - PROPERTIES
    @State private var region: MKCoordinateRegion =  {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
        
    // MARK: - BODY
    var body: some View {
        // MARK: - 1. BASIC MAP
        //Map(coordinateRegion: $region)
        
        // MARK: - 2. ADVANCED MAP
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            // (A) : PIN (OLD, STATIC)
//            MapPin(coordinate: item.location, tint: .accentColor)
            
            // (B) : MARKER (NEW, STATIC)
//            MapMarker(coordinate: item.location, tint: .accentColor)
            
            // (C) : CUSTOM BASIC (INTERACTIVE)
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
            }
        })
    }
}

// MARK: - PREVIEW
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
            .previewDevice("iPhone 11")
    }
}
