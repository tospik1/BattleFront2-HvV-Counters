//
//  Villains.swift
//  Battle Front 2 HVV Counters
//
//  Created by Gorkem on 2019-01-25.
//  Copyright © 2019 Star. All rights reserved.
//

import Foundation

class Villains {
    let name: String
    let counters: Array<String>
    let villainCounter: Array<String>
    
    init (name: String, counters: Array<String>, villainCounter: Array<String>) {
        self.name = name
        self.counters = counters
        self.villainCounter = villainCounter
    }
    
}
