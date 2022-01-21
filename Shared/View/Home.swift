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
    
    @State var tabs: [Tab] = [
        Tab(title: "1", laneItem1: "Senior Care", laneItem2: "Diapers", laneItem3: "Wine"),
        Tab(title: "2", laneItem1: "Chocolate", laneItem2: "Candies", laneItem3: "Toys"),
        Tab(title: "3", laneItem1: "Bicycles", laneItem2: "Electronics", laneItem3: "Bags"),
        Tab(title: "4", laneItem1: "Shower Essentials", laneItem2: "Movies", laneItem3: "Vegetables"),
        Tab(title: "5", laneItem1: "Meat", laneItem2: "Dairy", laneItem3: "Water"),
        Tab(title: "6", laneItem1: "Organic", laneItem2: "International", laneItem3: "Party Goods")
    ]
    
    @State var currentIndex : Int = 0

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
                        TopMenus(menuID: menu, index: $topIndex, menu: topMenu)

                    }
                }
                .padding(.horizontal)
            }
            .padding(.top, 10)
            
            
            
            VStack {
                
                OutletMenu(selectedOutlet: $selectedOutlet)
                
                InfiniteCarouselView(tabs: $tabs, currentIndex: $currentIndex)
            
                HStack(spacing: 5) {
                    ForEach(tabs.indices, id: \.self) {index in
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





