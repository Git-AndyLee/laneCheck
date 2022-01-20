//
//  Home.swift
//  laneCheck (iOS)
//
//  Created by Andy Lee on 9/1/22.
//

import SwiftUI

var topMenu = ["Fairprices", "Giant", "Sheng Shiong", "Cold Storage"]


struct Home: View {
    
    @State var topIndex = 0

    var body: some View {
        VStack{
            
            Text("Lane Check!")
                .font(.title3)
                .kerning(1.1)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            
            ScrollView(.horizontal, showsIndicators: false){
                
                HStack(spacing: 30){
                    ForEach(0..<topMenu.count){menu in
                        TopMenus(menu: menu, index: $topIndex)
                        
                    }
                }
                .padding(.horizontal)
            }
            .padding(.top, 10)
            
            Spacer(minLength: 0)
        }
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
    }
}





