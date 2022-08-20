//
//  SettingsItem.swift
//  FiverrUI
//
//  Created by Osaretin Uyigue on 8/19/22.
//

import Foundation

struct SettingsItem: Identifiable {
    var id = UUID().uuidString
    let imageName: String
    let title: String
    
}


extension SettingsItem {
    static let generalSettings: [SettingsItem] = [
    
        SettingsItem(imageName: "gearshape", title: "Settings"),
        SettingsItem(imageName: "circle.circle", title: "Online status"),
        SettingsItem(imageName: "creditcard", title: "Payments"),
        SettingsItem(imageName: "paperplane", title: "Invite friends"),
        SettingsItem(imageName: "sparkles.rectangle.stack", title: "Become a seller"),
        SettingsItem(imageName: "questionmark.circle", title: "Support"),

    ]
    
    
    static let myFiverrSettings = [
        SettingsItem(imageName: "sparkles", title: "Get inspired"),
        SettingsItem(imageName: "heart", title: "Saved"),
        SettingsItem(imageName: "tray.full", title: "My interests"),
    ]
    
}
