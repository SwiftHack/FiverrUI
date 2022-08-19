//
//  Tab.swift
//  FiverrUI
//
//  Created by Osaretin Uyigue on 8/19/22.
//

import Foundation

enum Tab: CustomStringConvertible {
    case home, inbox, search, orders, profile
    var description: String {
        switch self {
        case .home:
            return  "Home"
        case .inbox:
            return  "Inbox"
        case .search:
            return "Search"
        case .orders:
            return "Manage Orders"
        case .profile:
            return  "Profile"
        }
    }
}

