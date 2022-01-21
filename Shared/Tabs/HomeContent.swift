//
//  HomeContent.swift
//  laneCheck (iOS)
//
//  Created by Andy Lee on 8/1/22.
//

import SwiftUI

struct HomeContent: View {
    var body: some View {
        
        VStack{
            
            HStack{
                Text("Lane Check")
                    .font(Font.system(size: 20).italic())
                    .font(Font.system(size: 20).bold())
                
                Spacer()
            }
            .padding()
        }
    }
}

