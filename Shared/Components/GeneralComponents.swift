//
//  GeneralComponents.swift
//  laneCheck (iOS)
//
//  Created by Andy Lee on 8/1/22.
//
import SwiftUI


struct tabButton : View {
    
    var title : String
    @Binding var selectedTab : String
    var animation : Namespace.ID
    
    var body: some View{
        
        Button(action: {
            withAnimation{selectedTab = title}
        }) {
         
            VStack(spacing: 6){
                
                ZStack{
                    CustomShape()
                        .fill(Color.clear)
                        .frame(width: 45, height: 6)
                    
                    if selectedTab == title {
                        CustomShape()
                            .fill(Color("tint"))
                            .frame(width: 45, height: 6)
                            .matchedGeometryEffect(id: "Tab_Change", in: animation)
                    }
                }
                .padding(.bottom, 10)
                
                Image(title)
                    .renderingMode(.template)
                    .resizable()
                    .foregroundColor(selectedTab == title ? Color("tint") : Color.black.opacity(0.2))
                    .frame(width: 24, height: 24)
                
                Text(title)
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black.opacity(selectedTab == title ? 0.6 : 0.2))
                
            }
            
        }
    }
}

struct CustomShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.bottomLeft, .bottomRight], cornerRadii: CGSize(width: 10, height: 10 ))
                                
        return Path(path.cgPath)
    }
}
