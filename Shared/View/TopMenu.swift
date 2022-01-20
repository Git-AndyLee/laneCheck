//
//  TopMenu.swift
//  laneCheck (iOS)
//
//  Created by Andy Lee on 21/1/22.
//

import SwiftUI

struct TopMenus: View {
    var menu : Int
    @Binding var index : Int
    
    var body: some View {
        Button(action: {
            self.index = menu
        }) {
            VStack(spacing: 8){
                Text(topMenu[menu])
                    .font(.system(size: 22))
                    .fontWeight(index == menu ? .bold : .none)
                    .foregroundColor(index == menu ? .black : .gray)
                
                Circle()
                    .fill(Color.black)
                    .frame(width: 10, height: 10)
                    .opacity(index == menu ? 1 : 0)
            }
        }
    }
}
