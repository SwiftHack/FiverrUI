//
//  ProfileHeader.swift
//  FiverrUI
//
//  Created by Osaretin Uyigue on 8/19/22.
//

import SwiftUI

struct ProfileHeader: View {
    
    fileprivate let cardHeight: CGFloat = UIScreen.main.bounds.height / 4

    var body: some View {
        VStack {
            HStack {
                Spacer()

                Button(action: {
                    print("tapped bell")
                }) {
                    Image(systemName: "bell")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                        .frame(width: 20, height: 20)
                }

            }
            .frame(height: 30)
            .padding([.trailing], 12)
            .padding(.top, -35)
            
            
            HStack(spacing: 12) {
                
                Image("placeholderImage")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .padding(.leading)
                    .padding(.trailing, 4)
                    .overlay(
                    
                        VStack {
                            Spacer()
                            
                            Circle()
                                .strokeBorder(.white, lineWidth: 2)
                                .background(Circle().fill(.green))
                                .frame(width: 15, height: 15)
                            .padding(.leading, 50)
                        }

                    )
                
                VStack(alignment: .leading) {
                    Text("Samisays11")
                        .font(.system(size: 18, weight: .semibold))
                    
                    Text("Personal balance:")
                        .font(.system(size: 15))
                    
                    +
                    
                    Text(" $0")
                        .font(.system(size: 15))
                        .fontWeight(.semibold)
                }
                .foregroundColor(.white)
                
                Spacer()
            }
        
        }
        .frame(width: UIScreen.main.bounds.width, height: cardHeight)
        .background(Color("ProfileHeaderGreen"))
    }
}

struct ProfileHeader_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeader()
    }
}
