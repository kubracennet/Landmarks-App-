//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Kübra Cennet Yavaşoğlu on 16.03.2023.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List (landmarks, id: \.id) { landmark in
        LandmarkRow(landmark: landmark)
    }
  }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
