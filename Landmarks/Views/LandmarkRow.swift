//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Kübra Cennet Yavaşoğlu on 16.03.2023.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
       }
   }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
           LandmarkRow(landmark: landmarks[0]) //içindeki parametreyi ikinci öğe şeklinde düzenlersem önizleme direk değişir.
           LandmarkRow(landmark: landmarks[1])
            
    }
        .previewLayout(.fixed(width: 300, height: 70)) //değiştirici kodu
  }
}














