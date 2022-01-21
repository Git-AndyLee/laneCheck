//
//  OutletMenu.swift
//  laneCheck (iOS)
//
//  Created by Andy Lee on 21/1/22.
//

import SwiftUI

struct OutletMenu: View {
    @Binding var selectedOutlet : String
    
    var body: some View {
        VStack{
            Text("Outlet")
            
            Menu(content: {
                
                Button(action: { self.selectedOutlet = "Yio Chu Kang"}) {
                    Text("Yio Chu Kangs")
                }
                
                Button(action: { self.selectedOutlet = "Chua Chu Kang"}) {
                    Text("Chua Chu Kangs")
                }
                
            }) {
                Label(title: {
                    Text(self.selectedOutlet)
                        .foregroundColor(.white)
                }) {
                    Image(systemName: "slider.vertical.3")
                        .foregroundColor(.white)
                }
                .padding(.vertical, 10)
                .padding(.horizontal)
                .background(Color.black)
                .clipShape(Capsule())
            }
            
        }
      
    }
}

