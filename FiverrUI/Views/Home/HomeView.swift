//
//  HomeView.swift
//  FiverrUI
//
//  Created by Osaretin Uyigue on 8/31/22.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationView {
            ScrollView {
                HStack {
                    Text("Popular services")
                        .font(.headline)
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Text("See All")
                            .font(.subheadline)
                        
                    }
                }.padding(12)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<10) {_ in
                            PoularServicesView()
                        }
                    }.padding(12)
                        .padding(.top, -12)
                }
                
                
                Image("fiverImage2")
                    .resizable()
                    .scaledToFit()
                    .overlay(
                        VStack {
                            Spacer()
                            Text("Explore beautiful work, picked for you.")
                                .foregroundColor(.white)
                                .font(.title2)
                                .padding()
                        }
                    )
                    .clipped()
                    .cornerRadius(8)
                    .padding()
                    
                
            }
            
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Image("fiverlogo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 25)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "hands.sparkles.fill")
                        .resizable()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

struct PoularServicesView: View {
    private let cardWidth: CGFloat = 125
    
    var body: some View {
        VStack {
            Image("mockImage")
                .resizable()
                .scaledToFill()
                .frame(height: 100)
                .clipped()
            Spacer()
            Text("Logo Design")
                .font(.system(size: 14, weight: .semibold))
            Spacer()
        }
        .background(Color.white)
        .frame(width: cardWidth, height: 180)
        .cornerRadius(8)
        .shadow(color: Color(.systemGray3), radius: 5, x: 0, y: 2)
    }
}
