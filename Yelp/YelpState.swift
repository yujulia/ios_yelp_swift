//
//  State.swift
//  Yelp
//
//  Created by Julia Yu on 2/19/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import Foundation

class YelpState: NSObject {
    
    enum SortBy {
        case First
        case Distance
        case Rated
    }
    
    enum Sections {
        case Deals
        case Distance
        case Sortby
        case Categories
    }
    
    let MilestoMeter: Float = 1609.34
    
    var searchDistance: Float?
    var searchCategory: [[String:String]]?
    var searchDeals: Bool?
    
    // ------------------
    
    func setDistance(distanceInMiles: Float) {
        self.searchDistance = distanceInMiles * MilestoMeter
        print("setting distance in miles ", distanceInMiles, " to meters ", self.searchDistance)
    }
    
    func getDistance() -> Float? {
        return self.searchDistance
    }
    
    // ------------------
    
    func setDeals(hasDeal: Bool) {
        self.searchDeals = hasDeal
    }
    
    func getDeals() -> Bool? {
        return self.searchDeals
    }
    
    
}