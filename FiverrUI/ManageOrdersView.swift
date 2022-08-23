//
//  ManageOrdersView.swift
//  FiverrUI
//
//  Created by Osaretin Uyigue on 8/22/22.
//

import SwiftUI

struct ManageOrdersView: View {
    var body: some View {
        NavigationView {
            // put header here
            ScrollView {
                ForEach(0 ..< 5) { item in
                    VStack(alignment: .leading) {
                        HStack(alignment: .top) {
                            Image("mockImage")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 60)
                                .cornerRadius(5)
                            .clipped()
                            
                            VStack(alignment: .leading) {
                                Text("$180")
                                    .font(.system(size: 14, weight: .semibold))
                                
                                Text("Design a creative ui ux for your website or mobile app")
                                    .font(.system(size: 12, weight: .regular))
                                    .padding(.top, -5)
                            }
                            
                            Spacer()
                        }
                        
                        HStack {
                            Image("mockImage")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 25, height: 25)
                            .clipShape(Circle())
                            
                            Text("faisalhilles")
                                .font(.caption2)
                                .foregroundColor(.gray)
                                .fontWeight(.medium)
                            
                            Spacer()
                            
                            
                            
                            
                            Text("COMPLETED")
                                .tint(.green)
                                .font(.system(size: 10, weight: .regular))
                                .padding(5)
                                .background(Color.green.opacity(0.2))
                                .foregroundColor(.green)
                                .cornerRadius(5)
                        }
                        
                        
                        Divider()
                            .overlay(Color(.systemGray5))
                        
                        HStack {
                            Text("Aug 20, 2022")
                                .foregroundColor(.black)
                            .font(.system(size: 13, weight: .semibold))
                            
                            Spacer()
                            
                            Button(action: {}) {
                                Image(systemName: "ellipsis")
                                    .foregroundColor(.gray)
                                
                            }
                        }
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .padding(.horizontal)
                    .padding(.bottom, 10)
                    .shadow(color: Color.gray.opacity(0.3), radius: 8, x: 0, y: 3)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarTitle("Manage Orders")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "line.3.horizontal.decrease")
                            .font(.system(size: 17, weight: .bold))
                            .foregroundColor(.black)
                    }
                }
                
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {}) {
                        Image(systemName: "bell")
                            .font(.system(size: 17, weight: .medium))
                            .foregroundColor(.black)
                    }
                }
            }
        }
        
    }
}

struct ManageOrdersView_Previews: PreviewProvider {
    static var previews: some View {
        ManageOrdersView()
    }
}
