//
//  ProfileView.swift
//  FiverrUI
//
//  Created by Osaretin Uyigue on 8/19/22.
//

import SwiftUI

struct ProfileView: View {
    
    
    
    var body: some View {
        NavigationView {
            VStack {
        
                ProfileHeader()
                
                Spacer()
                
                List {
                    Section(header:
                                Text("My Fiverr")
                        .font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                            
                    ) {
                        ForEach(SettingsItem.myFiverrSettings, id: \.id) { settingItem in
                            NavigationLink(destination: Text("My Fiverr View")) {
                                
                                Label {
                                    Text(settingItem.title)
                                        .fontWeight(.medium)
                                } icon: {
                                    Image(systemName: settingItem.imageName)
                                        .renderingMode(.template)
                                        .foregroundColor(.gray)
                                        .font(.body.bold())

                                }
                                
                                .frame(height: 40)


                            }
                            
                        }
                    }
                    
                    
                    Section(header:
                    
                        Text("General")
                        .font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                    
                    ) {
                        ForEach(SettingsItem.generalSettings, id: \.id) { settingItem in

                            
                            NavigationLink(destination: Text("General Settings View")) {
                                Label {
                                    Text(settingItem.title)
                                        .fontWeight(.medium)

                                } icon: {
                                    Image(systemName: settingItem.imageName)
                                        .renderingMode(.template)
                                        .foregroundColor(.gray)
                                        .font(.body.bold())

                                }
                                
                                .frame(height: 40)


                            }
                        }
                    }

                }
                .listStyle(.plain)
            }
            .navigationBarHidden(true)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}



