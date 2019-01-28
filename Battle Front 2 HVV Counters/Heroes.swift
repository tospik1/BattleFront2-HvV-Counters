//
//  Heroes.swift
//  Battle Front 2 HVV Counters
//
//  Created by Gorkem on 2019-01-25.
//  Copyright © 2019 Star. All rights reserved.
//

import Foundation

class Heroes {
    let name: String
    let counters: Array<String>
    let heroesCounter: Array<String>

init (name: String, counters: Array<String>, heroesCounter: Array<String>) {
    self.name = name
    self.counters = counters
    self.heroesCounter = heroesCounter
    }

}
