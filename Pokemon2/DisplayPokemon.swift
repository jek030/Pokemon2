//
//  DisplayPokemon.swift
//  Pokemon
//
//  Created by James Kelly on 10/6/19.
//  Copyright © 2019 James Kelly. All rights reserved.
//

import Foundation
//The pokemon that is currently in the image view box
class DisplayPokemon {
    var name: String
    var level: Int
    var currentNumSteps: Int
    
    let date = Date()
    
    init() {
        name = "" //get name from pokemon moved into image box
        level = 1 //same
        currentNumSteps = 0 //same
    }
    
}
