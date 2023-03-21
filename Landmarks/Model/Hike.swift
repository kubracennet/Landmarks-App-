//
//  Hike.swift
//  Landmarks
//
//  Created by Kübra Cennet Yavaşoğlu on 21.03.2023.
//hikedata.json dosyası içerisinde yer alan bana lazım olan şeyleri buarad belirteceğim.

import Foundation
struct Hike: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var distance: Double
    var diffuculty: Int
    var observations: [Observation]
    
    static var formatter = LengthFormatter()
    
    var distanceText: String {
        Hike.formatter
            .string(fromValue: distance, unit: .kilometer)
    }
    
    struct Observation: Codable, Hashable {
        var distanceFromStart: Double
        
        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
    }
}
