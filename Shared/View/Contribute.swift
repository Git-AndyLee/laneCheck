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
    @State var lanes : [Lane] = [
        Lane(laneNumber: 1, laneItem1: "Milk", laneItem2: "Sandwich", laneItem3: "Kitchen"),
        Lane(laneNumber: 2, laneItem1: "Milkey", laneItem2: "MacBook", laneItem3: "Apple")
    ]
    
    @State var currentIndex : Int = 0
    
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
                
                ContributeCarousel(lanes: $lanes, currentIndex: $currentIndex)
                
                Button(action: {
                    lanes.append(Lane(laneNumber: 3, laneItem1: "Protein", laneItem2: "Pork", laneItem3: "Chicken"))
                    
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

//struct Contribute_Previews: PreviewProvider {
//    static var previews: some View {
//        Contribute()
//    }
//}



