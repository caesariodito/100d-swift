//
//  TestingMap.swift
//  Navigation
//
//  Created by MacBook Air on 03/05/24.
//

import SwiftUI
import MapKit


struct TestingMap: View {
    private var surabaya = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -7.28528015, longitude: 112.63167963116932), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    var body: some View {
        NavigationStack {
            Map(initialPosition: MapCameraPosition.region(surabaya)) {
                Marker("Ciputra University", coordinate: CLLocationCoordinate2D(latitude: -7.28528015, longitude: 112.63167963116932))
                    .tint(.orange)
                Marker("Rumah Pak Loe", coordinate: CLLocationCoordinate2D(latitude: -8.28528015, longitude: 114.63167963116932))
                    .tint(.blue)
                Marker("Anjay", coordinate: CLLocationCoordinate2D(latitude: -18, longitude: -11))
                Annotation("Something something", coordinate: CLLocationCoordinate2D(latitude: -8.28528015, longitude: 111.63167963116932)) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color.yellow)
                        Text("Mak Loe")
                            .padding(5)
                    }
                }
            }
            .mapControlVisibility(.hidden)
        }
    }
}

#Preview {
    TestingMap()
}
