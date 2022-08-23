//
//  MainTabView.swift
//  FiverrUI
//
//  Created by Osaretin Uyigue on 8/19/22.
//

import SwiftUI

struct MainTabView: View {
    
    //MARK: - Init
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor.black
    }
    
    
  
    
    @State private var selectedTab: Tab = .home
    
    // MARK: - Properties
    var body: some View {
        TabView(selection: $selectedTab) {
            
            Text(Tab.home.description)
                .tabItem {
                        
                    Image(systemName: selectedTab == .home ? "house.fill": "house")
                        .environment(\.symbolVariants, .none)

                }
                .tag(Tab.home)
            
            Text(Tab.inbox.description)
                .tabItem {
                    
                    Image(systemName: selectedTab == .inbox ? "envelope.fill": "envelope")
                        .environment(\.symbolVariants, .none)
                    
                }
                .tag(Tab.inbox)
            
            
            Text(Tab.search.description)
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    
                }
                .tag(Tab.search)
            
           ManageOrdersView()
                .tabItem {
                    
                    Image(systemName: selectedTab == .orders ? "list.bullet.rectangle.portrait.fill": "list.bullet.rectangle.portrait")
                        .environment(\.symbolVariants, .none)
                    
                }
               
                .tag(Tab.orders)
            
            ProfileView()
                .tabItem {
                                    
                    Image(systemName: selectedTab == .profile ? "person.crop.circle.fill": "person.crop.circle")
                        .environment(\.symbolVariants, .none)

                }
                .tag(Tab.profile)
            
        }.accentColor(.green)
        
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
