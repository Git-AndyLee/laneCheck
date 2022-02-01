//
//  contributeCardView.swift
//  laneCheck (iOS)
//
//  Created by Andy Lee on 1/2/22.
//

import SwiftUI

struct contributeCardView: View {
    
    @Binding var lane: Lane
    
    var body: some View {
        
        VStack(spacing: 20){
                    
            HStack(alignment: .top){
                
                Text("\(lane.laneNumber)")
                    .font(.system(size: 70))
                
                VStack(alignment: .leading,spacing: 12){
                    
                    Text(lane.laneItem1)
                        .font(.title2.bold())
                    
                    Text(lane.laneItem2)
                        .font(.title2.bold())
                    
                    Text(lane.laneItem3)
                        .font(.title2.bold())
                    
                }
                .padding(.leading)
                
                Spacer(minLength: 0)

                Button(action: {
                    
                    
                }) {
                    Text("Edit")
                        .foregroundColor(.black)
                        .padding(.horizontal, 10)
                }
                .buttonStyle(.bordered)
                .controlSize(.small)
                .tint(.black)
                .shadow(radius: 1.2)
                
                
            }
        }
        .padding()
        .background(.white, in: RoundedRectangle(cornerRadius: 10))
    }
}

struct contributeCardView_Previews: PreviewProvider {
    static var previews: some View {
        Contribute()
    }
}
