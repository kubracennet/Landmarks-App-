//
//  CircleImage.swift
//  Landmarks
//
//  Created by Kübra Cennet Yavaşoğlu on 16.03.2023.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
//fotoğrafı daire şekline getirmek için.
           .overlay {
               Circle().stroke(.white, lineWidth: 4)
           }
//kenarlarına gölgeleme vermek için
           .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
