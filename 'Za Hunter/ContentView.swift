//
//  ContentView.swift
//  'Za Hunter
//
//  Created by Mia Anderson on 2/10/25.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var startPosition = MapCameraPosition.userLocation(fallback: .automatic)
    @State private var mapRegion = MKCoordinateRegion()
    @StateObject var locationManager = LocationManager()
    var body: some View {
        NavigationView {
            Map(position: $startPosition) {
                UserAnnotation()
            }
            .navigationBarTitle("'Za Hunter", displayMode: .inline)
            .toolbarBackground(.hidden, for: .navigationBar)
        }
    }
}

#Preview {
    ContentView()
}
