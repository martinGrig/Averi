//
//  SampleData.swift
//  Averi
//
//  Created by Student on 10/10/2019.
//  Copyright © 2019 Dimitar Ivanov. All rights reserved.
//

import Foundation


final class SampleData{
    static func generateEventData() -> [Event]{
        return [
            Event(name: "Beckyard Party", location: "", date: "16.10.2020", entryLimit: 10, entryCost: 5, details: "ipsum lorem" ),
            Event(name: "Socer Game", location: "", date: "16.10.2020", entryLimit: 20, entryCost: 0, details: "ipsum lorem" ),
            Event(name: "BBQ Party", location: "", date: "15.10.2020", entryLimit: 4, entryCost: 15, details: "There aint details" )
        ]
    }
}
