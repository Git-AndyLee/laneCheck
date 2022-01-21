//
//  Tab.swift
//  laneCheck (iOS)
//
//  Created by Andy Lee on 21/1/22.
//

import SwiftUI

struct Tab: Identifiable, Hashable {
    var id = UUID().uuidString
    var title : String
    var laneItem1 : String
    var laneItem2 : String
    var laneItem3 : String
}

