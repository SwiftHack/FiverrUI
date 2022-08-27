//
//  InboxView.swift
//  FiverrUI
//
//  Created by Osaretin Uyigue on 8/27/22.
//

import SwiftUI

struct InboxView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(0 ..< 10) { item in
                    LazyVStack {
                        HStack(spacing: 8) {
                            Image("mockImage")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 55, height: 55)
                                .clipShape(Circle())
                                .padding(.leading, 8)
                                .overlay(
                                    
                                    VStack(alignment: .trailing) {
                                        Spacer()
                                        
                                        Circle()
                                            .strokeBorder(.white, lineWidth: 2)
                                            .background(Circle().fill(.green))
                                            .frame(width: 15, height: 15)
                                        
                                        
                                    }.padding(.leading, 50)
                                    
                                    
                                )
                            
                            
                            
                            VStack(alignment: .leading, spacing: 8) {
                                HStack {
                                    Text("username")
                                        .foregroundColor(.black)
                                        .font(.system(size: 16, weight: .semibold))
                                    Spacer()
                                    
                                    Text("Monday")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color(.systemGray2))
                                }
                                
                                
                                Text("Today i'm available in here next 8 hours from now so u can message me at any time when you're ready and online.")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14))
                                    .lineLimit(2)
                            }
                            
                            
                            Spacer()
                            
                            
                        }
                        
                        
                        Divider()
                            .overlay(Color(.systemGray5))
                            .padding(.top, 10)
                            .padding(.bottom, 5)
                            .padding(.leading, 70)
                        
                        
                        
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Inbox")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Edit") {
                        print("didtap edit button navitem")
                    }.foregroundColor(.green)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "slider.horizontal.3")
                            .foregroundColor(.black)
                            .frame(width: 20, height: 20)
                            .font(.system(size: 18, weight: .semibold))
                    }
                }
            }
        }
    }
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}
