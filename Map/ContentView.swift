//
//  ContentView.swift
//  Map
//
//  Created by Maya Krishnan on 2/9/26.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var startPosition = MapCameraPosition.userLocation(fallback: .automatic)
    @State private var locationManager = LocationManager()
    var body: some View {
        Map(position: $startPosition) {
            UserAnnotation()
        }
    }
}

#Preview {
    ContentView()
}
