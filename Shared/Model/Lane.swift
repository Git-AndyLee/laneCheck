//
//  Lane.swift
//  laneCheck (iOS)
//
//  Created by Andy Lee on 22/1/22.
//

import SwiftUI

struct Lane: Identifiable, Hashable {
    
    var id = UUID().uuidString
    var laneNumber: Int
    var laneItem1 : String
    var laneItem2 : String
    var laneItem3 : String
}

