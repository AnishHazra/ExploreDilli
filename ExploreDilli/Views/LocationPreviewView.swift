//
//  LocationPreviewView.swift
//  ExploreDilli
//
//  Created by Anish Hazra on 15/02/25.
//

import SwiftUI

// MARK: View
struct LocationPreviewView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    let location: Location
    
    var body: some View {
        HStack(alignment: .bottom) {
            VStack(alignment: .leading, spacing: 16.0){
                imageSection
                titleSection
            }
            VStack{
                learnMoreButton
                nextButton
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.ultraThinMaterial)
                .offset(y: 65)
        )
        .cornerRadius(10)
    }
}

// MARK: Preview
#Preview {
    ZStack {
        Color.green.ignoresSafeArea()
        LocationPreviewView(location: LocationsDataService.locations.first!)
            .padding()
    }
    .environmentObject(LocationsViewModel())
}

//MARK: Extension
extension LocationPreviewView {
    private var imageSection: some View {
        ZStack{
            if let imageNames = location.imageNames.first{
                Image(imageNames)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
            }
        }
        .padding(6)
        .background(Color.white)
        .cornerRadius(10)
    }
    
    private var titleSection: some View {
        VStack (alignment: .leading){
            Text(location.name)
                .font(.title2)
                .fontWeight(.semibold)
            
            Text(location.cityName)
                .font(.subheadline)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var learnMoreButton: some View {
        Button{
            vm.sheetLocation = location
        } label: {
            Text("Lear more")
                .font(.headline)
                .frame(width: 125, height: 35)
        }
        .buttonStyle(.borderedProminent)
    }
    
    private var nextButton: some View {
        Button{
            vm.nextButtonPressed()
        } label: {
            Text("Next")
                .font(.headline)
                .frame(width: 125, height: 35)
        }
        .buttonStyle(.bordered)
    }
}
