//
//  Contribute.swift
//  laneCheck (iOS)
//
//  Created by Andy Lee on 8/1/22.
//

import SwiftUI

var contributeMenu = ["Submitted", "Contributions", "Points"]



struct Contribute: View {
    
    @State var selectedTab = 0
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 15) {
                Text("Hello, Andy!")
                    .font(.title3)
                    .kerning(1.1)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack(alignment: .bottom) {
                    Text("Your contribution goes a long way in helping the community.")
                        .font(.subheadline)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                    Button(action: {
                        
                    }) {
                        Text("Add Lanes")
                            .font(.caption)
                            .foregroundColor(.black)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)
                            .background(
                                Capsule()
                                    .stroke(.black, lineWidth: 1)
                            )
                    }
                }
                .padding(.top, 8)
                
                //contributionMenus
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 30) {
                        
                        ForEach(0..<contributeMenu.count) {menu in
                            TopMenus(menuID: menu, index: $selectedTab, menu: contributeMenu)
                        }

                    }
                }
                .padding(.top, 20)
        
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            //Linear BG...
            LinearGradient(colors: [
                Color("BG1"),
                Color("BG2")
            ], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
        )
    }
}
