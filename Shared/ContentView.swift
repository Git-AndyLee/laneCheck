//
//  ContentView.swift
//  Shared
//
//  Created by Andy Lee on 8/1/22.
//

import SwiftUI

struct ContentView: View {
    // hiding tab bar...
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




