//
//  InfiniteCarouselView.swift
//  laneCheck (iOS)
//
//  Created by Andy Lee on 21/1/22.
//

import SwiftUI

struct InfiniteCarouselView: View {
    //Tabs...
    
    @Binding var tabs: [Tab]
    @Binding var currentIndex: Int
    
    @State var fakeIndex = 2
    @State var offset : CGFloat = 0
    @State var genericTabs: [Tab] = []
    
    var body: some View {
        
        TabView(selection: $fakeIndex) {
            ForEach(genericTabs) {tab in
                //Card view...
                VStack(spacing: 10){
                    
                    Spacer()
                    
                    Text("LANE")
                        .font(.title3.bold())
                        .foregroundColor(.gray)
                    
                    Text(tab.title)
                        .font(.system(size: 60, weight: .bold))
                        //.font(.largeTitle.bold())
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                
                    //Spacer()
                    
//                    Image(systemName: "checkmark.circle")
//                        .font(.system(size: 75, weight: .light))
//                        .foregroundColor(.green)
//                        .padding(.bottom)
                    
                    VStack{
                        Text(tab.laneItem1)
                            .font(.title2.bold())
                            .foregroundColor(.white)
                        
                        Text(tab.laneItem2)
                            .font(.title2.bold())
                            .foregroundColor(.white)
                        
                        Text(tab.laneItem3)
                            .font(.title2.bold())
                            .foregroundColor(.white)
                        
                    }
                    .padding(.top, 20)
                    
                    
                    Spacer()
                    
                }
                .padding(.horizontal, 20)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black)
                .clipShape(CustomCardShape())
                .cornerRadius(30)
                .padding(.horizontal, 50)
                .overlay(
                    
                    GeometryReader{proxy in
                                   Color.clear
                                    .preference(key: OffsetKey.self, value: proxy.frame(in: .global).minX)
                                   
                    }
                )
                .onPreferenceChange(OffsetKey.self, perform: { offset in
                    self.offset = offset
                })
                .tag(getIndex(tab: tab))
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .frame(height: 350)
        .padding(.top, 20)
        .onChange(of: offset) { newValue in
            
            //Logic...
            //Add First Item to last and when ever content is scrolled to last just scroll
            // back to first without animation
            
            //Add Last Item to first and do the same
            //So it will create Infinite Carousel Type Animation...
            
            //To avoid glitch...
            //Updating after user release...
            if fakeIndex == 0 && offset == 0 {
                //moving to last -1..
                fakeIndex = genericTabs.count - 2
            }
            
            if fakeIndex == genericTabs.count - 1 && offset == 0 {
                fakeIndex = 1
            }
        }
        .onAppear {
            
            genericTabs = tabs
            //Add first and last extras two items...
            guard var first = genericTabs.first else {
                return
            }
            
            guard var last = genericTabs.last else {
                return
            }
            
            //updating ID else it will create issues in view because of the same ID...
            
            first.id = UUID().uuidString
            last.id = UUID().uuidString
            
            genericTabs.append(first)
            genericTabs.insert(last, at: 0)
            
            fakeIndex = 1
        }
        .onChange(of: tabs) { newValue in
            
            genericTabs = tabs
            //Add first and last extras two items...
            guard var first = genericTabs.first else {
                return
            }
            
            guard var last = genericTabs.last else {
                return
            }
            
            //updating ID else it will create issues in view because of the same ID...
            
            first.id = UUID().uuidString
            last.id = UUID().uuidString
            
            genericTabs.append(first)
            genericTabs.insert(last, at: 0)
            
        }
        .onChange(of: fakeIndex) {newValue in
            currentIndex = fakeIndex - 1 
        }
    }
    
    
    func getIndex(tab: Tab) -> Int {
        let index = genericTabs.firstIndex { currentTab in
            return currentTab.id == tab.id
        } ?? 0
        
        return index
    }
}

//Offset Key...
struct OffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
