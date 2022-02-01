//
//  AddLane.swift
//  laneCheck (iOS)
//
//  Created by Andy Lee on 1/2/22.
//

import SwiftUI

struct AddLane: View {
    
    @EnvironmentObject var contributeMode : ContriViewModel
    
    var body: some View {
        
        if contributeMode.addNewLane {
            
            VStack{
                
                Text("hello")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background(.gray)
        }
    }
}

