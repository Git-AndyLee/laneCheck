//
//  TopMenu.swift
//  laneCheck (iOS)
//
//  Created by Andy Lee on 21/1/22.
//

import SwiftUI

struct TopMenus: View {
    var menuID : Int
    @Binding var index : Int
    var menu = [String]()
    
    //Below is another e.g.
    //var arr:[Int] = []

    
    var body: some View {
        Button(action: {
            self.index = menuID
        }) {
            VStack(spacing: 8){
                Text(menu[menuID])
                    .font(.system(size: 22))
                    .fontWeight(index == menuID ? .bold : .none)
                    .foregroundColor(index == menuID ? .black : .gray)
                
                Circle()
                    .fill(Color.black)
                    .frame(width: 10, height: 10)
                    .opacity(index == menuID ? 1 : 0)
            }
        }
    }
}
