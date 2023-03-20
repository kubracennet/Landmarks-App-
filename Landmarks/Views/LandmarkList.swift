//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Kübra Cennet Yavaşoğlu on 16.03.2023.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
            }
        }
            .navigationTitle("Landmarks")
     }
   }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self)
        { deviceName in
            
          LandmarkList()
             .previewDevice(PreviewDevice(rawValue: deviceName))
             .previewDisplayName(deviceName)
        }
    }
}
