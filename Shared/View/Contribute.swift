//
//  Contribute.swift
//  laneCheck (iOS)
//
//  Created by Andy Lee on 8/1/22.
//

import SwiftUI

var contributeMenu = ["Submitted", "Contributions", "Points"]



struct Contribute: View {
    
    @StateObject var laneModel = ContriViewModel()
    
    @EnvironmentObject var datas : ContriViewModel
    
    @State var selectedTab = 0
    
    @State var currentIndex : Int = 0
    @State var newLane = false
    
    var body: some View {
            VStack(spacing: 15) {
//                Text("Hello, Andy!")
//                    .font(.title3)
//                    .kerning(1.1)
//                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack(alignment: .bottom) {
                    Text("Your contribution goes a long way in helping the community.")
                        .font(.subheadline)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                    Button(action: {
                        
                        withAnimation{
                            laneModel.addNewLane.toggle()
                        }
                        
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
                .padding(.top, 10)
                
                //ContributeCarousel(lanes: $lanes, currentIndex: $currentIndex, newLane: $newLane)
                //ContributeCarousel()
                
                if self.selectedTab == 0 {
                    VStack(spacing: 15){
                        ScrollView(.vertical, showsIndicators: false){
                            ForEach($laneModel.lanes) { lane in
                                contributeCardView(lane: lane)
                            }
                        }
                    }
                    .padding(.top, 20)
                } else if self.selectedTab == 1 {
                    Text("second page")
                } else {
                    Text("Third page")
                }
                
                
                
                
//                Button(action: {
//                    self.datas.lanes.append(Lane(laneNumber: 69, laneItem1: "testing", laneItem2: "tested", laneItem3: "Testies"))
//
//                    self.newLane = true
//
//                }) {
//                    Text("Add Lanes")
//                        .font(.caption)
//                        .foregroundColor(.black)
//                        .padding(.vertical, 10)
//                        .padding(.horizontal, 20)
//                        .background(
//                            Capsule()
//                                .stroke(.black, lineWidth: 1)
//                        )
//                }
                
                Spacer(minLength: 0)
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                //Linear BG...
                LinearGradient(colors: [
                    Color("BG1"),
                    Color("BG2")
                ], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
            )
            ///.overlay(AddLane().environmentObject(ContriViewModel))
    }
}

//struct Contribute_Previews: PreviewProvider {
//    static var previews: some View {
//        Contribute()
//    }
//}



