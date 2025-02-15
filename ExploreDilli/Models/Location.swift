//
//  Location.swift
//  ExploreDilli
//
//  Created by Anish Hazra on 15/02/25.
//

import Foundation
import MapKit


struct Location: Identifiable, Equatable{
//    let id = UUID().uuidString
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    // Identifiable
    var id: String {
        // name = "India Gate"
        // cityName = "Delhi"
        // id = "India-GateDelhi"
        name + cityName
    }
    
    // Equatable
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}
