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
    @State var selectedOutlet = "Ang Mo Kio Boys"
    
    //@StateObject var laneModel = ContriViewModel()
    @EnvironmentObject var data : HomeViewModel
    
    @State var currentIndex : Int = 0
    @State var newLane = false


    var body: some View {
        VStack{
            
            Text("Lane Check!")
                .font(.title3)
                .kerning(1.1)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .padding(.top, 20)
            
            ScrollView(.horizontal, showsIndicators: false){
                
                HStack(spacing: 30){
                    ForEach(0..<topMenu.count){menu in
                        TopMenus(menuID: menu, index: $topIndex, menu: topMenu)

                    }
                }
                .padding(.horizontal)
            }
            .padding(.top, 10)
            
            
            
            VStack {
                
                OutletMenu(selectedOutlet: $selectedOutlet)
                
                //InfiniteCarouselView(tabs: $tabs, currentIndex: $currentIndex)
                InfiniteCarouselView(tabs: $data.homeLanes, currentIndex: $currentIndex)
            
                HStack(spacing: 5) {
                    ForEach(data.homeLanes.indices, id: \.self) {index in
                        Capsule()
                            .fill(Color.black.opacity(currentIndex == index ? 1 : 0.55))
                            .frame(width: currentIndex == index ? 18 : 4, height: 4)
                            .animation(.easeInOut, value: currentIndex)
                    }
                }
                .padding(.top, 30)
            }
            .padding(.top, 20)
            
            
            Spacer(minLength: 0)
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
        //.padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
    }
}





