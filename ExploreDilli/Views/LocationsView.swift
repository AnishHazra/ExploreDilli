//
//  LocationsView.swift
//  ExploreDilli
//
//  Created by Anish Hazra on 15/02/25.
//

import SwiftUI
import MapKit

// MARK: View
struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    let maxWidthForIpad: CGFloat = 700
    
    var body: some View {
        ZStack{
            mapLayer
                .ignoresSafeArea()
            VStack(spacing: 0){
                header
                    .padding()
                    .frame(maxWidth: maxWidthForIpad)
                Spacer()
                locationPreviewStack
            }
        }
        .sheet(item: $vm.sheetLocation, onDismiss: nil){
            location in
            LocationDetailView(location: location)
        }
    }
}

// MARK: Preview
#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}

// MARK: Extension
extension LocationsView {
    private var header: some View {
        VStack {
            Button(
                action: vm.toggleLocationList,
                 label: {
                Text(vm.mapLocation.name + "," + vm.mapLocation.cityName)
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundColor(.primary)
                    .frame(minHeight: 55)
                    .frame(maxWidth: .infinity)
                    .animation(.none, value: vm.mapLocation)
                    .overlay(alignment: .leading){
                        Image(systemName: "arrow.down")
                            .font(.headline)
                            .foregroundColor(.primary)
                            .padding()
                            .rotationEffect(
                                Angle(degrees: vm.showLocationsList ? 180 : 0)
                            )
                    }
            })
            if vm.showLocationsList{
                LocationsListView()
            }
            
        }
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
    }
    
    private var mapLayer: some View {
        Map(coordinateRegion: $vm.mapRegion,
            annotationItems: vm.locations,
            annotationContent: {
            location in
            MapAnnotation(coordinate: location.coordinates){
                LocationMapAnnotationView()
                    .scaleEffect(vm.mapLocation == location ? 1 : 0.7)
                    .shadow(radius: 10)
                    .onTapGesture {
                        vm.showNextLocation(location: location)
                    }
            }
        })
    }
    
    private var locationPreviewStack: some View {
        ZStack{
            ForEach(vm.locations){
                location in
                if vm.mapLocation == location{
                    LocationPreviewView(location: location)
                        .shadow(color: Color.black.opacity(0.3), radius: 20)
                        .padding()
                        .frame(maxWidth: maxWidthForIpad)
                        .frame(maxWidth: .infinity)
                        .transition(
                            .asymmetric(
                                insertion: .move(edge: .trailing),
                                removal: .move(edge: .leading)
                            )
                        )
                }
            }
        }
    }
}
