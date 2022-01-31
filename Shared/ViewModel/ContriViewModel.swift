//
//  ContriViewModel.swift
//  laneCheck (iOS)
//
//  Created by Andy Lee on 31/1/22.
//

import SwiftUI


class ContriViewModel : ObservableObject {
    
    @Published var addNewLane = false
    
    @Published var hello = "Covid"
    
    @Published var tabz: [Tab] = [
        Tab(title: "1", laneItem1: "Sexy Care", laneItem2: "Diapers", laneItem3: "Wine"),
        Tab(title: "2", laneItem1: "Chocolate", laneItem2: "Candies", laneItem3: "Toys"),
        Tab(title: "3", laneItem1: "Bicycles", laneItem2: "Electronics", laneItem3: "Bags"),
        Tab(title: "4", laneItem1: "Shower Essentials", laneItem2: "Movies", laneItem3: "Vegetables"),
        Tab(title: "5", laneItem1: "Meat", laneItem2: "Dairy", laneItem3: "Water"),
        Tab(title: "6", laneItem1: "Organic", laneItem2: "International", laneItem3: "Party Goods")
    ]
    
    
    @Published var lanes: [Lane] = [
        Lane(laneNumber: 1, laneItem1: "Macbook", laneItem2: "Cereal", laneItem3: "Computers"),
        Lane(laneNumber: 2, laneItem1: "Protein", laneItem2: "Shake", laneItem3: "Best"),
        Lane(laneNumber: 3, laneItem1: "Powder", laneItem2: "Huat", laneItem3: "Please"),
        Lane(laneNumber: 4, laneItem1: "This", laneItem2: "IS", laneItem3: "Lane4"),
        Lane(laneNumber: 5, laneItem1: "Jeremy", laneItem2: "Zucker", laneItem3: "Sucks")
    
    ]
}
