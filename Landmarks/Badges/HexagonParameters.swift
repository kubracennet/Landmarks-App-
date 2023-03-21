//
//  HexagonParameters.swift
//  Landmarks
//
//  Created by Kübra Cennet Yavaşoğlu on 21.03.2023.
//Bir altıgenin şeklini tanımlamak için bu yapıyı kullanacaksınız.


import Foundation

struct HexagonParameters {
    //Her bir taraf bir öncekinin bittiği yerden başlar, düz bir çizgide birinci noktaya hareket eder ve ardından köşede bir Bézier eğrisi üzerinden ikinci noktaya hareket eder. Üçüncü nokta, eğrinin şeklini kontrol eder.
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }
    
   // Segmentleri tutmak için bir dizi oluşturun.
    static let adjustment: CGFloat = 0.085
    static let segments = [
        Segment(
            line:    CGPoint(x: 0.60, y: 0.05),
            curve:   CGPoint(x: 0.40, y: 0.05),
            control: CGPoint(x:0.50, y: 0.00)
        ),
        
        Segment(
            line:    CGPoint(x: 0.05, y: 0.20 + adjustment),
            curve:   CGPoint(x: 0.00, y: 0.30 + adjustment),
            control: CGPoint(x: 0.00, y: 0.25 + adjustment)
        ),
        
        Segment(line:    CGPoint(x: 0.00, y: 0.70 - adjustment),
                curve:   CGPoint(x: 0.05, y: 0.80 - adjustment),
                control: CGPoint(x: 0.00, y: 0.75 - adjustment)
        ),
        
        Segment(line:    CGPoint(x: 0.40, y: 0.95),
                curve:   CGPoint(x: 0.60, y: 0.90),
                control: CGPoint(x: 0.50, y: 1.00)
        ),
        
        Segment(line:    CGPoint(x: 0.95, y: 0.80 - adjustment),
                curve:   CGPoint(x: 1.00, y: 0.70 - adjustment),
                control: CGPoint(x: 1.00, y: 0.75 - adjustment)
        ),
        
        Segment(line:    CGPoint(x: 1.00, y: 0.30 + adjustment),
                curve:   CGPoint(x: 0.95, y: 0.20 + adjustment),
                control: CGPoint(x: 1.00, y: 0.25 + adjustment)
        )
    
    ]


}

