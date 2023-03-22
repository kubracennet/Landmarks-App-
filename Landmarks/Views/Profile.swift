//
//  Profile.swift
//  Landmarks
//
//  Created by Kübra Cennet Yavaşoğlu on 22.03.2023.
//

import Foundation


struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "codingwithkubra")
    
    enum Season: String, CaseIterable, Identifiable {
               case spring = "🌷"
               case summer = "🌞"
               case autumn = "🍂"
               case winter = "☃️"
        
               var id: String { rawValue }
    }
}
