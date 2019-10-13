//
//  Pokemon.swift
//  Pokemon
//
//  Created by James Kelly on 10/6/19.
//  Copyright © 2019 James Kelly. All rights reserved.
//

import Foundation

class Pokemon {
    private var name: String
    
    var level: Int
    var currentNumSteps: Int //number of steps at the current level
    var totalNumSteps: Int //total number of steps pokemon
    var pokedexID: String //id number in the pokedex
    
    var eggHatchedDate:String
    
    
    var isEgg: Bool // is the pokemon still an egg
    
    
    init(name:String, pokedexID: String) {
        self.name = name
        self.pokedexID = pokedexID
        self.level = 0
        self.currentNumSteps = 0
        self.totalNumSteps = 0
        self.eggHatchedDate = ""
        self.isEgg = true
        
    }
    //Egg hatched sets the date hatched and sets level
    func eggHatched() {
        let date = Date() //time and date the the egg hatched
        let format = DateFormatter()
        
        format.dateFormat = "yyyy-MM-dd HH:mm:ss"
        self.eggHatchedDate = format.string(from: date)
        self.level = 1
        self.isEgg = false
        
        
    }
    //level up -> reset num steps
    func levelUp() {
        self.level += 1
        self.currentNumSteps = 0
    }
    
    
    func getEggHatchedDate() -> String {
        return self.eggHatchedDate
    }
    
    func getName() -> String {
        return self.name
    }
    
    func getPokedexID() -> String {
        return self.pokedexID
    }
    
}
