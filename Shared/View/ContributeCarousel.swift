//
//  ContributeCarousel.swift
//  laneCheck (iOS)
//
//  Created by Andy Lee on 22/1/22.
//

import SwiftUI

struct ContributeCarousel: View {
    
    //@EnvironmentObject var laneModel : ContriViewModel
    
    
    @StateObject var laneModel = ContriViewModel()
    
    @EnvironmentObject var datas : ContriViewModel

    
    //@Binding var lanes: [Lane]
    //@Binding var currentIndex : Int
    //@Binding var newLane : Bool
    @State var fakeIndex : Int = 0
    
    @State var offset : CGFloat = 0
    
    @State var genericLanes: [Lane] = []
    
    var body: some View {
        
        TabView(selection: $fakeIndex) {
            ForEach(datas.lanes) {lane in
                VStack(spacing: 18){
                    
                    Spacer()
                    
                    Text("Lane \(lane.laneNumber)")
                        .font(.title3)
                        .foregroundColor(.gray)
                    
                    Text(lane.laneItem1)
                        .font(.largeTitle.bold())
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                    
                    Text(datas.hello)
                        .font(.largeTitle.bold())
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                    
                
                    Spacer()
                }
                .padding(.horizontal, 50)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .cornerRadius(30)
//                .tag(getIndex(lane: lane))
                
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .frame(height: 420)
        .padding(.top, 10)
//        .onChange(of: offset) { newValue in
//
//            if fakeIndex == 0 && offset == 0 {
//                fakeIndex = genericLanes.count - 2
//            }
//
//            if fakeIndex == genericLanes.count - 1 && offset == 0 {
//                fakeIndex = 1
//            }
//        }
//        .onAppear {
//
//            genericLanes = lanes
//
//            guard var first = genericLanes.first else {
//                return
//            }
//
//            guard var last = genericLanes.last else {
//                return
//            }
//
//
//            first.id = UUID().uuidString
//            last.id = UUID().uuidString
//
//            genericLanes.append(first)
//            genericLanes.insert(last, at: 0)
//
//            fakeIndex = 1
//        }
//        .onChange(of: lanes) { newValue in
//
//            genericLanes = lanes
//
//            guard var first = genericLanes.first else {
//                return
//            }
//
//            guard var last = genericLanes.last else {
//                return
//            }
//
//
//            first.id = UUID().uuidString
//            last.id = UUID().uuidString
//
//            genericLanes.append(first)
//            genericLanes.insert(last, at: 0)
//
//        }
//        .onChange(of: fakeIndex) { newValue in
//            currentIndex = fakeIndex - 1
//        }
    }
    
    func getIndex(lane: Lane) -> Int {
        let index = genericLanes.firstIndex{ currentLane in
            return currentLane.id == lane.id
            
        } ?? 0
        return index
    }
}

//struct Contribute_Previews: PreviewProvider {
//    static var previews: some View {
//        Contribute()
//    }
//}
