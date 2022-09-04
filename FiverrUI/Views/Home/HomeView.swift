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
                SectionTitleWithSeeAllButtonView(sectionTitle: "Popular services")
                
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
                
                
                
                HStack {
                    Text("What's new on Fiver?")
                        .font(.headline)
                    Spacer()
                }.padding()
                
                NewOnFiverrView()
                
                SectionTitleWithSeeAllButtonView(sectionTitle: "Recently viewed & more")

                RecentlyViewedView(isSaved: false)
             
                    
                SectionTitleWithSeeAllButtonView(sectionTitle: "Recently Saved")
                RecentlyViewedView(isSaved: true)

                
                SectionTitleWithSeeAllButtonView(sectionTitle: "What sparks your interest?")
                
                
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

struct NewOnFiverrView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<10) {_ in
                    Image("fiverImage2")
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width - 100)
                    
                        .overlay(
                            ZStack {
                                Color.black.opacity(0.5)
                                VStack {
                                    Text("Explore beautiful work, picked for you.")
                                        .foregroundColor(.white)
                                        .font(.title2)
                                        .padding()
                                    Spacer()
                                    
                                }
                            }
                        )
                        .clipped()
                        .cornerRadius(8)
                        .padding(3)
                }
            }.padding()
                .padding(.top, -20)
        }
    }
}

struct SectionTitleWithSeeAllButtonView: View {
    let sectionTitle: String
    var body: some View {
        HStack {
            Text(sectionTitle)
                .font(.headline)
            
            Spacer()
            
            Button(action: {}) {
                Text("See All")
                    .font(.subheadline)
                
            }
        }.padding(12)
    }
}

struct RecentlyViewedView: View {
    var isSaved: Bool
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<10) { item in
                    VStack {
                        Image("mockImage")
                            .resizable()
                            .scaledToFill()
                            .frame(height: 150)
                            .frame(maxWidth: .infinity)
                            .clipped()
                        
                        
                        HStack {
                            Image("fiverImage2")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 25, height: 25)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text("nickfinck")
                                    .font(.system(size: 12, weight: .medium))
                                
                                Text("New Seller")
                                    .font(.system(size: 12))
                                    .foregroundColor(.gray)
                            }
                            
                            Spacer()
                            
                            Button(action: {}) {
                                Image(systemName: isSaved ? "heart.fill" : "heart")
                                    .foregroundColor(isSaved ? .red : .gray)
                            }.padding(.horizontal, 8)
                            
                        }
                        .padding(.top, 8)
                        
                        .padding(.leading, 5)
                        
                        
                        Text("Edit redesign redraw color change or fix your logo")
                            .font(.system(size: 12, weight: .regular))
                            .padding(.vertical, 8)
                            .padding(.horizontal, 5)
                        
                        HStack(spacing: 1) {
                            Image(systemName: "star.fill")
                            Text("4.9")
                                .padding(.top, 1)
                            
                            Text("(40)")
                                .foregroundColor(.gray)
                                .font(.system(size: 12, weight: .regular))
                                .padding(.top, 1.5)
                            
                            
                            Spacer()
                            
                            
                            Text("From ")
                                .font(.system(size: 12, weight: .regular))
                                .foregroundColor(.gray)
                            
                            +
                            
                            Text("$15")
                                .font(.system(size: 15.5, weight: .medium))
                                .foregroundColor(.black)
                            
                        }.padding(.horizontal, 8)
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.orange)
                        
                        
                        Spacer()
                    }
                    
                    .background(Color.white)
                    .frame(width: 250, height: 280)
                    .cornerRadius(8)
                    .shadow(color: Color(.systemGray3).opacity(0.5), radius: 5, x: 0, y: 2)
                    
                }
            }.padding()
        }
    }
}




