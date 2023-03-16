//
//  ContentView.swift
//  Landmarks
//
//  Created by Kübra Cennet Yavaşoğlu on 16.03.2023.
//

import SwiftUI
//Varsayılan olarak SwiftUI görünüm dosyaları 2 yapı bildirir.

//İlk yapı (ContentView) protokole uygundur, View'a görünüm içeriğini ve düzenini açıklar.

struct ContentView: View {
    var body: some View {//body özelliği ile en başta ne yazdıysam o şekilde ilerler.Bknz: Symbols ardından text metni.
        
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            //Image(systemName: "sun.min") //sf symbols
            //    .imageScale(.large)//boyutu belirleme
            //    .foregroundColor(.pink) //rengi belirleme
            VStack(alignment: .leading) {
                Text("Turtle Rock")//yazdırılan text
                    .font(.title)//metin font
                .foregroundColor(.black)
            }//metin renk
            
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
            
           .font(.subheadline) // subheadline: alt başlık
           .foregroundColor(.secondary) //ön plan rengi: foregroundColor
            
            Divider()
            
            Text("About Kapadokya")
                .font(.title2)
            Text("Descriptive text goes here.")
            
//yazdırdığım metin görünümü özelleştirebilirim.
        }
        .padding()
        
        Spacer()
    }
}

//İkinci yapı (ContentView_Previews) yukarıda belirttiğim görünüm için bir önizleme bildirir.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
