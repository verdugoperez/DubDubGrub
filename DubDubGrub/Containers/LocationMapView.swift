//
//  LocationMapView.swift
//  DubDubGrub
//
//  Created by Administrador on 23/10/23.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    private let dummyLocation = CLLocationCoordinate2D(latitude: 37.331516, longitude: -121.891054)
    private let dummySpan = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    @State private var region: MKCoordinateRegion
    
    init() {
        _region = State(initialValue: MKCoordinateRegion(center: dummyLocation, span: dummySpan))
    }
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region).edgesIgnoringSafeArea(.top)
            VStack {
                Image.mapLogo
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                    .shadow(radius: 10)
                Spacer()
            }
        }
    }
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}
