//
//  TabBar.swift
//  laneCheck (iOS)
//
//  Created by Andy Lee on 20/1/22.
//

import SwiftUI


struct TabBarv1 : View {
    var body : some View {
        VStack{
            TabBar()
                .environmentObject(ContriViewModel())
                .environmentObject(HomeViewModel())
        }
    }
}

struct TabBar: View {
    @State var current = "Home"
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            
            TabView(selection: $current) {
                Home()
                    .tag("Home")
                
                Contribute()
                    .tag("Contribute")
                
                Text("Profile")
                    .tag("Profile")
            }
            
            
            HStack(spacing: 0){
                //TabButton...
            
                TabButton(title: "Home", image: "Home", selected: $current)
                
                Spacer()
                
                TabButton(title: "Contribute", image: "Contribute", selected: $current)
                
                Spacer()
                
                TabButton(title: "Profile", image: "Profile", selected: $current)
                
            }
            .padding(.vertical, 12)
            .padding(.horizontal)
            .background(Color("tab"))
            .clipShape(Capsule())
            .padding(.horizontal, 25)
            
            
        }
        
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
